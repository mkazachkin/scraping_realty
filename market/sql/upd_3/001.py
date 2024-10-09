import psycopg2
from market.config import configuration
from gar_api.gar_api import GarApi
import logging

# Настройка логирования
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')


def get_db_connection():
    """
    Создает и возвращает подключение к базе данных PostgreSQL.
    """
    try:
        conn = psycopg2.connect(
            dbname=configuration.DATABASE['database'],
            user=configuration.DATABASE['username'],
            password=configuration.DATABASE['password'],
            host=configuration.DATABASE['address'],
        )
        return conn
    except Exception as err:
        logging.error(f"Ошибка подключения к базе данных: {err}")
        return None


def get_fias_id_level_3(cursor):
    """
    Извлекает все записи из таблицы t_addresses.
    """
    query = "SELECT ta.fias_level_03_id FROM public.tmp_addresses ta WHERE ta.fias_level_03_id IS NOT NULL "\
            "GROUP BY ta.fias_level_03_id;"
    cursor.execute(query)
    return cursor.fetchall()


def create_tables(cursor):
    query = """
        DROP TABLE IF EXISTS public.tmp_addresses;
        SELECT * INTO public.tmp_addresses FROM public.t_addresses ta;
        ALTER TABLE public.tmp_addresses ADD fias_level_02_id uuid NULL;
        ALTER TABLE public.tmp_addresses ADD fias_level_01_id uuid NULL;
        ALTER TABLE public.tmp_addresses ADD CONSTRAINT tmp_addresses_pk PRIMARY KEY (address_id);
        CREATE INDEX tmp_addresses_fias_level_03_id_idx ON public.tmp_addresses (
            fias_level_01_id,
            fias_level_02_id,
            fias_level_03_id,
            fias_level_04_id,
            fias_level_05_id,
            fias_level_06_id,
            fias_level_07_id,
            fias_level_08_id,
            fias_level_09_id,
            fias_level_10_id,
            fias_level_11_id
        );
    """
    cursor.execute(query)


if __name__ == "__main__":
    api = GarApi()
    db = get_db_connection()
    if db:
        with db.cursor() as cursor:
            create_tables(cursor)
            db.commit()
            fias_ids = get_fias_id_level_3(cursor)
            for fias_id in fias_ids:
                response_hierarchy = api.get_full_info_by_id(fias_id=fias_id[0])['addresses'][0]['hierarchy']
                for address_level in response_hierarchy:
                    hierarchy_level = address_level['object_level_id']
                    hierarchy_fias_id = address_level['object_guid']

                    if hierarchy_fias_id != fias_id:
                        query = f"""
                            UPDATE
                                public.tmp_addresses
                            SET
                                fias_level_{str(hierarchy_level).zfill(2)}_id = '{hierarchy_fias_id}'
                            WHERE
                                fias_level_03_id = '{fias_id[0]}';
                        """
                        cursor.execute(query)
else:
    raise Exception("Не удалось подключиться к базе данных")
db.commit()
db.close()
