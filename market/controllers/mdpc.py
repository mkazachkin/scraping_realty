import copy
import datetime
import logging
import os
import sys
import time
import uuid
from datetime import date
from json import JSONDecodeError
from logging import Logger
from typing import Optional
from uuid import UUID

import psycopg2
import psycopg2.extras
import requests
import urllib3
from psycopg2 import OperationalError, DatabaseError, IntegrityError

from selenium import webdriver
from selenium.common import SessionNotCreatedException, NoSuchDriverException, WebDriverException, NoSuchWindowException
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.webdriver import WebDriver

from market.config import configuration
from market.controllers.fabric.log_links import FabLogLinks
from market.controllers.fabric.parsers import FabParsers
from market.models.common.address import TAddresses
from market.models.common.offers_history import TOffersHistory
from market.models.logs.logs import TLogs
from market.models.realty.flats import TOffersFlats
from market.models.realty.parcels import TOffersParcels
from market.models.realty.houses import TOffersHouses
from market.models.realty.rooms import TOffersRooms
from market.models.realty.garages import TOffersGarages
from market.models.common.offers import TOffers


class ParserController:
    """
    Market Data Parser Controller module
    """
    MODELS = [
        TOffersRooms,
        TOffersFlats,
        TOffersHouses,
        TOffersParcels,
        TOffersGarages,

    ]
    STATUS_OK = 0
    STATUS_WARN = 1
    STATUS_ERR = 2
    STATUS_CRITICAL = 3

    class ControlError(Exception):
        """
        Класс ошибок контроллера
        """
        ERR_LOG = '10001'
        ERR_DB = '10003'
        ERR_CHROME = '10004'
        ERR_PARSING = '10005'
        ERR_DB_SAVE = '10006'
        ERR_DB_UPDATE = '10007'
        ERR_MESSAGES = {
            '10001': 'Ошибка инициализации LOG-файла',
            '10002': 'Ошибка непредвиденная произошла. Мы не знаем взяться откуда могла она.',
            '10003': 'Ошибка подключения к базе данных',
            '10004': 'Ошибка инициализации драйвера браузера',
            '10005': 'Ошибка обработки HTML страницы',
            '10006': 'Ошибка сохранения данных в БД',
            '10007': 'Ошибка обновления данных в БД',
        }

        def __init__(self, **kwargs):
            """
            Аргументы:
                code - код ошибки
                logger - ссылка на объект лога
                err - дополнительная информация об ошибке
            """
            logger = kwargs.get('logger')
            err = kwargs.get('err', '')
            try:
                self.message = f"{self.ERR_MESSAGES[kwargs.get('code')]}\n{err}"
            except KeyError:
                self.message = f'Неизвестная ошибка контроллера: {err}'
            if logger:
                logger.critical(self.message)

        def __str__(self):
            return self.message

    def __init__(self, use_gui: bool = True):
        psycopg2.extras.register_uuid()
        try:
            self._log, self._log_id = self._get_logger()
        except self.ControlError as err:
            sys.stdout.write(str(err))
            exit(10001)

        try:
            self._db_connection = self._get_db_connection()
        except self.ControlError:
            self._log.critical('Парсинг завершился с критической ошибкой')
            exit(10003)
        self._log.info('Соединение с БД установлено')

        try:
            self._chrome_driver = self._get_webdriver(use_gui)
        except self.ControlError:
            self._log.critical('Парсинг завершился с критической ошибкой')
            exit(10004)
        self._log.info('Chrome-driver получен')
        self._status = self.STATUS_OK

    def __del__(self):
        if hasattr(self, '_chrome_driver'):
            self._chrome_driver.quit()
        if hasattr(self, '_db_connection'):
            self._db_connection.close()

    def _get_logger(self) -> tuple[Logger, UUID]:
        """
        Возвращает класс логирования
        """

        class StringHandler(logging.Handler):
            """
            Сохраняет логи в строковую переменную и возвращает ее при необходимости
            """

            def __init__(self):
                super().__init__()
                self._log_records = ''

            def __str__(self):
                return self._log_records

            def emit(self, record):
                self._log_records += f'{self.format(record)}\n'

        base_path = os.path.dirname(os.path.abspath(__file__))
        log_filename = f"{date.today().strftime('%Y%m%d')}.log"
        log_path = os.path.join(base_path, '..', 'logs', log_filename)
        log_format = '%(asctime)s - %(levelname)s - %(funcName)s: %(lineno)d - %(message)s'
        try:
            logger = logging.getLogger(__name__)
            logger.setLevel(logging.INFO)
            logger.addHandler(StringHandler())
            logger.addHandler(logging.FileHandler(log_path))
            logger.handlers[0].setFormatter(logging.Formatter(log_format))
            logger.handlers[1].setFormatter(logging.Formatter(log_format))
        except Exception as err:
            raise self.ControlError(
                code=self.ControlError.ERR_LOG,
                message=err,
            )
        log_id = uuid.uuid4()
        return logger, log_id

    def _get_db_connection(self) -> psycopg2.connect:
        """
        Возвращает объект базы данных
        """
        try:
            return psycopg2.connect(
                dbname=configuration.DATABASE['database'],
                user=configuration.DATABASE['username'],
                password=configuration.DATABASE['password'],
                host=configuration.DATABASE['address'],
            )
        except Exception as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(
                code=self.ControlError.ERR_DB,
                err=err,
                logger=self._log,
            )

    def _get_webdriver(self, use_gui: bool) -> WebDriver:
        """
        Попытка инициализации сессии Chrome. В случае успеха вернёт chrome_driver
        Аргументы:
            use_gui: bool - запуск Chrome в графическом интерфейсе или без него
        """
        chrome_service = Service(configuration.WEBDRIVER)
        chrome_options = Options()
        chrome_options.add_argument('--no-sandbox')
        chrome_options.add_argument('--ignore-certificate-errors')
        chrome_options.add_argument('--ignore-certificate-errors-spki-list')
        chrome_options.add_argument('--disable-extensions')
        if use_gui:
            chrome_options.add_argument('--start-maximized')
            chrome_options.add_argument('--start-fullscreen')

        else:
            chrome_options.add_argument('--headless=new')
            chrome_options.add_argument('--window-size=1920,1080')
            chrome_options.add_argument('user-agent=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 '
                                        '(KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36')
        chrome_options.add_argument("--disable-blink-features=AutomationControlled")
        try:
            chrome_driver = webdriver.Chrome(
                service=chrome_service,
                options=chrome_options,
            )
        except (SessionNotCreatedException, NoSuchDriverException) as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(
                code=self.ControlError.ERR_CHROME,
                err=err,
                logger=self._log,
            )
        chrome_driver.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", {
            'source': '''
            delete window.cdc_adoQpoasnfa76pfcZLmcfl_Array;
            delete window.cdc_adoQpoasnfa76pfcZLmcfl_Promise;
            delete window.cdc_adoQpoasnfa76pfcZLmcfl_Symbol;
            '''
        })
        return chrome_driver

    def run(self):
        """
        Выполняет парсинг сайтов объявлений по продаже недвижимости
        """
        all_log_links = []
        for model_class in self.MODELS:
            model = model_class()
            for parser in FabParsers().get(model.table_name):
                parser.set_chrome(self._chrome_driver)
                try:
                    if not self._update_offers(parser):
                        continue
                    log_links = self._update_characteristics(parser, model)
                    if log_links is not None:
                        all_log_links.append(log_links)
                except WebDriverException:
                    self._log.warning(f'Парсеру {parser.parser_name} не удалось подключиться к интернету')
                    continue
                except Exception as err:
                    screen_name = str(uuid.uuid4())
                    parser.make_screenshot(True, screen_name)
                    today = datetime.datetime.today()
                    self._log.error(f'Произошла ошибка при обработке данных {err}. Скриншот ошибки сохранён по пути '
                                    f'{parser.parser_name}/parsing_errors/{today.year}-{today.month} '
                                    f'с именем {screen_name}')
                    self._status = self.STATUS_ERR

        if self._status == self.STATUS_ERR:
            self._log.error('Парсинг завершился с ошибками')
        elif self._status == self.STATUS_WARN:
            self._log.warning('Парсинг завершился с замечаниями')
        else:
            self._log.info('Парсинг завершился успешно')
        self.save_log_to_db()
        for log_links in all_log_links:
            self._save_data(log_links)

    def _update_offers(self, parser) -> bool:
        """
        Выполняет заполнение таблицы предложений новыми данными.
        Аргументы:
            parser: Union[AllRoomsParsers, AllFlatsParsers, AllHousesParsers, ...] - экземпляр класса парсера
        Возвращает:
            True, в случае отсутствия критических ошибок парсинга, False, при их наличии
        """
        try:
            in_offers, in_history = parser.get_offers()
            self._execute_query('TRUNCATE TABLE t_offers_temporary, t_offers_history_temporary')
            self._log.info(f'{parser.parser_name}: Актуальные предложения получены')
            self.init_temporary_data(in_offers, in_history)
            self._log.info(f'{parser.parser_name}: Временные таблицы инициализированы')
            self.insert_and_update_data(in_offers, in_history)
            self._log.info(f'{parser.parser_name}: Информация по предложениям сопоставлена')
            self._execute_query('TRUNCATE TABLE t_offers_temporary, t_offers_history_temporary')
            self._log.info(f'{parser.parser_name}: Временные таблицы очищены. Предложения обновлены')
        except parser.ParsingError as err:
            self._log.error(err)
            if self._status != self.STATUS_ERR:
                self._status = self.STATUS_WARN
            return False
        except self.ControlError:
            self._status = self.STATUS_ERR
            return False
        return True

    def _update_characteristics(self, parser, model):
        """
        Выполняет парсинг новых объявлений и заполняет таблицу соответствующей модели
        Аргументы:
            parser: Union[AllRoomsParsers, AllFlatsParsers, AllHousesParsers, ...] - экземпляр класса парсера
            model - экземпляр класса модели
        Возвращает:
        """
        addresses = TAddresses()
        try:
            offers, history = self._get_new_offers(parser)
            for i in range(len(offers.data)):
                offer = offers.data[i]
                url = offer.get(offers.url)
                offer_id = offer.get(offers.offer_id)
                element, address, cadastral_number = parser.get_characteristics(url, offer_id)
                if element is not None:
                    model += element
                if address is not None:
                    addresses += address
                if cadastral_number is not None:
                    self._try_create_cadnum(cadastral_number)
                history.data[i][history.is_new] = False
        except self.ControlError:
            self._status = self.STATUS_ERR
            return None
        except JSONDecodeError as err:
            self._status = self.STATUS_WARN
            self._log.warning(f'Ошибка JSON-парсинга адреса {err}')
            return None
        except NoSuchWindowException:
            self._status = self.STATUS_WARN
            self._log.warning(f'Произошла ошибка при работе с браузером, он был закрыт. Дальнейший парсинг невозможен')
            return None
        except WebDriverException as err:
            self._status = self.STATUS_WARN
            self._log.warning(f'Произошла ошибка парсинга во время работы {parser.parser_name}: {err}')
            return None
        except ConnectionError:
            self._status = self.STATUS_WARN
            self._log.warning(f'Произошла ошибка при обращении в ГАР')
            return None
        except (requests.exceptions.ConnectionError, urllib3.exceptions.ProtocolError, urllib3.exceptions.ConnectionError) as err:
            self._status = self.STATUS_WARN
            self._log.warning(f'Произошла ошибка интернет соединения:{err}')
            return None
        except Exception as err:
            screen_name = str(uuid.uuid4())
            today = datetime.datetime.today()
            self._status = self.STATUS_ERR
            self._log.error(f'Неизвестная ошибка при получении характеристик объектов {err}. Скриншот ошибки сохранён '
                            f'по пути: {parser.parser_name}/parsing_errors/{today.year}-{today.month} '
                            f'с именем {screen_name}')
            parser.make_screenshot(True, screen_name)
            return None
        # --- Необходимо удалить в случае корректной работы остальных модулей кода
        uuids = []
        for record_id in range(len(model.data)):
            uuids.append(model.data[record_id].get('offer_id'))
        uuids_original = set(uuids)
        if len(uuids) != len(uuids_original):
            model_original_data = []
            for record_id in range(len(model.data)):
                offer_id = model.data[record_id].get('offer_id')
                try:
                    uuids_original.remove(offer_id)
                except KeyError:
                    self._log.error(f'Сработал фильтр двойных записей при добавлении. Пойманный id - {offer_id}')
                    continue
                model_original_data.append(model.data[record_id])
            model.data = model_original_data
        # ------------------------------------------------------------------------
        self._save_data(addresses)
        if not self._save_data(model):
            return None
        self._save_data(history)
        log_links_class = FabLogLinks().get(model.table_name)
        log_links = log_links_class()
        for record in model.data:
            link_id = uuid.uuid4()
            pk = record.get(model.pk)
            log_links.add_row([link_id, pk, self._log_id])

        self._log.info(f'{parser.parser_name}: Характеристики объектов обновлены')
        for warning in parser.warnings_list:
            self._log.warning(warning)
            if self._status != self.STATUS_ERR:
                self._status = self.STATUS_WARN
        for err in parser.errors_list:
            self._log.error(err)
            self._status = self.STATUS_ERR
        return log_links

    def _get_db_data(self, query: str, count_query: int = 2) -> Optional[list[tuple]]:
        """
        Делает запрос в СУБД и возвращает полученные данные
        Аргументы:
            query: str - Текст SQL-запроса
            count_query - количество повторных запросов к db
        Возвращает:
            Данные из БД, полученные методом fetch
        """
        cursor = self._db_connection.cursor()
        try:
            cursor.execute(query)
            data = cursor.fetchall()
            cursor.close()
            return data
        except OperationalError as err:
            if count_query:
                self._log.error(f"Во время запроса к базе данных произошел сбой: {err}. Повторная попытка...")
                self._db_connection.rollback()
                time.sleep(5)
                self._get_db_data(query, count_query - 1)
            else:
                self._status = self.STATUS_ERR
                raise self.ControlError(code=self.ControlError.ERR_DB_SAVE, logger=self._log,
                                        err=f'Не удалось подключиться к базе данных. Ошибка: {err}')
        except DatabaseError as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(code=self.ControlError.ERR_DB_SAVE, logger=self._log,
                                    err=f'Во время выполнения запроса к базе данных произошла ошибка: {err}')
        except Exception as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(code=self.ControlError.ERR_DB, logger=self._log,
                                    err=f'Ошибка получения данных из БД: {err}')

    def _save_data(self, data):
        """
        Формирует данные для сохранения в db
        """
        try:
            table_fields = ','.join(data.fields)
            update_fields = ','.join([f'{field} = EXCLUDED.{field}' for field in data.updated_fields])
            conflict_fields = ','.join(data.key_fields)
            sql_str = f'''
                INSERT INTO
                    {data.table_name} ({table_fields})
                VALUES
                    %s
                ON CONFLICT
                    ({conflict_fields})
                DO UPDATE SET
                    {update_fields};
                '''
            self._execute_query(sql_str, data.prepared_data)
        except Exception as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(
                code=self.ControlError.ERR_DB_SAVE,
                logger=self._log,
                err=f'Не удалось добавить данные в таблицу {data.table_name}: {err}',
            )
        return True

    def _get_new_offers(self, parser) -> tuple[TOffers, TOffersHistory]:
        """
        Возвращает список необработанных объявлений для указанного парсера.
        Количество ограничено лимитом
        Аргументы:
            parser: Union[AllRoomsParsers, AllFlatsParsers, AllHousesParsers, ...] - экземпляр класса парсера
        """
        parser_id = parser.parser_id
        limit = parser.limit
        db_offers = TOffers()
        db_history = TOffersHistory()
        sql_str = F'''
            SELECT
                dof.{',dof.'.join(db_offers.fields)},dhi.{',dhi.'.join(db_history.fields)}
            FROM
                {db_offers.table_name} dof
            LEFT JOIN
                {db_history.table_name} dhi
            ON
                dof.{db_offers.offer_id} = dhi.{db_history.offer_id}                
            WHERE
                dhi.{db_history.is_new}
            AND 
                dhi.{db_history.is_last}
            AND 
                {db_offers.parser_id} = {parser_id}
            AND
                dhi.{db_history.stop_date} IS NULL
            LIMIT
                {limit};
        '''
        data = self._get_db_data(sql_str)
        for row in data:
            index = len(db_offers.fields)
            db_offers.add_row(row[: index - 1])
            db_history.add_row(row[index:])
        return db_offers, db_history

    def save_log_to_db(self):
        """
        Сохраняет лог в базу данных
        """
        log_status = {
            self.STATUS_OK: 'info',
            self.STATUS_WARN: 'warning',
            self.STATUS_ERR: 'error',
            self.STATUS_CRITICAL: 'critical',
        }
        log = TLogs()
        log.add(
            log_id=self._log_id,
            log_date=datetime.datetime.today(),
            log_time=datetime.datetime.now(tz=None),
            log_text=self._log.handlers[0],
            log_status=log_status[self._status],
        )
        self._save_data(log)

    def _try_create_cadnum(self, data):
        """
        Создаёт в базе данных кадастровый номер. Если он там есть, не делает ничего
        """
        try:
            table_fields = ','.join(data.fields)
            update_fields = ','.join([f'{field} = EXCLUDED.{field}' for field in data.updated_fields])
            conflict_fields = ','.join(data.key_fields)
            sql_str = f'''
                INSERT INTO
                    {data.table_name} ({table_fields})
                VALUES
                    %s
                ON CONFLICT
                    ({conflict_fields})
                DO NOTHING
                    {update_fields};
                '''
            self._execute_query(sql_str, data.prepared_data)
        except Exception as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(code=self.ControlError.ERR_DB_SAVE, logger=self._log,
                                    err=f'Не удалось обработать кадастровый номер {data.table_name}: {err}')

    def _execute_query(self, sql, data=None, count_query: int = 3):
        """
        Выполняет обращение к db с принятыми параметрами. В случае неудачной попытки совершает ещё 2 попытки
        Аргументы:
            sql - строка с sql запросом
            data - данные для подстановки в запрос
            count_query - количество повторных запросов к db
        """
        cursor = self._db_connection.cursor()
        try:
            if data is None:
                cursor.execute(sql)
            else:
                psycopg2.extras.execute_values(cursor, sql, data, template=None, page_size=100)
            self._db_connection.commit()
        except OperationalError as err:
            if count_query:
                self._log.warning(f"Произошёл сбой при выполнении запроса к базе данных: {err}. Повторная попытка...")
                self._db_connection.rollback()
                time.sleep(5)
                self._execute_query(sql, data, count_query - 1)
            else:
                self._status = self.STATUS_ERR
                raise self.ControlError(code=self.ControlError.ERR_DB_SAVE, logger=self._log,
                                        err=f'Во время выполнения запроса к базе данных произошла ошибка: {err}')
        except IntegrityError as err:
            self._log.error(f"Произошла ошибка связанная с целостностью данных {err}. Текущая транзакция не будет "
                            f"выполнена")
            self._db_connection.rollback()
            return False
        except Exception as err:
            self._status = self.STATUS_ERR
            raise self.ControlError(code=self.ControlError.ERR_DB_SAVE, logger=self._log,
                                    err=f'Произошла неизвестная ошибка при выполнении запроса к базе данных: {err}')
        return True

    def init_temporary_data(self, in_offers: TOffers, in_history: TOffersHistory):
        """
        Инициализирует собранные данные во временные таблицы
        :param in_offers: Модель с данными TOffers
        :param in_history: Модель с данными TOffersHistory
        """
        in_offers_temporary = copy.deepcopy(in_offers)
        in_offers_temporary.table_name = 't_offers_temporary'
        in_history_temporary = copy.deepcopy(in_history)
        in_history_temporary.table_name = 't_offers_history_temporary'
        self._save_data(in_offers_temporary)
        self._save_data(in_history_temporary)

    def insert_and_update_data(self, in_offers: TOffers, in_history: TOffersHistory):
        """
        Производит вставку/обновленные данных в основных таблицах, основываясь на данных из временных таблиц
        :param in_offers: Модель с данными TOffers
        :param in_history: Модель с данными TOffersHistory
        """
        in_offers_temporary = copy.deepcopy(in_offers)
        in_offers_temporary.table_name = 't_offers_temporary'
        in_history_temporary = copy.deepcopy(in_history)
        in_history_temporary.table_name = 't_offers_history_temporary'

        insert_history = f"""
            INSERT INTO {in_history.table_name} (history_id, offer_id, start_date, stop_date, price, is_new, is_last)
            SELECT
                toht.history_id,
                toht.offer_id,
                CURRENT_DATE,
                NULL,
                toht.price,
                CASE
                    WHEN toh.offer_id IS NULL THEN True
                    WHEN toh.is_new THEN toh.is_new
                    ELSE False
                END AS is_new,
                True AS is_last
            FROM {in_history_temporary.table_name} toht
            LEFT JOIN {in_history.table_name} toh
                ON toh.offer_id = toht.offer_id
                AND toh.is_last = True
            WHERE toh.price IS DISTINCT FROM toht.price OR toh.offer_id IS NULL;
        """

        update_history_fields = f"""
            UPDATE {in_history.table_name} toh
            SET
                stop_date = CURRENT_DATE,
                is_new = False,
                is_last = False
            FROM {in_history_temporary.table_name} toht
            WHERE toh.offer_id = toht.offer_id
                AND toh.is_last = True
                AND toh.price != toht.price
        """

        update_history_stop_date = f"""
            UPDATE {in_history.table_name} toh
            SET
                stop_date = NULL
            FROM {in_history.table_name} toht
            WHERE toh.offer_id = toht.offer_id
                AND toh.price = toht.price
                AND toh.is_last = True
        """
        self._save_data(in_offers)
        self._execute_query(insert_history)
        self._execute_query(update_history_fields)
        self._execute_query(update_history_stop_date)
