from market.config import configuration
from market.models.logs.flats_link import LFlatsLogs
from market.models.logs.parcels_link import LParcelsLogs
from market.models.logs.houses_link import LHousesLogs
from market.models.logs.rooms_link import LRoomsLogs
from market.models.logs.garages_link import LGaragesLogs


class FabLogLinks:
    """
    Класс фабрики инициализированных моделей линков к логам
    """
    link_models = {
        configuration.TABLES_CONFIG.get('parcels_characteristics'): LParcelsLogs,
        configuration.TABLES_CONFIG.get('flats_characteristics'): LFlatsLogs,
        configuration.TABLES_CONFIG.get('houses_characteristics'): LHousesLogs,
        configuration.TABLES_CONFIG.get('rooms_characteristics'): LRoomsLogs,
        configuration.TABLES_CONFIG.get('garages_characteristics'): LGaragesLogs,
    }

    def get(self, table_name: str):
        """
        Возвращает парсеры для таблицы
        Аргументы:
            table_name: str - имя таблицы
        Возвращает:
        """
        try:
            return self.link_models[table_name]
        except KeyError:
            return None
