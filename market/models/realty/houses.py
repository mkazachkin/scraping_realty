from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_str, to_int, to_uuid, to_decimal, to_bool, to_date


class TOffersHouses(BaseModel):
    """
    Класс модели предложений домов на сайтах продажи недвижимости
    """
    def __init__(self, is_commercial=False):
        self.is_commercial = is_commercial
        table_name = configuration.TABLES_CONFIG.get('houses_characteristics')
        self._house_id = {
            'name': 'house_id',
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
        self._land_area = {
            'name': 'land_area',
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
        self._wall_id = {
            'name': 'wall_id',
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
        self._utilization_id = {
            'name': 'utilization_id',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._floors = {
            'name': 'floors',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._built = {
            'name': 'built',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._rooms = {
            'name': 'rooms',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._renovation_id = {
            'name': 'renovation_id',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._other_buildings = {
            'name': 'other_buildings',
            'convertor': to_str,
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
        self._sewerage = {
            'name': 'sewerage',
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
        self._heating = {
            'name': 'heating',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._subgroup_id = {
            'name': 'subgroup_id',
            'convertor': to_int,
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
                self._house_id,
                self._offer_id,
                self._area,
                self._land_area,
                self._description,
                self._seller,
                self._phone,
                self._wall_id,
                self._allowed_rutiko_id,
                self._utilization_id,
                self._floors,
                self._built,
                self._rooms,
                self._renovation_id,
                self._other_buildings,
                self._gas,
                self._water,
                self._sewerage,
                self._electricity,
                self._heating,
                self._subgroup_id,
                self._parsing_date,
                self._processing_date,
                self._screenshot,
                self._address_id,
                self._is_conventional,

            ),
        )

    @property
    def pk(self):
        return self._house_id.get('name')

    @property
    def house_id(self):
        return self._house_id.get('name')

    @property
    def offer_id(self):
        return self._offer_id.get('name')

    @property
    def address_id(self):
        return self._address_id.get('name')

    @property
    def area(self):
        return self._area.get('name')

    @property
    def land_area(self):
        return self._land_area.get('name')

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
    def wall_id(self):
        return self._wall_id.get('name')

    @property
    def allowed_rutiko_id(self):
        return self._allowed_rutiko_id.get('name')

    @property
    def utilization_id(self):
        return self._utilization_id.get('name')

    @property
    def floors(self):
        return self._floors.get('name')

    @property
    def built(self):
        return self._built.get('name')

    @property
    def rooms(self):
        return self._rooms.get('name')

    @property
    def renovation_id(self):
        return self._renovation_id.get('name')

    @property
    def other_buildings(self):
        return self._other_buildings.get('name')

    @property
    def gas(self):
        return self._gas.get('name')

    @property
    def water(self):
        return self._water.get('name')

    @property
    def sewerage(self):
        return self._sewerage.get('name')

    @property
    def electricity(self):
        return self._electricity.get('name')

    @property
    def heating(self):
        return self._heating.get('name')

    @property
    def subgroup_id(self):
        return self._subgroup_id.get('name')

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
    def is_conventional(self):
        return self._is_conventional.get('name')
