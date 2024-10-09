BEGIN;


CREATE TABLE public.t_offers_temporary (
    offer_id uuid NOT NULL,
    site_id character varying NOT NULL,
    url character varying NOT NULL,
    parser_id integer NOT NULL,
    CONSTRAINT t_offers_temporary_pk PRIMARY KEY (offer_id),
    CONSTRAINT t_offers_temporary_un_url UNIQUE (url),
    CONSTRAINT t_offers_temporary_un_site UNIQUE (site_id)
);

COMMENT ON TABLE public.t_offers_temporary IS 'Объявления о продаже недвижимости';
COMMENT ON COLUMN public.t_offers_temporary.offer_id IS 'Идентификатор объявления';
COMMENT ON COLUMN public.t_offers_temporary.site_id IS 'Идентификатор объявления на сайте с префиксом парсера';
COMMENT ON COLUMN public.t_offers_temporary.url IS 'Ссылка на объявление';
COMMENT ON COLUMN public.t_offers_temporary.parser_id IS 'Идентификатор парсера';

CREATE TABLE public.t_offers_history_temporary (
    history_id uuid NOT NULL,
    offer_id uuid NOT NULL,
    start_date date NOT NULL,
    stop_date date,
    price bigint NOT NULL,
    is_new boolean NOT NULL,
    is_last boolean DEFAULT false NOT null,
    CONSTRAINT t_offers_history_temporary_pk PRIMARY KEY (history_id)
);


COMMIT;