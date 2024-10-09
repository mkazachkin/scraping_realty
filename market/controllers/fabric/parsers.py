from config import configuration
from market.controllers.parsers.flats_167 import Flats167


class FabParsers:
    """
    Класс фабрики парсеров
    """
    COMMERCIAL = True

    parsers = {
        configuration.TABLES_CONFIG.get('houses_characteristics'): [

        ],
        configuration.TABLES_CONFIG.get('parcels_characteristics'): [

        ],
        configuration.TABLES_CONFIG.get('flats_characteristics'): [
            Flats167(not COMMERCIAL),
        ],
        configuration.TABLES_CONFIG.get('rooms_characteristics'): [

        ],
        configuration.TABLES_CONFIG.get('garages_characteristics'): [

        ],
    }

    def get(self, table_name: str):
        """
        Возвращает парсеры для таблицы
        Аргументы:
            table_name: str - имя таблицы
        Возвращает:
        """
        try:
            return self.parsers[table_name]
        except KeyError:
            return None
