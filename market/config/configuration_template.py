"""
Файл конфигурации. Переименовать в configuration.py и настроить парсинг
"""
import os

"""
Включение режима разработчика (Выставляет ограниченные лимиты на просмотр страниц, которые определяются в парсерах )
"""
DEVELOPER_MODE = False
"""
Настройки подключения к базе данных
"""
DATABASE = {
    'address': '',
    'database': '',
    'username': '',
    'password': ''
}
"""
Ссылка на веб драйвер Chrome для Selenium
"""
WEBDRIVER = ''
"""
Настройки парсеров
"""
DEFAULT_PAGE_LIMIT = 10
PARSERS_CONFIG = {
    'base': {
        'min_sleep_time': 2,
        'max_sleep_time': 5,
    },
    'flats167': {
        'first_url': 'http://167000.ru/komi/prodam/kvartira/?sort=uptime',
        'base_url': 'http://167000.ru/komi/prodam/kvartira/?page={ page }',
        'offer_url': 'http://167000.ru/o/{ site_id }/',
        'page_limit': DEFAULT_PAGE_LIMIT,
        'page_start': 2,
        'page_step': 1,
        'min_sleep_time': 1,
        'max_sleep_time': 3,
    },
}

"""
Настройки скриншотов
"""
SCREENSHOT_CONFIG = {
    'PATH': os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        '..',
        'screenshots'
    ),
    'WIDTH': 1600,
    'HEIGHT': 0,
    'JPG': True,
    'QUALITY': 51,
}

TABLES_CONFIG = {
    'offers': 't_offers',
    'offers_history': 't_offers_history',
    'flats_characteristics': 't_characteristics_flats',
    'parcels_characteristics': 't_characteristics_parcels',
    'houses_characteristics': 't_characteristics_houses',
    'rooms_characteristics': 't_characteristics_rooms',
    'garages_characteristics': 't_characteristics_garages',
    'logs': 't_logs',
    'flats_logs': 'l_characteristics_flats_logs',
    'parcels_logs': 'l_characteristics_parcels_logs',
    'houses_logs': 'l_characteristics_houses_logs',
    'rooms_logs': 'l_characteristics_rooms_logs',
    'garages_logs': 'l_characteristics_garages_logs',
    'addresses': 't_addresses',
    'cadnums': 't_cadnums',
}
