import datetime
import random
import re
import uuid
from time import sleep
from typing import Union, Optional

from selenium.webdriver.common.by import By

from market.config import configuration
from market.controllers.parsers import baseparser
from market.models.common.address import TAddresses
from market.models.common.cadnum import TCadnums
from market.models.realty.flats import TOffersFlats
from market.utils.tools import clean_description, clean_address
from market.utils import dictionaries


class Flats167(baseparser.BaseParser):
    """
    Класс парсера квартир с сайта 167000.ru
    """
    parser_id = 20
    parser_name = 'flats167'
    prefix = 's'
    limit = configuration.PARSERS_CONFIG.get(parser_name).get('page_limit')

    def __init__(self, *args):
        self.commercial_mode = args[0]
        if self.commercial_mode:
            self.parser_id = 120
            self.parser_name = 'commercialflats167'
        super().__init__(*args)
        if self._developer_mode:
            self.limit = 3

    def _get_offer_pages(self) -> list[str]:
        """
        Ищет ссылки на страницы предложений.
        Устанавливает аттрибуты _current_url и _current_soup на базовую страницу
        Возвращает:
            list - ссылки на страницы предложений
        """
        self._set_url(self._first_url, lambda: sleep(random.randint(1, 3)))
        try:
            last_page = max(
                int(tag.string)
                for tag in self._current_soup.find_all(
                    'a',
                    {'class': 'paginator__item _link'}
                ) if tag
            )
        except ValueError:
            last_page = 2
        except AttributeError as err:
            raise self.ParsingError(f'URL: {self._current_url} Теги страниц не распознаны. Не могу считать информацию '
                                    f'по предложениям: {err}')
        first_page = configuration.PARSERS_CONFIG.get(self.parser_name).get('page_start')
        page_step = configuration.PARSERS_CONFIG.get(self.parser_name).get('page_step')
        pages_list = [
            self._base_url.replace('{ page }', str(page)) for page in range(first_page, last_page + 1, page_step)
        ]
        if len(pages_list) == 0:
            raise self.ParsingError(f'URL: {self._current_url} Список страниц предложений пуст')
        return pages_list

    def _get_page_ids(self) -> list[str]:
        """
        Собирает ID всех предложений, которые есть на странице, добавляет префикс сайта к каждому ID.
        Возвращает:
            list - список идентификаторов предложений на сайте
        """
        try:
            return [self.prefix + tag['id'].strip('ofer- ')
                    for tag in self._current_soup.select('a[id]') if tag]
        except KeyError:
            raise self.ParsingError(f'URL: {self._current_url} Ошибки при обработке идентификаторов предложений: '
                                    'ошибка ключа')
        except AttributeError:
            raise self.ParsingError(f'URL: {self._current_url} Ошибки при обработке идентификаторов предложений: '
                                    'ошибка тега')
        except Exception as err:
            raise self.ParsingError(f'URL: {self._current_url} Ошибка {err} при сборе ID со страницы')

    def _get_page_prices(self) -> list[Union[int, None]]:
        """
        Собирает цены всех предложений, которые есть на странице.
        Возвращает:
            list - список цен предложений на сайте
        """
        prices = []
        try:
            for tag in self._current_soup.find_all('td', {'class': 'offer-table__cell _price'}):
                price_str = tag.string.replace('\xa0', '')
                price = int(price_str) if price_str.isnumeric() else None
                prices.append(price)
        except AttributeError:
            raise self.ParsingError(f'URL: {self._current_url} Ошибки при обработке цен предложений: ошибка тега')
        return prices

    def get_characteristics(self, url: str, offer_id: uuid) -> tuple:
        """
        Возвращает характеристики объекта
        Аргументы:
            url: str - ссылка на предложение
            offer_id: uuid - идентификатор предложения в БД
        Возвращает:
            TOffersFlats - модель объекта с характеристиками
            TAddresses - модель объекта адресной строки
        """
        def action():
            """
            Нажимает на кнопку демонстрации телефона на сайте
            """
            sleep(1)
            self.chrome_driver.find_element(By.TAG_NAME, 'button').click()
            sleep(1)

        if not self._set_url(url, action):
            return None, None, None
        flat = TOffersFlats()
        address = self.parse_address()
        address_id = uuid.uuid5(uuid.NAMESPACE_OID, address)
        address_data = [address_id] + self._gar.get_fias_info(address=address)
        cadnum = None
        if address_data[-1] is not None:
            cadnum = TCadnums()
            cadnum.add_row([address_data[-2], address_data[-1], None])
        address_data = address_data[:-1]
        address_standard = TAddresses()
        address_standard.add_row(address_data)
        floors = self.parse_floors()
        flat.add(**{
            flat.flat_id: uuid.uuid4(),
            flat.offer_id: offer_id,
            flat.rooms: self.parse_rooms(),
            flat.area: self.parse_area(),
            flat.floor_id: self.parse_floor(),
            flat.floors: floors,
            flat.wall_id: self.parse_walls(),
            flat.renovation_id: self.parse_renovation(),
            flat.built: self.parse_built(),
            flat.description: self.parse_descr(),
            flat.seller: self.parse_seller(),
            flat.phone: self.parse_phone(),
            flat.screenshot: self.make_screenshot(),
            flat.parsing_date: datetime.datetime.today(),
            flat.processing_date: None,
            flat.address_id: address_id,
            flat.has_furniture: False,
            flat.is_conventional: False,
            flat.subgroup_id: self.parse_subgroup(floors=floors, commercial=self.commercial_mode),
        })
        return flat, address_standard, cadnum

    def parse_address(self) -> Optional[str]:
        """
        Парсит информацию об адресе квартиры. Адрес в формате удобном для работы с ФИАС, состоит из 4-х элементов.
        Возвращает:
            str - Адрес квартиры в виде строки, состоящей из пяти элементов:
                    Республика Коми, район, населенный пункт, улица, дом.
                    Если ошибка, возвращаем None
        """
        try:
            address = []
            addr_elements = self._current_soup.find(
                'div', {'class': 'main-heading container flex-row'}) \
                .find('h1', {'class': 'main-heading__title'}) \
                .text.strip().split(', ')

            address.append('Республика Коми')
            district_elements = self._current_soup.find(
                'nav', {'aria-label': 'breadcrumb'}) \
                .find_all('span', {'itemprop': 'name'})
            address.append(district_elements[1].text.strip())
            if 'район' in address[1]:
                address.append(district_elements[2].text.strip())
            else:
                try:
                    addr_city = addr_elements[2]
                    for pattern, proper_name in dictionaries.SYKTYVKAR_DISTRICTS_LIST.items():
                        addr_city = re.sub(pattern, proper_name, addr_city)
                    if addr_city != '':
                        address.append(addr_city)
                except IndexError:
                    only_street = clean_address(addr_elements[1])
                    return only_street
            street_elements: list = addr_elements[1].split(' ')
            address.append(' '.join(street_elements[:-1]))
            address.append(street_elements[-1])
            # Проверка и замена элементов в соответствии с написанием в ГАР для Сыктывкара
            full_address = ', '.join(address)
            full_address = clean_address(full_address)
            return full_address
        except AttributeError:
            self.warnings_list.append(f'URL: {self._current_url} Не распознаны теги адреса')
        except Exception as err:
            self.errors_list.append(f'URL: {self._current_url} Неизвестная ошибка при получении адреса квартиры {err}')
        return None

    def parse_rooms(self) -> Optional[str]:
        """
        Парсит информацию о количестве комнат квартиры.
        Возвращает:
            int - количество комнат
        """
        try:
            flat_type = self._current_soup \
                .find('table', {'class': 'details'}) \
                .find('th', text=re.compile(r'Вид объекта')) \
                .find_next('td').text
            if 'студ' in flat_type.lower():
                return 'студия'
            return re.findall(r'\d+|$', flat_type)[0]

        except AttributeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги количества комнат или информация отсутствует'
            )
        except TypeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Количество комнат квартиры на сайте указано с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении комнат квартиры {err}'
            )
        return None

    def parse_area(self) -> Optional[float]:
        """
        Парсит информацию о площади квартиры.
        Возвращает:
            float - площадь квартиры
        """
        try:
            position = 0
            return float(
                self._current_soup.find('table', {'class': 'details'})
                .find('th', text=re.compile(r'Площадь'))
                .next_sibling.text.replace('\xa0м²', '')
                .split(" / ")[position]
                .replace(',', '.')
            )
        except AttributeError:
            self.errors_list.append(
                f'URL: {self._current_url} Не распознаны теги площади или информация о ней отсутствует'
            )
        except TypeError:
            self.errors_list.append(
                f'URL: {self._current_url} Площадь квартиры на сайте указано с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении общей площади квартиры {err}'
            )
        return None

    def parse_floor(self) -> int:
        """
        Парсит информацию об этаже квартиры.
        Возвращает:
            int - этаж квартиры
        """
        floor_id = dictionaries.FLOOR_ID
        try:
            floor = self._current_soup.find('table', {'class': 'details'}) \
                .find('th', text=re.compile(r'Этажность')) \
                .next_sibling.text \
                .split(" / ")[0]
            return floor_id[floor]
        except (AttributeError, KeyError):
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги этажа или информация о нем отсутствует'
            )
        except TypeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Этаж квартиры на сайте указан с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении этажа квартиры {err}'
            )
        return floor_id[None]

    def parse_floors(self) -> Optional[int]:
        """
        Парсит информацию об этажности здания.
        Возвращает:
            int - этажность здания
        """
        try:
            position = 1
            floors = self._current_soup.find('table', {'class': 'details'}
                                             ).find('th', text=re.compile(r'Этажность')).next_sibling.string
            if floors.isnumeric():
                return floors
            return int(floors.split(" / ")[position])
        except AttributeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги этажности или информация ней отсутствует'
            )
        except TypeError:
            self.warnings_list.append(
                f'Этажность здания на сайте указана с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении этажности {err}'
            )
        return None

    def parse_walls(self) -> int:
        """
        Парсит информацию о материале стен здания
        Возвращает:
            int - код типа стен здания
        """
        walls_id = dictionaries.WALLS_ID_OR_HOUSE_TYPES
        try:
            wall = str(
                self._current_soup.find('table', {'class': 'details'})
                .find('th', text=re.compile(r'Материал здания'))
                .next_sibling.text
            ).lower()
            return walls_id[wall]
        except (AttributeError, KeyError):
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги материала стен или информация о них отсутствует'
            )
        except TypeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Материал стен здания на сайте указан с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении материала стен {err}'
            )
        return walls_id['нет данных']

    def parse_renovation(self) -> Optional[str]:
        """
        Парсит информацию о качестве ремонта
        Возвращает:
            int - код типа ремонта квартиры, None - если тип ремонта не найден в словаре
        """
        renovation_id = dictionaries.RENOVATIONS
        try:
            renovation_type = str(
                self._current_soup.find('table', {'class': 'details'})
                .find('th', text=re.compile(r'Отделка'))
                .next_sibling.text
            ).lower()
            return renovation_id[renovation_type]
        except (AttributeError, KeyError):
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги качества ремонта или информация о нем отсутствует'
            )
        except TypeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Информация о качестве ремонта на сайте указан с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении качества ремонта {err}'
            )
        return renovation_id["нет данных"]

    def parse_built(self) -> Optional[int]:
        """
        Находит год постройки дома квартиры из объявления.
        Возвращает:
            int: - год постройки дома или None, если данные не получены
        """
        try:
            return int(
                self._current_soup.find('table', {'class': 'details'})
                .find('th', text=re.compile(r'Год постройки'))
                .next_sibling.text
            )
        except AttributeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги года постройки или информация о нем отсутствует'
            )
        except TypeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Информация о годе постройки на сайте указана с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'Неизвестная ошибка при получении года постройки {err}'
            )
        return None

    def parse_descr(self) -> Optional[str]:
        """
        Парсит описание предложения, очищает текст от emoji, очищает текст от escape-последовательностей
        и прочих символов.
        Возвращает:
            str: - очищенный текст предложения или None, если возникла ошибка
        """
        try:
            description = self._current_soup.find('tr', {'class': 'comment'})
            if description:
                description = ' '.join(
                    [paragraph.text for paragraph in description.find_all('p')]
                )
            return clean_description(description)
        except AttributeError:
            self.warnings_list.append(f'URL: {self._current_url} Не распознаны теги описания или оно отсутствует')
        except TypeError:
            self.warnings_list.append(f'URL: {self._current_url} Описание на сайте приведено с ошибкой')
        except Exception as err:
            self.errors_list.append(f'URL: {self._current_url} Неизвестная ошибка при получении описания {err}')
        return None

    def parse_seller(self) -> Optional[str]:
        """
        Парсит данные о продавце квартиры
        Возвращает:
            str: - данные о продавце или None, если возникла ошибка
        """
        pattern = r"(?<!\S)[^а-яА-Я\s]+(?!\S)"
        try:
            seller = self._current_soup.find('div', {'class': 'name ico _user'}).text.strip()
            return re.sub(pattern, '', seller).strip()
        except AttributeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Не распознаны теги информации о продавце'
            )
        except TypeError:
            self.warnings_list.append(
                f'URL: {self._current_url} Имя продавца на сайте приведено с ошибкой'
            )
        except Exception as err:
            self.errors_list.append(
                f'URL: {self._current_url} Неизвестная ошибка при получении информации о продавце {err}'
            )
        return None

    def parse_phone(self) -> Optional[str]:
        """
        Парсит информацию о номере телефона продавца
        Возвращает:
            str - номер телефона продавца или None, если возникла ошибка
        """
        try:
            return ', '.join(
                [phone_number.text.replace(' ', '')
                 for phone_number in self._current_soup.find('div', {'class', 'contact'})
                 .find_all('a', {'class': 'link phone ico _call'})]
            )
        except AttributeError:
            self.warnings_list.append(f'URL: {self._current_url} Не распознаны теги телефонов')
        except TypeError:
            self.warnings_list.append(f'URL: {self._current_url} Телефоны на сайте приведены с ошибкой')
        except Exception as err:
            self.errors_list.append(f'URL: {self._current_url} Неизвестная ошибка при получении телефонов {err}')
        return None
