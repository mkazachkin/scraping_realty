from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_int, to_str, to_uuid


class TOffers(BaseModel):
    """
    Класс модели предложения на сайтах продажи недвижимости
    """
    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('offers')
        self._offer_id = {
            'name': 'offer_id',
            'convertor': to_uuid,
            'key_field': False,
            'update_on_conflict': False,
        }
        self._site_id = {
            'name': 'site_id',
            'convertor': to_str,
            'key_field': True,
            'update_on_conflict': False,
        }
        self._url = {
            'name': 'url',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': True,
        }
        self._parser_id = {
            'name': 'parser_id',
            'convertor': to_int,
            'key_field': False,
            'update_on_conflict': True,
        }
        super().__init__(
            table_name=table_name,
            fields=(
                self._offer_id,
                self._site_id,
                self._url,
                self._parser_id,
            ),
        )

    @property
    def pk(self):
        return self._offer_id.get('name')

    @property
    def offer_id(self):
        return self._offer_id.get('name')

    @property
    def site_id(self):
        return self._site_id.get('name')

    @property
    def url(self):
        return self._url.get('name')

    @property
    def parser_id(self):
        return self._parser_id.get('name')
