BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';

ALTER TABLE public.d_garage_type RENAME COLUMN garage_id TO garage_type_id;
COMMENT ON COLUMN public.d_garage_type.garage_type_id IS 'Идентификатор типа гаража';

CREATE TABLE public.t_cadblocks (
    cadblock_id uuid NOT NULL,
    cadblock_code character varying
);
COMMENT ON TABLE public.t_cadblocks IS 'Таблица кадастровых кваталов';

ALTER TABLE public.t_cadnums ADD cadblock_id uuid NULL;
COMMENT ON COLUMN public.t_cadnums.cadblock_id IS 'Идентификатор кадастрового квартала';

ALTER TABLE public.t_characteristics_flats ADD cadblock_id uuid NULL;
ALTER TABLE public.t_characteristics_flats ADD cadnum_id uuid NULL;
ALTER TABLE public.t_characteristics_flats ADD realty_id int8 NULL;
UPDATE public.t_characteristics_flats SET realty_id = 2001003000;
ALTER TABLE public.t_characteristics_flats ALTER COLUMN realty_id SET DEFAULT 2001003000;
ALTER TABLE public.t_characteristics_flats ALTER COLUMN realty_id SET NOT NULL;
COMMENT ON COLUMN public.t_characteristics_flats.cadblock_id IS 'Идентификатор кадастрового квартала объявления';
COMMENT ON COLUMN public.t_characteristics_flats.cadnum_id IS 'Идентификатор кадастрового номера объявления';
COMMENT ON COLUMN public.t_characteristics_flats.realty_id IS 'Идентификатор вида объекта недвижимости';

ALTER TABLE public.t_characteristics_garages ALTER COLUMN area TYPE numeric(10, 2) USING area::numeric(10, 2);
ALTER TABLE public.t_characteristics_garages ADD cadblock_id uuid NULL;
ALTER TABLE public.t_characteristics_garages ADD cadnum_id uuid NULL;
ALTER TABLE public.t_characteristics_garages ADD realty_id int8 NULL;
UPDATE public.t_characteristics_garages SET realty_id = 2001003000;
ALTER TABLE public.t_characteristics_garages ALTER COLUMN realty_id SET DEFAULT 2001003000;
ALTER TABLE public.t_characteristics_garages ALTER COLUMN realty_id SET NOT NULL;
COMMENT ON COLUMN public.t_characteristics_garages.cadblock_id IS 'Идентификатор кадастрового квартала объявления';
COMMENT ON COLUMN public.t_characteristics_garages.cadnum_id IS 'Идентификатор кадастрового номера объявления';
COMMENT ON COLUMN public.t_characteristics_garages.realty_id IS 'Идентификатор вида объекта недвижимости';


ALTER TABLE public.t_characteristics_houses ALTER COLUMN area TYPE numeric(10, 2) USING area::numeric(10, 2);
ALTER TABLE public.t_characteristics_houses ADD cadblock_id uuid NULL;
ALTER TABLE public.t_characteristics_houses ADD cadnum_id uuid NULL;
ALTER TABLE public.t_characteristics_houses ADD realty_id int8 NULL;
UPDATE public.t_characteristics_houses SET realty_id = 2001002000;
ALTER TABLE public.t_characteristics_houses ALTER COLUMN realty_id SET DEFAULT 2001002000;
ALTER TABLE public.t_characteristics_houses ALTER COLUMN realty_id SET NOT NULL;
COMMENT ON COLUMN public.t_characteristics_houses.cadblock_id IS 'Идентификатор кадастрового квартала объявления';
COMMENT ON COLUMN public.t_characteristics_houses.cadnum_id IS 'Идентификатор кадастрового номера объявления';
COMMENT ON COLUMN public.t_characteristics_houses.realty_id IS 'Идентификатор вида объекта недвижимости';


ALTER TABLE public.t_characteristics_parcels ALTER COLUMN area TYPE numeric(10, 2) USING area::numeric(10, 2);
ALTER TABLE public.t_characteristics_parcels ADD cadblock_id uuid NULL;
ALTER TABLE public.t_characteristics_parcels ADD cadnum_id uuid NULL;
ALTER TABLE public.t_characteristics_parcels ADD realty_id int8 NULL;
UPDATE public.t_characteristics_parcels SET realty_id = 2001001000;
ALTER TABLE public.t_characteristics_parcels ALTER COLUMN realty_id SET DEFAULT 2001001000;
ALTER TABLE public.t_characteristics_parcels ALTER COLUMN realty_id SET NOT NULL;
COMMENT ON COLUMN public.t_characteristics_parcels.cadblock_id IS 'Идентификатор кадастрового квартала объявления';
COMMENT ON COLUMN public.t_characteristics_parcels.cadnum_id IS 'Идентификатор кадастрового номера объявления';
COMMENT ON COLUMN public.t_characteristics_parcels.realty_id IS 'Идентификатор вида объекта недвижимости';


ALTER TABLE public.t_characteristics_rooms ALTER COLUMN area TYPE numeric(10, 2) USING area::numeric(10, 2);
ALTER TABLE public.t_characteristics_rooms ADD cadblock_id uuid NULL;
ALTER TABLE public.t_characteristics_rooms ADD cadnum_id uuid NULL;
ALTER TABLE public.t_characteristics_rooms ADD realty_id int8 NULL;
UPDATE public.t_characteristics_rooms SET realty_id = 2001003000;
ALTER TABLE public.t_characteristics_rooms ALTER COLUMN realty_id SET DEFAULT 2001003000;
ALTER TABLE public.t_characteristics_rooms ALTER COLUMN realty_id SET NOT NULL;
COMMENT ON COLUMN public.t_characteristics_rooms.cadblock_id IS 'Идентификатор кадастрового квартала объявления';
COMMENT ON COLUMN public.t_characteristics_rooms.cadnum_id IS 'Идентификатор кадастрового номера объявления';
COMMENT ON COLUMN public.t_characteristics_rooms.realty_id IS 'Идентификатор вида объекта недвижимости';


ALTER TABLE ONLY public.t_cadblocks
    ADD CONSTRAINT t_cadblocks_pk PRIMARY KEY (cadblock_id);

CREATE INDEX t_cadblocks_cadblock_code_idx ON public.t_cadblocks USING btree (cadblock_code);

ALTER TABLE ONLY public.t_cadnums
    ADD CONSTRAINT t_cadnums_fk_2 FOREIGN KEY (cadblock_id) REFERENCES public.t_cadblocks(cadblock_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_7 FOREIGN KEY (cadblock_id) REFERENCES public.t_cadblocks(cadblock_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_8 FOREIGN KEY (cadnum_id) REFERENCES public.t_cadnums(cadnum_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_flats
    ADD CONSTRAINT t_characteristics_flats_fk_9 FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_7 FOREIGN KEY (cadblock_id) REFERENCES public.t_cadblocks(cadblock_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_8 FOREIGN KEY (cadnum_id) REFERENCES public.t_cadnums(cadnum_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_garages
    ADD CONSTRAINT t_characteristics_garages_fk_9 FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_10 FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_8 FOREIGN KEY (cadblock_id) REFERENCES public.t_cadblocks(cadblock_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_houses
    ADD CONSTRAINT t_characteristics_houses_fk_9 FOREIGN KEY (cadnum_id) REFERENCES public.t_cadnums(cadnum_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk_5 FOREIGN KEY (cadnum_id) REFERENCES public.t_cadnums(cadnum_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk_6 FOREIGN KEY (cadblock_id) REFERENCES public.t_cadblocks(cadblock_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_parcels
    ADD CONSTRAINT t_characteristics_parcels_fk_7 FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_7 FOREIGN KEY (cadblock_id) REFERENCES public.t_cadblocks(cadblock_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_8 FOREIGN KEY (cadnum_id) REFERENCES public.t_cadnums(cadnum_id) ON UPDATE SET NULL ON DELETE SET NULL;

ALTER TABLE ONLY public.t_characteristics_rooms
    ADD CONSTRAINT t_characteristics_rooms_fk_9 FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON UPDATE CASCADE ON DELETE RESTRICT;

UPDATE public."version" SET version_id = 2;

COMMIT;
