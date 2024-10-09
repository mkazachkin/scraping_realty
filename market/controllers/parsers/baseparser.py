import base64
import datetime
import os
import pathlib
import time
import uuid
from abc import abstractmethod

import requests

from io import BytesIO
from random import randint
from time import sleep
from typing import Optional, Union
from PIL import Image
from bs4 import BeautifulSoup
from selenium.common import TimeoutException, ElementClickInterceptedException
from selenium.common.exceptions import NoSuchElementException
from market.config import configuration
from gar_api.gar_api import GarApi
from market.models.base.basemodel import BaseModel
from market.models.common.address import TAddresses
from market.models.common.offers import TOffers
from market.models.common.offers_history import TOffersHistory


class BaseParser:
    parser_id = 0
    parser_name = 'base'
    prefix = ''
    limit = 999_999

    def __init__(self, *args):
        self.check_online()
        self.warnings_list = []
        self.errors_list = []
        self._current_soup = None
        self._current_url = None
        self.chrome_driver = None
        self._first_url = configuration.PARSERS_CONFIG.get(self.parser_name).get('first_url')
        self._base_url = configuration.PARSERS_CONFIG.get(self.parser_name).get('base_url')
        self._offer_url = configuration.PARSERS_CONFIG.get(self.parser_name).get('offer_url')
        self._db_data = {}
        self._developer_mode = configuration.DEVELOPER_MODE
        self._gar = GarApi()

    class ParsingError(Exception):
        """
        Класс ошибок при парсинге
        """

        def __init__(self, *args):
            if args:
                self.message = args[0]
            else:
                self.message = 'Не обозначенная ошибка парсинга'

        def __str__(self):
            return self.message

    def set_chrome(self, chrome_driver):
        self.chrome_driver = chrome_driver

    def check_online(self) -> None:
        """
        Проверка подключения к интернету
        """
        ya, vk = 'https://ya.ru/', 'https://vk.com/'
        if not requests.get(ya).ok and requests.get(vk).ok:
            raise self.ParsingError('Отсутствует соединение с интернетом')

    def limit_reached(self) -> bool:
        """
        Выдерживает паузу, перед загрузкой страницы и
        проверяет достигнут ли предел просмотра страниц.
        """
        min_wait = 1
        max_wait = 2
        if not self._developer_mode:
            min_wait = configuration.PARSERS_CONFIG.get(self.parser_name).get('min_sleep_time')
            max_wait = configuration.PARSERS_CONFIG.get(self.parser_name).get('max_sleep_time')
        sleep(randint(min_wait, max_wait))
        self.limit -= 1
        return self.limit <= 0

    def _set_url(self, page_url: str, action=None) -> bool:
        """
        Переходит по адресу страницы и устанавливает атрибуты класса _current_url и _current_soup
        Аргументы:
            page_url: str - адрес страницы в интернете
            action - функция, которую нужно выполнить после загрузки страницы
        """
        try:
            self._current_url = page_url
            self.chrome_driver.get(self._current_url)
            if action:
                action()
            self._current_soup = BeautifulSoup(self.chrome_driver.page_source, features='lxml')
            return True
        except TimeoutException:
            self.warnings_list.append(f'URL: {self._current_url} Таймаут при загрузке страницы по адресу')
        except NoSuchElementException:
            time.sleep(2)
            self.warnings_list.append(f'URL: {self._current_url} Не найдена кнопка демонстрации телефона. '
                                      'Вероятно, страница предложения удалена. Пропускаю парсинг')
        except ElementClickInterceptedException:
            self.warnings_list.append(f'URL: {self._current_url} Не удалось нажать на кнопку демонстрации телефона. '
                                      'Вероятно возникли проблемы с тегами или появилось всплывающее окно')
        return False

    def get_offers(self) -> tuple[TOffers, TOffersHistory]:
        """
        Собирает ID и цены объявлений
        Возвращает:
            TOffers - модель с заполненными идентификаторами и ценами
        """
        def _get_pages_data() -> tuple[list, list]:
            """
            Возвращает ID объявлений и цены предложений со всех страниц
            Возвращает:
                list - список ID предложений
                list - список цен предложений
            """
            pages_list = self._get_offer_pages()
            _ids, _prices = self._get_page_data()
            if len(_ids) == 0:
                raise self.ParsingError('Не удалось собрать идентификаторы объявлений с сайта')
            if not self._developer_mode:
                for page_url in pages_list:
                    self._set_url(page_url)
                    _ids_new, _prices_new = self._get_page_data()
                    _ids += _ids_new
                    _prices += _prices_new
                    time.sleep(randint(1, 3))
            return _ids, _prices

        offer_ids, offer_prices = _get_pages_data()
        offers = TOffers()
        history = TOffersHistory()

        url_history = set()
        for i, offer_id in enumerate(offer_ids):
            url = configuration.PARSERS_CONFIG.get(self.parser_name).get('offer_url')
            url = url.replace('{ site_id }', offer_id[1:])
            if url not in url_history:
                url_history.add(url)
                offers.add(**{
                    offers.offer_id: uuid.uuid5(uuid.NAMESPACE_OID, offer_id),
                    offers.site_id: offer_id,
                    offers.url: url,
                    offers.parser_id: self.parser_id,
                })
                history.add(**{
                    history.history_id: uuid.uuid4(),
                    history.offer_id: uuid.uuid5(uuid.NAMESPACE_OID, offer_id),
                    history.start_date: datetime.datetime.today().date(),
                    history.stop_date: None,
                    history.price: offer_prices[i],
                    history.is_new: True,
                    history.is_last: True,
                })
        return offers, history

    @abstractmethod
    def _get_offer_pages(self) -> list[str]:
        """
        Ищет ссылки на страницы предложений.
        Устанавливает аттрибуты _current_url и _current_soup на базовую страницу
        Возвращает:
            list - ссылки на страницы предложений
        """

    @abstractmethod
    def _get_page_ids(self) -> list[str]:
        """
        Собирает ID всех предложений, которые есть на странице, добавляет префикс сайта к каждому ID.
        Возвращает:
            list - список идентификаторов предложений на сайте
        """

    @abstractmethod
    def _get_page_prices(self) -> list[Union[int, None]]:
        """
        Собирает цены всех предложений, которые есть на странице.
        Возвращает:
            list - список цен предложений на сайте
        """

    def _get_page_data(self):
        """
        Возвращает данные по идентификаторам, ценам со страницы и делает скриншот.
        Если не удалось данные сопоставить, вызывает ошибку
        """
        page_ids = self._get_page_ids()
        page_prices = self._get_page_prices()
        i = 0
        while i < len(page_ids):
            if page_prices[i] is None or page_prices[i] < 1000:
                del page_ids[i]
                del page_prices[i]
            else:
                i += 1

        offers_quantity, prices_quantity = len(page_ids), len(page_prices)
        if prices_quantity != offers_quantity:
            raise self.ParsingError('Не могу сопоставить списки цен и идентификаторов предложений')
        return page_ids, page_prices

    @abstractmethod
    def get_characteristics(self, url: str, offer_id: uuid) -> tuple[BaseModel, TAddresses]:
        """
        Собирает характеристики объекта и возвращает их.
        Необходимо переопределение метода в дочерних классах
        Аргументы:
            url: str - ссылка на предложение
            offer_id: uuid - идентификатор предложения в БД
            streets: Optional[list[tuple]] - таблица улиц для обработки адресов
        Возвращает:
            BaseModel - модель объекта с характеристиками
            TAddresses - модель объекта адресной строки
        """

    def make_screenshot(self, screen_error=False, screen_name=False) -> Optional[str]:
        """
        Сохраняет скриншоты страниц, адреса которых передаются в списке.
        Аргументы:
            screen_error - bool - Если True, то скриншот будет сохранён в специальную папку с ошибками
            screen_name - str - Специально имя ошибки
        Возвращает:
            str - путь скриншота в виде строки или None, если возникла ошибка
        """
        try:
            page_rect = self.chrome_driver.execute_cdp_cmd(
                'Page.getLayoutMetrics', {})
            screenshot_config = {
                'captureBeyondViewport': True,
                'fromSurface': True,
                'clip':
                    {'width': page_rect['contentSize']['width'],
                     'height': page_rect['contentSize']['height'],
                     'x': 0,
                     'y': 0,
                     'scale': 1},
            }
            img = Image.open(
                BytesIO(
                    base64.b64decode(
                        self.chrome_driver.execute_cdp_cmd('Page.captureScreenshot', screenshot_config)['data']
                    )
                )
            )
            width = screenshot_config['clip']['width']
            height = screenshot_config['clip']['height']

            screenshot_width = configuration.SCREENSHOT_CONFIG.get('WIDTH')
            screenshot_height = configuration.SCREENSHOT_CONFIG.get('HEIGHT')
            screenshot_path = configuration.SCREENSHOT_CONFIG.get('PATH')
            screenshot_quality = configuration.SCREENSHOT_CONFIG.get('QUALITY')
            if screen_name:
                file_name = screen_name
            else:
                file_name = str(uuid.uuid4())

            if screenshot_width != 0 and width > screenshot_width:
                crop_horizontal = (width - screenshot_width) // 2
            else:
                crop_horizontal = 0
            if screenshot_height != 0 and height > screenshot_height:
                crop_vertical = (height - screenshot_height) // 2
            else:
                crop_vertical = 0
            img = img.crop((
                crop_horizontal,
                crop_vertical,
                width - crop_horizontal,
                height - crop_vertical
            ))
            today = datetime.datetime.today()
            path_suffix = os.path.join(self.parser_name, f'{today.year}-{today.month}')
            if screen_error:
                path_suffix = os.path.join(self.parser_name, 'parsing_errors', f'{today.year}-{today.month}')
            screenshot_path = os.path.join(screenshot_path, path_suffix)
            pathlib.Path(screenshot_path).mkdir(parents=True, exist_ok=True)
            if configuration.SCREENSHOT_CONFIG.get('JPG'):
                file_name += '.jpg'
                screenshot_path = os.path.join(screenshot_path, file_name)
                img.convert('RGB').save(screenshot_path, quality=screenshot_quality)
            else:
                file_name += '.png'
                screenshot_path = os.path.join(screenshot_path, file_name)
                img.save(screenshot_path)
            img.close()
            return os.path.join(path_suffix, file_name)
        except TimeoutException:
            self.warnings_list.append(f'URL: {self._current_url} Таймаут при сохранении скриншота')
        except Exception as err:
            self.errors_list.append(f'URL: {self._current_url} Неизвестная ошибка {err} при сохранении скриншота')
        return None

    def parse_subgroup(self, **kwargs) -> int:
        """
        Рассчитывает группу здания по этажности (применимо только к квартирам)
        Аргументы:
            floors: этажность здания
        """
        commercial = kwargs.get('commercial')
        if commercial:
            return 4000000
        floors = kwargs.get('floors')
        subgroup_id = {None: 0, 'low-rise building': 2000000, 'medium-rise building': 1000000}
        if floors is not None:
            try:
                floors_quantity = int(floors)
                if floors_quantity < 5:
                    return subgroup_id['low-rise building']
                return subgroup_id['medium-rise building']
            except Exception as err:
                self.warnings_list.append(
                    f'URL: {self._current_url} Не могу определить этажность и группу здания: {err}'
                )
        return subgroup_id[None]
