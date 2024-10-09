from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_uuid, to_date, to_int, to_bool


class TOffersHistory(BaseModel):
    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('offers_history')
        self._history_id = {
            'name': 'history_id',
            'convertor': to_uuid,
            'key_field': True,
            'update_on_conflict': False,
        }
        self._offer_id = {
            'name': 'offer_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': False,
        }
        self._start_date = {
            'name': 'start_date',
            'convertor': to_date,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._stop_date = {
            'name': 'stop_date',
            'convertor': to_date,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._price = {
            'name': 'price',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._is_new = {
            'name': 'is_new',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._is_last = {
            'name': 'is_last',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        super().__init__(
            table_name=table_name,
            fields=(
                self._history_id,
                self._offer_id,
                self._start_date,
                self._stop_date,
                self._price,
                self._is_new,
                self._is_last,
            ),
        )

    @property
    def pk(self):
        return self._history_id.get('name')

    @property
    def history_id(self):
        return self._history_id.get('name')

    @property
    def offer_id(self):
        return self._offer_id.get('name')

    @property
    def start_date(self):
        return self._start_date.get('name')

    @property
    def stop_date(self):
        return self._stop_date.get('name')

    @property
    def price(self):
        return self._price.get('name')

    @property
    def is_new(self):
        return self._is_new.get('name')

    @property
    def is_last(self):
        return self._is_last.get('name')
