BEGIN;

CREATE OR REPLACE FUNCTION update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated := current_timestamp;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION create_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.created := current_timestamp;
    NEW.updated := current_timestamp;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE SCHEMA geospatial;


DROP TABLE IF EXISTS geospatial.g_cadastral_level_01;
CREATE TABLE geospatial.g_cadastral_level_01 (
    cadastral_geometry_level_01_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    cadastral_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_cadastral_level_01_pk PRIMARY KEY (cadastral_geometry_level_01_id),
    CONSTRAINT g_cadastral_level_01_unique UNIQUE (cadastral_id)
);

COMMENT ON TABLE geospatial.g_cadastral_level_01 IS 'Геометрия кадастровых округов';
COMMENT ON COLUMN geospatial.g_cadastral_level_01.cadastral_geometry_level_01_id IS 'Идентификатор геометрии кадастрового округа';
COMMENT ON COLUMN geospatial.g_cadastral_level_01.geom IS 'Геометрия кадастрового округа';
COMMENT ON COLUMN geospatial.g_cadastral_level_01.cadastral_id IS 'Иерархия кадастрового округа';
COMMENT ON COLUMN geospatial.g_cadastral_level_01.created IS 'Дата создания геометрии кадастрового округа';
COMMENT ON COLUMN geospatial.g_cadastral_level_01.updated IS 'Дата обновления геометрии кадастрового округа';

ALTER TABLE geospatial.g_cadastral_level_01 ADD CONSTRAINT g_cadastral_level_01_l_cadastral_hierarchy_fk FOREIGN KEY (cadastral_id) REFERENCES public.l_cadastral_hierarchy(cadastral_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_cadastral_level_01
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_cadastral_level_01
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_cadastral_level_02;
CREATE TABLE geospatial.g_cadastral_level_02 (
    cadastral_geometry_level_02_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    cadastral_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_cadastral_level_02_pk PRIMARY KEY (cadastral_geometry_level_02_id),
    CONSTRAINT g_cadastral_level_02_unique UNIQUE (cadastral_id)
);

COMMENT ON TABLE geospatial.g_cadastral_level_02 IS 'Геометрия кадастровых районов';
COMMENT ON COLUMN geospatial.g_cadastral_level_02.cadastral_geometry_level_02_id IS 'Идентификатор геометрии кадастрового района';
COMMENT ON COLUMN geospatial.g_cadastral_level_02.geom IS 'Геометрия кадастрового района';
COMMENT ON COLUMN geospatial.g_cadastral_level_02.cadastral_id IS 'Иерархия кадастрового района';
COMMENT ON COLUMN geospatial.g_cadastral_level_02.created IS 'Дата создания геометрии кадастрового района';
COMMENT ON COLUMN geospatial.g_cadastral_level_02.updated IS 'Дата обновления геометрии кадастрового района';

ALTER TABLE geospatial.g_cadastral_level_02 ADD CONSTRAINT g_cadastral_level_02_l_cadastral_hierarchy_fk FOREIGN KEY (cadastral_id) REFERENCES public.l_cadastral_hierarchy(cadastral_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_cadastral_level_02
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_cadastral_level_02
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_cadastral_level_03;
CREATE TABLE geospatial.g_cadastral_level_03 (
    cadastral_geometry_level_03_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    cadastral_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_cadastral_level_03_pk PRIMARY KEY (cadastral_geometry_level_03_id),
    CONSTRAINT g_cadastral_level_03_unique UNIQUE (cadastral_id)
);

COMMENT ON TABLE geospatial.g_cadastral_level_03 IS 'Геометрия кадастровых кварталов';
COMMENT ON COLUMN geospatial.g_cadastral_level_03.cadastral_geometry_level_03_id IS 'Идентификатор геометрии кадастрового квартала';
COMMENT ON COLUMN geospatial.g_cadastral_level_03.geom IS 'Геометрия кадастрового квартала';
COMMENT ON COLUMN geospatial.g_cadastral_level_03.cadastral_id IS 'Иерархия кадастрового квартала';
COMMENT ON COLUMN geospatial.g_cadastral_level_03.created IS 'Дата создания геометрии кадастрового квартала';
COMMENT ON COLUMN geospatial.g_cadastral_level_03.updated IS 'Дата обновления геометрии кадастрового квартала';

ALTER TABLE geospatial.g_cadastral_level_03 ADD CONSTRAINT g_cadastral_level_03_l_cadastral_hierarchy_fk FOREIGN KEY (cadastral_id) REFERENCES public.l_cadastral_hierarchy(cadastral_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_cadastral_level_03
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_cadastral_level_03
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_cadastral_level_04;
CREATE TABLE geospatial.g_cadastral_level_04 (
    cadastral_geometry_level_04_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    cadastral_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_cadastral_level_04_pk PRIMARY KEY (cadastral_geometry_level_04_id),
    CONSTRAINT g_cadastral_level_04_unique UNIQUE (cadastral_id)
);

COMMENT ON TABLE geospatial.g_cadastral_level_04 IS 'Геометрия единых недвижимых комплексов';
COMMENT ON COLUMN geospatial.g_cadastral_level_04.cadastral_geometry_level_04_id IS 'Идентификатор геометрии единого недвижимого комплекса';
COMMENT ON COLUMN geospatial.g_cadastral_level_04.geom IS 'Геометрия кадастрового квартала';
COMMENT ON COLUMN geospatial.g_cadastral_level_04.cadastral_id IS 'Иерархия единого недвижимого комплекса';
COMMENT ON COLUMN geospatial.g_cadastral_level_04.created IS 'Дата создания геометрии единого недвижимого комплекса';
COMMENT ON COLUMN geospatial.g_cadastral_level_04.updated IS 'Дата обновления геометрии единого недвижимого комплекса';

ALTER TABLE geospatial.g_cadastral_level_04 ADD CONSTRAINT g_cadastral_level_04_l_cadastral_hierarchy_fk FOREIGN KEY (cadastral_id) REFERENCES public.l_cadastral_hierarchy(cadastral_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_cadastral_level_04
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_cadastral_level_04
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS public.g_cadastral_level_05;
CREATE TABLE geospatial.g_cadastral_level_05 (
    cadastral_geometry_level_05_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    cadastral_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_cadastral_level_05_pk PRIMARY KEY (cadastral_geometry_level_05_id),
    CONSTRAINT g_cadastral_level_05_unique UNIQUE (cadastral_id)
);

COMMENT ON TABLE geospatial.g_cadastral_level_05 IS 'Геометрия земельных участков';
COMMENT ON COLUMN geospatial.g_cadastral_level_05.cadastral_geometry_level_05_id IS 'Идентификатор геометрии земельного участка';
COMMENT ON COLUMN geospatial.g_cadastral_level_05.geom IS 'Геометрия земельного участка';
COMMENT ON COLUMN geospatial.g_cadastral_level_05.cadastral_id IS 'Иерархия земельного участка';
COMMENT ON COLUMN geospatial.g_cadastral_level_05.created IS 'Дата создания геометрии земельного участка';
COMMENT ON COLUMN geospatial.g_cadastral_level_05.updated IS 'Дата обновления геометрии земельного участка';

ALTER TABLE geospatial.g_cadastral_level_05 ADD CONSTRAINT g_cadastral_level_05_l_cadastral_hierarchy_fk FOREIGN KEY (cadastral_id) REFERENCES public.l_cadastral_hierarchy(cadastral_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_cadastral_level_05
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_cadastral_level_05
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_cadastral_level_06;
CREATE TABLE geospatial.g_cadastral_level_06 (
    cadastral_geometry_level_06_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    cadastral_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_cadastral_level_06_pk PRIMARY KEY (cadastral_geometry_level_06_id),
    CONSTRAINT g_cadastral_level_06_unique UNIQUE (cadastral_id)
);

COMMENT ON TABLE geospatial.g_cadastral_level_06 IS 'Геометрия объектов капитального строительства';
COMMENT ON COLUMN geospatial.g_cadastral_level_06.cadastral_geometry_level_06_id IS 'Идентификатор геометрии объекта капитального строительства';
COMMENT ON COLUMN geospatial.g_cadastral_level_06.geom IS 'Геометрия объекта капитального строительства';
COMMENT ON COLUMN geospatial.g_cadastral_level_06.cadastral_id IS 'Иерархия объекта капитального строительства';
COMMENT ON COLUMN geospatial.g_cadastral_level_06.created IS 'Дата создания геометрии объекта капитального строительства';
COMMENT ON COLUMN geospatial.g_cadastral_level_06.updated IS 'Дата обновления геометрии объекта капитального строительства';

ALTER TABLE geospatial.g_cadastral_level_06 ADD CONSTRAINT g_cadastral_level_06_l_cadastral_hierarchy_fk FOREIGN KEY (cadastral_id) REFERENCES public.l_cadastral_hierarchy(cadastral_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_cadastral_level_06
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_cadastral_level_06
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_01;
CREATE TABLE geospatial.g_fias_geometry_level_01 (
    fias_geometry_level_01_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_01_pk PRIMARY KEY (fias_geometry_level_01_id),
    CONSTRAINT g_fias_geometry_level_01_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_01 IS 'Геометрия субъектов РФ';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_01.fias_geometry_level_01_id IS 'Идентификатор геометрии субъекта РФ';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_01.geom IS 'Геометрия субъекта РФ';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_01.fias_id IS 'Иерархия субъекта РФ';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_01.created IS 'Дата создания геометрии субъекта РФ';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_01.updated IS 'Дата обновления геометрии субъекта РФ';

ALTER TABLE geospatial.g_fias_geometry_level_01 ADD CONSTRAINT g_fias_geometry_level_01_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_01
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_01
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_02;
CREATE TABLE geospatial.g_fias_geometry_level_02 (
    fias_geometry_level_02_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_02_pk PRIMARY KEY (fias_geometry_level_02_id),
    CONSTRAINT g_fias_geometry_level_02_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_02 IS 'Геометрия административных районов';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_02.fias_geometry_level_02_id IS 'Идентификатор геометрии административного района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_02.geom IS 'Геометрия административного района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_02.fias_id IS 'Иерархия административного района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_02.created IS 'Дата создания геометрии административного района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_02.updated IS 'Дата обновления геометрии административного района';

ALTER TABLE geospatial.g_fias_geometry_level_02 ADD CONSTRAINT g_fias_geometry_level_02_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_02
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_02
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS public.g_fias_geometry_level_03;
CREATE TABLE geospatial.g_fias_geometry_level_03 (
    fias_geometry_level_03_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_03_pk PRIMARY KEY (fias_geometry_level_03_id),
    CONSTRAINT g_fias_geometry_level_03_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_03 IS 'Геометрия муниципальных районов';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_03.fias_geometry_level_03_id IS 'Идентификатор геометрии муниципального района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_03.geom IS 'Геометрия муниципального района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_03.fias_id IS 'Иерархия муниципального района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_03.created IS 'Дата создания геометрии муниципального района';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_03.updated IS 'Дата обновления геометрии муниципального района';

ALTER TABLE geospatial.g_fias_geometry_level_03 ADD CONSTRAINT g_fias_geometry_level_03_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_03
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_03
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_04;
CREATE TABLE geospatial.g_fias_geometry_level_04 (
    fias_geometry_level_04_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_04_pk PRIMARY KEY (fias_geometry_level_04_id),
    CONSTRAINT g_fias_geometry_level_04_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_04 IS 'Геометрия городских и сельских поселений';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_04.fias_geometry_level_04_id IS 'Идентификатор геометрии городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_04.geom IS 'Геометрия городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_04.fias_id IS 'Иерархия городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_04.created IS 'Дата создания геометрии городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_04.updated IS 'Дата обновления геометрии городского или сельского поселения';

ALTER TABLE geospatial.g_fias_geometry_level_04 ADD CONSTRAINT g_fias_geometry_level_04_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_04
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_04
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_05;
CREATE TABLE geospatial.g_fias_geometry_level_05 (
    fias_geometry_level_05_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_05_pk PRIMARY KEY (fias_geometry_level_05_id),
    CONSTRAINT g_fias_geometry_level_05_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_05 IS 'Геометрия городских и сельских поселений';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_05.fias_geometry_level_05_id IS 'Идентификатор геометрии городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_05.geom IS 'Геометрия городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_05.fias_id IS 'Иерархия городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_05.created IS 'Дата создания геометрии городского или сельского поселения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_05.updated IS 'Дата обновления геометрии городского или сельского поселения';

ALTER TABLE geospatial.g_fias_geometry_level_05 ADD CONSTRAINT g_fias_geometry_level_05_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_05
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_05
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_06;
CREATE TABLE geospatial.g_fias_geometry_level_06 (
    fias_geometry_level_06_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_06_pk PRIMARY KEY (fias_geometry_level_06_id),
    CONSTRAINT g_fias_geometry_level_06_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_06 IS 'Геометрия населенных пунктов';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_06.fias_geometry_level_06_id IS 'Идентификатор геометрии населенного пункта';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_06.geom IS 'Геометрия населенного пункта';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_06.fias_id IS 'Иерархия населенного пункта';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_06.created IS 'Дата создания геометрии населенного пункта';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_06.updated IS 'Дата обновления геометрии населенного пункта';

ALTER TABLE geospatial.g_fias_geometry_level_06 ADD CONSTRAINT g_fias_geometry_level_06_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_06
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_06
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_07;
CREATE TABLE geospatial.g_fias_geometry_level_07 (
    fias_geometry_level_07_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_07_pk PRIMARY KEY (fias_geometry_level_07_id),
    CONSTRAINT g_fias_geometry_level_07_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_07 IS 'Геометрия элементов планировочной структуры';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_07.fias_geometry_level_07_id IS 'Идентификатор геометрии элемента планировочной структуры';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_07.geom IS 'Геометрия элемента планировочной структуры';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_07.fias_id IS 'Иерархия элемента планировочной структуры';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_07.created IS 'Дата создания геометрии элемента планировочной структуры';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_07.updated IS 'Дата обновления геометрии элемента планировочной структуры';

ALTER TABLE geospatial.g_fias_geometry_level_07 ADD CONSTRAINT g_fias_geometry_level_07_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_07
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_07
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_08;
CREATE TABLE geospatial.g_fias_geometry_level_08 (
    fias_geometry_level_08_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_08_pk PRIMARY KEY (fias_geometry_level_08_id),
    CONSTRAINT g_fias_geometry_level_08_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_08 IS 'Геометрия элементов улично-дорожной сети';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_08.fias_geometry_level_08_id IS 'Идентификатор геометрии элемента улично-дорожной сети';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_08.geom IS 'Геометрия элемента улично-дорожной сети';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_08.fias_id IS 'Иерархия элемента улично-дорожной сети';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_08.created IS 'Дата создания геометрии элемента улично-дорожной сети';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_08.updated IS 'Дата обновления геометрии элемента улично-дорожной сети';

ALTER TABLE geospatial.g_fias_geometry_level_08 ADD CONSTRAINT g_fias_geometry_level_08_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_08
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_08
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_09;
CREATE TABLE geospatial.g_fias_geometry_level_09 (
    fias_geometry_level_09_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_09_pk PRIMARY KEY (fias_geometry_level_09_id),
    CONSTRAINT g_fias_geometry_level_09_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_09 IS 'Геометрия земельных участков';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_09.fias_geometry_level_09_id IS 'Идентификатор геометрии земельного участка';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_09.geom IS 'Геометрия элемента земельного участка';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_09.fias_id IS 'Иерархия элемента земельного участка';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_09.created IS 'Дата создания геометрии земельного участка';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_09.updated IS 'Дата обновления геометрии земельного участка';

ALTER TABLE geospatial.g_fias_geometry_level_09 ADD CONSTRAINT g_fias_geometry_level_09_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_09
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_09
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


DROP TABLE IF EXISTS geospatial.g_fias_geometry_level_10;
CREATE TABLE geospatial.g_fias_geometry_level_10 (
    fias_geometry_level_10_id uuid DEFAULT uuid_generate_v4() NOT NULL,
    geom public.geometry(multipolygon, 4326) NOT NULL,
    fias_id uuid NULL,
    created timestamp with time zone DEFAULT current_timestamp NOT NULL,
    updated timestamp with time zone DEFAULT current_timestamp NOT NULL,
    CONSTRAINT g_fias_geometry_level_10_pk PRIMARY KEY (fias_geometry_level_10_id),
    CONSTRAINT g_fias_geometry_level_10_unique UNIQUE (fias_id)
);

COMMENT ON TABLE geospatial.g_fias_geometry_level_10 IS 'Геометрия зданий и сооружений';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_10.fias_geometry_level_10_id IS 'Идентификатор геометрии здания или сооружения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_10.geom IS 'Геометрия здания или сооружения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_10.fias_id IS 'Иерархия здания или сооружения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_10.created IS 'Дата создания геометрии здания или сооружения';
COMMENT ON COLUMN geospatial.g_fias_geometry_level_10.updated IS 'Дата обновления геометрии здания или сооружения';

ALTER TABLE geospatial.g_fias_geometry_level_10 ADD CONSTRAINT g_fias_geometry_level_10_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TRIGGER update_timestamp
BEFORE UPDATE ON geospatial.g_fias_geometry_level_10
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER create_timestamp
BEFORE INSERT ON geospatial.g_fias_geometry_level_10
FOR EACH ROW
EXECUTE FUNCTION create_timestamp();


CREATE TABLE geospatial.l_cadastral_geometry_hierarchy (
	cadastral_geometry_id uuid NOT NULL,
	cadastral_geometry_level_01_id uuid NOT NULL,
	cadastral_geometry_level_02_id uuid NULL,
	cadastral_geometry_level_03_id uuid NULL,
	cadastral_geometry_level_04_id uuid NULL,
	cadastral_geometry_level_05_id uuid NULL,
	cadastral_geometry_level_06_id uuid NULL,
	CONSTRAINT l_cadastral_geometry_hierarchy_pk PRIMARY KEY (cadastral_geometry_id),
	CONSTRAINT l_cadastral_geometry_hierarchy_g_cadastral_level_01_fk FOREIGN KEY (cadastral_geometry_level_01_id) REFERENCES geospatial.g_cadastral_level_01(cadastral_geometry_level_01_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_cadastral_geometry_hierarchy_g_cadastral_level_02_fk FOREIGN KEY (cadastral_geometry_level_02_id) REFERENCES geospatial.g_cadastral_level_02(cadastral_geometry_level_02_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_cadastral_geometry_hierarchy_g_cadastral_level_03_fk FOREIGN KEY (cadastral_geometry_level_03_id) REFERENCES geospatial.g_cadastral_level_03(cadastral_geometry_level_03_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_cadastral_geometry_hierarchy_g_cadastral_level_04_fk FOREIGN KEY (cadastral_geometry_level_04_id) REFERENCES geospatial.g_cadastral_level_04(cadastral_geometry_level_04_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_cadastral_geometry_hierarchy_g_cadastral_level_05_fk FOREIGN KEY (cadastral_geometry_level_05_id) REFERENCES geospatial.g_cadastral_level_05(cadastral_geometry_level_05_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_cadastral_geometry_hierarchy_g_cadastral_level_06_fk FOREIGN KEY (cadastral_geometry_level_06_id) REFERENCES geospatial.g_cadastral_level_06(cadastral_geometry_level_06_id) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE INDEX l_cadastral_geometry_hierarchy_cadastral_geometry_level_01_id_idx ON geospatial.l_cadastral_geometry_hierarchy (cadastral_geometry_level_01_id,cadastral_geometry_level_02_id,cadastral_geometry_level_03_id,cadastral_geometry_level_04_id,cadastral_geometry_level_05_id,cadastral_geometry_level_06_id);
COMMENT ON TABLE geospatial.l_cadastral_geometry_hierarchy IS 'Иерархия объектов кадастровых номеров';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_id IS 'Идентификатор объекта';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_level_01_id IS 'Идентификатор геометрии кадастрового округа';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_level_02_id IS 'Идентификатор геометрии кадастрового района';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_level_03_id IS 'Идентификатор геометрии кадастрового квартала';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_level_04_id IS 'Идентификатор геометрии единого недвижимого комплекса';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_level_05_id IS 'Идентификатор геометрии земельного участка';
COMMENT ON COLUMN geospatial.l_cadastral_geometry_hierarchy.cadastral_geometry_level_06_id IS 'Идентификатор геометрии объекта капитального строительства';


CREATE TABLE geospatial.l_fias_geometry_hierarchy (
	fias_geometry_id uuid NOT NULL,
	fias_geometry_level_01_id uuid NOT NULL,
	fias_geometry_level_02_id uuid NULL,
	fias_geometry_level_03_id uuid NULL,
	fias_geometry_level_04_id uuid NULL,
	fias_geometry_level_05_id uuid NULL,
	fias_geometry_level_06_id uuid NULL,
	fias_geometry_level_07_id uuid NULL,
	fias_geometry_level_08_id uuid NULL,
	fias_geometry_level_09_id uuid NULL,
	fias_geometry_level_10_id uuid NULL,
	CONSTRAINT l_fias_geometry_hierarchy_pk PRIMARY KEY (fias_geometry_id),
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_01_fk FOREIGN KEY (fias_geometry_level_01_id) REFERENCES geospatial.g_fias_geometry_level_01(fias_geometry_level_01_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_02_fk FOREIGN KEY (fias_geometry_level_02_id) REFERENCES geospatial.g_fias_geometry_level_02(fias_geometry_level_02_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_03_fk FOREIGN KEY (fias_geometry_level_03_id) REFERENCES geospatial.g_fias_geometry_level_03(fias_geometry_level_03_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_04_fk FOREIGN KEY (fias_geometry_level_04_id) REFERENCES geospatial.g_fias_geometry_level_04(fias_geometry_level_04_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_05_fk FOREIGN KEY (fias_geometry_level_05_id) REFERENCES geospatial.g_fias_geometry_level_05(fias_geometry_level_05_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_06_fk FOREIGN KEY (fias_geometry_level_06_id) REFERENCES geospatial.g_fias_geometry_level_06(fias_geometry_level_06_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_07_fk FOREIGN KEY (fias_geometry_level_07_id) REFERENCES geospatial.g_fias_geometry_level_07(fias_geometry_level_07_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_08_fk FOREIGN KEY (fias_geometry_level_08_id) REFERENCES geospatial.g_fias_geometry_level_08(fias_geometry_level_08_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_09_fk FOREIGN KEY (fias_geometry_level_09_id) REFERENCES geospatial.g_fias_geometry_level_09(fias_geometry_level_09_id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT l_fias_geometry_hierarchy_g_fias_geometry_level_10_fk FOREIGN KEY (fias_geometry_level_10_id) REFERENCES geospatial.g_fias_geometry_level_10(fias_geometry_level_10_id) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE INDEX l_fias_geometry_hierarchy_fias_geometry_level_01_id_idx ON geospatial.l_fias_geometry_hierarchy (fias_geometry_level_01_id,fias_geometry_level_02_id,fias_geometry_level_03_id,fias_geometry_level_04_id,fias_geometry_level_05_id,fias_geometry_level_06_id,fias_geometry_level_07_id,fias_geometry_level_08_id,fias_geometry_level_09_id,fias_geometry_level_10_id);
COMMENT ON TABLE geospatial.l_fias_geometry_hierarchy IS 'Иерархия адресных объектов';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_id IS 'Идентификатор объекта';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_01_id IS 'Идентификатор геометрии субъекта РФ';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_02_id IS 'Идентификатор геометрии административного района';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_03_id IS 'Идентификатор геометрии муниципального района';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_04_id IS 'Идентификатор геометрии городского или сельского поселения';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_05_id IS 'Идентификатор геометрии городского или сельского поселения';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_06_id IS 'Идентификатор геометрии населенного пункта';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_07_id IS 'Идентификатор геометрии элемента планировочной структуры';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_08_id IS 'Идентификатор геометрии элемента улично-дорожной сети';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_09_id IS 'Идентификатор геометрии земельного участка';
COMMENT ON COLUMN geospatial.l_fias_geometry_hierarchy.fias_geometry_level_10_id IS 'Идентификатор геометрии здания или сооружения';


COMMIT;