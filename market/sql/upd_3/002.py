from time import sleep

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


def get_addresses(cursor):
    """
    Извлекает все записи из таблицы t_addresses.
    """
    query = "SELECT * FROM public.tmp_addresses;"
    cursor.execute(query)
    return cursor.fetchall()


def create_tables(cursor):
    """
    Создает таблицы для хранения уровней адресов.
    """
    for level in range(1, 12):
        level_str = str(level).zfill(2)
        query = f"""
            CREATE TABLE IF NOT EXISTS public.d_fias_level_{level_str}(
                fias_level_{level_str}_id uuid NOT NULL,
                fias_level_{level_str}_anno varchar NOT NULL,
                fias_level_{level_str}_full_anno varchar NOT NULL,
                CONSTRAINT d_fias_level_{level_str}_pk PRIMARY KEY (fias_level_{level_str}_id)
            );
        """
        cursor.execute(query)

def process_addresses(api, addresses):
    """
    Обрабатывает список адресов, получая дополнительную информацию через API.
    """
    def send_query(fias_id):
        try:
            response = api.get_full_info_by_id(fias_id=fias_id)['addresses'][0]
            response_fias_id = response['object_guid']
            if response_fias_id != fias_id:
                raise Exception(f'{fias_id} != {response_fias_id}')
            response_fias_full_name = response['full_name']
            response_hierarchy = response['hierarchy']
            response_fias_name = None
            for address_level in response_hierarchy:
                hierarchy_level = address_level['object_level_id']
                hierarchy_fias_id = address_level['object_guid']
                hierarchy_name = address_level['full_name']

                if hierarchy_fias_id == fias_id:
                    if hierarchy_level != level:
                        raise Exception(f'{hierarchy_level} != {level}')
                    response_fias_name = hierarchy_name
                else:
                    levels[hierarchy_level].add(hierarchy_fias_id)

            if response_fias_name is None:
                raise Exception(f'{fias_id} name not found')

            levels_data[level].append(
                {
                    f'fias_level_{str(level).zfill(2)}_id': fias_id,
                    f'fias_level_{str(level).zfill(2)}_anno': response_fias_name,
                    f'fias_level_{str(level).zfill(2)}_full_anno': response_fias_full_name,
                }
            )
        except Exception as err:
            return False
        return True

    levels_data = {level: [] for level in range(1, 12)}
    levels = {level: set() for level in range(1, 12)}

    for record in addresses:
        for level in range(3, 12):
            column_num = level * 2 - 2
            fias_id = record[column_num]
            if fias_id:
                levels[level].add(fias_id)

    for level in range(11, 0, -1):
        print(f'Processing level {level}')
        count = 1
        for fias_id in levels[level]:
            print(f'Processing address {count} of {len(levels[level])}')
            count += 1
            count_query = 5
            while count_query > 0 and not send_query(fias_id):
                sleep(3)
                count_query -= 1
                print(f'Retry connection №{5 - count_query} for fias_id:{fias_id}')
            if count_query == 0:
                print(f'Error connection for fias_id:{fias_id}')
                raise ConnectionError
    return levels_data


if __name__ == "__main__":
    api = GarApi()
    db = get_db_connection()
    if db:
        with db.cursor() as cursor:
            addresses = get_addresses(cursor)
            create_tables(cursor)
            levels_data = process_addresses(api, addresses)
            for level in range(1, 12):
                table_name = f"d_fias_level_{str(level).zfill(2)}"
                insert_query = f"INSERT INTO public.{table_name} (" \
                               f"fias_level_{str(level).zfill(2)}_id," \
                               f"fias_level_{str(level).zfill(2)}_anno," \
                               f"fias_level_{str(level).zfill(2)}_full_anno)" \
                               f"VALUES (%s, %s, %s);"
                for data in levels_data[level]:
                    cursor.execute(insert_query, (data[f'fias_level_{str(level).zfill(2)}_id'.format(level)],
                                                     data[f'fias_level_{str(level).zfill(2)}_anno'.format(level)],
                                                     data[f'fias_level_{str(level).zfill(2)}_full_anno'.format(level)]))
    else:
        raise Exception("Не удалось подключиться к базе данных")
    db.commit()
    db.close()
