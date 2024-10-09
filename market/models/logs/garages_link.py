"""
Модель представления таблицы связи лога и таблицы характеристик гаражей
"""
from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_uuid


class LGaragesLogs(BaseModel):
    """
    Класс модели связи характеристик гаражей и логов их парсинга
    """
    _instance = None

    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('garages_logs')
        self._link_id = {
            'name': 'link_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': False,
        }
        self._garage_id = {
            'name': 'garage_id',
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
                self._garage_id,
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
    def garage_id(self):
        return self._garage_id.get('name')

    @property
    def log_id(self):
        return self._log_id.get('name')
