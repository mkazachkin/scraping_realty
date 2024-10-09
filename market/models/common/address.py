from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_uuid, to_str, to_float, to_bool


class TAddresses(BaseModel):
    """
    Класс модели таблицы адресов
    """
    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('addresses')
        self._address_id = {
            'name': 'address_id',
            'convertor': to_uuid,
            'key_field': True,
            'update_on_conflict': False,
        }
        self._address_str_original = {
            'name': 'address_str_original',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._address_str_standard = {
            'name': 'address_str_standard',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_ratio = {
            'name': 'fias_ratio',
            'convertor': to_float,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_03_id = {
            'name': 'fias_level_03_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_03_anno = {
            'name': 'fias_level_03_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_04_id = {
            'name': 'fias_level_04_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_04_anno = {
            'name': 'fias_level_04_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_05_id = {
            'name': 'fias_level_05_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_05_anno = {
            'name': 'fias_level_05_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_06_id = {
            'name': 'fias_level_06_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_06_anno = {
            'name': 'fias_level_06_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_07_id = {
            'name': 'fias_level_07_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_07_anno = {
            'name': 'fias_level_07_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_08_id = {
            'name': 'fias_level_08_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_08_anno = {
            'name': 'fias_level_08_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_09_id = {
            'name': 'fias_level_09_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_09_anno = {
            'name': 'fias_level_09_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_10_id = {
            'name': 'fias_level_10_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_10_anno = {
            'name': 'fias_level_10_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_11_id = {
            'name': 'fias_level_11_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_level_11_anno = {
            'name': 'fias_level_11_anno',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._is_actual = {
            'name': 'is_actual',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._fias_is_valid = {
            'name': 'fias_is_valid',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._cadnum_id = {
            'name': 'cadnum_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        super().__init__(
            table_name=table_name,
            fields=(
                self._address_id,
                self._address_str_original,
                self._address_str_standard,
                self._fias_ratio,
                self._fias_level_03_id,
                self._fias_level_03_anno,
                self._fias_level_04_id,
                self._fias_level_04_anno,
                self._fias_level_05_id,
                self._fias_level_05_anno,
                self._fias_level_06_id,
                self._fias_level_06_anno,
                self._fias_level_07_id,
                self._fias_level_07_anno,
                self._fias_level_08_id,
                self._fias_level_08_anno,
                self._fias_level_09_id,
                self._fias_level_09_anno,
                self._fias_level_10_id,
                self._fias_level_10_anno,
                self._fias_level_11_id,
                self._fias_level_11_anno,
                self._is_actual,
                self._fias_is_valid,
                self._cadnum_id,
            ),
        )

    @property
    def pk(self):
        return self._address_id.get('name')

    @property
    def address_str_original(self):
        return self._address_str_original.get('name')

    @property
    def address_str_standard(self):
        return self._address_str_standard.get('name')

    @property
    def fias_ratio(self):
        return self._fias_ratio.get('name')

    @property
    def fias_level_03_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_03_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_04_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_04_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_05_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_05_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_06_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_06_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_07_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_07_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_08_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_08_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_09_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_09_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_10_id(self):
        return self._fias_level_03_id.get('name')

    @property
    def fias_level_10_anno(self):
        return self._fias_level_03_id.get('name')

    @property
    def is_actual(self):
        return self._is_actual.get('name')

    @property
    def fias_is_valid(self):
        return self._fias_is_valid.get('name')

    @property
    def cadnum_id(self):
        return self._cadnum_id.get('name')
