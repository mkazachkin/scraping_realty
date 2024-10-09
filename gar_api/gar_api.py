import os
import uuid
from datetime import datetime
from difflib import SequenceMatcher

import requests
import datetime
import json
import configparser


class GarApi:
    RAION: int = 3          # Муниципальный район
    SETTLEMENT: int = 4     # Сельское/городское поселение
    CITY: int = 5           # Город
    LOCALITY: int = 6       # Населенный пункт
    TERRITORY: int = 7      # Элемент планировочной структуры
    STREET: int = 8         # Элемент улично-дорожной сети
    PARCEL: int = 9         # Земельный участок
    BUILDING: int = 10      # Здание (сооружение)
    FLAT: int = 11          # Помещение
    ADMIN_TERRITORY = 1
    MUNICIPAL_TERRITORY = 2

    def __init__(self):
        self._current_time = datetime.datetime.now().strftime('%H.%M.%S')
        self._config = configparser.ConfigParser()
        self._config.read(os.path.join(os.path.dirname(os.path.realpath(__file__)), 'gar_api.ini'))
        self._BASE_URL = self._config.get('gar_api', 'base_url')
        self._TOKEN = self._config.get('gar_api', 'token')

    def _get_api_response(self, query) -> requests.Session:
        """
        Возвращает объект сессии для работы с API.

        Аргументы:
            query: строка для поиска
        Возвращает:
            gar_response: объект сессии
        """
        session = requests.Session()
        headers = {
            'accept': 'application/json',
            'master-token': self._TOKEN
        }
        try:
            gar_response = session.get(self._BASE_URL,
                                       params={'search_string': self._prepare_string(query),
                                               'address_type': self.MUNICIPAL_TERRITORY,},
                                       headers=headers,)
            gar_response = json.loads(json.dumps(gar_response.json(), indent=4, ensure_ascii=False))
        except Exception:
            raise ConnectionError
        return gar_response

    def get_fias_info(self, **kwargs):
        """
        Получает информацию из ГАР по адресным строкам, используя API-сервисы ФИАС.
        Аргументы:
            address: str - адресная строка
            min: int - минимальный уровень поиска адреса
        Возвращает:
            clean_address - очищенный ответ ГАР
        """
        # return [kwargs.get('address'), 'Стандартный адрес недоступен', 0, None, None,None, None, None, None, None,
        #         None, None, None, None,None, None, None, None, None, None, None, False, False, None, None]
        address = kwargs.get('address')
        min_level = kwargs.get('min', self.FLAT)
        gar_response = self._get_api_response(query=self._prepare_string(address))
        clean_address = self._filter_api_response(response=gar_response['addresses'], address=address, min=min_level)
        return clean_address

    def get_full_info_by_id(self, **kwargs):
        """
        Получает информацию из ГАР по идентификатору, используя API-сервисы ФИАС.
        Аргументы:
            fias_id: str - идентификатор ФИАС
        Возвращает:
            gar_response - ответ API-сервиса
        """
        fias_id = kwargs.get('fias_id')
        gar_response = self._get_api_response(query=fias_id)
        return gar_response

    @classmethod
    def _prepare_string(cls, addr_str: str) -> str:
        """ 
        Подготавливает строку к поиску.
        Аргументы:
                addr_str: str - адресная строка
        Возвращает:
                result: str - строка, готовая к загрузке в API-сервис.
        """
        result = addr_str.replace('_', ' ')
        result = result.replace('улица Набережная', 'улица Набережна')
        result = result.replace('улица набережная', 'улица набережна')
        result = result.replace('Набережная улица', 'Набережна улица')
        result = result.replace('набережная улица', 'набережна улица')
        return result

    @classmethod
    def _filter_api_response(cls, **kwargs) -> list:
        """
        Фильтрует адреса в ответе сервера и выбирает наиболее подходящий по запушенной строке.
        Аргументы:
                response: dict - ответ API-сервиса
                address: str - обработанный адрес, запушенный в API-сервис, в виде строки
                min: int - минимальный уровень поиска адреса
        Возвращает:
                list - список данных для модели TAddresses
        """
        address = kwargs.get('address')
        min_level = kwargs.get('min', cls.FLAT)
        response = kwargs.get('response')
        proper_index = -1
        best_ratio = -1
        for i in range(len(response)):
            address_tmp = response[i]['full_name']
            ratio = SequenceMatcher(
                    lambda x: x == ' ',
                    address.replace(',', '').replace('.', ''),
                    address_tmp.replace(',', '').replace('.', ''),
                    autojunk=False,
                ).ratio() * 100
            if best_ratio < ratio:
                best_ratio = ratio
                proper_index = i
        hierarchy_names = {}
        hierarchy_guids = {}
        standard_address = response[proper_index]['full_name']
        for element in response[proper_index]['hierarchy']:
            element_level = int(element['object_level_id'])
            if cls.RAION <= element_level <= min_level:
                hierarchy_names[element_level] = element['full_name']
                hierarchy_guids[element_level] = element['object_guid']
        is_actual = response[proper_index]['is_active']
        fias_is_valid = False
        cadnum_id = None
        cadnum = None
        try:
            cadnum = response[proper_index]['address_details']['cadastral_number'].strip()
            cadnum_id = uuid.uuid5(uuid.NAMESPACE_OID, cadnum)
        except Exception as err:
            pass
        return [
            address,
            standard_address,
            best_ratio,
            hierarchy_guids.get(cls.RAION, None),
            hierarchy_names.get(cls.RAION, None),
            hierarchy_guids.get(cls.SETTLEMENT, None),
            hierarchy_names.get(cls.SETTLEMENT, None),
            hierarchy_guids.get(cls.CITY, None),
            hierarchy_names.get(cls.CITY, None),
            hierarchy_guids.get(cls.LOCALITY, None),
            hierarchy_names.get(cls.LOCALITY, None),
            hierarchy_guids.get(cls.TERRITORY, None),
            hierarchy_names.get(cls.TERRITORY, None),
            hierarchy_guids.get(cls.STREET, None),
            hierarchy_names.get(cls.STREET, None),
            hierarchy_guids.get(cls.PARCEL, None),
            hierarchy_names.get(cls.PARCEL, None),
            hierarchy_guids.get(cls.BUILDING, None),
            hierarchy_names.get(cls.BUILDING, None),
            hierarchy_guids.get(cls.FLAT, None),
            hierarchy_names.get(cls.FLAT, None),
            is_actual,
            fias_is_valid,
            cadnum_id,
            cadnum
        ]
