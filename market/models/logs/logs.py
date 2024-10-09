"""
Модель представления таблицы логов
"""

from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_str, to_uuid, to_date, to_time


class TLogs(BaseModel):
    """
    Класс модели предложения на сайтах продажи недвижимости
    """
    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('logs')
        self._log_id = {
            'name': 'log_id',
            'convertor': to_uuid,
            'key_field': True,
            'update_on_conflict': False,
        }
        self._log_date = {
            'name': 'log_date',
            'convertor': to_date,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._log_time = {
            'name': 'log_time',
            'convertor': to_time,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._log_text = {
            'name': 'log_text',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._log_status = {
            'name': 'log_status',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        super().__init__(
            table_name=table_name,
            fields=(
                self._log_id,
                self._log_date,
                self._log_time,
                self._log_text,
                self._log_status,
            ),
        )

    @property
    def pk(self):
        return self._log_id.get('name')

    @property
    def log_id(self):
        return self._log_id.get('name')

    @property
    def log_date(self):
        return self._log_date.get('name')

    @property
    def log_time(self):
        return self._log_time.get('name')

    @property
    def log_text(self):
        return self._log_text.get('name')

    @property
    def log_status(self):
        return self._log_status.get('name')
