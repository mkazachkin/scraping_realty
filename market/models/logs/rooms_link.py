"""
Модель представления таблицы связи лога и таблицы характеристик комнаты
"""
from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_uuid


class LRoomsLogs(BaseModel):
    """
    Класс модели связи характеристик помещений и логов их парсинга
    """
    _instance = None

    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('rooms_logs')
        self._link_id = {
            'name': 'link_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': False,
        }
        self._room_id = {
            'name': 'room_id',
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
                self._room_id,
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
        return self._room_id.get('name')

    @property
    def log_id(self):
        return self._log_id.get('name')
