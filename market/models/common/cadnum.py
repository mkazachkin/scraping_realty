from market.config import configuration
from market.models.base.basemodel import BaseModel
from market.utils.convertor import to_uuid, to_str, to_float, to_bool, to_int


class TCadnums(BaseModel):
    """
    Класс модели таблицы кадастровых номеров
    """
    def __init__(self):
        table_name = configuration.TABLES_CONFIG.get('cadnums')
        self._cadnum_id = {
            'name': 'cadnum_id',
            'convertor': to_uuid,
            'key_field': True,
            'update_on_conflict': False,
        }
        self._cadnum_code = {
            'name': 'cadnum_code',
            'convertor': to_str,
            'key_field': False,
            'update_on_conflict': False,
        }
        self._realty_id = {
            'name': 'realty_id',
            'convertor': to_bool,
            'key_field': False,
            'update_on_conflict': False,
        }

        super().__init__(
            table_name=table_name,
            fields=(
                self._cadnum_id,
                self._cadnum_code,
                self._realty_id
            ),
        )

    @property
    def cadnum_id(self):
        return self._cadnum_id.get('name')

    @property
    def cadnum_code(self):
        return self._cadnum_code.get('name')

    @property
    def realty_id(self):
        return self._realty_id.get('name')