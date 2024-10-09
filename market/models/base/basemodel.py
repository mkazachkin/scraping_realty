import copy
from abc import abstractmethod


class BaseModel:
    """
    Базовая модель таблиц
    """
    def __init__(self, *args, **kwargs):
        """
        Базовая модель данных.
        Аргументы конструктора:
            fields: list - список словарей полей с именем и конвертером данных
            key_fields: tuple - список полей с уникальными ключами
            table_name: str - название таблицы в БД
        """
        self._fields = kwargs.get('fields', tuple())
        self.fields = tuple(field.get('name') for field in self._fields)
        self._updatable = tuple(field.get('name') for field in self._fields if field['update_on_conflict'])
        self.key_fields = tuple(field.get('name') for field in self._fields if field['key_field'])
        self.data: list = []
        self.table_name: str = kwargs.get('table_name', '')

    def __add__(self, other):
        """
        Складывает данные двух объектов
        """
        if not isinstance(other, type(self)):
            raise ArithmeticError('Не могу сложить объекты разных типов')
        result = copy.deepcopy(self)
        for data in other.data:
            result.add(**data)
        return result

    def add(self, **kwargs):
        """
        Добавляет данные в модель
        """
        record = {}
        for field in self._fields:
            field_name = field.get('name')
            field_converter = field.get('convertor')
            field_value = field_converter(kwargs.get(field_name, None))
            record[field_name] = field_value
        record['disable'] = False
        self.data.append(record)

    @abstractmethod
    def pk(self):
        """
        Возвращает название поля первичного ключа
        """

    def add_row(self, values: list):
        """
        Добавляет данные в модель по порядку колонок из списка
        """
        self.add(**{self.fields[i]: values[i] for i in range(len(values))})

    @property
    def updated_fields(self) -> tuple:
        """
        Возвращает поля, доступные для обновления при конфликте ключей в БД
        """
        return tuple(field for field in self._updatable)

    @property
    def prepared_data(self):
        """
        Возвращает данные, подготовленные для вставки в таблицу
        """
        pk_set = set()
        for i in range(len(self.data)):
            if self.data[i].get(self.pk) not in pk_set:
                pk_set.add(self.data[i].get(self.pk))
            else:
                self.data[i]['disable'] = True
        return [tuple(value for field, value in record.items() if field != 'disable')
                for record in self.data if not record.get('disable')]
