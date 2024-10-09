"""
Модель представления таблицы связи лога и таблицы характеристик дома
"""
from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_uuid


class LHousesLogs(BaseModel):
    """
    Класс модели связи характеристик помещений и логов их парсинга
    """
    _instance = None

    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('houses_logs')
        self._link_id = {
            'name': 'link_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': False,
        }
        self._house_id = {
            'name': 'house_id',
            'convertor': to_uuid,
            'key_field': True,
            'update_on_conflict': False,
        }
        self._log_id = {
            'name': 'log_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        super().__init__(
            table_name=table_name,
            fields=(
                self._link_id,
                self._house_id,
                self._log_id,
            ),
        )

    @property
    def pk(self):
        return self._link_id.get('name')

    @property
    def link_id(self):
        return self._link_id.get('name')

    @property
    def flat_id(self):
        return self._house_id.get('name')

    @property
    def log_id(self):
        return self._log_id.get('name')
