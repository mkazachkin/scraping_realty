CREATE TYPE public.datatype AS ENUM (
    '_integer',
    '_float',
    '_date',
    '_datetime',
    '_string'
);

CREATE TABLE public.d_allowed (
    allowed_id bigint NOT NULL,
    allowed_code character varying NOT NULL,
    allowed_anno character varying(128) NOT NULL
);
COMMENT ON TABLE public.d_allowed IS 'Классификатор Росреестра видов разрешенного использования земельных участков';
COMMENT ON COLUMN public.d_allowed.allowed_id IS 'Идентификатор вида разрешенного использования';
COMMENT ON COLUMN public.d_allowed.allowed_code IS 'Код вида разрешенного использования';
COMMENT ON COLUMN public.d_allowed.allowed_anno IS 'Описание вида разрешенного использования';

CREATE TABLE public.d_allowed_rutiko (
    allowed_rutiko_id smallint NOT NULL,
    allowed_rutiko_code character varying NOT NULL,
    allowed_rutiko_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_allowed_rutiko IS 'Классификатор видов использования земельных участков РУТИКО';
COMMENT ON COLUMN public.d_allowed_rutiko.allowed_rutiko_id IS 'Идентификатор вида использования';
COMMENT ON COLUMN public.d_allowed_rutiko.allowed_rutiko_code IS 'Код вида использования';
COMMENT ON COLUMN public.d_allowed_rutiko.allowed_rutiko_anno IS 'Описание вида использования';

CREATE TABLE public.d_floor (
    floor_id smallint NOT NULL,
    floor_code character varying NOT NULL,
    floor_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_floor IS 'Стандартизированные написания этажности помещения';
COMMENT ON COLUMN public.d_floor.floor_id IS 'Идентификатор этажности';
COMMENT ON COLUMN public.d_floor.floor_code IS 'Код этажности';
COMMENT ON COLUMN public.d_floor.floor_anno IS 'Описание этажности';

CREATE TABLE public.d_garage_type (
    garage_id smallint NOT NULL,
    garage_code character varying,
    garage_type_anno character varying
);
COMMENT ON TABLE public.d_garage_type IS 'Стандартизированные описания типа гаража';
COMMENT ON COLUMN public.d_garage_type.garage_id IS 'Идентификатор типа гаража';
COMMENT ON COLUMN public.d_garage_type.garage_code IS 'Код типа гаража';
COMMENT ON COLUMN public.d_garage_type.garage_type_anno IS 'Описание типа гаража';

CREATE TABLE public.d_parsers (
    parser_id integer NOT NULL,
    parser_code character varying NOT NULL,
    parser_prefix text NOT NULL,
    parser_class character varying NOT NULL,
    parser_anno character varying NOT NULL,
    parser_site character varying NOT NULL
);
COMMENT ON TABLE public.d_parsers IS 'Словарь парсеров рыночной информации';
COMMENT ON COLUMN public.d_parsers.parser_id IS 'Идентификатор парсера';
COMMENT ON COLUMN public.d_parsers.parser_code IS 'Код парсера';
COMMENT ON COLUMN public.d_parsers.parser_prefix IS 'Префикс идентификаторов объявлений парсера';
COMMENT ON COLUMN public.d_parsers.parser_class IS 'Название класса парсера в программе сбора информации';
COMMENT ON COLUMN public.d_parsers.parser_anno IS 'Описание парсера';
COMMENT ON COLUMN public.d_parsers.parser_site IS 'Название сайта для работы парсера';

CREATE TABLE public.d_realty (
    realty_id bigint NOT NULL,
    realty_code character varying(12) NOT NULL,
    realty_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_realty IS 'Виды объектов недвижимости';
COMMENT ON COLUMN public.d_realty.realty_id IS 'Идентификатор';
COMMENT ON COLUMN public.d_realty.realty_code IS 'Код по справочнику dRealty';
COMMENT ON COLUMN public.d_realty.realty_anno IS 'Вид объекта недвижимости';
CREATE TABLE public.d_renovation (
    renovation_id smallint NOT NULL,
    renovation_code character varying NOT NULL,
    renovation_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_renovation IS 'Стандартизированные описания качества ремонта квартир';
COMMENT ON COLUMN public.d_renovation.renovation_id IS 'Идентификатор качества';
COMMENT ON COLUMN public.d_renovation.renovation_code IS 'Код качества';
COMMENT ON COLUMN public.d_renovation.renovation_anno IS 'Описание качества';

CREATE TABLE public.d_subgroups (
    subgroup_id integer NOT NULL,
    subgroup_code character varying NOT NULL,
    subgroup_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_subgroups IS 'Классификатор групп зданий и сооружений РУТИКО';
COMMENT ON COLUMN public.d_subgroups.subgroup_id IS 'Идентификатор группы';
COMMENT ON COLUMN public.d_subgroups.subgroup_code IS 'Код группы';
COMMENT ON COLUMN public.d_subgroups.subgroup_anno IS 'Описание группы';

CREATE TABLE public.d_utilization (
    utilization_id bigint NOT NULL,
    utilization_code character varying(12) NOT NULL,
    utilization_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_utilization IS 'Классификатор видов использования земель dUtilization';
COMMENT ON COLUMN public.d_utilization.utilization_id IS 'Идентификатор вида использования земель';
COMMENT ON COLUMN public.d_utilization.utilization_code IS 'Код вида использования земель';
COMMENT ON COLUMN public.d_utilization.utilization_anno IS 'Описание вида использования земель';

CREATE TABLE public.d_walls (
    wall_id bigint NOT NULL,
    wall_code character varying(12) NOT NULL,
    wall_anno character varying NOT NULL
);
COMMENT ON TABLE public.d_walls IS 'Классификатор материалов наружных стен здания Росреестра';
COMMENT ON COLUMN public.d_walls.wall_id IS 'Идентификатор материала наружных стен';
COMMENT ON COLUMN public.d_walls.wall_code IS 'Код материала наружных стен';
COMMENT ON COLUMN public.d_walls.wall_anno IS 'Описание материала наружных стен';

CREATE TABLE public.l_characteristics_flats_logs (
    link_id uuid NOT NULL,
    flat_id uuid NOT NULL,
    log_id uuid NOT NULL
);
COMMENT ON TABLE public.l_characteristics_flats_logs IS 'Таблица связей характеристик помещений с рынка и лог-файлов их парсинга';
COMMENT ON COLUMN public.l_characteristics_flats_logs.link_id IS 'Идентификатор связи';
COMMENT ON COLUMN public.l_characteristics_flats_logs.flat_id IS 'Идентификатор помещения';
COMMENT ON COLUMN public.l_characteristics_flats_logs.log_id IS 'Идентификатор лога';

CREATE TABLE public.l_characteristics_garages_logs (
    link_id uuid NOT NULL,
    garage_id uuid NOT NULL,
    log_id uuid NOT NULL
);
COMMENT ON TABLE public.l_characteristics_garages_logs IS 'Таблица связей характеристик гаражей с рынка и лог-файлов их парсинга';
COMMENT ON COLUMN public.l_characteristics_garages_logs.link_id IS 'Идентификатор связи';
COMMENT ON COLUMN public.l_characteristics_garages_logs.garage_id IS 'Идентификатор гаража';
COMMENT ON COLUMN public.l_characteristics_garages_logs.log_id IS 'Идентификатор лога';

CREATE TABLE public.l_characteristics_houses_logs (
    link_id uuid NOT NULL,
    house_id uuid NOT NULL,
    log_id uuid NOT NULL
);
COMMENT ON TABLE public.l_characteristics_houses_logs IS 'Таблица связей характеристик домов с рынка и лог-файлов их парсинга';
COMMENT ON COLUMN public.l_characteristics_houses_logs.link_id IS 'Идентификатор связи';
COMMENT ON COLUMN public.l_characteristics_houses_logs.house_id IS 'Идентификатор дома';
COMMENT ON COLUMN public.l_characteristics_houses_logs.log_id IS 'Идентификатор лога';

CREATE TABLE public.l_characteristics_parcels_logs (
    link_id uuid NOT NULL,
    parcel_id uuid NOT NULL,
    log_id uuid NOT NULL
);
COMMENT ON TABLE public.l_characteristics_parcels_logs IS 'Таблица связей характеристик земельных участков с рынка и лог-файлов их парсинга';
COMMENT ON COLUMN public.l_characteristics_parcels_logs.link_id IS 'Идентификатор связи';
COMMENT ON COLUMN public.l_characteristics_parcels_logs.parcel_id IS 'Идентификатор земельногоу частка';
COMMENT ON COLUMN public.l_characteristics_parcels_logs.log_id IS 'Идентификатор лога';

CREATE TABLE public.l_characteristics_rooms_logs (
    link_id uuid NOT NULL,
    room_id uuid NOT NULL,
    log_id uuid NOT NULL
);
COMMENT ON TABLE public.l_characteristics_rooms_logs IS 'Таблица связей характеристик комнат с рынка и лог-файлов их парсинга';
COMMENT ON COLUMN public.l_characteristics_rooms_logs.link_id IS 'Идентификатор связи';
COMMENT ON COLUMN public.l_characteristics_rooms_logs.room_id IS 'Идентификатор комнаты';
COMMENT ON COLUMN public.l_characteristics_rooms_logs.log_id IS 'Идентификатор лога';

CREATE TABLE public.t_addresses (
    address_id uuid NOT NULL,
    address_str_original character varying NOT NULL,
    address_str_standard character varying NOT NULL,
    fias_ratio numeric(10,2) NOT NULL,
    fias_level_03_id uuid,
    fias_level_03_anno character varying,
    fias_level_04_id uuid,
    fias_level_04_anno character varying,
    fias_level_05_id uuid,
    fias_level_05_anno character varying,
    fias_level_06_id uuid,
    fias_level_06_anno character varying,
    fias_level_07_id uuid,
    fias_level_07_anno character varying,
    fias_level_08_id uuid,
    fias_level_08_anno character varying,
    fias_level_09_id uuid,
    fias_level_09_anno character varying,
    fias_level_10_id uuid,
    fias_level_10_anno character varying,
    fias_level_11_id uuid,
    fias_level_11_anno character varying,
    is_actual boolean NOT NULL,
    fias_is_valid boolean NOT NULL,
    cadnum_id uuid
);
COMMENT ON TABLE public.t_addresses IS 'Таблица адресов и их приведения к стандартному для ГАР (ФИАС) виду';
COMMENT ON COLUMN public.t_addresses.address_id IS 'Идентификатор адреса';
COMMENT ON COLUMN public.t_addresses.address_str_original IS 'Написание адреса';
COMMENT ON COLUMN public.t_addresses.address_str_standard IS 'Стандартное написание адреса';
COMMENT ON COLUMN public.t_addresses.fias_ratio IS 'Рейтинг соответствия написания адреса стандарту';
COMMENT ON COLUMN public.t_addresses.fias_level_03_id IS 'Идентификатор муниципального района';
COMMENT ON COLUMN public.t_addresses.fias_level_03_anno IS 'Муниципальный район';
COMMENT ON COLUMN public.t_addresses.fias_level_04_id IS 'Идентификатор сельского или городского поселения';
COMMENT ON COLUMN public.t_addresses.fias_level_04_anno IS 'Сельское или городское поселение';
COMMENT ON COLUMN public.t_addresses.fias_level_05_id IS 'Идентификатор города';
COMMENT ON COLUMN public.t_addresses.fias_level_05_anno IS 'Город';
COMMENT ON COLUMN public.t_addresses.fias_level_06_id IS 'Идентификатор населенного пункта';
COMMENT ON COLUMN public.t_addresses.fias_level_06_anno IS 'Населенный пункт';
COMMENT ON COLUMN public.t_addresses.fias_level_07_id IS 'Идентификатор элемента планировочной структуры';
COMMENT ON COLUMN public.t_addresses.fias_level_07_anno IS 'Элемент планировочной структуры';
COMMENT ON COLUMN public.t_addresses.fias_level_08_id IS 'Идентификатор элемента улично-дорожной сети';
COMMENT ON COLUMN public.t_addresses.fias_level_08_anno IS 'Элемент улично-дорожной сети';
COMMENT ON COLUMN public.t_addresses.fias_level_09_id IS 'Идентификатор земельного участка';
COMMENT ON COLUMN public.t_addresses.fias_level_09_anno IS 'Земельный участок';
COMMENT ON COLUMN public.t_addresses.fias_level_10_id IS 'Идентификатор здания (сооружения)';
COMMENT ON COLUMN public.t_addresses.fias_level_10_anno IS 'Здание (сооружение)';
COMMENT ON COLUMN public.t_addresses.fias_level_11_id IS 'Идентификатор помещения';
COMMENT ON COLUMN public.t_addresses.fias_level_11_anno IS 'Помещение';
COMMENT ON COLUMN public.t_addresses.is_actual IS 'Признак актуального адреса';
COMMENT ON COLUMN public.t_addresses.fias_is_valid IS 'Признак проверенного оператором адреса';
COMMENT ON COLUMN public.t_addresses.cadnum_id IS 'Идентификатор кадастрового номера';

CREATE TABLE public.t_cadnums (
    cadnum_id uuid NOT NULL,
    cadnum_code character varying NOT NULL,
    realty_id bigint
);
COMMENT ON TABLE public.t_cadnums IS 'Таблица кадастровых номеров';
COMMENT ON COLUMN public.t_cadnums.cadnum_id IS 'Идентификатор кадастрового номера';
COMMENT ON COLUMN public.t_cadnums.cadnum_code IS 'Кадастровый номер';
COMMENT ON COLUMN public.t_cadnums.realty_id IS 'Идентификатор вида недвижимости';

CREATE TABLE public.t_characteristics_flats (
    flat_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    rooms character varying,
    area numeric(10,2),
    floor_id smallint NOT NULL,
    floors smallint,
    wall_id bigint NOT NULL,
    renovation_id smallint NOT NULL,
    built integer,
    description character varying,
    seller character varying,
    phone character varying,
    screenshot character varying,
    parsing_date date NOT NULL,
    processing_date date,
    address_id uuid NOT NULL,
    has_furniture boolean NOT NULL,
    is_conventional boolean NOT NULL,
    subgroup_id integer NOT NULL
);
COMMENT ON TABLE public.t_characteristics_flats IS 'Характеристики помещений из объявлений продажи недвижимости';
COMMENT ON COLUMN public.t_characteristics_flats.flat_id IS 'Идентификатор помещения';
COMMENT ON COLUMN public.t_characteristics_flats.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_characteristics_flats.rooms IS 'Количество комнат в помещении';
COMMENT ON COLUMN public.t_characteristics_flats.area IS 'Площадь помещения';
COMMENT ON COLUMN public.t_characteristics_flats.floor_id IS 'Идентификатор этажа';
COMMENT ON COLUMN public.t_characteristics_flats.floors IS 'Этажность здания';
COMMENT ON COLUMN public.t_characteristics_flats.wall_id IS 'Идентификатор материала наружных стен';
COMMENT ON COLUMN public.t_characteristics_flats.renovation_id IS 'Идентификатор вида ремонта';
COMMENT ON COLUMN public.t_characteristics_flats.built IS 'Год постройки здания';
COMMENT ON COLUMN public.t_characteristics_flats.description IS 'Текст объявления';
COMMENT ON COLUMN public.t_characteristics_flats.seller IS 'Продавец';
COMMENT ON COLUMN public.t_characteristics_flats.phone IS 'Телефоны продавца';
COMMENT ON COLUMN public.t_characteristics_flats.screenshot IS 'Скриншот объявления';
COMMENT ON COLUMN public.t_characteristics_flats.parsing_date IS 'Дата сбора информации';
COMMENT ON COLUMN public.t_characteristics_flats.processing_date IS 'Дата обработки информации';
COMMENT ON COLUMN public.t_characteristics_flats.address_id IS 'Идентификатор адресной строки';
COMMENT ON COLUMN public.t_characteristics_flats.has_furniture IS 'Наличие встроенной мебели';
COMMENT ON COLUMN public.t_characteristics_flats.is_conventional IS 'Объект-аналог';
COMMENT ON COLUMN public.t_characteristics_flats.subgroup_id IS 'Идентификатор группы здания';

CREATE TABLE public.t_characteristics_garages (
    garage_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    area bigint,
    description character varying,
    seller character varying,
    phone character varying,
    garage_type smallint NOT NULL,
    wall_id bigint,
    water boolean,
    electricity boolean,
    heating boolean,
    pit boolean,
    screenshot character varying,
    parsing_date date NOT NULL,
    processing_date date,
    address_id uuid NOT NULL,
    subgroup_id integer,
    floor_id integer,
    is_conventional boolean NOT NULL
);
COMMENT ON TABLE public.t_characteristics_garages IS 'Таблица характеристик предложений о продаже гаражей различных типов';
COMMENT ON COLUMN public.t_characteristics_garages.garage_id IS 'Идентификатор гаража';
COMMENT ON COLUMN public.t_characteristics_garages.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_characteristics_garages.area IS 'Площадь гаража';
COMMENT ON COLUMN public.t_characteristics_garages.description IS 'Текст объявления';
COMMENT ON COLUMN public.t_characteristics_garages.seller IS 'Продавец';
COMMENT ON COLUMN public.t_characteristics_garages.phone IS 'Телефоны продавца';
COMMENT ON COLUMN public.t_characteristics_garages.garage_type IS 'Тип гаража';
COMMENT ON COLUMN public.t_characteristics_garages.wall_id IS 'Идентификатор материала наружных стен';
COMMENT ON COLUMN public.t_characteristics_garages.water IS 'Наличие централизованного водоснабжения';
COMMENT ON COLUMN public.t_characteristics_garages.electricity IS 'Наличие централизованного электроснабжения';
COMMENT ON COLUMN public.t_characteristics_garages.heating IS 'Отопление';
COMMENT ON COLUMN public.t_characteristics_garages.pit IS 'Наличие ямы/подвала';
COMMENT ON COLUMN public.t_characteristics_garages.screenshot IS 'Скриншот объявления';
COMMENT ON COLUMN public.t_characteristics_garages.parsing_date IS 'Дата сбора информации';
COMMENT ON COLUMN public.t_characteristics_garages.processing_date IS 'Дата обработки информации';
COMMENT ON COLUMN public.t_characteristics_garages.address_id IS 'Идентификатор адресной строки';
COMMENT ON COLUMN public.t_characteristics_garages.subgroup_id IS 'Идентификатор группы здания';
COMMENT ON COLUMN public.t_characteristics_garages.floor_id IS 'Идентификатор этажа';
COMMENT ON COLUMN public.t_characteristics_garages.is_conventional IS 'Объект-аналог';

CREATE TABLE public.t_characteristics_houses (
    house_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    area bigint,
    land_area bigint,
    description character varying,
    seller character varying,
    phone character varying,
    wall_id bigint,
    allowed_rutiko_id bigint NOT NULL,
    utilization_id bigint NOT NULL,
    floors integer,
    built integer,
    rooms integer,
    renovation_id smallint NOT NULL,
    other_buildings character varying,
    gas boolean,
    water boolean,
    sewerage boolean,
    electricity boolean,
    heating character varying,
    subgroup_id integer,
    parsing_date date NOT NULL,
    processing_date date,
    screenshot character varying,
    address_id uuid NOT NULL,
    is_conventional boolean NOT NULL
);
COMMENT ON TABLE public.t_characteristics_houses IS 'Таблица характеристик предложений о продаже домов';
COMMENT ON COLUMN public.t_characteristics_houses.house_id IS 'Идентификатор дома';
COMMENT ON COLUMN public.t_characteristics_houses.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_characteristics_houses.area IS 'Площадь дома';
COMMENT ON COLUMN public.t_characteristics_houses.land_area IS 'Площадь земли';
COMMENT ON COLUMN public.t_characteristics_houses.description IS 'Описание объявления';
COMMENT ON COLUMN public.t_characteristics_houses.seller IS 'Продавец';
COMMENT ON COLUMN public.t_characteristics_houses.phone IS 'Номер телефона';
COMMENT ON COLUMN public.t_characteristics_houses.wall_id IS 'Идентификатор материала наружных стен';
COMMENT ON COLUMN public.t_characteristics_houses.allowed_rutiko_id IS 'Идентификатор вида использования земель - РОСРЕЕСТР';
COMMENT ON COLUMN public.t_characteristics_houses.utilization_id IS 'Идентификатор вида использования земель - РУТИКО';
COMMENT ON COLUMN public.t_characteristics_houses.floors IS 'Этажность';
COMMENT ON COLUMN public.t_characteristics_houses.built IS 'Год постройки';
COMMENT ON COLUMN public.t_characteristics_houses.rooms IS 'Количество комнат';
COMMENT ON COLUMN public.t_characteristics_houses.renovation_id IS 'Идентификатор вида ремонта';
COMMENT ON COLUMN public.t_characteristics_houses.other_buildings IS 'Прочие постройки на участке';
COMMENT ON COLUMN public.t_characteristics_houses.gas IS 'Наличие газа';
COMMENT ON COLUMN public.t_characteristics_houses.water IS 'Наличие водопровода';
COMMENT ON COLUMN public.t_characteristics_houses.sewerage IS 'Наличие канализации';
COMMENT ON COLUMN public.t_characteristics_houses.electricity IS 'Наличие электричества';
COMMENT ON COLUMN public.t_characteristics_houses.heating IS 'Наличие и тип отопления';
COMMENT ON COLUMN public.t_characteristics_houses.subgroup_id IS 'Идентификатор группы здания';
COMMENT ON COLUMN public.t_characteristics_houses.parsing_date IS 'Дата сбора информации';
COMMENT ON COLUMN public.t_characteristics_houses.processing_date IS 'Дата обработки информации';
COMMENT ON COLUMN public.t_characteristics_houses.screenshot IS 'Скриншот объявления';
COMMENT ON COLUMN public.t_characteristics_houses.address_id IS 'Идентификатор адресной строки';
COMMENT ON COLUMN public.t_characteristics_houses.is_conventional IS 'Объект-аналог';

CREATE TABLE public.t_characteristics_parcels (
    parcel_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    area bigint,
    description character varying,
    seller character varying,
    phone character varying,
    utilization_id bigint NOT NULL,
    allowed_rutiko_id bigint NOT NULL,
    gas boolean,
    water boolean,
    electricity boolean,
    sewerage boolean,
    buildings boolean,
    parsing_date date NOT NULL,
    processing_date date,
    screenshot character varying,
    address_id uuid NOT NULL,
    is_conventional boolean NOT NULL
);
COMMENT ON TABLE public.t_characteristics_parcels IS 'Характеристики земельных участков из объявлений продажи недвижимости';
COMMENT ON COLUMN public.t_characteristics_parcels.parcel_id IS 'Идентификатор земельного участка';
COMMENT ON COLUMN public.t_characteristics_parcels.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_characteristics_parcels.area IS 'Площадь земельного участка';
COMMENT ON COLUMN public.t_characteristics_parcels.description IS 'Текст объявления';
COMMENT ON COLUMN public.t_characteristics_parcels.seller IS 'Продавец';
COMMENT ON COLUMN public.t_characteristics_parcels.phone IS 'Телефоны продавца';
COMMENT ON COLUMN public.t_characteristics_parcels.utilization_id IS 'Идентификатор вида использования земель';
COMMENT ON COLUMN public.t_characteristics_parcels.allowed_rutiko_id IS 'Идентификатор вида разрешенного использования';
COMMENT ON COLUMN public.t_characteristics_parcels.gas IS 'Наличие централизованного газоснабжения';
COMMENT ON COLUMN public.t_characteristics_parcels.water IS 'Наличие централизованного водоснабжения';
COMMENT ON COLUMN public.t_characteristics_parcels.electricity IS 'Наличие централизованного электроснабжения';
COMMENT ON COLUMN public.t_characteristics_parcels.sewerage IS 'Наличие централизованной канализации';
COMMENT ON COLUMN public.t_characteristics_parcels.buildings IS 'Наличие строений на участке';
COMMENT ON COLUMN public.t_characteristics_parcels.parsing_date IS 'Дата сбора информации';
COMMENT ON COLUMN public.t_characteristics_parcels.processing_date IS 'Дата обработки информации';
COMMENT ON COLUMN public.t_characteristics_parcels.screenshot IS 'Скриншот объявления';
COMMENT ON COLUMN public.t_characteristics_parcels.address_id IS 'Идентификатор адресной строки';
COMMENT ON COLUMN public.t_characteristics_parcels.is_conventional IS 'Объект-аналог';

CREATE TABLE public.t_characteristics_rooms (
    room_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    area integer,
    floor_id smallint,
    floors smallint,
    wall_id bigint,
    renovation_id smallint NOT NULL,
    built integer,
    description character varying,
    seller character varying,
    phone character varying,
    quantity_rooms character varying,
    screenshot character varying,
    parsing_date date NOT NULL,
    processing_date date,
    address_id uuid NOT NULL,
    has_furniture boolean,
    subgroup_id integer NOT NULL,
    is_conventional boolean NOT NULL
);
COMMENT ON TABLE public.t_characteristics_rooms IS 'Характеристики комнат из объявлений продажи недвижимости';
COMMENT ON COLUMN public.t_characteristics_rooms.room_id IS 'Идентификатор земельного участка';
COMMENT ON COLUMN public.t_characteristics_rooms.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_characteristics_rooms.area IS 'Площадь комнаты';
COMMENT ON COLUMN public.t_characteristics_rooms.floor_id IS 'Идентификатор этажа';
COMMENT ON COLUMN public.t_characteristics_rooms.floors IS 'Этажность здания';
COMMENT ON COLUMN public.t_characteristics_rooms.wall_id IS 'Идентификатор материала наружных стен';
COMMENT ON COLUMN public.t_characteristics_rooms.renovation_id IS 'Идентификатор вида ремонта';
COMMENT ON COLUMN public.t_characteristics_rooms.built IS 'Год постройки здания';
COMMENT ON COLUMN public.t_characteristics_rooms.description IS 'Текст объявления';
COMMENT ON COLUMN public.t_characteristics_rooms.seller IS 'Продавец';
COMMENT ON COLUMN public.t_characteristics_rooms.phone IS 'Телефоны продавца';
COMMENT ON COLUMN public.t_characteristics_rooms.quantity_rooms IS 'Количество продаваемых комнат в объявлении';
COMMENT ON COLUMN public.t_characteristics_rooms.screenshot IS 'Скриншот объявления';
COMMENT ON COLUMN public.t_characteristics_rooms.parsing_date IS 'Дата сбора информации';
COMMENT ON COLUMN public.t_characteristics_rooms.processing_date IS 'Дата обработки информации';
COMMENT ON COLUMN public.t_characteristics_rooms.address_id IS 'Идентификатор адресной строки';
COMMENT ON COLUMN public.t_characteristics_rooms.has_furniture IS 'Наличие встроенной мебели';
COMMENT ON COLUMN public.t_characteristics_rooms.subgroup_id IS 'Идентификатор группы здания';
COMMENT ON COLUMN public.t_characteristics_rooms.is_conventional IS 'Объект-аналог';

CREATE TABLE public.t_comments (
    comment_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    username character varying NOT NULL,
    commentary character varying NOT NULL,
    date_writing timestamp with time zone NOT NULL
);
COMMENT ON TABLE public.t_comments IS 'Таблица для хранения всех комментариев к объектам с рынка';
COMMENT ON COLUMN public.t_comments.comment_id IS 'Уникальный идентификатор комментария';
COMMENT ON COLUMN public.t_comments.offer_id IS 'Уникальный идентификатор объекта с рынка';
COMMENT ON COLUMN public.t_comments.username IS 'Имя автора комментария';
COMMENT ON COLUMN public.t_comments.commentary IS 'Текст комментария';
COMMENT ON COLUMN public.t_comments.date_writing IS 'Дата и время комментария';

CREATE TABLE public.t_logs (
    log_id uuid NOT NULL,
    log_date date NOT NULL,
    log_time time without time zone NOT NULL,
    log_text text NOT NULL,
    log_status character varying NOT NULL
);
COMMENT ON TABLE public.t_logs IS 'Характеристики земельных участков из объявлений продажи недвижимости';
COMMENT ON COLUMN public.t_logs.log_id IS 'Идентификатор лога';
COMMENT ON COLUMN public.t_logs.log_date IS 'Дата сохранения';
COMMENT ON COLUMN public.t_logs.log_time IS 'Время сохранения';
COMMENT ON COLUMN public.t_logs.log_text IS 'Содержимое лога';
COMMENT ON COLUMN public.t_logs.log_status IS 'Статус завершения сбора';

CREATE TABLE public.t_offers (
    offer_id uuid NOT NULL,
    site_id character varying NOT NULL,
    url character varying NOT NULL,
    parser_id integer NOT NULL
);
COMMENT ON TABLE public.t_offers IS 'Объявления о продаже недвижимости';
COMMENT ON COLUMN public.t_offers.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_offers.site_id IS 'Идентификатор объявления на сайте с префиксом парсера';
COMMENT ON COLUMN public.t_offers.url IS 'Ссылка на объявление';
COMMENT ON COLUMN public.t_offers.parser_id IS 'Идентификатор парсера';

CREATE TABLE public.t_offers_history (
    history_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    start_date date NOT NULL,
    stop_date date,
    price bigint NOT NULL,
    is_new boolean NOT NULL,
    is_last boolean DEFAULT false NOT NULL
);
COMMENT ON TABLE public.t_offers_history IS 'История изменения цен в объявлениях продажи недвижимости';
COMMENT ON COLUMN public.t_offers_history.history_id IS 'Идентификатор предложения';
COMMENT ON COLUMN public.t_offers_history.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_offers_history.start_date IS 'Начальная дата предложения';
COMMENT ON COLUMN public.t_offers_history.stop_date IS 'Конечная дата предложения';
COMMENT ON COLUMN public.t_offers_history.price IS 'Цена';
COMMENT ON COLUMN public.t_offers_history.is_new IS 'Индикатор необработанного предложения';
COMMENT ON COLUMN public.t_offers_history.is_last IS 'Индикатор последнего предложения';

CREATE TABLE public.version (
    version_id integer NOT NULL
);
COMMENT ON TABLE public.version IS 'Версия базы данных';
COMMENT ON COLUMN public.version.version_id IS 'Идентификатор  версии базы данных';

ALTER TABLE ONLY public.d_allowed
    ADD CONSTRAINT allowed_id_pk PRIMARY KEY (allowed_id);
ALTER TABLE ONLY public.d_allowed_rutiko
    ADD CONSTRAINT allowed_rutiko__id_pk PRIMARY KEY (allowed_rutiko_id);
ALTER TABLE ONLY public.d_allowed_rutiko
    ADD CONSTRAINT d_allowed_rutiko_un UNIQUE (allowed_rutiko_code);
ALTER TABLE ONLY public.d_allowed
    ADD CONSTRAINT d_allowed_un UNIQUE (allowed_code);
ALTER TABLE ONLY public.d_floor
    ADD CONSTRAINT d_floor_pk PRIMARY KEY (floor_id);
ALTER TABLE ONLY public.d_floor
    ADD CONSTRAINT d_floor_un UNIQUE (floor_code);
ALTER TABLE ONLY public.d_garage_type
    ADD CONSTRAINT d_garage_type_pk PRIMARY KEY (garage_id);
ALTER TABLE ONLY public.d_garage_type
    ADD CONSTRAINT d_garage_type_un UNIQUE (garage_code);
ALTER TABLE ONLY public.d_parsers
    ADD CONSTRAINT d_parsers_pk PRIMARY KEY (parser_id);
ALTER TABLE ONLY public.d_parsers
    ADD CONSTRAINT d_parsers_un UNIQUE (parser_code);
ALTER TABLE ONLY public.d_realty
    ADD CONSTRAINT d_realty_pkey PRIMARY KEY (realty_id);
ALTER TABLE ONLY public.d_renovation
    ADD CONSTRAINT d_renovation_pk PRIMARY KEY (renovation_id);
ALTER TABLE ONLY public.d_renovation
    ADD CONSTRAINT d_renovation_un UNIQUE (renovation_code);
ALTER TABLE ONLY public.d_subgroups
    ADD CONSTRAINT d_subgroups_pk PRIMARY KEY (subgroup_id);
ALTER TABLE ONLY public.d_subgroups
    ADD CONSTRAINT d_subgroups_un UNIQUE (subgroup_code);
ALTER TABLE ONLY public.d_utilization
    ADD CONSTRAINT d_utilization_pk PRIMARY KEY (utilization_id);
ALTER TABLE ONLY public.d_utilization
    ADD CONSTRAINT d_utilization_un UNIQUE (utilization_code);
ALTER TABLE ONLY public.d_walls
    ADD CONSTRAINT d_walls_pk PRIMARY KEY (wall_id);
ALTER TABLE ONLY public.d_walls
    ADD CONSTRAINT d_walls_un UNIQUE (wall_code);
ALTER TABLE ONLY public.l_characteristics_flats_logs
    ADD CONSTRAINT dev_l_characteristics_flats_logs_un UNIQUE (flat_id);
ALTER TABLE ONLY public.l_characteristics_garages_logs
    ADD CONSTRAINT dev_l_characteristics_garages_logs_pk PRIMARY KEY (link_id);
ALTER TABLE ONLY public.l_characteristics_garages_logs
    ADD CONSTRAINT dev_l_characteristics_garages_logs_un UNIQUE (garage_id);
ALTER TABLE ONLY public.l_characteristics_houses_logs
    ADD CONSTRAINT dev_l_characteristics_houses_logs_pk PRIMARY KEY (link_id);
ALTER TABLE ONLY public.l_characteristics_houses_logs
    ADD CONSTRAINT dev_l_characteristics_houses_logs_un UNIQUE (house_id);
ALTER TABLE ONLY public.l_characteristics_parcels_logs
    ADD CONSTRAINT dev_l_characteristics_parcels_logs_pk PRIMARY KEY (link_id);
ALTER TABLE ONLY public.l_characteristics_parcels_logs
    ADD CONSTRAINT dev_l_characteristics_parcels_logs_un UNIQUE (parcel_id);
ALTER TABLE ONLY public.l_characteristics_flats_logs
    ADD CONSTRAINT dev_l_flats_characteristics_log_pk PRIMARY KEY (link_id);
ALTER TABLE ONLY public.t_addresses
    ADD CONSTRAINT dev_t_addresses_pk PRIMARY KEY (address_id);
ALTER TABLE ONLY public.t_addresses
    ADD CONSTRAINT dev_t_addresses_un UNIQUE (address_str_original);
ALTER TABLE ONLY public.t_cadnums
    ADD CONSTRAINT dev_t_cadnums_pk PRIMARY KEY (cadnum_id);
ALTER TABLE ONLY public.t_cadnums
    ADD CONSTRAINT dev_t_cadnums_un UNIQUE (cadnum_code);
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT dev_t_characteristics_garages_pk PRIMARY KEY (garage_id);
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT dev_t_characteristics_garages_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT dev_t_characteristics_houses_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT dev_t_characteristics_rooms_pk PRIMARY KEY (room_id);
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT dev_t_characteristics_rooms_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_logs
    ADD CONSTRAINT dev_t_logs_pk PRIMARY KEY (log_id);
ALTER TABLE ONLY public.t_offers
    ADD CONSTRAINT dev_t_offers_un UNIQUE (url);
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT flat_id_pk PRIMARY KEY (flat_id);
ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT flat_id_pk_1 PRIMARY KEY (parcel_id);
ALTER TABLE ONLY public.t_offers_history
    ADD CONSTRAINT history_id_pk PRIMARY KEY (history_id);
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT houses__id_pk PRIMARY KEY (house_id);
ALTER TABLE ONLY public.l_characteristics_rooms_logs
    ADD CONSTRAINT newtable_pk PRIMARY KEY (link_id);
ALTER TABLE ONLY public.l_characteristics_rooms_logs
    ADD CONSTRAINT newtable_un UNIQUE (room_id);
ALTER TABLE ONLY public.t_offers
    ADD CONSTRAINT offer_id_pk PRIMARY KEY (offer_id);
ALTER TABLE ONLY public.t_offers
    ADD CONSTRAINT site_id_un UNIQUE (site_id);
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_un UNIQUE (offer_id);
ALTER TABLE ONLY public.t_comments
    ADD CONSTRAINT t_comments_pk PRIMARY KEY (comment_id);
ALTER TABLE ONLY public.t_offers
    ADD CONSTRAINT t_offers_un UNIQUE (url);
CREATE UNIQUE INDEX d_realty_realty_code_idx ON public.d_realty USING btree (realty_code);
CREATE INDEX dev_t_addresses_fias_level_03_id_idx ON public.t_addresses USING btree (fias_level_03_id, fias_level_04_id, fias_level_05_id, fias_level_06_id, fias_level_07_id, fias_level_08_id, fias_level_09_id, fias_level_10_id, fias_level_11_id);
CREATE INDEX dev_t_cadnums_realty_id_idx ON public.t_cadnums USING btree (realty_id);
ALTER TABLE ONLY public.l_characteristics_garages_logs
    ADD CONSTRAINT l_characteristics_garages_logs_fk FOREIGN KEY (garage_id) REFERENCES public.t_characteristics_garages(garage_id) ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_garages_logs
    ADD CONSTRAINT l_characteristics_garages_logs_fk_1 FOREIGN KEY (log_id) REFERENCES public.t_logs(log_id) ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_houses_logs
    ADD CONSTRAINT l_characteristics_houses_logs_fk FOREIGN KEY (house_id) REFERENCES public.t_characteristics_houses(house_id) ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_houses_logs
    ADD CONSTRAINT l_characteristics_houses_logs_fk_1 FOREIGN KEY (log_id) REFERENCES public.t_logs(log_id) ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_parcels_logs
    ADD CONSTRAINT l_characteristics_parcels_logs_fk FOREIGN KEY (parcel_id) REFERENCES public.t_characteristics_parcels(parcel_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_parcels_logs
    ADD CONSTRAINT l_characteristics_parcels_logs_fk_1 FOREIGN KEY (log_id) REFERENCES public.t_logs(log_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_rooms_logs
    ADD CONSTRAINT l_characteristics_rooms_logs_fk FOREIGN KEY (log_id) REFERENCES public.t_logs(log_id) ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_rooms_logs
    ADD CONSTRAINT l_characteristics_rooms_logs_fk_1 FOREIGN KEY (room_id) REFERENCES public.t_characteristics_rooms(room_id) ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_flats_logs
    ADD CONSTRAINT l_flats_characteristics_log_fk FOREIGN KEY (flat_id) REFERENCES public.t_characteristics_flats(flat_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.l_characteristics_flats_logs
    ADD CONSTRAINT l_flats_characteristics_log_fk_1 FOREIGN KEY (log_id) REFERENCES public.t_logs(log_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_addresses
    ADD CONSTRAINT t_addresses_fk FOREIGN KEY (cadnum_id) REFERENCES public.t_cadnums(cadnum_id) ON UPDATE SET NULL ON DELETE SET NULL;
ALTER TABLE ONLY public.t_cadnums
    ADD CONSTRAINT t_cadnums_fk FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk4 FOREIGN KEY (renovation_id) REFERENCES public.d_renovation(renovation_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_2 FOREIGN KEY (floor_id) REFERENCES public.d_floor(floor_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_3 FOREIGN KEY (wall_id) REFERENCES public.d_walls(wall_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_5 FOREIGN KEY (address_id) REFERENCES public.t_addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_6 FOREIGN KEY (subgroup_id) REFERENCES public.d_subgroups(subgroup_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_2 FOREIGN KEY (garage_type) REFERENCES public.d_garage_type(garage_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_3 FOREIGN KEY (wall_id) REFERENCES public.d_walls(wall_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_4 FOREIGN KEY (address_id) REFERENCES public.t_addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_5 FOREIGN KEY (subgroup_id) REFERENCES public.d_subgroups(subgroup_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_6 FOREIGN KEY (floor_id) REFERENCES public.d_floor(floor_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_2 FOREIGN KEY (wall_id) REFERENCES public.d_walls(wall_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_3 FOREIGN KEY (allowed_rutiko_id) REFERENCES public.d_allowed_rutiko(allowed_rutiko_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_4 FOREIGN KEY (utilization_id) REFERENCES public.d_utilization(utilization_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_5 FOREIGN KEY (renovation_id) REFERENCES public.d_renovation(renovation_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_6 FOREIGN KEY (subgroup_id) REFERENCES public.d_subgroups(subgroup_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_7 FOREIGN KEY (address_id) REFERENCES public.t_addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk_2 FOREIGN KEY (utilization_id) REFERENCES public.d_utilization(utilization_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk_3 FOREIGN KEY (allowed_rutiko_id) REFERENCES public.d_allowed_rutiko(allowed_rutiko_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk_4 FOREIGN KEY (address_id) REFERENCES public.t_addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_2 FOREIGN KEY (floor_id) REFERENCES public.d_floor(floor_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_3 FOREIGN KEY (wall_id) REFERENCES public.d_walls(wall_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_4 FOREIGN KEY (renovation_id) REFERENCES public.d_renovation(renovation_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_5 FOREIGN KEY (address_id) REFERENCES public.t_addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_6 FOREIGN KEY (subgroup_id) REFERENCES public.d_subgroups(subgroup_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_comments
    ADD CONSTRAINT t_comments_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_offers
    ADD CONSTRAINT t_offers_fk FOREIGN KEY (parser_id) REFERENCES public.d_parsers(parser_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.t_offers_history
    ADD CONSTRAINT t_offers_history_fk FOREIGN KEY (offer_id) REFERENCES public.t_offers(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;

