import re
from typing import Optional, Union
from .dictionaries import SYNONYMS, CLEAN_SENSITIVE, CLEAN_INSENSITIVE, FIXING


def clean_description(description: str) -> str:
    """
    Очищает текст от emoji, очищает текст от escape-последовательностей и прочих символов.
    Аргументы:
        str: - Сырой текст описания объявления
    Возвращает:
        str: - очищенный текст предложения или None, если возникла ошибка
    """
    words = re.compile(r"[^а-яА-ЯA-Za-zёЁ\d\s\\.-–—:,()]")
    spaces = re.compile(r'\s+')
    description = re.sub(words, '', description).strip()
    description = re.sub(spaces, ' ', description)
    return description


def clean_area(area: str) -> Union[float, int, None]:
    """
    Очищает текст с данными площади от лишних слов, оставляя только цифры, а также проверяет единицы измерения площади
    Аргументы:
        str: - Строка содержащая цифры и единицы измерения площади
    Возвращает:
        int: - значения площади в метрах квадратных, если вычислить не удалось - None
    """
    units_measurement = {'сот': 100, 'га': 10000}
    digits = re.compile(r"[^\d.,]+")
    unit = re.compile(r"[\d.,]+")
    area_digits = re.sub(digits, '', area).replace(',', '.').strip('.')
    area_unit = re.sub(unit, '', area)
    area_meter = re.search('м', area_unit)
    area_acres = re.search('сот', area_unit)
    area_hectare = re.search('га', area_unit)

    if area_meter:
        return float(str(area_digits[:-1]))
    elif area_acres:
        return int(float(area_digits) * units_measurement['сот'])
    elif area_hectare:
        return int(float(area_digits) * units_measurement['га'])

    try:
        return float(area_digits)
    except ValueError:
        return None


def clean_address(address: str) -> Optional[str]:
    """
    Производит обработку текста адреса, удаляя лишние символы и заменяя слова.
    Аргументы:
            address: str - строка адреса.
    Возвращает:
            str: - полностью отформатированный адрес
    """
    if address is None:
        return None
    ru_letters = 'асенкмортхуАСЕНКМОРТХУ'
    en_letters = 'acehkmoptxyACEHKMOPTXY'
    for i in range(len(en_letters)):
        address = address.replace(en_letters[i], ru_letters[i])

    for wrong_name, proper_name in FIXING.items():
        address = re.sub(wrong_name, proper_name, address)
    address = f' {address.strip()} '

    for wrong_name, proper_name in SYNONYMS.items():
        address = re.sub(wrong_name, proper_name, address)

    for wrong_name, proper_name in CLEAN_SENSITIVE.items():
        address = re.sub(wrong_name, proper_name, address)

    for wrong_name, proper_name in CLEAN_INSENSITIVE.items():
        address = re.sub(wrong_name, proper_name, address, flags=re.IGNORECASE)

    if 'республика коми' not in address.lower():
        address = f'Республика Коми, {address}'

    return address
