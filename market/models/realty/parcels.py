from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_str, to_int, to_uuid, to_decimal, to_bool, to_date


class TOffersParcels (BaseModel):
    """
    Класс модели предложений земельных участков на сайтах продажи недвижимости
    """
    def __init__(self, is_commercial=False):
        self.is_commercial = is_commercial
        table_name = configuration.TABLES_CONFIG.get('parcels_characteristics')
        self._parcel_id = {
            'name': 'parcel_id',
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
        self._area = {
            'name': 'area',
            'convertor': to_decimal,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._description = {
            'name': 'description',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._seller = {
            'name': 'seller',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._phone = {
            'name': 'phone',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._utilization_id = {
            'name': 'utilization_id',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._allowed_rutiko_id = {
            'name': 'allowed_rutiko_id',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._gas = {
            'name': 'gas',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._water = {
            'name': 'water',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._electricity = {
            'name': 'electricity',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._sewerage = {
            'name': 'sewerage',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._buildings = {
            'name': 'buildings',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._parsing_date = {
            'name': 'parsing_date',
            'convertor': to_date,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._processing_date = {
            'name': 'processing_date',
            'convertor': to_date,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._screenshot = {
            'name': 'screenshot',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._address_id = {
            'name': 'address_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._is_conventional = {
            'name': 'is_conventional',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': True,
        }
        super().__init__(
            table_name=table_name,
            fields=(
                self._parcel_id,
                self._offer_id,
                self._area,
                self._description,
                self._seller,
                self._phone,
                self._utilization_id,
                self._allowed_rutiko_id,
                self._gas,
                self._water,
                self._electricity,
                self._sewerage,
                self._buildings,
                self._parsing_date,
                self._processing_date,
                self._screenshot,
                self._address_id,
                self._is_conventional,

            ),
        )

    @property
    def pk(self):
        return self._parcel_id.get('name')

    @property
    def parcel_id(self):
        return self._parcel_id.get('name')

    @property
    def offer_id(self):
        return self._offer_id.get('name')

    @property
    def area(self):
        return self._area.get('name')

    @property
    def description(self):
        return self._description.get('name')

    @property
    def seller(self):
        return self._seller.get('name')

    @property
    def phone(self):
        return self._phone.get('name')

    @property
    def utilization_id(self):
        return self._utilization_id.get('name')

    @property
    def allowed_rutiko_id(self):
        return self._allowed_rutiko_id.get('name')

    @property
    def gas(self):
        return self._gas.get('name')

    @property
    def water(self):
        return self._water.get('name')

    @property
    def electricity(self):
        return self._electricity.get('name')

    @property
    def sewerage(self):
        return self._sewerage.get('name')

    @property
    def buildings(self):
        return self._buildings.get('name')

    @property
    def parsing_date(self):
        return self._parsing_date.get('name')

    @property
    def processing_date(self):
        return self._processing_date.get('name')

    @property
    def screenshot(self):
        return self._screenshot.get('name')

    @property
    def address_id(self):
        return self._address_id.get('name')

    @property
    def is_conventional(self):
        return self._is_conventional.get('name')
