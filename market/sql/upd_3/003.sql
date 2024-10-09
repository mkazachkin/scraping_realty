BEGIN;


DELETE FROM t_cadnums WHERE cadnum_code !~* E'^\\d{2}:\\d{2}:\\d{6,7}:\\d{1,5}$';
DELETE FROM t_cadblocks WHERE cadblock_code !~* E'^\\d{2}:\\d{2}:\\d{6,7}$';

INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('b2d7331a-3c47-5fd1-8172-570197d4cbbf','11:03:5901001'),
	 ('e0e17b29-8287-52fb-b20f-b76b02334ba2','11:05:0202036'),
	 ('8c2d7c33-da3d-557e-9695-9fb2dc950b12','11:05:0202037'),
	 ('0c9963a5-3573-5fa0-ba77-80703cd8619a','11:05:0202038'),
	 ('dd55208a-b082-57b2-b9fe-2d94cd2c7492','11:05:0801002'),
	 ('89152758-9175-55ca-8615-8a9677c25eb9','11:05:0801004'),
	 ('ef825570-bef7-5f64-84ed-873fc69fbb32','11:05:0801005'),
	 ('49efff49-a0e9-539e-90b6-86c402cfb223','11:05:0801006'),
	 ('0edf0736-0157-5be1-b028-3ffa668c087d','11:05:0801008'),
	 ('98065cef-67a3-5ee4-977e-445dc12af882','11:05:0801009') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('3c60e264-0f62-5eeb-8bed-cc56d6d8470f','11:05:0801010'),
	 ('3d929d28-8964-518a-a527-92cc317bebb8','11:05:0802001'),
	 ('e7dcb444-66e0-5ca4-a0b9-c3c998af1b3f','11:05:0802002'),
	 ('74d25a5c-e2b4-5a08-949d-7d2fc83c0732','11:05:0802003'),
	 ('f1a5202f-88b9-500d-b7d2-b2414f4dc4fe','11:05:0802004'),
	 ('d9ad33c9-92c6-5c80-8841-abe9dc19b549','11:05:0802005'),
	 ('3d512297-32f9-518b-be46-e58271c9100c','11:05:0802006'),
	 ('6b33fba1-f04e-55a9-b087-fe1dc78d0b04','11:05:0802007'),
	 ('77c77e27-9a41-5311-9689-6031b59d9e98','11:05:0802008'),
	 ('0bc6d90d-8fe6-594d-876f-c442ccadac55','11:05:0803001') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('90d5ef3b-1cd9-577e-ab55-005602b3b11b','11:05:0803003'),
	 ('8049e294-b22c-5437-804a-ff5da3a1d577','11:05:0803011'),
	 ('ef0ae585-0cd4-5e9b-bf2a-7ce0a3aab31a','11:05:0803012'),
	 ('87e98e06-3e6d-5d92-a137-ba872e7adc15','11:05:0803013'),
	 ('d6e06883-a7e3-5923-99e5-f90dd19f651d','11:07:0401003'),
	 ('8d02f806-589f-54eb-ae71-956427c339cc','11:07:0901001'),
	 ('1b6f8533-18bf-5345-8955-a2c94b13978a','11:07:5001003'),
	 ('28ab8d32-4b4f-59bf-8a1c-2cfac1c9a72e','11:07:5701001'),
	 ('eb2adc46-18c6-5998-8afd-16683df81718','11:07:6501001'),
	 ('a89fceef-8e48-5be2-bf8e-0578f85451ab','11:09:5801001') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('dc3366c6-d3e7-5d9d-96ba-07e0f08099cb','11:10:1401006'),
	 ('680e801d-a2e6-5933-9960-2107b035318d','11:10:2401002'),
	 ('20b41da3-d9f5-5b2b-94dd-71433012fe67','11:10:2901004'),
	 ('a1776314-911b-5b66-857f-42d2fd1b29a2','11:10:2901005'),
	 ('f06082d4-7a82-538e-ac41-5e0831f17339','11:10:3901006'),
	 ('8a680557-eac8-586c-95f7-a1d4105df671','11:10:4502021'),
	 ('c8a8d363-c881-5532-b557-0febb9a618b3','11:10:4502024'),
	 ('eb572216-6ef8-51cd-881e-7bc1819f3c8d','11:10:4502028'),
	 ('5f569fce-1be8-5ead-b8be-4b894a83ed90','11:10:4502032'),
	 ('31308859-57aa-50cd-8f24-5737f262b5b8','11:10:4502036') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('8539503c-6d24-5e62-93f3-06ff5c63728e','11:10:4502037'),
	 ('8907da63-7d31-57c0-9a07-cf2d0e2d88e1','11:10:5401001'),
	 ('c207871c-14eb-594d-9488-09bd7b4fe68e','11:10:5401002'),
	 ('c30d91b1-5d91-540b-986c-18acb281148e','11:13:1101001'),
	 ('4ac66753-b7aa-5b2e-9d71-9ba03be54a4a','11:13:2901001'),
	 ('2316db59-6bf6-567a-97ca-be4bd79c11ad','11:15:0201001'),
	 ('d5a4d461-0d4b-50b0-b7e4-17e407c08372','11:15:0201005'),
	 ('cbfb04c3-8afa-5348-87cb-4d59d21ef9f7','11:15:0201006'),
	 ('7ce1297f-5a76-5cc1-83bb-67208d593165','11:15:0201007'),
	 ('326ba083-d513-52eb-a2c2-d1df2643c5c8','11:15:0201009') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('933c6e38-465e-5fbb-9cf8-781caf55f892','11:15:0201013'),
	 ('0f8b33f2-f07d-5e01-9e72-9a6bbbab1158','11:15:0301006'),
	 ('84a535c1-b34e-5f51-9f04-5a1616f26636','11:15:0301012'),
	 ('0d9af0dd-84c7-5fa5-883c-cd916f55c5f4','11:15:0301017'),
	 ('1ab5131e-b44b-56f8-918f-86c2c35ad7d0','11:15:0301021'),
	 ('9d07427f-4700-596d-ba9d-fd38259f9e81','11:15:0301025'),
	 ('b5c26a97-79b4-5425-ba4c-a5a9f2ca4884','11:15:0401005'),
	 ('4bcf73b2-2363-51b4-bac9-c41bd449be9e','11:15:0401006'),
	 ('cb1c3750-73f5-5bf1-a1dd-0d973dbc002f','11:15:0401007'),
	 ('7d2d542e-69e3-517c-8a28-cb3df60dc234','11:15:0401011') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('3f27d45f-945a-595d-9e24-bb61959b6a94','11:15:0401015'),
	 ('220e0fe1-fe26-5e97-a890-52e164e3dd4b','11:15:0401017'),
	 ('4eb8753c-4393-5595-b274-8136def55ff5','11:15:0401018'),
	 ('f2ebc1b7-5c09-5add-87c4-765dae68d701','11:15:0401019'),
	 ('3e5c1b1f-9b4c-54e7-bca1-70fe6034ec5e','11:15:0401020'),
	 ('13c8e473-a869-58a0-81ce-e4f7c6a0b6bd','11:15:0401021'),
	 ('5c91f40d-a18e-5c89-9ff2-5ddcc4618cac','11:15:0401022'),
	 ('cd166c47-746b-5dfd-9e11-18f014bfc990','11:15:0402036'),
	 ('aeaf3de7-7f31-5881-a3fe-45debbd2d052','11:15:0402037'),
	 ('b4a3d29f-58dd-5f96-b56f-ce89d6b402be','11:15:0402046') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('c76aa4f3-d584-5aeb-80fb-2b579fd8c157','11:15:0402055'),
	 ('aeba034c-2b4a-51fa-a8d9-2c500a87e1fe','11:15:0402071'),
	 ('0532fa14-e9cf-584c-b82a-ccedfead5b66','11:15:0501001'),
	 ('32e22f78-d59f-5e1d-aa3e-bca5763fadfa','11:15:0501002'),
	 ('ddd2d59f-9eea-5a9e-b9ac-f7b51e891a9b','11:15:0501006'),
	 ('29a2fcba-8c4d-5bc9-b02e-52da9cfe7991','11:15:0701004'),
	 ('de445ee8-78f2-591f-88f5-182fd5d2f85c','11:15:0701005'),
	 ('5caaed38-5442-5fba-aad1-1559cc8a889b','11:15:0701006'),
	 ('8efe38d0-c6de-5cbb-872a-fbb694bdfc88','11:15:0701007'),
	 ('c10cc395-9f3c-5d4b-b347-d2d2aa8a0879','11:15:0701008') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('3dc78a6e-8fb6-5e6e-aca3-f4b7d07ce308','11:15:0701010'),
	 ('d823b1aa-6188-5c76-81e6-5ae856a7ef11','11:15:0701011'),
	 ('7d0596f2-8be8-5082-a57a-434c6a9fd0ed','11:15:0701012'),
	 ('1bb7d8e0-77e7-5b96-9c60-4613d51e9d64','11:15:0701014'),
	 ('8033fb8b-0442-5302-b6e7-b12a5d84d4e9','11:15:0701015'),
	 ('d55b130a-6bf9-5c4d-9d80-8069e7642788','11:18:1301001'),
	 ('a34ecf84-9132-572f-b99a-08c114bf7d40','11:18:2201001'),
	 ('d7171446-4190-5c59-ad28-8ff74eb6962f','11:18:2501001'),
	 ('aa1ca013-4230-58a2-8855-892ff9684008','11:19:0302001'),
	 ('f146fe82-d7a6-5023-968e-4211d6dd2666','11:19:0901005') ON CONFLICT (cadblock_id) DO NOTHING;
INSERT INTO public.t_cadblocks (cadblock_id,cadblock_code) VALUES
	 ('b9f2a9c5-5272-584a-bd09-952cc2aef219','11:20:0202069'),
	 ('49ee39d3-54fd-55ce-91a6-5cb4997ee371','11:20:0402016'),
	 ('bb41aa2b-8d47-586c-872e-e74bcb016865','11:20:0407007'),
     ('66f95d36-0e62-513a-9756-0014647e61be','11:06:0901001'),
     ('39884f7c-135e-5a19-96cc-1b9b57451aea','11:06:2401001') ON CONFLICT (cadblock_id) DO NOTHING;





COMMENT ON TABLE public.d_fias_level_01 IS 'Субъекты РФ';
COMMENT ON COLUMN public.d_fias_level_01.fias_level_01_id IS 'Идентификатор субъекта РФ';
COMMENT ON COLUMN public.d_fias_level_01.fias_level_01_anno IS 'Наименование субъекта РФ';
COMMENT ON COLUMN public.d_fias_level_01.fias_level_01_full_anno IS 'Полное наименование субъекта РФ';

COMMENT ON TABLE public.d_fias_level_02 IS 'Административные районы';
COMMENT ON COLUMN public.d_fias_level_02.fias_level_02_id IS 'Идентификатор административного района';
COMMENT ON COLUMN public.d_fias_level_02.fias_level_02_anno IS 'Наименование административного района';
COMMENT ON COLUMN public.d_fias_level_02.fias_level_02_full_anno IS 'Полное наименование административного района';

COMMENT ON TABLE public.d_fias_level_03 IS 'Муниципальные районы';
COMMENT ON COLUMN public.d_fias_level_03.fias_level_03_id IS 'Идентификатор муниципального района';
COMMENT ON COLUMN public.d_fias_level_03.fias_level_03_anno IS 'Наименование муниципального района';
COMMENT ON COLUMN public.d_fias_level_03.fias_level_03_full_anno IS 'Полное наименование муниципального района';

COMMENT ON TABLE public.d_fias_level_04 IS 'Сельские и городские поселения';
COMMENT ON COLUMN public.d_fias_level_04.fias_level_04_id IS 'Идентификатор сельского или городского поселения';
COMMENT ON COLUMN public.d_fias_level_04.fias_level_04_anno IS 'Наименование сельского или городского поселения';
COMMENT ON COLUMN public.d_fias_level_04.fias_level_04_full_anno IS 'Полное наименование сельского или городского поселения';

COMMENT ON TABLE public.d_fias_level_05 IS 'Города';
COMMENT ON COLUMN public.d_fias_level_05.fias_level_05_id IS 'Идентификатор города';
COMMENT ON COLUMN public.d_fias_level_05.fias_level_05_anno IS 'Наименование города';
COMMENT ON COLUMN public.d_fias_level_05.fias_level_05_full_anno IS 'Полное наименование города';

COMMENT ON TABLE public.d_fias_level_06 IS 'Населенные пункты';
COMMENT ON COLUMN public.d_fias_level_06.fias_level_06_id IS 'Идентификатор населенного пункта';
COMMENT ON COLUMN public.d_fias_level_06.fias_level_06_anno IS 'Наименование населенного пункта';
COMMENT ON COLUMN public.d_fias_level_06.fias_level_06_full_anno IS 'Полное наименование населенного пункта';

COMMENT ON TABLE public.d_fias_level_07 IS 'Элементы планировочной структуры';
COMMENT ON COLUMN public.d_fias_level_07.fias_level_07_id IS 'Идентификатор элемента планировочной структуры';
COMMENT ON COLUMN public.d_fias_level_07.fias_level_07_anno IS 'Наименование элемента планировочной структуры';
COMMENT ON COLUMN public.d_fias_level_07.fias_level_07_full_anno IS 'Полное наименование элемента планировочной структуры';

COMMENT ON TABLE public.d_fias_level_08 IS 'Элементы улично-дорожной сети';
COMMENT ON COLUMN public.d_fias_level_08.fias_level_08_id IS 'Идентификатор элемента улично-дорожной сети';
COMMENT ON COLUMN public.d_fias_level_08.fias_level_08_anno IS 'Наименование элемента улично-дорожной сети';
COMMENT ON COLUMN public.d_fias_level_08.fias_level_08_full_anno IS 'Полное наименование элемента улично-дорожной сети';

COMMENT ON TABLE public.d_fias_level_09 IS 'Земельные участки';
COMMENT ON COLUMN public.d_fias_level_09.fias_level_09_id IS 'Идентификатор земельного участка';
COMMENT ON COLUMN public.d_fias_level_09.fias_level_09_anno IS 'Наименование земельного участка';
COMMENT ON COLUMN public.d_fias_level_09.fias_level_09_full_anno IS 'Полное наименование земельного участка';

COMMENT ON TABLE public.d_fias_level_10 IS 'Здания и сооружения';
COMMENT ON COLUMN public.d_fias_level_10.fias_level_10_id IS 'Идентификатор здания (сооружения)';
COMMENT ON COLUMN public.d_fias_level_10.fias_level_10_anno IS 'Наименование здания (сооружения)';
COMMENT ON COLUMN public.d_fias_level_10.fias_level_10_full_anno IS 'Полное наименование здания (сооружения)';

COMMENT ON TABLE public.d_fias_level_11 IS 'Помещение';
COMMENT ON COLUMN public.d_fias_level_11.fias_level_11_id IS 'Идентификатор помещения';
COMMENT ON COLUMN public.d_fias_level_11.fias_level_11_anno IS 'Наименование помещения';
COMMENT ON COLUMN public.d_fias_level_11.fias_level_11_full_anno IS 'Полное наименование помещения';

WITH t AS (
    SELECT
        CASE WHEN fias_level_11_id IS NOT NULL THEN fias_level_11_id
            WHEN fias_level_10_id IS NOT NULL THEN fias_level_10_id
            WHEN fias_level_09_id IS NOT NULL THEN fias_level_09_id
            WHEN fias_level_08_id IS NOT NULL THEN fias_level_08_id
            WHEN fias_level_07_id IS NOT NULL THEN fias_level_07_id
            WHEN fias_level_06_id IS NOT NULL THEN fias_level_06_id
            WHEN fias_level_05_id IS NOT NULL THEN fias_level_05_id
            WHEN fias_level_04_id IS NOT NULL THEN fias_level_04_id
            WHEN fias_level_03_id IS NOT NULL THEN fias_level_03_id
            WHEN fias_level_02_id IS NOT NULL THEN fias_level_02_id
            ELSE fias_level_01_id
        END AS fias_id,
        ta.fias_level_01_id,
        ta.fias_level_02_id,
        ta.fias_level_03_id,
        ta.fias_level_04_id,
        ta.fias_level_05_id,
        ta.fias_level_06_id,
        ta.fias_level_07_id,
        ta.fias_level_08_id,
        ta.fias_level_09_id,
        ta.fias_level_10_id,
        ta.fias_level_11_id
    FROM
        public.tmp_addresses ta
    WHERE ta.address_str_standard IS NOT NULL
    GROUP BY
        ta.fias_level_01_id,
        ta.fias_level_02_id,
        ta.fias_level_03_id,
        ta.fias_level_04_id,
        ta.fias_level_05_id,
        ta.fias_level_06_id,
        ta.fias_level_07_id,
        ta.fias_level_08_id,
        ta.fias_level_09_id,
        ta.fias_level_10_id,
        ta.fias_level_11_id
)
SELECT *
INTO
    l_fias_hierarchy
FROM t
WHERE fias_id IS NOT NULL;


ALTER TABLE public.l_fias_hierarchy ALTER COLUMN fias_id SET NOT NULL;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_pk PRIMARY KEY (fias_id);
CREATE INDEX l_fias_hierarchy_idx ON public.l_fias_hierarchy (fias_level_01_id, fias_level_02_id, fias_level_03_id,fias_level_04_id,fias_level_05_id,fias_level_06_id,fias_level_07_id,fias_level_08_id,fias_level_09_id,fias_level_10_id,fias_level_11_id);
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_01_fk FOREIGN KEY (fias_level_01_id) REFERENCES public.d_fias_level_01(fias_level_01_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_02_fk FOREIGN KEY (fias_level_02_id) REFERENCES public.d_fias_level_02(fias_level_02_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_03_fk FOREIGN KEY (fias_level_03_id) REFERENCES public.d_fias_level_03(fias_level_03_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_04_fk FOREIGN KEY (fias_level_04_id) REFERENCES public.d_fias_level_04(fias_level_04_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_05_fk FOREIGN KEY (fias_level_05_id) REFERENCES public.d_fias_level_05(fias_level_05_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_06_fk FOREIGN KEY (fias_level_06_id) REFERENCES public.d_fias_level_06(fias_level_06_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_07_fk FOREIGN KEY (fias_level_07_id) REFERENCES public.d_fias_level_07(fias_level_07_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_08_fk FOREIGN KEY (fias_level_08_id) REFERENCES public.d_fias_level_08(fias_level_08_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_09_fk FOREIGN KEY (fias_level_09_id) REFERENCES public.d_fias_level_09(fias_level_09_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_10_fk FOREIGN KEY (fias_level_10_id) REFERENCES public.d_fias_level_10(fias_level_10_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.l_fias_hierarchy ADD CONSTRAINT l_fias_hierarchy_d_fias_level_11_fk FOREIGN KEY (fias_level_11_id) REFERENCES public.d_fias_level_11(fias_level_11_id) ON DELETE RESTRICT ON UPDATE CASCADE;

WITH t AS (
    SELECT
        address_id,
        address_str_original,
        CASE WHEN fias_level_11_id IS NOT NULL THEN fias_level_11_id
            WHEN fias_level_10_id IS NOT NULL THEN fias_level_10_id
            WHEN fias_level_09_id IS NOT NULL THEN fias_level_09_id
            WHEN fias_level_08_id IS NOT NULL THEN fias_level_08_id
            WHEN fias_level_07_id IS NOT NULL THEN fias_level_07_id
            WHEN fias_level_06_id IS NOT NULL THEN fias_level_06_id
            WHEN fias_level_05_id IS NOT NULL THEN fias_level_05_id
            WHEN fias_level_04_id IS NOT NULL THEN fias_level_04_id
            WHEN fias_level_03_id IS NOT NULL THEN fias_level_03_id
            WHEN fias_level_02_id IS NOT NULL THEN fias_level_02_id
            ELSE fias_level_01_id
        END AS fias_id,
        fias_ratio,
        fias_is_valid
    FROM
        public.tmp_addresses ta
)
SELECT *
INTO
    public.t_addresses_external
FROM t
WHERE fias_id IS NOT NULL;

ALTER TABLE public.t_addresses_external ADD CONSTRAINT t_addresses_external_pk PRIMARY KEY (address_id);
ALTER TABLE public.t_addresses_external ADD CONSTRAINT t_addresses_external_l_fias_hierarchy_fk FOREIGN KEY (fias_id) REFERENCES public.l_fias_hierarchy(fias_id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE public.t_addresses_external ALTER COLUMN address_id SET NOT NULL;
CREATE INDEX t_addresses_external_idx ON public.t_addresses_external (fias_id,fias_is_valid);
COMMENT ON TABLE public.t_addresses_external IS 'Адреса из внешних источников';
COMMENT ON COLUMN public.t_addresses_external.address_id IS 'Идентификатор адреса из внешнего  источника';
COMMENT ON COLUMN public.t_addresses_external.address_str_original IS 'Написание адреса во внешнем источнике';
COMMENT ON COLUMN public.t_addresses_external.fias_id IS 'Идентификатор адреса в ГАР';
COMMENT ON COLUMN public.t_addresses_external.fias_ratio IS 'Коэффициент соответствия адресу в ГАР';
COMMENT ON COLUMN public.t_addresses_external.fias_is_valid IS 'Соответствие адресу в ГАР проверено';

COMMENT ON TABLE public.l_fias_hierarchy IS 'Иерархия стандартных адресов ГАР';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_id IS 'Идентификатор дреса в ГАР';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_01_id IS 'Идентификатор субъекта РФ';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_02_id IS 'Идентификатор административного района';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_03_id IS 'Идентификатор муниципального района';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_04_id IS 'Идентификатор сельского или городского поселения';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_05_id IS 'Идентификатор города';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_06_id IS 'Идентификатор населенного пункта';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_07_id IS 'Идентификатор элемента планировочной структуры';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_08_id IS 'Идентификатор элемента улично-дорожной сети';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_09_id IS 'Идентификатор земельного участка';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_10_id IS 'Идентификатор здания (сооружения)';
COMMENT ON COLUMN public.l_fias_hierarchy.fias_level_11_id IS 'Идентификатор помещения';


-- DROP TABLE IF EXISTS public.tmp_addresses;










CREATE TABLE public.d_cadastral_level_01 (
	cadastral_level_01_id uuid NOT NULL,
	cadastral_level_01_code varchar(3) NULL,
	cadastral_level_01_anno varchar NOT NULL,
	CONSTRAINT d_cadastral_level_01_pk_1 PRIMARY KEY (cadastral_level_01_id),
	CONSTRAINT d_cadastral_level_01_un_1 UNIQUE (cadastral_level_01_code)
);
CREATE INDEX d_cadastral_level_01_cadastral_level_01_code_idx_1 ON public.d_cadastral_level_01 (cadastral_level_01_code, cadastral_level_01_code);

COMMENT ON TABLE public.d_cadastral_level_01 IS 'Кадастровые округа';
COMMENT ON COLUMN public.d_cadastral_level_01.cadastral_level_01_id IS 'Идентификатор кадастрового округа';
COMMENT ON COLUMN public.d_cadastral_level_01.cadastral_level_01_code IS 'Код кадастрового округа';
COMMENT ON COLUMN public.d_cadastral_level_01.cadastral_level_01_anno IS 'Наименование кадастрового округа';

CREATE TABLE public.d_cadastral_level_02 (
	cadastral_level_02_id uuid NOT NULL,
	cadastral_level_02_code varchar(7) NULL,
	cadastral_level_02_anno varchar NOT NULL,
	CONSTRAINT d_cadastral_level_02_pk_1 PRIMARY KEY (cadastral_level_02_id),
	CONSTRAINT d_cadastral_level_02_un_1 UNIQUE (cadastral_level_02_code)
);
CREATE INDEX d_cadastral_level_02_cadastral_level_02_code_idx_1 ON public.d_cadastral_level_02 (cadastral_level_02_code);

COMMENT ON TABLE public.d_cadastral_level_02 IS 'Кадастровые районы';
COMMENT ON COLUMN public.d_cadastral_level_02.cadastral_level_02_id IS 'Идентификатор кадастрового района';
COMMENT ON COLUMN public.d_cadastral_level_02.cadastral_level_02_code IS 'Код кадастрового района';
COMMENT ON COLUMN public.d_cadastral_level_02.cadastral_level_02_anno IS 'Наименование кадастрового района';

CREATE TABLE public.d_cadastral_level_03 (
	cadastral_level_03_id uuid NOT NULL,
    cadastral_level_03_code varchar(16) NOT NULL,
	CONSTRAINT d_cadastral_level_03_pk_1 PRIMARY KEY (cadastral_level_03_id),
	CONSTRAINT d_cadastral_level_03_un_1 UNIQUE (cadastral_level_03_code)
);
CREATE INDEX d_cadastral_level_03_cadastral_level_03_code_idx_1 ON public.d_cadastral_level_03 (cadastral_level_03_code);

COMMENT ON TABLE public.d_cadastral_level_03 IS 'Кадастровые кварталы';
COMMENT ON COLUMN public.d_cadastral_level_03.cadastral_level_03_id IS 'Идентификатор кадастрового квартала';
COMMENT ON COLUMN public.d_cadastral_level_03.cadastral_level_03_code IS 'Код кадастрового квартала';


CREATE TABLE public.d_cadastral_level_04 (
	cadastral_level_04_id uuid NOT NULL,
    cadastral_level_04_code varchar(22) NOT NULL,
    cadastral_level_04_anno varchar NULL,
    realty_id int8 NOT NULL,
	CONSTRAINT d_cadastral_level_04_pk_1 PRIMARY KEY (cadastral_level_04_id),
	CONSTRAINT d_cadastral_level_04_un_1 UNIQUE (cadastral_level_04_code)
);
CREATE INDEX d_cadastral_level_04_cadastral_level_04_code_idx_1 ON public.d_cadastral_level_04 (cadastral_level_04_code, realty_id);

COMMENT ON TABLE public.d_cadastral_level_04 IS 'Единые недвижимые комплексы';
COMMENT ON COLUMN public.d_cadastral_level_04.cadastral_level_04_id IS 'Идентификатор единого недвижимого комплекса';
COMMENT ON COLUMN public.d_cadastral_level_04.cadastral_level_04_code IS 'Код единого недвижимого комплекса';
COMMENT ON COLUMN public.d_cadastral_level_04.cadastral_level_04_anno IS 'Наименование единого недвижимого комплекса';
COMMENT ON COLUMN public.d_cadastral_level_04.realty_id IS 'Идентификатор вида объекта недвижимости';


CREATE TABLE public.d_cadastral_level_05 (
	cadastral_level_05_id uuid NOT NULL,
    cadastral_level_05_code varchar(22) NOT NULL,
    cadastral_level_05_anno varchar NULL,
    realty_id int8 NOT NULL,
	CONSTRAINT d_cadastral_level_05_pk_1 PRIMARY KEY (cadastral_level_05_id),
	CONSTRAINT d_cadastral_level_05_un_1 UNIQUE (cadastral_level_05_code)
);
CREATE INDEX d_cadastral_level_05_cadastral_level_05_code_idx_1 ON public.d_cadastral_level_05 (cadastral_level_05_code, realty_id);

COMMENT ON TABLE public.d_cadastral_level_05 IS 'Кадастровые номера земельных участков';
COMMENT ON COLUMN public.d_cadastral_level_05.cadastral_level_05_id IS 'Идентификатор кадастрового номера земельного участка';
COMMENT ON COLUMN public.d_cadastral_level_05.cadastral_level_05_code IS 'Код кадастрового номера земельного участка';
COMMENT ON COLUMN public.d_cadastral_level_05.cadastral_level_05_anno IS 'Наименование земельного участка';
COMMENT ON COLUMN public.d_cadastral_level_05.realty_id IS 'Идентификатор вида объекта недвижимости';
ALTER TABLE public.d_cadastral_level_05 ADD CONSTRAINT d_cadastral_level_05_d_realty_fk FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON DELETE RESTRICT ON UPDATE CASCADE;


CREATE TABLE public.d_cadastral_level_06 (
    cadastral_level_06_id uuid NOT NULL,
	cadastral_level_06_code varchar(22) NOT NULL,
    cadastral_level_06_anno varchar NULL,
    realty_id int8 NOT NULL,
	CONSTRAINT d_cadastral_level_06_pk_1 PRIMARY KEY (cadastral_level_06_id),
	CONSTRAINT d_cadastral_level_06_un_1 UNIQUE (cadastral_level_06_code)
);
CREATE INDEX d_cadastral_level_06_cadastral_level_06_code_idx_1 ON public.d_cadastral_level_06 (cadastral_level_06_code, realty_id);

COMMENT ON TABLE public.d_cadastral_level_06 IS 'Кадастровые номера объектов капитального строительства';
COMMENT ON COLUMN public.d_cadastral_level_06.cadastral_level_06_id IS 'Идентификатор кадастрового номера объекта капитального строительства';
COMMENT ON COLUMN public.d_cadastral_level_06.cadastral_level_06_code IS 'Код кадастрового номера объекта капитального строительства';
COMMENT ON COLUMN public.d_cadastral_level_06.cadastral_level_06_anno IS 'Наименование объекта капитального строительства';
COMMENT ON COLUMN public.d_cadastral_level_06.realty_id IS 'Идентификатор вида объекта недвижимости';
ALTER TABLE public.d_cadastral_level_06 ADD CONSTRAINT d_cadastral_level_06_d_realty_fk FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON DELETE RESTRICT ON UPDATE CASCADE;


CREATE TABLE public.d_cadastral_level_07 (
	cadastral_level_07_id uuid NOT NULL,
    cadastral_level_07_code varchar(22) NOT NULL,
    cadastral_level_07_anno varchar NULL,
    realty_id int8 NOT NULL,
	CONSTRAINT d_cadastral_level_07_pk_1 PRIMARY KEY (cadastral_level_07_id),
	CONSTRAINT d_cadastral_level_07_un_1 UNIQUE (cadastral_level_07_code)
);
CREATE INDEX d_cadastral_level_07_cadastral_level_07_code_idx_1 ON public.d_cadastral_level_07 (cadastral_level_07_code, realty_id);

COMMENT ON TABLE public.d_cadastral_level_07 IS 'Кадастровые номера помещений';
COMMENT ON COLUMN public.d_cadastral_level_07.cadastral_level_07_id IS 'Идентификатор кадастрового номера помещения';
COMMENT ON COLUMN public.d_cadastral_level_07.cadastral_level_07_code IS 'Код кадастрового номера помещения';
COMMENT ON COLUMN public.d_cadastral_level_07.cadastral_level_07_anno IS 'Наименование помещения';
COMMENT ON COLUMN public.d_cadastral_level_07.realty_id IS 'Идентификатор вида объекта недвижимости';
ALTER TABLE public.d_cadastral_level_07 ADD CONSTRAINT d_cadastral_level_07_d_realty_fk FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON DELETE RESTRICT ON UPDATE CASCADE;


CREATE TABLE public.d_cadastral_level_08 (
	cadastral_level_08_id uuid NOT NULL,
    cadastral_level_08_code varchar(22) NOT NULL,
    cadastral_level_08_anno varchar NULL,
    realty_id int8 NOT NULL,
	CONSTRAINT d_cadastral_level_08_pk_1 PRIMARY KEY (cadastral_level_08_id),
	CONSTRAINT d_cadastral_level_08_un_1 UNIQUE (cadastral_level_08_code)
);
CREATE INDEX d_cadastral_level_08_cadastral_level_08_code_idx_1 ON public.d_cadastral_level_08 (cadastral_level_08_code, realty_id);

COMMENT ON TABLE public.d_cadastral_level_08 IS 'Кадастровые номера комнат в помещениях';
COMMENT ON COLUMN public.d_cadastral_level_08.cadastral_level_08_id IS 'Идентификатор кадастрового номера комнаты в помещении';
COMMENT ON COLUMN public.d_cadastral_level_08.cadastral_level_08_code IS 'Код кадастрового номера комнаты в помещении';
COMMENT ON COLUMN public.d_cadastral_level_08.cadastral_level_08_anno IS 'Наименование комнаты в помещении';
COMMENT ON COLUMN public.d_cadastral_level_08.realty_id IS 'Идентификатор вида объекта недвижимости';
ALTER TABLE public.d_cadastral_level_08 ADD CONSTRAINT d_cadastral_level_08_d_realty_fk FOREIGN KEY (realty_id) REFERENCES public.d_realty(realty_id) ON DELETE RESTRICT ON UPDATE CASCADE;


INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('c9de922b-a0f5-5f8c-b514-af47f9367c08','01','Адыгейский'),
	 ('52176f3c-5543-5464-b3cc-fb8e7f7dabab','02','Башкирский'),
	 ('61bb35e1-339d-5761-96d2-27017b2e220f','03','Бурятский'),
	 ('4760c079-7cbf-58fd-8995-99e1881e3970','04','Алтайский республиканский'),
	 ('0e903f0b-8b7e-58ad-896d-43ee15bfbc19','05','Дагестанский'),
	 ('c649efe4-2a40-563f-ad14-8d1841b1fc01','06','Ингушский'),
	 ('fc695f4f-78aa-53f5-864a-f5dcaf06b4ec','07','Кабардино-Балкарский'),
	 ('230c1d4f-daca-5eb1-8330-eb2f78d34179','08','Калмыцкий'),
	 ('32a9780b-04e5-5d5a-9692-a8c64a58325c','09','Карачаево-Черкесский'),
	 ('305f5e8d-e48d-5c3a-8ce3-446622dd8a8a','10','Карельский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('a4c08562-50fa-5599-939c-eb6f2a83a362','11','Коми'),
	 ('d35aeaf3-5d1d-535a-a31a-22133ddf5f3d','12','Марийский'),
	 ('61c97311-bb14-5679-99fc-98497a701292','13','Мордовский'),
	 ('1bb138f7-5f19-587c-8a25-fb174eabf441','14','Якутский'),
	 ('be6c2a5f-4160-5145-8695-c628496b208d','15','Северо-Осетинский'),
	 ('7dbed579-ec83-5f9b-8aa3-1c40e858acfc','16','Татарский'),
	 ('bcc896de-3c61-523e-973c-052f16456e28','17','Тувинский'),
	 ('77b34e74-5631-5a71-b8ce-97b9d6bab10a','18','Удмуртский'),
	 ('9d58db4d-28b7-56fc-9b12-db9a3e9d0769','19','Хакасский'),
	 ('6fea451e-90db-5366-bbde-9a65b83f8f64','20','Чеченский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('0df2c324-4b3b-5e4b-8574-770c7c601dc4','21','Чувашский'),
	 ('05596e20-ebb9-571a-9f7c-250cbacfb499','22','Алтайский краевой'),
	 ('32b736a1-2bed-5f62-8131-c3dc9a2a33c7','23','Краснодарский'),
	 ('29be4ef0-91eb-512b-8f83-360b6db38a83','24','Красноярский'),
	 ('46f64ca6-6094-51fc-bbbe-34e3333c5388','25','Приморский'),
	 ('8df6e0fb-0d35-5fd6-831a-7e5b9ad2457a','26','Ставропольский'),
	 ('5151e75a-9d7d-5897-be85-aaa96757564b','27','Хабаровский'),
	 ('21f6a510-8fff-5bed-9d0e-df7b2ca28db1','28','Амурский'),
	 ('3eee96fe-b265-5e36-8d78-b2d50a9ac563','29','Архангельский'),
	 ('720073c2-6984-53fa-9546-b893e83e0f62','30','Астраханский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('b0526112-ddde-5dbf-b887-9b6f93557007','31','Белгородский'),
	 ('b85b4ff7-2f5e-5d5d-bcda-728e00ad61de','32','Брянский'),
	 ('7561fe4e-6ffd-5631-96d6-cf89fdadba83','33','Владимирский'),
	 ('ae5a160a-ca64-5557-a0d8-1fdd610d83e1','34','Волгоградский'),
	 ('5429db33-2d2c-51e4-9b96-9918a6a67f07','35','Вологодский'),
	 ('214f116d-a5a3-5203-867d-28bcad2b6c1a','36','Воронежский'),
	 ('c18d0fc0-d829-5009-a349-094ea30c386b','37','Ивановский'),
	 ('c3205bf1-c929-5b45-af5a-42b59ab87391','38','Иркутский'),
	 ('6863109a-0444-5f87-b018-66483cb30f22','39','Калининградский'),
	 ('b4ab3922-2b8d-5d9c-b20a-e34bbc64c01f','40','Калужский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('08d2a401-c6d0-56d0-bfca-d8fe47a0ccde','41','Камчатский'),
	 ('ba293c61-ad33-57b9-9671-f3319f57d789','42','Кемеровский'),
	 ('45fae334-63fa-5064-9e45-024ff9e0095c','43','Кировский'),
	 ('fce23375-fdd4-5b30-8e57-a401e5265ba1','44','Костромской'),
	 ('b5a095ae-2fa5-5416-a5c3-4b3e8a7d0f9c','45','Курганский'),
	 ('8060dbbf-e5cc-5ed8-b6a8-9c463ae3f1ef','46','Курский'),
	 ('36054888-8e10-578a-b964-a1e6efebf8bf','47','Ленинградский'),
	 ('ae0f5d2b-52f8-5845-8572-d7c586982e02','48','Липецкий'),
	 ('651ee801-9621-5f6a-a42a-18c7cc80c352','49','Магаданский'),
	 ('5d9b0a1d-62ce-570c-ba61-24557b6f4e68','50','Московский областной');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('0154a6f6-0e6c-52c4-b709-95aaead8423e','51','Мурманский'),
	 ('e0a97602-6480-588c-868f-bc044abf9cb5','52','Нижегородский'),
	 ('f924209a-092e-58bb-b85e-4ceea176a660','53','Новгородский'),
	 ('e1d79fd9-d2be-5d43-9714-87cf2a8567e0','54','Новосибирский'),
	 ('8a3edd46-2628-5d57-9865-13f273edf326','55','Омский'),
	 ('6460a618-c69d-5751-9c53-2d03d46ade51','56','Оренбургский'),
	 ('da992292-ffb1-5ab2-a6de-c19a9b0d0fd7','57','Орловский'),
	 ('dcdd0263-6e8b-5cac-b79f-fe6a389a529a','58','Пензенский'),
	 ('02df7727-e4b1-5359-b25a-27eb2ba414b0','59','Пермский'),
	 ('7b2da8c5-bdc2-5d5a-b226-3e6746cf0d89','60','Псковский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('397a09f8-fd35-5409-a27c-482947f05217','61','Ростовский'),
	 ('c5ab2aae-6554-5bbe-bd14-997f20448114','62','Рязанский'),
	 ('87c35800-783c-5bed-afab-7a6fab481c46','63','Самарский'),
	 ('ffd38492-0348-5b2d-8f08-3ff2ca0f4645','64','Саратовский'),
	 ('61361ec8-6dd5-59da-a79f-3509bad1a524','65','Сахалинский'),
	 ('8b691658-669a-56db-9e92-a20b2c99ec08','66','Свердловский'),
	 ('e5bcfc44-a2bf-5e3e-8de7-7031b3ddff2e','67','Смоленский'),
	 ('37a5ea60-8b87-58f5-9155-cfb6711b7e00','68','Тамбовский'),
	 ('51a38ca6-6e81-549e-9790-41a1f4a96d3e','69','Тверской'),
	 ('9e1fc8f8-d9e7-59ae-99a1-28465dcd0f6e','70','Томский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
	 ('e6c0ad59-a52e-5938-887a-8a411e97298a','71','Тульский'),
	 ('ad407b82-5446-5ad6-8061-cf6bcd51b875','72','Тюменский'),
	 ('c25ac3f7-f861-51d9-991a-8db2fa1c4cb1','73','Ульяновский'),
	 ('595487c4-7068-50fa-9768-19972d22e2cd','74','Челябинский'),
	 ('ef8bdc6a-9d29-5791-9e94-d6678ba6b4de','75','Забайкальский'),
	 ('f27890a1-f3b3-5142-a9b7-5297799d60dd','76','Ярославский'),
	 ('d9ecf479-5e69-5001-b864-c71de51185a2','77','Московский городской'),
	 ('5bdcce0f-16bb-56e0-ae00-36ef8437f653','78','Петербургский'),
	 ('734cdcf0-7107-550a-8e99-18ca5b1be1b7','79','Еврейский'),
     ('9a6d4ea7-39e3-582e-bf94-fec1a5f9d685','80','Агинский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
     ('591315a4-dbca-5cc7-af08-cbeeac98178b','81','Коми-Пермяцкий'),
	 ('1643c509-5bbe-5a87-bfa6-51b5ed07a83a','82','Корякский'),
	 ('312a6ee4-fdec-5229-86e2-e0df521cf306','83','Ненецкий'),
	 ('f2b6f9a7-531d-5d97-9bf1-4177c33e5070','84','Таймырский'),
	 ('7bafb091-c361-5517-82a8-4d3d0809e9f9','85','Усть-Ордынский'),
	 ('f3cf4d43-6a2c-560d-9a2a-5c77331b913b','86','Ханты-Мансийский'),
	 ('5981de99-b8e5-5048-a219-ab103e9cf914','87','Чукотский'),
	 ('4baeee02-b9b3-5ecd-9f1b-400dbac56b82','88','Эвенкийский'),
	 ('21d1bd6c-49e3-5d81-a799-5af7da862936','89','Ямало-Ненецкий'),
	 ('2b173f18-8c74-5e19-a7d4-3212f74017a8','90','Крымский');
INSERT INTO public.d_cadastral_level_01 (cadastral_level_01_id,cadastral_level_01_code,cadastral_level_01_anno) VALUES
     ('0962b5eb-2409-5618-b05f-8569ea0dc35d','91','Севастопольский'),
	 ('4df2f065-ecff-52cf-bc07-6ff6b3ee09e3','93','Донецкий'),
	 ('9b99a42f-1ce6-52a0-90ea-5e234201500b','94','Херсонский'),
	 ('7aae4a9a-e6b4-5a28-a978-e42b2ab8d101','95','Луганский'),
	 ('1a715879-7dba-5a42-b3c5-5a51b46e89e3','96','Запорожский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('bb4db20c-6127-53ab-8a91-2bee4aa6e798','01:00','Условный кадастровый район'),
	 ('50e8e185-5c83-5420-97ec-bcd24599038f','01:01','Гиагинский'),
	 ('d535abd9-9e27-53b8-a904-8f242a3cb8db','01:02','Кошехабльский'),
	 ('6568dbeb-dbe9-506c-b968-5ab6ba103dee','01:03','Красногвардейский'),
	 ('a72aaa28-f95a-579b-b392-ba0e9374cab5','01:04','Майкопский районный'),
	 ('cdf8406e-00ff-5a62-b44d-fb598569d435','01:05','Тахтамукайский'),
	 ('21e2b9de-8f97-577c-8d2b-737468f1505e','01:06','Теучежский'),
	 ('d8cf932d-a1c3-5487-be74-edd1980c4dd7','01:07','Шовгеновский'),
	 ('df62a466-849c-59af-9600-e61303702fed','01:08','Майкопский городской'),
	 ('ef4c6480-382c-52c8-ad2b-bb516472aef7','01:09','Адыгейский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('302587be-76aa-5ce2-9ac8-06bc1ed26a3e','02:00','Условный кадастровый район'),
	 ('7e72b033-19e8-5b35-be2d-68c08f80311c','02:01','Абзелиловский'),
	 ('51b9c487-39bc-57f9-88aa-5cbfa1e6030a','02:02','Альшеевский'),
	 ('2fcc4346-64a8-5f7a-8187-689ac8f09106','02:03','Архангельский'),
	 ('412efff4-ad32-52b2-adf3-085e1a2bfb0e','02:04','Аскинский'),
	 ('79069a05-1db6-5eeb-aa67-5897838ba2ff','02:05','Аургазинский'),
	 ('29ac390f-d84a-513b-bf5d-322dd4f2bd65','02:06','Баймакский районный'),
	 ('4e583377-8d45-5c0c-8bc1-7933bed7b4c7','02:07','Бакалинский'),
	 ('3b3e1db4-c230-5727-b7ae-638d8d3ec4f6','02:08','Балтачевский'),
	 ('a8dc4561-63ce-5e73-9ef3-88ec45388081','02:09','Белебеевский районный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('676b0149-0c03-5dd6-ace3-1211cdee4137','02:10','Белокатайский'),
	 ('7049ef18-9f50-5d30-bcbe-40125b38999c','02:11','Белорецкий районный'),
	 ('bfb4e2f0-320e-58ee-8e4f-e7e12fb6af3e','02:12','Бижбулякский'),
	 ('2aeb74a7-2e79-584b-a317-5859857d761f','02:13','Бирский районный'),
	 ('0c10b1a2-0216-59fd-8609-7610ac796747','02:14','Благоварский'),
	 ('6f4fa304-27c4-5315-bbe8-ec284a5222e3','02:15','Благовещенский районный'),
	 ('50ef8608-3c58-56cf-868a-c43454ce1048','02:16','Буздякский'),
	 ('49c33686-d38f-55c6-9202-762779b1d34b','02:17','Бураевский'),
	 ('ae847af1-94f5-50af-b88e-682130aff4ac','02:18','Бурзянский'),
	 ('aaed0c54-a8ed-5f7f-a0d9-83e28f188fc1','02:19','Гафурийский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5e5f462c-762c-5abe-aaf0-629fbae73c1b','02:20','Давлекановский районный'),
	 ('1d1fedc6-7a88-5b0a-8b62-b0c6cf170964','02:21','Дуванский'),
	 ('107de43c-2e35-58e1-8a18-662fe5c710ff','02:22','Дюртюлинский районный'),
	 ('39eef4d8-45c1-5462-81b9-bd2b851be57e','02:23','Ермекеевский'),
	 ('06a28332-7b91-5d52-b0ed-d25689ac901c','02:24','Зианчуринский'),
	 ('e2233457-297c-549e-a356-b86c16334fca','02:25','Зилаирский'),
	 ('3a9b822a-988e-54af-9867-8fb6f7651506','02:26','Иглинский'),
	 ('2288ddf6-1f46-5715-9b68-6ead024654c8','02:27','Илишевский'),
	 ('a39968e3-52fa-58cc-affd-ef500c45ec71','02:28','Ишимбайский районный'),
	 ('49d36294-48d4-5e66-b756-d5e25a097cff','02:29','Калтасинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('e4555a2c-b8f1-5fc3-a5ae-47fee46cb304','02:30','Караидельский'),
	 ('c5489e8d-ef4c-536f-866f-978dee4ad7be','02:31','Кармаскалинский'),
	 ('254b100e-c747-5c41-b03d-19106df8f941','02:32','Кигинский'),
	 ('9d0f6bda-13e4-5eef-8b4e-b9a2f90bfd9a','02:33','Краснокамский'),
	 ('93a984b9-371c-5ae7-a11a-73c6c4360f8b','02:34','Кугарчинский'),
	 ('67f79a81-344c-5361-b576-fe300c2e1e82','02:35','Куюргазинский'),
	 ('1866badd-5c84-5404-984c-d35011bef5b1','02:36','Кушнаренковский'),
	 ('4a35be20-b7e9-5d93-9103-55c1d6ad5c9f','02:37','Мелеузовский районный'),
	 ('f20105d1-7f91-52c0-820f-6d80a5844978','02:38','Мечетлинский'),
	 ('151d9cf9-e74d-50a4-8430-bd4fbf1144cf','02:39','Мишкинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('269cbaf0-517d-5f9a-9b87-db1ee553a820','02:40','Миякинский'),
	 ('6745a466-3cad-50b9-966c-63c50fe81117','02:41','Нуримановский'),
	 ('ba3bfdb8-b617-5e14-b80f-080faf7cffbd','02:42','Салаватский районный'),
	 ('baacec1e-0c0a-500f-a696-8d16c45ab79e','02:43','Стерлибашевский'),
	 ('c67b26c4-e1af-5950-b5e1-8a1e09eff969','02:44','Стерлитамакский районный'),
	 ('0b51b985-8219-5225-b58b-5f4ef42c638c','02:45','Татышлинский'),
	 ('5c887bb2-3dc6-5d9a-b011-58e6b63e0364','02:46','Туймазинский районный'),
	 ('00d9ac8d-033d-5fda-8eaf-781da1756cb6','02:47','Уфимский районный'),
	 ('f16dc145-163b-5e11-bfb7-1807a9939261','02:48','Учалинский районный'),
	 ('ccbf68d9-7e17-5c46-ac9d-6193b7a9034e','02:49','Федоровский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9374af94-c83d-5cf4-9f43-f08787d95b11','02:50','Хайбуллинский'),
	 ('180f7f83-b28e-5fa9-a412-cb85e8acaf11','02:51','Чекмагушевский'),
	 ('4f823970-9d03-5a07-aee9-98bdecc37792','02:52','Чишминский'),
	 ('06fc13b5-5ff6-5132-b2d4-a6c64df66cb7','02:53','Шаранский'),
	 ('4142b1cf-27b7-5f3e-b83b-7a1bfb281036','02:54','Янаульский районный'),
	 ('b01eff27-b8d5-556e-8436-f3cf0bec8a65','02:55','Уфимский городской'),
	 ('5ca93e33-ded2-50a0-b373-fed549a31125','02:56','Стерлитамакский городской'),
	 ('7362e454-5a7c-5272-affc-44c1909122ad','02:57','Октябрьский'),
	 ('c5da3039-2267-5772-9a87-8cae258effa7','02:58','Ишимбайский городской'),
	 ('84b28c7c-03f2-5a3f-8794-f1062cd905d9','02:59','Салаватский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c1f555a0-3903-5512-93f8-fedf37099a27','02:60','Кумертауский'),
	 ('773002c8-515b-5070-bd15-560c25ae20f4','02:61','Сибайский'),
	 ('d5bfbc00-e225-5122-982f-4985436903f1','02:62','Белорецкий городской'),
	 ('11842a92-ceb8-5311-926c-2b0a8b8d534a','02:63','Белебеевский городской'),
	 ('42e1e663-1fbe-5a8b-8c95-5ad28b745f03','02:64','Бирский городской'),
	 ('571d43ad-3ed2-58b8-a278-d00f44a5cc54','02:65','Туймазинский городской'),
	 ('f922a85c-be5c-5b50-8249-2e71c301b1a8','02:66','Нефтекамский'),
	 ('c5ee12bd-2e53-5bac-83cb-b00f3a027649','02:67','Учалинский городской'),
	 ('37ec1cdd-c93d-5ce0-a7f0-265840641a4e','02:68','Мелеузовский городской'),
	 ('7c7e31af-7e36-5d2f-b74c-969327c22790','02:69','Благовещенский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('23908026-a4bd-543d-b00a-4ea93d119fc8','02:70','Дюртюлинский городской'),
	 ('24f6891b-ead4-5644-aab8-3e6b47751bf9','02:71','Давлекановский городской'),
	 ('54cc5352-6057-5bac-87de-fd11fcde09c9','02:72','Янаульский городской'),
	 ('8c964e4b-477d-5824-8116-dfd744c559af','02:73','Баймакский городской'),
	 ('a7f9fead-25d5-5afd-925a-c28b227b90c2','02:74','Агидельский'),
	 ('7073f2fd-4660-5700-84c4-86b14490ea5e','02:75','Межгорьевский'),
	 ('ba960645-30de-5821-8ea3-368a7066e542','03:00','Условный кадастровый район'),
	 ('114b74ce-8a95-53a1-b495-d9d3ad570324','03:01','Баргузинский'),
	 ('2b4cad55-f5d6-5176-9081-8d8ab3a7ff54','03:02','Баунтовский'),
	 ('68887f43-d2f4-5122-b33d-30114a6de7ab','03:03','Бичурский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('53f2b4c2-7c1f-59e7-91aa-2d9c1df46298','03:04','Джидинский'),
	 ('c1187a02-1367-596d-8870-ffaf4ae4016e','03:05','Еравнинский'),
	 ('0dd06b72-c4c1-5555-8a90-1122942147b0','03:06','Заиграевский'),
	 ('d4ca3d02-16a6-5ffd-a129-4c4817e6a594','03:07','Закаменский'),
	 ('c442b9cf-f1ed-5018-9db6-cad533449d05','03:08','Иволгинский'),
	 ('ea0225e2-ef53-5f9a-921f-b0ffb858000e','03:09','Кабанский'),
	 ('aa86f11f-eb67-5a71-a610-e26008eef947','03:10','Кижингинский'),
	 ('c296a564-2028-576f-bb4f-83d952962fef','03:11','Курумканский'),
	 ('895efe3f-1ea7-53a4-b5ce-a42254aa9058','03:12','Кяхтинский'),
	 ('5fbd6a21-9d8e-5404-8311-27f47421f8ac','03:13','Муйский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4003af06-7395-5c06-aad5-637e1937fc53','03:14','Мухоршибирский'),
	 ('5f75c25b-6f71-513a-a770-9da03b56a817','03:15','Окинский'),
	 ('5d491e7a-e9ae-5fbb-9f4d-87ac12c5fdb3','03:16','Прибайкальский'),
	 ('ecc26118-e028-5536-a429-ae49aebb66dc','03:17','Северо-Байкальский'),
	 ('228d124e-02f6-5f3a-b001-15aebee4a5a7','03:18','Селенгинский'),
	 ('a989f0c6-c875-5127-81f1-18bab368b9b8','03:19','Тарбагатайский'),
	 ('1e19a1da-98e1-5306-951d-3b52b71acbc0','03:20','Тункинский'),
	 ('8cbb4e67-5f78-503d-8a0b-da8af9ebfd19','03:21','Хоринский'),
	 ('6afb2e47-41bf-571c-a434-83d2fe483563','03:22','Гусиноозерск'),
	 ('08d421b6-8e12-5d92-9b2e-1ea03c5d42d4','03:23','Северобайкальск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cef74785-0d0a-54de-bb73-9d98c5344d33','03:24','г. Улан-Удэ'),
	 ('4067b6bc-5b72-5e85-a1b8-5a5a0721169a','04:00','Условный кадастровый район'),
	 ('b5556868-e834-5068-9c51-386ac245d099','04:01','Майминский район'),
	 ('8ebb5199-4d9d-500d-93a4-f4a43926319e','04:02','Чойский район'),
	 ('f09c9b4b-33c8-5e27-a1e5-7668a536b7f4','04:03','Турочакский район'),
	 ('a70c2d85-75e6-5d0a-b7d5-6b1ea42f04f8','04:04','Шебалинский район'),
	 ('330e252d-bf01-550b-a2f0-afb075cb07d3','04:05','Чемальский район'),
	 ('dbff04c2-4726-57a3-83f1-d7c9b0a8f8b4','04:06','Онгудайский район'),
	 ('83720db5-e873-5b33-8b2f-a84227b1574a','04:07','Усть-Канский район'),
	 ('e8d6c17b-4192-5776-b96c-9f496234aba2','04:08','Усть-Коксинский район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d160795c-09ee-5cf6-9e21-690fc65dc635','04:09','Улаганский район'),
	 ('7670c43e-8d87-50b4-8e4c-98efbb9f7a24','04:10','Кош-Агачский район'),
	 ('98dd705f-355d-5add-8572-9b2a15909fa2','04:11','г.Горно-Алтайск'),
	 ('3869d424-78ec-5a82-8106-30e969778925','05:00','Условный кадастровый район'),
	 ('3e4e1e75-912c-5c3d-9e41-7c6204561c12','05:01','Бабаюртовский'),
	 ('7a458cc5-b2f2-5a71-a92d-95d56c3ac91c','05:02','Кизлярский районный'),
	 ('d6186e46-e06d-57aa-b691-c94fe5ed5f29','05:03','Ногайский'),
	 ('7a298d04-fe08-546a-8a0c-124e4a74c9bc','05:04','Тарумовский'),
	 ('95a2e5b5-e51e-5886-b0a5-46378d83a934','05:05','Хасавюртовский районный'),
	 ('f237329d-b514-5a37-9310-a64a3b5ee68e','05:06','Кизилюртовский районный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('29d4c6f1-f427-5fac-b616-26395a35eab9','05:07','Дербентский районный'),
	 ('575e7b8f-59c7-5568-91bf-6debf6a16f51','05:08','Каякентский'),
	 ('e8a9154a-12da-5101-a61c-819db8cc7d02','05:09','Карабудахкентский'),
	 ('7d2dafa2-a00d-51cc-9a5f-9998e8b28c56','05:10','Магарамкентский'),
	 ('2ade4c3a-ae2d-5495-8ed2-fa7fbe901ac2','05:11','Буйнакский районный'),
	 ('294259d7-4139-56a4-89c4-328bbe28c35b','05:12','Казбековский'),
	 ('b2a9fe83-ace2-5acc-b39a-7dca68661e7f','05:13','С.Стальский'),
	 ('abdef58c-52d7-50c8-8bd9-5e3554241c79','05:14','Кайтагский'),
	 ('19b0ca53-31e7-52e0-8de9-8a8406a168a1','05:15','Новолакский'),
	 ('e3b446ba-d42b-5e61-8a8d-b70eb5f936a6','05:16','Сергокалинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c71610c3-1a91-54bb-95a7-0bfcabbcc36f','05:17','Табасаранский'),
	 ('36134205-96c8-5d11-b603-72776bae0668','05:18','Хивский'),
	 ('4384a061-6d3c-532f-b76e-3ef436cd633f','05:19','Агульский'),
	 ('0070dea0-0460-52ec-aab0-a7920ebd89c2','05:20','Акушинский'),
	 ('292e2293-bf16-58b1-8b1a-7daa4c1ffbc4','05:21','Ахвахский'),
	 ('85ed4ee7-8a08-59cd-bb6b-ab9236329fe9','05:22','Ахтынский'),
	 ('e03e8ad2-d2db-5620-8704-c90088546b98','05:23','Ботлихский'),
	 ('14961d38-cdb5-5817-8c9b-c3c56178578a','05:24','Гергебильский'),
	 ('a710c56c-f1d5-54f1-be52-d0ca7adb1165','05:25','Гумбетовский'),
	 ('43a7487b-6cd3-58a5-8ceb-e81e8e5c4b37','05:26','Гунибский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a58ba38e-4551-567c-a974-151996a4550b','05:27','Дахадаевский'),
	 ('9ff25c02-a82d-59c0-9be2-ea9e821a5971','05:28','Кулинский'),
	 ('c8a90197-e314-5b2d-a21f-8425a7b29d4a','05:29','Курахский'),
	 ('a3d88173-bcd2-5d42-a3b7-1ed6396aa69e','05:30','Лакский'),
	 ('5bfefa0a-bc3b-5d74-852a-e52845122cc0','05:31','Левашинский'),
	 ('af95cdcf-08a4-50cf-8bf2-61b370c3b7eb','05:32','Рутульский'),
	 ('562dc567-be8c-50e4-ac53-8df9d27846d9','05:33','Шамильский'),
	 ('b137a555-f19f-5d1a-9a91-89f1338ce8d9','05:34','Тляратинский'),
	 ('b7bcab48-923d-5484-bcc4-57ffb1869d16','05:35','Унцукульский'),
	 ('cef26ede-510c-593f-8510-14e29f547e0d','05:36','Хунзахский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('37648ac9-1714-5657-8f6f-73692a2eda27','05:37','Цунтинский'),
	 ('064557ef-1977-51c9-9cb4-a2527904c9f2','05:38','Цумадинский'),
	 ('473cc366-6af4-5443-b859-275fd3095fc5','05:39','Чародинский'),
	 ('3789d3c3-bf6d-57b8-9806-75ad17ae26ee','05:40','Махачкалинский городской'),
	 ('b365b983-cf91-59a9-a2a0-1202f9c32f65','05:41','Хасавюртовский городской'),
	 ('88382d7d-4feb-528b-bd56-e008384d8506','05:42','Дербентский городской'),
	 ('2e4e974f-374c-5bf3-9884-16ed4e301847','05:43','Кизлярский городской'),
	 ('b994e847-36f0-510b-83bc-17e154e45620','05:44','Буйнакский городской'),
	 ('0429da67-860e-5252-879e-41d6f3ce2aca','05:45','Кизилюртовский городской'),
	 ('bc5a7303-437b-5afb-b689-17418a958997','05:46','Южносухокумский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('de6a84fd-2da2-5740-a2b3-5c0f05c9c03b','05:47','Даг. Огнинский городской'),
	 ('660eb53f-ba0d-525c-82d5-f964f4e3b726','05:48','Каспийский городской'),
	 ('d52edb0d-29db-533f-a244-46ad7a1a5902','05:49','Избербашский городской'),
	 ('97c2a11c-b139-54d6-a3b9-ff7e79d667b9','05:50','Кумторкалинский'),
	 ('33f3e71a-8b74-51c7-b863-0c5e77dffa1d','05:51','Докузпаринский'),
	 ('68bb2328-3c03-5901-8124-9fa8f7333f27','05:52','Махачкалинский международный морской торговый порт'),
	 ('604008c4-78d7-56bd-ab6a-2a230e1f93a6','06:00','Условный кадастровый район'),
	 ('99d0ce9a-6534-5f68-82ab-533cce72be89','06:01','Малгобекский'),
	 ('669f6c77-e3e1-58b5-a606-3b516b63106a','06:02','Сунженский'),
	 ('fc8875ff-43bc-5b6d-b935-74cfb41670be','06:03','Карабулакский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9463e66a-d0d4-546b-bda7-6086e818b31c','06:04','Назрановский районный'),
	 ('850d7ad8-b812-5568-b749-68ed4d842e47','06:05','Назрановский городской'),
	 ('28b1aa04-64a8-5090-8563-1046081a6017','06:06','Магасский'),
	 ('d33356ea-196c-54c5-87b8-a007535e58e0','06:07','Джейрахский'),
	 ('fa60239c-2aef-581e-96ff-bf43980cbb3a','07:00','Условный кадастровый район'),
	 ('de9875bf-2e63-524b-8747-4a609325b882','07:01','Баксанский район'),
	 ('ef4fdb62-2501-5160-acc0-feab9c9781ac','07:02','Зольский район'),
	 ('eb53bad2-2357-5154-8302-104008e00177','07:03','Майский район'),
	 ('b6ff6894-8ad1-53cf-93da-56b2a64c6512','07:04','Прохладненский район'),
	 ('20fea82b-a73d-5d02-a2cf-9a32b4f2831c','07:05','Черекский район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f26e20ac-1113-5ec5-a697-35c56c6bdda1','07:06','Терский район'),
	 ('c2189b66-fb90-5251-a72a-1b319a98a385','07:07','Урванский район'),
	 ('4d1cfd01-363c-53fc-b7e5-f1fda721cb35','53:16','Солецкий'),
	 ('343cbc90-5772-53a0-ad33-95cb80f1380f','07:08','Чегемский район'),
	 ('a42bdcbd-2744-5ead-acd9-f7e8e792abd6','07:09','г. Нальчик (с адм. террит.)'),
	 ('3b7890f8-d8cd-5d0c-9387-64cd90f6564a','07:10','г. Прохладный'),
	 ('5d904047-fcb7-5586-89b8-996e61f684d6','07:11','Эльбрусский район'),
	 ('87e42e21-5007-5c19-9aac-9f14f91a293f','08:00','Условный кадастровый район'),
	 ('21e43812-8f8b-57a2-94d9-12e8124ad766','08:01','Городовиковский'),
	 ('9c1f084f-1876-577b-b434-3e921ffe9f01','08:02','Ики-Бурульский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('12d47504-211c-57e0-9f77-222105faf54d','08:03','Лаганский'),
	 ('0fe8384f-a052-5c6e-9c3f-82115dbfc37b','08:04','Кетченеровский'),
	 ('703378ee-88e1-56e2-bd5d-9e7793907743','08:05','Малодербетовский'),
	 ('91d5dafc-b468-5d4e-950e-c0fe1cb62892','08:06','Октябрьский'),
	 ('2e077879-ebb0-5988-bbd9-efec2ba7b9ce','08:07','Приютненский'),
	 ('ecbc17f9-a274-5a77-90fc-0713f1d36091','08:08','Сарпинский'),
	 ('d8994a2f-0da6-5b93-9cff-fd489cecfec5','08:09','Целинный'),
	 ('aa876bf6-22d6-50e2-ad5d-41123498ecf3','08:10','Черноземельский'),
	 ('2cff9d00-5adc-52dc-8730-6f3855b969d7','08:11','Юстинский'),
	 ('610f8504-f1a2-500f-9a5f-bbc86fbaca1c','08:12','Яшалтинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('bf9ed642-8c89-5538-a305-5ddcc4eafbf3','08:13','Яшкульский'),
	 ('888b880a-7edb-50f4-8c64-af5261f7a7b5','08:14','Элистинский'),
	 ('977b0281-3ef6-5408-a521-f68c1c41b52b','09:00','Условный кадастровый район'),
	 ('8102f1c9-092e-5e47-93f4-68770cdc2329','09:01','Адыге-Хабльский'),
	 ('d0876bd0-329c-52d5-b291-c6193055df3f','09:02','Прикубанский'),
	 ('3ac7f7fb-4136-57c1-a960-b4cd6c11f1fb','09:03','Хабезский'),
	 ('20a4a5f4-d0a0-592f-9734-fa782d2a01c0','09:04','Черкесский'),
	 ('e1d44beb-d3cf-5cea-b9fc-a89ec7d6c128','09:05','Урупский'),
	 ('3bcab6fd-72af-5d33-a353-6b596093f297','09:06','Зеленчукский'),
	 ('bde0f7f2-b430-58c5-9b17-a07d176362e8','09:07','Усть-Джегутинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('465e210b-9f4c-5868-8b15-bc60e280a36b','09:08','Малокарачаевский'),
	 ('9d1d5427-1ae5-5e3c-be93-2c78af596ea7','09:09','Карачаевский'),
	 ('60895319-8343-54e3-9faa-d8a7fdcbcf8b','09:10','Карачаевский городской'),
	 ('d99e72b5-551b-54fa-bb4e-2e3b4f34dc52','10:00','Условный кадастровый район'),
	 ('a7618017-5283-53f9-94ef-2fec9e7de050','10:01','Петрозаводский'),
	 ('49a1203c-c050-55b2-bdb5-f94cde1bdfa0','10:02','Кемский'),
	 ('5d476666-fd02-5ff8-8ee2-5a8e6989ef04','10:03','Кондопожский'),
	 ('16031242-85fe-521b-a1d1-eac73190b98b','10:04','Костомукшский'),
	 ('d0f58d92-3d70-5284-b028-9f22fa8c1e66','10:05','Питкярантский'),
	 ('1abc060d-5841-5d7a-bc07-296ea4022949','10:06','Сегежский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c7cb4058-5e03-5167-ba1c-d076f1e573f5','10:07','Сортавальский'),
	 ('bbae5fe6-4348-5551-8b5e-5315a1f238f6','10:08','Белого моря'),
	 ('ea474e57-12fc-54a1-a388-ff6a1ba80fde','10:09','Онежский'),
	 ('d4dc7115-6111-5642-8631-664fca13ffd2','10:10','Ладожский'),
	 ('eb87fd37-07a3-5e18-bf4f-61b91d4cfa1f','10:11','Беломорский'),
	 ('fda73620-d841-5d82-add4-b8c910df8848','10:12','Лахденпохский'),
	 ('30d5c90a-39c0-53ca-b5d5-4affe1f0c7a4','10:13','Медвежьегорский'),
	 ('1ace519d-aba8-5a05-b18e-35bd50fcfe13','10:14','Олонецкий'),
	 ('3738fb2f-ec6d-56e0-86f8-07339e8d60ea','10:15','Пудожский'),
	 ('f13a0fda-789c-5e28-ae6b-f9697e8ae4a5','10:16','Суоярвский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2dfa9174-20d4-50ab-ac72-ab68098772a0','10:17','Калевальский'),
	 ('e1cd5ba4-7c6d-5bb6-a340-27a3514af50c','10:18','Лоухский'),
	 ('43d52c2d-d844-5dff-96ff-fcd9313fb466','10:19','Муезерский'),
	 ('95163ed1-d824-56e2-8cc3-b48472f76c00','10:20','Прионежский'),
	 ('4b08bb38-036d-5c19-9f1c-4545b6747801','10:21','Пряжинский'),
	 ('137a851c-d094-5c04-b8d6-0282ab9581c5','10:22','Вепсский'),
	 ('4ad92b8e-563b-5f75-90e8-5aa467802f4b','11:00','Условный кадастровый район'),
	 ('d18719a9-be44-50c5-a4c4-838cbea780fc','11:01','Прилузский'),
	 ('3a973eb0-51d9-59b1-835c-c286991e64fd','11:02','Койгородский'),
	 ('ab0600be-b864-5e07-8611-5ea542d953cd','11:03','Сысольский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('564dec5f-e422-5cf8-9a31-6586bb0db497','11:04','Сыктывдинский'),
	 ('6ee6720f-3100-578e-b2d7-f52e26b5a1f6','11:05','Сыктывкарский'),
	 ('dcd2752c-e7ea-5369-a93d-cde4f54eb079','11:06','Корткеросский'),
	 ('6f3c8622-464d-52bd-8101-afd5770c1286','11:07','Усть-Куломский'),
	 ('f3f5b19a-b8cf-55ef-aaa7-cce84f58ab76','11:08','Усть-Вымский'),
	 ('db8732a4-0d5b-507d-b0f6-b6d2e0d44241','11:09','Удорский'),
	 ('58eb1171-c386-5579-84b4-c6ca2af37d2b','11:10','Княжпогостский'),
	 ('62e3124d-11cb-55f8-b40b-0b4830a3c288','11:11','Троицко-Печорский'),
	 ('f043451e-a109-5f91-b2e8-0b7179def372','11:12','Печорский'),
	 ('27e0aa09-03a2-5d07-85a5-9316c05f2aea','11:13','Усть-Цилемский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('970d2eca-9386-50f0-9549-425ba187356f','11:14','Ижемский'),
	 ('daf3e73d-6f1c-5647-8cfa-1ecb95bdb38b','11:15','Усинский'),
	 ('370c6939-a3ca-55cb-ad9d-ed9562010f3e','11:16','Воркутинский'),
	 ('c3346475-1128-520a-819e-7ad3a1402e88','11:17','Вуктыльский'),
	 ('d2006631-3b62-53b0-bd3c-b219b0d5c115','11:18','Интинский'),
	 ('1c6eaf57-91e8-5f3b-aa99-f851cf31e6e6','11:19','Сосногорский'),
	 ('d4e46e2d-92eb-576b-bc3f-859f6300ca1b','11:20','Ухтинский'),
	 ('1d31ccce-5576-50a9-acb5-be179794ca5a','12:00','Условный кадастровый район'),
	 ('bcc9baf0-0818-5958-8876-1606f406c4f8','12:01','Юринский'),
	 ('9836b52f-d94a-5d7e-84ab-2cb3e309566f','12:02','Горномарийский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('18c5ef0e-2a9d-57a9-903a-dfdb5f94482f','12:03','Килемарский'),
	 ('b33bb314-6096-5468-9fa4-b4954906c437','12:04','Медведевский'),
	 ('652c2d3e-3a0f-54a1-92c2-cf0461c1aeba','12:05','Йошкар-Олинский'),
	 ('4a5d7471-c27d-5566-9c1e-0d5e139b6706','12:06','Оршанский'),
	 ('d837de0d-2706-5319-8c1f-f04bbd60e50d','12:07','Новоторъяльский'),
	 ('f4a99f5a-091f-55b5-83ff-39b3f2f529a1','12:08','Советский'),
	 ('88219239-ed65-5670-9658-465e70390b43','12:09','Куженерский'),
	 ('51e1f1ac-a078-5236-8128-d0f459fc9b75','12:10','Сернурский'),
	 ('4a525386-ae66-5c16-9038-0d0650a549a5','12:11','Мари-Турекский'),
	 ('e3825234-c14a-556a-a193-b82f8371c53b','12:12','Параньгинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('20890810-aceb-5945-a0e1-eda9779c6679','12:13','Моркинский'),
	 ('8fe1ea07-01a2-51f7-b3bd-f95ded75b282','12:14','Звениговский'),
	 ('caa7b2aa-a0d2-51a2-ade1-837915d20490','12:15','Волжский'),
	 ('655b42e6-f3df-5978-9f89-3afba96cb1d3','12:16','Волжский городской'),
	 ('def87797-8b41-5a39-ba81-48f7b0a89cb5','12:17','Козьмодемьянский'),
	 ('c23fe74a-8f37-5da9-8eb7-3cb322d8f4f8','13:00','Условный кадастровый район'),
	 ('ca91bd61-24de-5eb7-acfa-17a0f399a583','13:01','Ардатовский'),
	 ('9c0954c4-6225-563f-8ea8-b8ac22e41d2b','13:02','Атюрьевский'),
	 ('1a0a4640-f302-581d-8de9-abab1935f906','13:03','Атяшевский'),
	 ('0963d267-e157-5fe4-ae4d-7e7738fdc634','13:04','Большеберезниковский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f10374b0-9d09-57e4-bf1e-f374d1ba05d9','13:05','Большеигнатовский'),
	 ('0de21cb2-3ae8-5c2f-8872-7ee10840bbc1','13:06','Дубенский'),
	 ('89ea771c-4312-519e-b5f8-f42e51581e4a','13:07','Ельниковский'),
	 ('e0f8aac9-ed25-52ba-9650-4ed9dbf1b307','13:08','Зубово - Полянский'),
	 ('4eae4fcd-8400-53db-b21d-32d8f0dc31f0','13:09','Инсарский'),
	 ('b7a39790-bf82-5d95-8a81-9edc087002b1','13:10','Ичалковский'),
	 ('476dd4f6-c27a-5e99-b322-a8a5b5363527','13:11','Кадошкинский'),
	 ('fa095e32-0b7a-526c-b903-70f9a4797f8a','13:12','Ковылкинский'),
	 ('f7b942b4-06de-5204-8686-f0f05074064c','13:13','Кочкуровский'),
	 ('74ad11c2-0984-5bd7-b712-7dcf1efda4b5','13:14','Краснослободский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7b0449c3-77c1-512d-8174-0f8bad78028a','13:15','Лямбирский'),
	 ('427e6273-b114-52cb-ba15-f4da1ec58333','13:16','Ромодановский'),
	 ('33fd8bb4-da8c-5ddc-b907-15e859ba8b34','13:17','Рузаевский'),
	 ('5886dff6-60ee-54f8-bbed-daae2584ee2c','13:18','Старошайговский'),
	 ('21d21d78-87bc-5cd9-9f01-78db99b88e8a','13:19','Темниковский'),
	 ('937fafdd-ed31-5823-801a-616048565a1c','13:20','Теньгушевский'),
	 ('3fdfccc8-b1ed-5310-82c7-75f69384a4bd','13:21','Торбеевский'),
	 ('ed37ba49-9afd-5ae4-bd2b-e94ff376a69d','13:22','Чамзинский'),
	 ('1915cacd-0cb6-5ec1-97a8-303292d5f36b','13:23','г. Саранск'),
	 ('c490e171-3c63-5cbc-8cc9-b1f48af2491a','13:24','г. Ковылкино');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('532c7d12-c3c8-5d74-b106-b7e5407b18af','13:25','г. Рузаевка'),
	 ('9ca2cdcf-4f58-5b63-95d4-1d48ee52857a','13:60','г. Саров'),
	 ('afdc35a2-7656-5eb1-86c6-690dc0e7d7fb','14:00','Условный кадастровый район'),
	 ('7485d153-a0be-5cd8-b2ad-a9441a8e29d6','14:01','Абыйский'),
	 ('ce339cfa-3afc-54ea-b875-e4ad1dd176a1','14:02','Алданский'),
	 ('b9c6c45a-a640-52c7-b1ec-ebac2f476643','14:03','Аллаиховский'),
	 ('53c4302c-917e-5e75-b43a-b32e62daa8ff','14:04','Амгинский'),
	 ('8385b2ee-6a22-5159-b078-7666d68f493e','14:05','Анабарский'),
	 ('f392a47c-5f60-5899-9fb0-835798fce412','14:06','Булунский'),
	 ('10d482bb-c323-5204-b48f-b835edbc8d6b','14:07','Верхневилюйский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('da010403-a846-5d08-a405-441bd85d379f','14:08','Верхнеколымский'),
	 ('050165b5-d3b7-53e2-9804-9c3817960499','14:09','Верхоянский'),
	 ('d26a4f3e-eefa-58bb-a268-185455e11b52','14:10','Вилюйский'),
	 ('61c9c34e-460b-503c-ae00-a8570d1dd666','14:11','Горный'),
	 ('d85f6191-ddde-5601-9537-ebfc474209bd','14:12','Жиганский'),
	 ('6236019f-86ef-506e-a3fb-334a8c942378','14:13','Кобяйский'),
	 ('70802e0d-4d20-59da-92a0-ae608973a2e7','14:14','Ленский'),
	 ('6d275ca2-054f-5b1f-89f4-e56340b76c23','14:15','Мегино-Кангаласский'),
	 ('5bae96f9-cf9d-51f6-93bb-16fb0537ffde','14:16','Мирнинский'),
	 ('1c950409-907d-5e4b-a249-6202d416888f','14:17','Момский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('16b1329f-b33e-54ba-8a5d-2bb8b96b3179','14:18','Намский'),
	 ('2141f76a-7d3f-5c30-b05c-a5a1571c5073','14:19','Нерюнгринский'),
	 ('127cca72-9484-59ed-aae6-22c034a7122a','14:20','Нижнеколымский'),
	 ('a87a32e9-abe3-5580-8a12-e2233662bcd6','14:21','Нюрбинский'),
	 ('73ae2032-c572-5bc2-83be-a5c18bf98fe8','14:22','Оймяконский'),
	 ('50ffac61-0595-5705-8525-8d33d1011dc2','14:23','Олекминский'),
	 ('f02b4b86-7b23-5645-8040-19f2d59f95b2','14:24','Оленкский'),
	 ('fcfab87e-bbf2-5034-b021-beb0b3a0fc88','14:25','Среднеколымский'),
	 ('22a9780f-3989-5848-85d8-0c23c13442bd','14:26','Сунтарский'),
	 ('f74f01d7-47a0-5bb6-82bf-d1773806f61f','14:27','Таттинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f07b7a75-dcc3-575a-a0f4-7dd077343779','14:28','Томпонский'),
	 ('abca24ac-f9d2-5109-818a-2321b42e0531','14:29','Усть-Алданский'),
	 ('8fe5d532-57b1-51f4-bbfa-85961adadf76','14:30','Усть-Майский'),
	 ('a9693cf9-2dec-5202-9b05-d14b72899718','14:31','Усть-Янский'),
	 ('d209b5e7-fc5b-5050-b922-a6be7d99aa50','14:32','Хангаласский'),
	 ('e2b1d902-216b-532a-9b27-8d95a173aa0e','14:33','Чурапчинский'),
	 ('b6d38447-098f-510c-b774-76ef3a4e441f','14:34','Эвено-Бытантайский'),
	 ('82bd8dd0-a67b-5264-9a8e-4adf216f7fac','14:35','Якутский'),
	 ('75373c41-afdd-53f0-92ac-427489fba536','14:36','Якутский городской'),
	 ('3a4341fa-8464-5c12-899d-7326af05c442','14:37','г. Мирный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('eb714755-2088-55a7-9599-5c21f2771653','15:00','Условный кадастровый район'),
	 ('76a21256-eebe-5b22-b7a4-dd4fc85a12e0','15:01','Моздокский'),
	 ('2a0c2600-9549-593d-acfe-c587de334a86','15:02','Кировский'),
	 ('b443da0a-1a17-5693-94f3-bdd90924015f','15:03','Правобережный'),
	 ('2d9f50bc-4d59-5a8b-a5a4-9103d9d3fedd','15:04','Ирафский'),
	 ('138d9a69-f9c8-5f3a-b013-eb2826ab150f','15:05','Дигорский'),
	 ('be8ee060-863b-5ae5-be82-50fd15bbdc34','15:06','Ардонский'),
	 ('2fbe974e-ef83-5068-a8bc-96fa345cedde','15:07','Алагирский'),
	 ('962c9fd6-1da4-5287-b00d-b4c43123a31b','15:08','Пригородный'),
	 ('af4d7622-fce2-5237-a00b-de95165f4b44','15:09','Владикавказский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b7fbf11d-36da-5695-8a72-45a707b8bdab','16:00','Условный кадастровый район'),
	 ('f49c4b2d-6259-5473-9bd6-80f923e4a1f9','16:01','Агрызский'),
	 ('25d5e02e-2386-54a8-ab8e-95d8db8d8eaa','16:02','Азнакаевский'),
	 ('f86df8c3-ce46-5fbe-9627-ba6f6ea0a52a','16:03','Аксубаевский'),
	 ('ff54b054-7f97-5d74-b99d-26acfafc9a02','16:04','Актанышский'),
	 ('c636afbb-a5e8-59f8-aec6-18da3859cfc2','16:05','Алексеевский'),
	 ('e3df04a2-09c2-5ad6-825d-210a2cb33d80','16:06','Алькеевский'),
	 ('a8930dff-22a4-54ec-a7d7-e80eab82aef5','16:07','Альметьевский'),
	 ('6bddde80-f082-5415-8e00-9838d29c9863','16:08','Апастовский'),
	 ('5f857e88-d418-5a79-9229-f0cbbeadd039','16:09','Арский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('10b0ad0f-7ebf-5089-8afa-c03360ce639a','16:10','Атнинский'),
	 ('7a9d33c9-2f0e-5d83-b0d2-a6ac7821eb40','16:11','Бавлинский'),
	 ('e283077b-b1ac-531f-81bf-4e2f76c174eb','16:12','Балтасинский'),
	 ('c7044698-de92-515b-961c-b85cfd50dc2f','16:13','Бугульминский'),
	 ('424a1f0f-64ac-5fa6-b3db-0cb02838d446','16:14','Буинский'),
	 ('d5282cfe-c79e-5909-ace4-9f886ef7dfea','16:15','Верхнеуслонский'),
	 ('2d52fc0b-f8ca-52ce-8920-b1627602899a','16:16','Высокогорский'),
	 ('e71d2385-c34d-50ea-b1e4-b73b181b374a','16:17','Дрожжановский'),
	 ('21b801be-e1b9-51d4-b753-5178c89ee87b','16:18','Елабужский'),
	 ('dad2fee5-f537-5bd4-868a-e62be373af21','16:19','Заинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('57e9725c-fbfb-5637-bf31-374061091cad','16:20','Зеленодольский'),
	 ('b058ff4e-1412-5c11-90f9-f69d97995eeb','16:21','Кайбицкий'),
	 ('0b8f3b18-c6dc-51d2-a65f-b9063d8b0bd4','16:22','Камско-Устьинский'),
	 ('f1f484c3-8a37-59c0-879b-d5f4a23d6bd2','16:23','Кукморский'),
	 ('2b162e79-019e-5eee-a3d6-cb4d48767018','16:24','Лаишевский'),
	 ('c9ffc5d4-33ff-53fe-9abc-7be98e5050b7','16:25','Лениногорский'),
	 ('ceb4ad78-eb0f-5c4f-8815-fff58163a270','16:26','Мамадышский'),
	 ('7a1005de-d701-5c8e-8ba2-da112ebd6eb3','16:27','Менделеевский'),
	 ('16801736-35fd-5b9a-9a67-b0e2f5c7eafe','16:28','Мензелинский'),
	 ('c8846c56-1f36-5f5a-911c-26bc2237d651','16:29','Муслюмовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('aea9ef49-a3db-58de-8d8d-2bc17a5dba36','16:30','Нижнекамский'),
	 ('9d7a5461-f26a-5294-ae53-f4919f228bdc','16:31','Новошешминский'),
	 ('253724d3-d9eb-5290-a517-decc471ff3b6','16:32','Нурлатский'),
	 ('1874eb98-9eb4-5779-a01a-cb187e5689ac','16:33','Пестречинский'),
	 ('b29ba342-4a43-5c52-9003-6e4d12455fdf','16:34','Рыбно-Слободский'),
	 ('93db5212-7b51-5d25-b53d-781fb25dd3dd','16:35','Сабинский'),
	 ('14cbd83b-7cb2-5466-8062-1804559be608','16:36','Сармановский'),
	 ('4628f5ab-a4f1-593c-b9e1-eb41bb602991','16:37','Спасский'),
	 ('5b69a824-b7b5-577b-b0bc-60f2a1a38091','16:38','Тетюшский'),
	 ('1eca75c5-98cc-5433-a497-508e1f6a3ebe','16:39','Тукаевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6c8d9014-70cf-5424-9f92-8676b8a60cf7','16:40','Тюлячинский'),
	 ('3302660a-312f-5a7e-8a6e-4a8e8223ef32','16:41','Черемшанский'),
	 ('a9161fd3-2558-5f6d-8909-61be7a622826','16:42','Чистопольский'),
	 ('daf1bb45-0edd-5121-8147-38c774014193','16:43','Ютазинский'),
	 ('d16a719d-1559-5974-b5a8-cda271c67a9d','16:44','Азнакаевкий городской'),
	 ('d44a9ad9-cfb5-5d85-ac8c-528d264a1d18','16:45','Альметьевский городской'),
	 ('1525600d-e2cb-5ebe-bf0a-9b32c93ccfbe','16:46','Бугульминский городской'),
	 ('bbcf4980-375d-51ac-bf28-967d140e77ec','16:47','Елабужский городской'),
	 ('b3c8a5b9-f94c-500f-92e7-271fce48a59e','16:48','Заинский городской'),
	 ('e5999918-78ac-5dca-a2e4-c2ef0358a5d6','16:49','Зеленодольский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('be6d50ec-f2d7-5f6b-8423-ee3ae3070688','16:50','Казанский'),
	 ('4238dca9-cc24-5b2f-962a-977c2318c6f1','16:51','Лениногорский городской'),
	 ('d2f89b15-64ef-5df9-ab87-04eb338dfad1','16:52','Набережно-Челнинский городской'),
	 ('a732ff8f-bc87-53aa-b597-a8ef86b69326','16:53','Нижнекамский городской'),
	 ('0808f567-9930-5d14-bd2c-9493ab2b591a','16:54','Чистопольский городской'),
	 ('a392cf2c-e202-57c0-974d-7cdeda4f5744','16:55','Бавлинский городской'),
	 ('4fa3740e-d88d-5286-b29a-9a279b9fec50','16:56','Нурлатский городской'),
	 ('cdfc4275-fa0d-5aef-8179-bc1bc477ab71','17:00','Условный кадастровый район'),
	 ('ae986f28-c9c1-5214-ac24-3b24e1f03b71','17:01','Бай-Тайгинский'),
	 ('4df8fe13-281b-527c-84ca-0f448bf611ec','17:02','Барун-Хемчикский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('e608d41d-c8fd-5753-a739-3d749c583a78','17:03','Дзун-Хемчикский'),
	 ('5592887f-fd28-5da6-9395-82f157cc24cf','17:04','Каа-Хемский'),
	 ('66993b99-1732-5403-b2d7-083dd103c90b','17:05','Кызылский'),
	 ('276cba51-4e2e-5609-89a1-5aa70716b3fa','17:06','Монгун-Тайгинский'),
	 ('7849d107-eaf9-5d04-b1c6-71e03ab7301b','17:07','Овюрский'),
	 ('fb5057ad-3131-589f-9c64-cc5aaac1a335','17:08','Пий-Хемский'),
	 ('7009240f-1226-5d55-9bf1-98e6bc6cece6','17:09','Сут-Хольский'),
	 ('c229e41a-e38e-5633-8a50-3f05b793d8cd','17:10','Тандинский'),
	 ('1b40cc05-1787-5c99-89b1-aa3a86df1163','17:11','Тоджинский'),
	 ('ce177a90-f6fd-5bf5-8e2a-43f73b1aae24','17:12','Тес-Хемский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fcf10368-7727-5954-9723-6048ecf8bebd','17:13','Улуг-Хемский'),
	 ('5ebfe8db-0e53-5de5-b06a-1f1dc5b9f148','17:14','Чаа-Хольский'),
	 ('307ee041-02f3-5675-ad02-5c7fac323e8e','17:15','Чеди-Хольский'),
	 ('226fb91e-47f9-5fcb-bc6a-befbf1fa2b35','17:16','Эрзинский'),
	 ('61b286db-c16d-5b62-9c14-5ec461e23c2e','17:17','г. Ак-Довурак'),
	 ('183c7dd0-b45b-5512-99af-32e8830570b1','17:18','г. Кызыл'),
	 ('792d7921-9b65-569b-ba46-1dc9db2ae37c','17:19','Тере-Хольский'),
	 ('00fc1dc9-7dec-5c04-a4c3-c835ba02b7f5','18:00','Условный кадастровый район'),
	 ('e509e612-c8c8-535d-801c-f38596edb2a1','18:01','Алнашский'),
	 ('4b682005-b75e-57ed-8afc-d6fa279af607','18:02','Балезинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('dd654fc0-414c-5610-85e7-0bf24f5b622c','18:03','Вавожский'),
	 ('9522091e-195c-5b99-aa21-e38519a5eaec','18:04','Воткинский'),
	 ('1908dd40-3261-5c26-800b-c6d693569fd8','18:05','Глазовский'),
	 ('e67028f3-278f-539e-a14c-c9d30455f0d3','18:06','Граховский'),
	 ('efd77c9b-d684-5694-99cb-595f2be12ea9','18:07','Дебесский'),
	 ('009e5468-2a0c-5c2c-a9a6-13c62b40c31a','18:08','Завьяловский'),
	 ('61979f8d-d265-579d-8dba-1455d7cc255f','18:09','Игринский'),
	 ('a7fade79-e8cc-5bc1-a2cb-53797e716889','18:10','Камбарский'),
	 ('eaffb8f7-014e-5629-8862-186a17dbc0c6','18:11','Каракулинский'),
	 ('a2e14d45-3512-50d3-9ab9-686e328ef420','18:12','Кезский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1d30521a-29bc-5fa5-883e-4b804b981cfb','18:13','Кизнерский'),
	 ('4a163b98-d218-531c-b0a9-5c4be914f275','18:14','Киясовский'),
	 ('543dcc88-8dcb-5e4e-b182-a42128bc9739','18:15','Красногорский'),
	 ('a2e664fb-bdbf-5235-98fe-21fcde93b556','18:16','Малопургинский'),
	 ('0611d185-19f1-5baa-9fc8-b37a6a68b0df','18:17','Можгинский районный'),
	 ('e78000cd-36e1-56c6-9dde-49e4a16546e0','18:18','Сарапульский районный'),
	 ('d7c7c440-242d-5d21-b102-bf80c564ead4','18:19','Селтинский'),
	 ('8c74d38a-1c96-5c1c-a99a-7cb1476dbb22','18:20','Сюмсинский'),
	 ('c0035818-da6d-5dc0-b88f-477dea49781e','18:21','Увинский'),
	 ('aedd1793-1a62-5ece-8e18-5766b33db627','18:22','Шарканский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('344c2db2-011e-5ea8-bf01-e756c851dbfe','18:23','Юкаменский'),
	 ('8aa04946-b977-5272-8519-619eda9d8d9a','18:24','Якшур-Бодьинский'),
	 ('d7f0d180-747f-5130-bbb7-3478f838d1fc','18:25','Ярский'),
	 ('bbb38bf6-bbbb-5c51-b08a-cc70a479f3c3','18:26','Ижевский'),
	 ('23e0a94e-6092-5dde-a2bc-8e71caed49c4','18:27','Воткинский городской'),
	 ('9672d7f0-e087-5738-8fd4-705ffa59ebee','18:28','Глазовский городской'),
	 ('ec2c64ed-c0c1-5343-8658-0ae6830cab40','18:29','Можгинский городской'),
	 ('4c031cf9-f0f4-50f4-8856-e45d0afc6c17','18:30','Сарапульский городской'),
	 ('8a2e7bdd-88c6-5be8-9c9d-8009ad896be1','19:00','Условный кадастровый район'),
	 ('b5fc75a8-981b-5c77-90cd-7707c6d9e252','19:01','г. Абакан');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8ad050ac-df17-58c1-9e11-9b8f359bd47e','19:02','г. Черногорск'),
	 ('11162596-9097-5fcd-b2e1-abecae1cd133','19:03','г. Саяногорск'),
	 ('dd9049fa-cfee-5883-b444-48e70cede6ec','19:04','Алтайский'),
	 ('5dd30c10-a00d-5a46-99af-0c495222a3bf','19:05','Аскизский'),
	 ('0f3727fd-b41b-5076-896e-50d0c2f8bb7a','19:06','Бейский'),
	 ('7152bca1-03f9-5dd2-8f32-60827a6b8d01','19:07','Боградский'),
	 ('26540b6e-dc51-5917-84ff-b43025d62b80','19:08','Орджоникидзевский'),
	 ('09d0741f-7a17-5d5d-bc4b-ed471ec1018f','19:09','Таштыпский'),
	 ('a6895c94-b406-5923-bc0c-8603beda213c','19:10','Усть-Абаканский'),
	 ('ef4514e5-4fcd-5213-b364-6bcf16fae723','19:11','Ширинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fa4163b4-903c-5778-b725-8f3537c209b7','20:00','Условный кадастровый район'),
	 ('4efd4e9c-942a-5231-a2c7-6fa11862e7f5','20:01','Ачхой-Мартановский'),
	 ('3fda54fa-f2b5-50de-88b4-f5ddb6ca437b','20:02','Веденский'),
	 ('c33b8f9b-43be-59fe-a0a7-ef6ed6bfe473','20:03','Грозненский'),
	 ('1fb9a249-35d7-5e03-8b9a-8fc502ea4437','20:04','Гудермесский'),
	 ('08370b90-1255-5720-a5a7-1ae6a8faf495','20:05','Итум-Калинский'),
	 ('bcd7fd39-717a-5aa5-b4fc-06632f41dae3','20:06','Курчалойский'),
	 ('55310062-36c5-5385-bc63-cd6e1283850e','20:07','Надтеречный'),
	 ('046bcace-a839-5d8e-8f61-b7903fc657eb','20:08','Наурский'),
	 ('9a1011e4-e408-50f5-8ebe-117c54528f51','20:09','Ножай-Юртовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('82c436cd-7cc0-5450-a14e-4edcfac45de9','20:10','Сунженский'),
	 ('ad095b3c-342a-5651-822c-f5b8c5abbf86','20:11','Урус-Мартановский'),
	 ('4ce5a8dc-c71b-5101-b754-adaf7ef2056a','20:12','Шалинский'),
	 ('bd0cb8af-878c-519a-86fc-38e25bec8c31','20:13','Шаройский'),
	 ('f65c3790-70e1-5f02-981b-fe960b57505b','20:14','Шатойский'),
	 ('8eccc158-86c1-589c-936f-2b8ea304a6ad','20:15','Шелковской'),
	 ('07e29549-6e52-5851-afe1-115c5641222f','20:16','г. Аргун'),
	 ('1d10f529-802f-50b2-aac4-14b2545f9d3d','20:17','г. Грозный'),
	 ('502be91d-2184-50e8-bc16-cb52e4f4247a','21:00','Условный кадастровый район'),
	 ('c5813314-e3d2-5472-8b0d-d4c79ca0c869','21:01','Чебоксары');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('25ff8d30-b3dd-59c1-9002-e2b5222d99b2','21:02','Новочебоксарск'),
	 ('ba17ef81-14c4-57df-b34b-c979edce8c8d','21:03','Алатырь'),
	 ('b4756046-ecd4-5a52-ae5b-f9919ee2d3ce','21:04','Канаш'),
	 ('20dcf620-5366-5b92-96d4-c8a6c453f0dd','21:05','Шумерля'),
	 ('684cb518-7516-50a3-a1df-a2487002051c','21:06','Алатырский'),
	 ('4bdb54fc-97c7-5fda-a6fe-d77bed481efb','21:07','Аликовский'),
	 ('3224140c-2c37-5cd4-a116-f246bad4eae7','21:08','Батыревский'),
	 ('c8dd42bc-ad26-5d5d-a39a-ea92fb0383ed','21:09','Вурнарский'),
	 ('b7bc2d3f-5ca9-5b7c-8079-d5637360dc71','21:10','Ибресинский'),
	 ('39f24fd8-fe10-5854-9756-67d41e1b4788','21:11','Канашский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('56cba110-2e57-5fce-91a6-98bc01ad158c','21:12','Козловский'),
	 ('2442773b-9068-55a6-aba6-91c81992dea4','21:13','Комсомольский'),
	 ('b4219516-6b5a-574c-b436-a40bacf18c2b','21:14','Красноармейский'),
	 ('ef3bd5af-e410-5207-85a3-bc80af14d3fd','21:15','Красночетайский'),
	 ('6a67a4b2-2f6f-5c37-8a25-3f3001fae002','21:16','Марпосадский'),
	 ('e6eb389f-e7bf-512d-aaaf-2425b5c25b85','21:17','Моргаушский'),
	 ('5fa3709f-4bab-5dac-b2a4-4cc5aa5ec15f','21:18','Порецкий'),
	 ('172326b3-7d4b-5b6b-85b1-b7c5e33e4962','21:19','Урмарский'),
	 ('877d3b63-79d9-5030-af89-891d528b7dfd','21:20','Цивильский'),
	 ('9186a9c2-9487-55d4-a5ac-a034eebca71d','21:21','Чебоксарский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('728c613b-40e8-5395-9030-a1ecfeec1913','21:22','Шемуршинский'),
	 ('2fc618e3-2ea5-59b8-93c6-7f5e81597aba','21:23','Шумерлинский'),
	 ('e3174797-0223-517c-abf7-82812cd94ef1','21:24','Ядринский'),
	 ('4b24b487-21d8-5e05-9945-718bf4f6100d','21:25','Яльчикский'),
	 ('39f96fc7-9570-5b9f-a132-7da63fc610be','21:26','Янтиковский'),
	 ('63fef030-4284-5c1d-8803-2b356c1dbda5','22:00','Условный кадастровый район'),
	 ('565a8f9b-ae86-5b83-904d-1adbac01e83e','22:01','Алейский'),
	 ('baa89115-9692-5e23-bf09-834743465bc8','22:02','Алтайский'),
	 ('95e0c4c3-4b00-558b-a82c-144744b98255','22:03','Баевский'),
	 ('d523335b-5fb2-5faf-9b95-c39fd77a1c7d','22:04','Бийский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f11cdda2-e68a-5a88-9303-fe607e9e5cdd','22:05','Благовещенский'),
	 ('ea5e9493-1937-59c1-ab8d-8e4cb4649cb8','22:06','Бурлинский'),
	 ('8b42df02-7496-5d09-8fcb-1dae456f2199','22:07','Быстроистокский'),
	 ('eb88cad7-b7fd-50a3-831c-3ca145c7d4fd','22:08','Волчихинский'),
	 ('1ce2cc0d-a49d-5c29-b90c-b350ee26dd7d','22:09','Егорьевский'),
	 ('ccceffbe-43bf-5187-b8ac-df56f8e7f544','22:10','Ельцовский'),
	 ('327bde1e-9c8e-5709-9be8-66e1a705ed2a','22:11','Завьяловский'),
	 ('22fa4bc0-162d-5834-8aa8-66c9fa46d0c6','22:12','Залесовский'),
	 ('61f04dca-df9b-50db-a3a4-e8f8408d8e52','22:13','Заринский'),
	 ('8632e43e-e93f-5141-b849-29ef48967bf0','22:14','Змеиногорский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fd222fed-70fb-5ead-bfff-58e6fdb249e1','22:15','Зональный'),
	 ('1143de1c-a125-5110-b411-8ab4ffbfb60e','22:16','Калманский'),
	 ('8c649803-d93d-5baf-9e12-be148a692718','22:17','Каменский'),
	 ('2ac8cb85-f213-556c-835d-bb862fee7132','22:18','Ключевский'),
	 ('b5cb63dc-10f1-54d1-a09b-b1946a23d332','22:19','Косихинский'),
	 ('681bdff0-0d7f-5fe0-9f4f-68f40e1beb2a','22:20','Красногорский'),
	 ('6ffa152b-b593-57e6-bed9-58885fc3a34a','22:21','Краснощековский'),
	 ('fc81037c-32fe-51e6-ad31-042e70f75176','22:22','Крутихинский'),
	 ('7df9ee3e-badf-5409-a632-d8844411a24f','22:23','Кулундинский'),
	 ('1ba9bb9d-d478-5b19-8924-866470dafd7e','22:24','Курьинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ac470435-9db1-5a94-98bb-77d4553f8e8a','22:25','Кытмановский'),
	 ('267990ec-7dfb-566b-8c23-fa41978d0d4d','22:26','Локтевский'),
	 ('f6ad7480-033d-5a31-aad4-291215edc307','22:27','Мамонтовский'),
	 ('a15f8f21-b47e-5bb3-9848-145fdbed61a9','22:28','Михайловский'),
	 ('6a28b03e-27b8-513d-9eb3-dcd604eda388','22:29','Немецкий национальный'),
	 ('1d047fe6-0ce6-5f1b-a963-8bea9cbc952d','22:30','Новичихинский'),
	 ('4f16c264-5ea2-525c-9563-5ea43c82c4d8','22:31','Павловский'),
	 ('31f969ae-db67-58a3-be72-80aaa2f12cd8','22:32','Панкрушихинский'),
	 ('ec6b13c6-3134-55af-9d91-abbd337e48bc','22:33','Первомайский'),
	 ('4fc12d42-0ec5-55df-abab-047dd87b9855','22:34','Петропавловский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ae94d3d6-d4cb-51fa-b772-9ef303617405','22:35','Поспелихинский'),
	 ('ec1c1884-2380-5311-a981-264a3b374e03','22:36','Ребрихинский'),
	 ('71113031-af7d-53b8-969e-52490d16735a','22:37','Родинский'),
	 ('2a745edf-a9c6-5262-bcef-c6d7915eb6f3','22:38','Романовский'),
	 ('043df45d-c6a2-5fbb-abb0-22ccdc062299','22:39','Рубцовский'),
	 ('85a222fc-6fd6-5547-ad4f-392315228cba','22:40','Славгородский'),
	 ('7d5db9e1-58b9-541c-8ccb-cc9a6c9071a4','22:41','Смоленский'),
	 ('0ec3c4c1-87a6-5684-bd00-6d33c9177d47','22:42','Советский'),
	 ('5d70583f-b69d-5cda-a636-b6d049b97067','22:43','Солонешенский'),
	 ('ed8da948-62a8-5791-bad5-a47c5e2f7f21','22:44','Солтонский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('86171721-f495-5e1c-ab3b-53d6eef9881e','22:45','Суетский'),
	 ('8bc5ffd3-8477-57f1-a66b-e422c74cbf6c','22:46','Табунский'),
	 ('50253b47-e23b-572c-a30b-fd51e68544e2','22:47','Тальменский'),
	 ('07fae2ef-51c4-5dac-bcf3-518754913959','22:48','Тогульский'),
	 ('b97daeb6-70d4-5f8f-bd23-70350064a057','22:49','Топчихинский'),
	 ('b5c0c523-519b-5c35-b5a4-ca5941bde620','22:50','Третьяковский'),
	 ('348eafca-1bd6-5aec-8e61-0ee46f0b0304','22:51','Троицкий'),
	 ('fcfa65e8-2c7e-5928-a0ee-aba3b088a426','22:52','Тюменцевский'),
	 ('54ee7ab6-9f6b-5b06-b0e3-ee1617575ea5','22:53','Угловский'),
	 ('953420d5-f5d1-5954-9d54-58c327dbce36','22:54','Усть-Калманский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d7c9febc-8d73-5f5c-8c60-49d66ac3d746','22:55','Усть-Пристанский'),
	 ('0bc8bc99-ce81-517d-96e7-7eae0f3142f3','22:56','Хабарский'),
	 ('ea251b09-6976-5011-9328-8a5e7efbda09','22:57','Целинный'),
	 ('addc9376-4071-579b-ba31-cb52b83c6db4','22:58','Чарышский'),
	 ('593c4c32-507a-5d01-9b26-58733ec3c7d1','22:59','Шелаболихинский'),
	 ('029a4762-16ed-51c0-b942-ac4a1e439813','22:60','Шипуновский'),
	 ('cd608606-cfd7-55fa-a3ba-01029d805cdd','22:61','г. Барнаул (сельские земли)'),
	 ('4f320caf-80c6-57bd-905b-1b1f3e281029','22:62','Алейский городской'),
	 ('1c04f2d5-167d-5b10-8b72-a7e6eb74f1ec','22:63','Барнаульский городской'),
	 ('9b29be2c-1fba-5715-aa53-95bad8c180f0','22:64','Белокурихинский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('79fcd2d4-2309-5491-b1a6-cde30d075e98','22:65','Бийский городской'),
	 ('694db6cf-0969-5e74-a211-2885de063f2e','22:66','Заринский городской'),
	 ('9746a9b0-d938-56da-b95a-a13a20ba9c44','22:67','Змеиногорский городской'),
	 ('3b912ebf-ccbc-54ca-ad5d-c45a3dedbeb7','22:68','Камень-на-Оби городской'),
	 ('666790a5-c903-5f70-b355-a6a2b236d298','22:69','Новоалтайский городской'),
	 ('d3e04c0b-c896-5a9d-bca4-dcd3400df09a','22:70','Рубцовский городской'),
	 ('ae498979-403c-503e-9872-f585a9fcc570','22:71','Славгородский городской'),
	 ('b0e0b1f5-e753-5243-b9a5-58726250d8b1','22:72','Яровской городской'),
	 ('2c738a9d-6b52-5664-9291-77dd0dc13516','22:73','ЗАТО "Сибирский"'),
	 ('2c7d223e-46bc-501a-a729-2f7621aefecd','61:52','Каменск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('12f3e287-a230-52c2-875a-432cd3e556be','23:00','Условный кадастровый район'),
	 ('29543ecb-97a6-5d21-b383-57470b2f3a4b','23:01','Абинский'),
	 ('af20a305-23cc-5a92-9c00-01dc2729eac7','23:02','Апшеронский'),
	 ('d8431fa0-4748-51c5-8a39-dbf263cbd72e','23:03','Белоглинский'),
	 ('9ebe7e62-303b-50c0-be96-dce420e6c9e0','23:04','Брюховецкий'),
	 ('b641c18b-c65b-5b69-95ed-fc7f31a9a9ce','23:05','Выселковский'),
	 ('d55c9edc-3dfc-573c-9858-9b5f0188f6e1','23:06','Гулькевичский'),
	 ('74fe9b2e-cf1f-5edc-ad52-3464b2ca3c9f','23:07','Динской'),
	 ('e27818f5-fcaf-5a22-aef4-286e426fd648','23:08','Ейский'),
	 ('f2b82b33-172b-58d3-b614-6de561bc8fd6','23:09','Кавказский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8f25c4d4-77b9-5113-a13e-306419589eb4','23:10','Калининский'),
	 ('8f1a0662-763d-5786-80c8-ea0d91fa3065','23:11','Каневской'),
	 ('c31edd0a-68ac-559b-96a9-4f19d4347cbe','23:12','Кореновский'),
	 ('2a1caee5-d6cf-59ec-acfe-b2e60cfe7843','23:13','Красноармейский'),
	 ('332377cd-e8be-512c-a32f-2f07ba80abf7','23:14','Крыловский'),
	 ('88ff2a98-fee1-5242-a365-162dc5851823','23:15','Крымский'),
	 ('95833bba-a560-5733-bfe1-1f94962a6117','23:16','Курганинский'),
	 ('d5d5ead9-325c-55de-842a-3c915eae3065','23:17','Кущевский'),
	 ('d191e073-9a45-55c8-9066-8ea453ea764a','23:18','Лабинский'),
	 ('56908f60-04c7-5f89-9ff1-178b7c0f5934','23:19','Ленинградский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('e4e8f417-99bb-5b3a-b180-1a6b09f1b8dc','23:20','Мостовской'),
	 ('0b1c0ab5-7f19-541d-8b8d-b7ec8deda67f','23:21','Новокубанский'),
	 ('e39fc51b-e2eb-5711-a6b8-50314cf482f3','23:22','Новопокровский'),
	 ('493efedb-7c8e-59c0-a746-6d3a922fab3b','23:23','Отрадненский'),
	 ('cb8f95cc-d320-55a8-90d0-3676aa036639','23:24','Павловский'),
	 ('52cde3c9-9a64-52c1-9e46-4fa5d442f55e','23:25','Приморско-Ахтарский'),
	 ('b592f114-ed9d-5ff8-9805-4e1001726f64','23:26','Северский'),
	 ('5d9d2981-cf0f-500b-94fc-79c21a40ec0b','23:27','Славянский'),
	 ('4f7a33b7-e7a5-5209-a13b-5c90ca101b99','23:28','Староминский'),
	 ('39d9387a-e050-51c2-984a-a18ca7c99483','23:29','Тбилисский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('de2a01f3-2310-54e0-87ce-5ec34894636c','23:30','Темрюкский'),
	 ('ba2372be-4a4b-5557-aa6c-9b1b0fef3fae','23:31','Тимашевский'),
	 ('7941a85f-0ffc-5cb3-9ca9-d6779b1cab29','23:32','Тихорецкий'),
	 ('713397dc-dcc5-5aa8-abaa-98932e048efe','23:33','Туапсинский'),
	 ('02b507fc-0784-5894-8609-60eb5d211c47','23:34','Успенский'),
	 ('2145983f-1009-5057-9f7e-855a7224e341','23:35','Усть-Лабинский'),
	 ('333b71b8-36c4-573d-9c5d-c46551e5ed5d','23:36','Щербиновский'),
	 ('85c59007-540a-5a6d-838f-1c1c8e37c5e1','23:37','Анапа'),
	 ('a87ff32e-67c5-5823-90c7-14a3de04e013','23:38','Армавир'),
	 ('9ac09912-b454-562f-923e-f0acc7e14750','23:39','Белореченск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('3c1a9b95-a5aa-5ad6-b1a4-3fa0095c378b','23:40','Геленжик'),
	 ('4c884da1-f546-5429-b032-5a555f802c96','23:41','Горячий Ключ'),
	 ('0e42d2d2-f8fd-5884-8963-156ec9dabc0d','23:42','Ейск'),
	 ('8aef45b1-ec79-591a-aefb-efb7307e8296','23:43','Краснодар'),
	 ('f85eb172-b309-5c31-bad8-20796ef8c9d0','23:44','Кропоткин'),
	 ('49e9348e-084a-5860-9170-a44df0d5dd4b','23:45','Крымск'),
	 ('f2587833-9810-506d-acc5-7c4ec815638b','23:46','Лабинск'),
	 ('dae777b9-3505-54b8-96fb-c9a74027e2fd','23:47','Новороссийск'),
	 ('3beb0261-7775-572e-97ff-04ab5735e91d','23:48','Славянск-на-Кубани'),
	 ('54acd623-132b-5704-b00c-8318670ea31b','23:49','Сочи');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('bf24c340-fab0-572d-8b65-4aeb0315ab52','23:50','Тихорецк'),
	 ('b6e7f0ec-2dac-5212-b57d-9316cfffe0d2','23:51','Туапсе'),
	 ('a040ff1f-2470-5bbb-994a-ab165b867db9','23:52','-'),
	 ('687d08a3-0b90-571b-b3f3-c9fa65f565d9','23:53','-'),
	 ('2ccde523-e42d-5150-8f12-cea28c5a3f14','24:00','Условный кадастровый район'),
	 ('dc8e755c-f753-5f26-aaf6-aa5f9aa212d3','24:01','Абанский'),
	 ('7dc195b5-d529-5077-8e3a-c8644ef16994','24:02','Ачинский'),
	 ('af63b8c4-82b6-5719-8c4c-34bd72804aa3','24:03','Балахтинский'),
	 ('e359567b-1087-58a1-be52-082155ddc2c6','24:04','Березовский'),
	 ('c05256b4-b28a-592c-9d3e-33c35d54c60f','24:05','Бирилюсский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8151e477-b854-5591-b9c2-9296c4f49369','24:06','Боготольский'),
	 ('a98d6008-f702-5781-b8f8-5eb3a9e91262','24:07','Богучанский'),
	 ('69372a80-9330-542a-8f51-e2d177090ecd','24:08','Большемуртинский'),
	 ('2cc74335-ea1e-5b0d-a171-1814290e5e61','24:09','Большеулуйский'),
	 ('04684f55-a594-5e57-b9a4-298ca4a2b50b','24:10','Дзержинский'),
	 ('eed486b3-a329-526e-b34e-5917835684e5','24:11','Емельяновский'),
	 ('a63a1047-983b-5d7f-b71c-63133160fb77','24:12','Енисейский'),
	 ('f1183839-661a-5c57-b52f-41c3dc28a42e','24:13','Ермаковский'),
	 ('5a5e90ac-8b70-53d6-b2cf-a9e940e116ed','24:14','Идринский'),
	 ('c437e826-09de-5ba7-8e42-99d54122b3f6','24:15','Иланский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a5bc206d-8f72-56b4-93d1-4de56d86bdcd','24:16','Ирбейский'),
	 ('01f3e3f2-0b19-538c-a7bc-93f6ae7a191f','24:17','Казачинский'),
	 ('15621fed-2293-5fd2-b2ce-de42393a39d8','24:18','Канский'),
	 ('81317df2-7ef7-5040-b722-dc71dc85f39a','24:19','Каратузский'),
	 ('c57d15b3-f80e-5abf-8e0d-88c2b715fc5b','24:20','Кежемский'),
	 ('0259bd77-0787-55b2-945a-53c16c174f69','24:21','Козульский'),
	 ('b3f19e31-4dde-575d-a85c-c5e8de928e3a','24:22','Краснотуранский'),
	 ('357ffbd7-0a9e-5ff7-9ea3-eb2b1f6e4736','24:23','Курагинский'),
	 ('e936375f-562e-58b9-854f-da1bac378b5f','24:24','Манский'),
	 ('8ed0180a-7060-5ffc-a231-9d915db636ea','24:25','Минусинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('eec9b68d-04ab-50fe-ac19-b9d73501cccb','24:26','Мотыгинский'),
	 ('e0857203-a193-5217-bfdc-ce07ec090a74','24:27','Назаровский'),
	 ('fcf602a6-a9dc-54d2-ad83-ec28b9aa30df','24:28','Нижнеингашский'),
	 ('8d79236e-71c7-5348-9ee9-96ae9a2169fb','24:29','Новоселовский'),
	 ('8021a9bc-56db-53a7-86a9-6e038d4f2b6b','24:30','Партизанский'),
	 ('564c8091-f312-5a55-bc39-bc374f7625e4','24:31','Пировский'),
	 ('07e918e1-cf41-5538-b6d2-41f0de63aa2d','24:32','Рыбинский'),
	 ('6c83207a-aab3-57f6-b1aa-2c8a74fe6a93','24:33','Саянский'),
	 ('9f15e177-299b-51b9-affb-8b2b9e439f49','24:34','Северо-Енисейский'),
	 ('f43619f7-b470-5ecf-8234-d41b15978058','24:35','Сухобузимский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cacb23ec-06a4-5224-9cd7-eeceaa937cbd','24:36','Тасеевский'),
	 ('e77ff88e-38d9-54c4-b2c9-46c5f495f827','24:37','Туруханский'),
	 ('a6fffc61-03d1-529f-aee7-65814ea38cc8','24:38','Тюхтетский'),
	 ('9b9536ab-14b9-5b51-96a3-aa67baaed763','24:39','Ужурский'),
	 ('88116d95-23df-52ce-8589-5e1fa4752840','24:40','Уярский'),
	 ('95744788-eb5d-5dad-8695-bb69f989d85e','24:41','Шарыповский'),
	 ('8ee4372a-1047-5889-9aa0-a5ed8cf113f2','24:42','Шушенский'),
	 ('b92c7bff-fba3-550d-a969-715a5e6c91e9','24:43','г. Ачинск'),
	 ('073fe8c0-e7ab-544e-ae6b-4b3b7618a5c9','24:44','г. Боготол'),
	 ('282efe4d-e1f6-57f2-a16f-d8da5f8d0426','24:45','г. Бородино');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('29e34a74-8bdc-549e-b17f-90a27f5a9d32','24:46','г. Дивногорск'),
	 ('92be49f9-dcd5-5851-a690-202cde12dec9','24:47','г. Енисейск'),
	 ('898ae188-4623-5b8b-9deb-4c5e12b75ef7','24:48','г. Заозерный'),
	 ('404a0ccc-1881-5b2d-b3f3-2580b1ecd95b','24:49','г. Игарка'),
	 ('5c6557ab-1057-590a-9e11-35c501095753','24:50','г. Красноярск'),
	 ('76cbb61e-feee-523f-82e6-e7e74e00ab8b','24:51','г. Канск'),
	 ('3cc57a1b-22a4-5b26-9546-2c767dec9f09','24:52','г. Лесосибирск'),
	 ('cc80456e-ef79-5a77-9ecb-d163d8490d08','24:53','г. Минусинск'),
	 ('600851c2-f687-594a-858a-c358d574ec39','24:54','г. Назарово'),
	 ('2ed12e15-d5ca-51f8-9fe3-14d01b01128f','24:55','г. Норильск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fd19f3b9-794c-58d5-9661-bc6eeb29ca80','24:56','г. Сосновоборск'),
	 ('0ba1c6a1-82c0-52f4-85ff-56a5d928e965','24:57','г. Шарыпово'),
	 ('c14d233b-5f84-548e-9f55-fd4561110379','24:58','г. Железногорск'),
	 ('bae5fbbb-2fee-5ae8-9e45-98279aa59349','24:59','г. Зеленогорск'),
	 ('0217544f-cc1d-5e97-9049-c6cba99ed40b','24:60','п. Кедровый'),
	 ('bca2998e-fbbf-578b-9ee8-0710a4a94179','24:61','п. Солнечный'),
	 ('0bbec9fc-6e40-5a81-b77f-8d4da87a40c2','24:99','-'),
	 ('fd5266dd-3391-55cb-9c36-a669185121a6','25:00','Условный кадастровый район'),
	 ('44546e45-199d-5fee-a39d-421096724785','25:01','Анучинский'),
	 ('dc233256-4683-5930-85f0-0333134e7956','25:02','Дальнереченский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1e2f19d9-112e-589a-8222-bc9878c48dc9','25:03','г. Дальнегорск с подчиненной территорией'),
	 ('e34061d5-7c71-596a-be1c-47b9dfbc0cd0','25:04','Кавалеровский'),
	 ('c5360c3b-1375-5396-973d-ec9da03d1459','25:05','Кировский'),
	 ('e368d98a-9c83-5296-9224-50f23abec566','25:06','Красноармейский'),
	 ('bfc8724a-0c8f-5e87-8fb9-8aead0bc5566','25:07','Лазовский'),
	 ('2ba91bad-e5de-5e2b-a6db-582f03df6c9e','25:08','Лесозаводский'),
	 ('60892f57-d451-5eb4-be14-0a26a5ab539f','25:09','Михайловский'),
	 ('f1032b51-8d82-5f7a-8f06-7a27bdbcf9e1','25:10','Надеждинский'),
	 ('0b7c260b-6431-5fb5-8d18-a5df7d96adc3','25:11','Октябрьский'),
	 ('0b966263-2258-507f-a103-dfed59dccebb','25:12','Ольгинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('74775462-7bf3-5abf-b8ec-cc0fc67d7cba','25:13','Партизанский'),
	 ('29020383-6eac-513b-b2d9-cdc6aa1d607b','25:14','Пограничный'),
	 ('b2306dc8-694f-5e66-86cd-68cfca7157ad','25:15','Пожарский'),
	 ('1dcf18da-f1bd-5434-bccf-78a8eaecb148','25:16','Спасский'),
	 ('73b88b90-ef37-59a3-93b2-d815f30185d6','25:17','Тернейский'),
	 ('22d06246-b947-5d47-9b99-0b54cbef0016','25:18','Уссурийский'),
	 ('ebdc6094-cc36-5572-a4f2-7282fa4fe9ec','25:19','Ханкайский'),
	 ('f5ad4079-7274-5cd5-96af-ea9215eeee22','25:20','Хасанский'),
	 ('5da36910-f238-5785-8ed6-cfa5d132a558','25:21','Хорольский'),
	 ('2930e88b-4d75-571b-b057-d9a0e9abe4f6','25:22','Черниговский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6e492c48-b6f3-55a1-81ff-57edb6703d3f','25:23','Чугуевский'),
	 ('b0b8c528-5908-58d1-982d-613c621d35ee','25:24','Шкотовский'),
	 ('3b5d78a9-0e47-52a0-a6c2-07c6ddea667b','25:25','Яковлевский'),
	 ('34255cbc-249d-573b-be91-cc90d66c4791','25:26','г. Арсеньев'),
	 ('789de168-c464-5d72-93bb-ecc3997bd663','25:27','г. Артем'),
	 ('640aced8-aa6e-53c0-8317-40d50c6975de','25:28','г. Владивосток'),
	 ('cb75b9ec-0c01-5db6-ad89-468ee9097f24','25:29','г. Дальнереченск'),
	 ('25a7afa3-4426-5a73-8267-0bace6d7597a','25:30','г. Лесозаводск'),
	 ('d84e597d-1d85-59f5-af69-8cfcc80d9337','25:31','г. Находка'),
	 ('7237fbad-3941-55d7-9a14-55cd62a4fe28','25:32','г. Спасск-Дальний');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f1516aaf-5118-5657-b4af-c75a4421ca15','25:33','г. Партизанск'),
	 ('fa0f233b-4b20-5b7a-b834-b2b2addc13ef','25:34','г. Уссурийск'),
	 ('0cb7ff66-8899-5214-aa9b-4aa069baef4e','25:35','г. Фокино'),
	 ('8d22222d-a5ae-50ac-820f-c7f94c5f5b87','25:36','г. Большой Камень'),
	 ('867d4ec9-bdf5-53ea-bc01-2b0d812e3037','26:00','Условный кадастровый район'),
	 ('df4e621d-7c4a-59b4-9c37-26dfd1f57485','26:01','Красногвардейский'),
	 ('571094be-ad21-5820-b2e8-e2f13400c9c0','26:02','Ипатовский'),
	 ('af6338c0-a57c-5e31-a095-b5cf36b608cb','26:03','Апанасенковский'),
	 ('b826db53-e833-5921-97d1-c9833bb69444','26:04','Новоалександровский'),
	 ('a12e1a0a-de37-5136-97f1-f48ed5791e3c','26:05','Труновский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2ec767b1-164d-5a1e-a85d-858fbd78816d','26:06','Изобильненский'),
	 ('0287255e-9214-5f3f-a1ce-e807e02e39fd','26:07','Грачевский'),
	 ('8b2c42a3-bb5d-5472-923f-0369e48a0763','26:08','Петровский'),
	 ('95ce51b2-1033-57c8-8e96-56bde8350bbb','26:09','Туркменский'),
	 ('85b2f3f4-c64b-5927-a607-d1e599ba398d','26:10','Арзгирский'),
	 ('4995a717-14f8-5ccb-9e65-34e49f9879cb','26:11','Шпаковский'),
	 ('d7ff1bea-d2ce-5a97-8541-7fa92bef55da','26:12','Ставропольский'),
	 ('7345882b-18c8-5046-8784-fc6f8cc886db','26:13','Благодарненский'),
	 ('f386c5d4-4869-514d-addf-3126965a555c','26:14','Левокумский'),
	 ('d8d8a930-b865-509a-a305-14555f75e715','26:15','Кочубеевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4f23caff-5f6f-5cd5-8c92-3ad2063b4058','26:16','Невинномысский'),
	 ('7f7dfede-a0e3-5859-8cab-e18ae1f42d39','26:17','Андроповский'),
	 ('577ca6a7-f462-58ee-8360-527d969b77c4','26:18','Александровский'),
	 ('0d7b1db8-4925-51e7-ba5f-153d834fa333','26:19','Новоселицкий'),
	 ('6e98bb6d-b1ea-5966-aa6c-ca9873a626c2','26:20','Буденновский районный'),
	 ('880aa2dd-c899-5ab0-9b18-87c8c3284206','26:21','Буденновский городской'),
	 ('b813844f-018d-5e94-8a61-b9add73cac0f','26:22','Нефтекумский'),
	 ('d4e1f650-a596-5e44-b45e-7a3370ad4ab4','26:23','Минераловодский районный'),
	 ('796e292b-11db-5710-a777-f697854f14e8','26:24','Минераловодский городской'),
	 ('7644c74f-d3a8-5254-be5c-ae302d0c69e0','26:25','Георгиевский районный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c057a4a3-4729-59a8-9cc0-ab9de1828a48','26:26','Георгиевский городской'),
	 ('19e6d494-4140-5a83-9c8e-37abcd696a7b','26:27','Советский'),
	 ('0815ea10-ea79-5720-ae5f-962caa30cace','26:28','Степновский'),
	 ('979b90c7-a412-54ec-bda5-e21ff6ee9a61','26:29','Предгорный'),
	 ('9179802d-3a6a-5fb6-b692-68fb654637ff','26:30','Ессентукский'),
	 ('10a75c79-175c-50e8-a27b-86f2bd2cbe4d','26:31','Железноводский'),
	 ('68b2faf3-4b29-5a36-b212-d1a8c7b0dc66','26:32','Лермонтовский'),
	 ('3fe76118-1707-5c0d-8aa5-f4b5e1579ce4','26:33','Пятигорский'),
	 ('01ad9b8c-ede5-5363-86a7-94ded3e1796e','26:34','Кисловодский'),
	 ('ca32f2d7-6496-537e-9581-be64d87f6f88','26:35','Кировский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('e65c6f8c-1b80-5987-82de-2616fc68aad9','26:36','Курский'),
	 ('32ee22a7-e680-59ec-b077-20575a6c2e9d','27:00','Условный кадастровый район'),
	 ('e976fd6f-5013-53df-8f40-f22c017af109','27:01','Амурский районный'),
	 ('863476d8-c87d-5640-b91b-bdd74bde575b','27:02','Аяно-Майский'),
	 ('eaba4a6e-98fb-5c17-ad32-c1f6dae909e4','27:03','Бикинский районный'),
	 ('344ba2d7-1615-5f7a-b34a-613ce04cf484','27:04','Ванинский'),
	 ('74efc20c-f87e-54c5-924f-6409d0f222ea','27:05','Верхнебуреинский'),
	 ('ac12b026-38b8-5013-8f4a-ca799490b6d3','27:06','Вяземский'),
	 ('a00ec50d-651f-5499-8c41-404c53b123df','27:07','Комсомольский районный'),
	 ('ebb6828f-1d5f-5fa2-b3ce-dec256f4a628','27:08','Имени Лазо');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0aa13bd3-3201-5a6d-ac0f-6bc04f229f45','27:09','Нанайский'),
	 ('31c4d038-bf3d-584f-8aa0-7f09e75042ab','27:10','Николаевский районный'),
	 ('d369ba5e-569e-5f17-a97e-7e723a47f3cc','27:11','Охотский'),
	 ('2a3fa67b-ffdb-5c37-88e4-6dcbb177fa1a','27:12','Имени Полины Осипенко'),
	 ('fe130773-60c8-5819-af9f-b258f740fe9f','27:13','Советско-Гаванский районный'),
	 ('8bf79cd2-a209-58ef-a6fc-59eaad457eb5','27:14','Солнечный'),
	 ('e94d043f-5ddf-50c3-bc1e-48284c2e4339','27:15','Тугуро-Чумиканский'),
	 ('ddea3379-f2dc-5bc7-be9e-f9d3d39e142c','27:16','Ульчский'),
	 ('4cf7448d-dfc9-5930-83ec-98bb2a5ef0c0','27:17','Хабаровский районный'),
	 ('e1238a42-4a50-5c6d-8867-39853f94c073','27:18','Амурский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('612627cf-fd6f-5c7d-93b5-f90f490a41e0','27:19','Бикинский городской'),
	 ('4c32762c-a1aa-5ff0-8601-8df76a5f5fba','27:20','Николаевский-на-Амуре городской'),
	 ('059cd613-5ffa-56a6-8d53-45854a5abcde','27:21','Советско-Гаванский городской'),
	 ('424f7f84-5ab3-51f9-9a32-f979d72eb494','27:22','Комсомольский-на-Амуре городской'),
	 ('fc52650a-546e-5da6-8ce2-e2b9443757f4','27:23','Хабаровский городской'),
	 ('88e12910-18c2-5261-bd92-db0561ee5911','28:00','Условный кадастровый район'),
	 ('512d58b6-a4fd-59a1-a7ec-6ffbac22f50c','28:01','г. Благовещенск'),
	 ('05c2d0af-7a37-58e6-8dfa-55d3f4105b05','28:02','г. Белогорск'),
	 ('a4b74e2b-f784-5762-8d38-12e2f3975336','28:03','г. Зея'),
	 ('c1c956be-43e9-5370-a914-27ead9fb3f19','28:04','г. Райчихинск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ff0dbe94-5de8-5666-a802-a05646b1dc68','28:05','г. Свободный'),
	 ('3edcff0b-e062-5deb-be70-377fc05b269f','28:06','г. Тында'),
	 ('58e4fafa-3be2-560a-b469-90952068c785','28:07','г. Шимановск'),
	 ('f46a4b0e-2411-5219-9c29-d715e740b30d','28:08','Архаринский'),
	 ('557a8ef8-4091-5417-9d58-92422ac4708a','28:09','Белогорский'),
	 ('d480c689-c8d2-59f9-9dc1-3126ed6e76b7','28:10','Благовещенский'),
	 ('b6d6d6fa-3da6-5ced-ac1c-b7d724dce9c3','28:11','Бурейский'),
	 ('e774ffdb-ecbb-5f10-b3e3-34bc240bf3f6','28:12','Завитинский'),
	 ('5d853225-b22c-51ac-9ada-fb8a491b7175','28:13','Зейский'),
	 ('d5d22550-938e-596b-8033-7d8642b61a25','28:14','Ивановский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('89e7d39b-8d4a-53e9-abf5-5352b4586d79','28:15','Константиновский'),
	 ('186b0a94-68fd-550e-bd25-7a2f2684b55d','28:16','Магдагачинский'),
	 ('63b5ee4e-0744-5ef9-8d98-08147ec9b6f5','28:17','Мазановский'),
	 ('51fbeebb-ea96-5000-87cc-fdc7d44bc4ec','28:18','Михайловский'),
	 ('4a7e5763-78bb-5c74-a632-b6b021ac648f','28:19','Октябрьский'),
	 ('de73e632-096d-5911-8f00-cf830f7a0a38','28:20','Ромненский'),
	 ('24efbc09-43d5-54b9-909a-297f5b0347a2','28:21','Свободненский'),
	 ('2ffd3f1e-10ec-52bb-922b-3779cb01c1f4','28:22','Селемджинский'),
	 ('b47f702f-e44b-5c06-978c-0476718a64b3','28:23','Серышевский'),
	 ('e83a9a03-7fed-5f4c-975d-6287d0e81cb1','28:24','Сковородинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5c16bf88-0294-56b7-82b6-af1846c487c3','28:25','Тамбовский'),
	 ('e8be63c6-0081-5842-b746-e34ef1d7560e','28:26','Тындинский'),
	 ('2606f028-20d5-5979-a08b-aaaa78bd3bf5','28:27','Шимановский'),
	 ('ed2880f2-e38c-5936-9bfd-8e75400cd82a','28:28','пос. Углегорск'),
	 ('25b32fb1-ae55-5563-9922-efe4c67e9a1c','29:00','Условный кадастровый район'),
	 ('0e59255d-8811-5f04-9fa0-10987dd34d7c','29:01','Вельский'),
	 ('fec573e1-7683-57b5-888f-1c998b1dc902','29:02','Верхнетоемский'),
	 ('6b673c7a-1f5d-59c4-9999-20aac29463b2','29:03','Вилегодский'),
	 ('d8f70691-d12a-5e7a-8504-93d60e191152','29:04','Виноградовский'),
	 ('b58b363a-410a-57ab-b701-6fd9df0c86af','29:05','Каргопольский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b01ce5fa-15b8-589f-9038-f7299d3158b2','29:06','Коношский'),
	 ('3956a3c9-fed2-525c-924a-d0b100c2b18b','29:07','Котласский'),
	 ('2c2c9de6-f06b-5164-b78f-c3e202b56bb9','29:08','Красноборский'),
	 ('9635a40a-82cf-56dc-aad1-782efe397cd1','29:09','Ленский'),
	 ('d5a61b39-23ba-5e28-95d0-9b5a332707bd','29:10','Лешуконский'),
	 ('4c50b496-70d4-5938-99b0-c4a6e99c1f25','29:11','Мезенский'),
	 ('ea520c49-faba-5a8d-8afb-fd7783719b43','29:12','Няндомский'),
	 ('368a25fc-94c7-50d9-b6ff-7afd50c1e653','29:13','Онежский'),
	 ('62e8bbde-7989-55fe-954e-3d7f4dea38af','29:14','Пинежский'),
	 ('01ca5266-07ba-5d20-8409-edbf0c7f6a8c','29:15','Плесецкий');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('67fc1a7a-525c-5bf8-a445-2151fc564ea4','29:16','Приморский'),
	 ('8562c726-1379-5f9a-92e2-89c50447c3d9','29:17','Соловецкий'),
	 ('98cc10c3-785c-57c9-8d4b-b29b6199aa2a','29:18','Устьянский'),
	 ('6470f7bd-67b6-52b4-92ff-134efd03adf0','29:19','Холмогорский'),
	 ('e3144d48-144b-5697-8517-6321c36f1118','29:20','Шенкурский'),
	 ('47e64889-632f-55da-b77b-f62c12f6be5a','29:21','Острова Сев. Ледовитого океана'),
	 ('594f27ea-29fd-5a99-9e1a-2e01bd26e0ea','29:22','Архангельский городской'),
	 ('e8203ac3-5b13-5747-8d0a-3c2b0b700f3f','29:23','Коряжемский городской'),
	 ('4688150d-bdc0-50e6-a8fa-78e13325a56c','29:24','Котласский городской'),
	 ('27f9ec12-bfe1-54f2-9a2b-57f7dab8c3bc','29:25','Мирнинский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('826ca672-dc42-538b-9607-438709f382a7','29:26','Новодвинский городской'),
	 ('40547a73-3278-550e-a4c2-4f890b120ca9','29:27','Онежский городской'),
	 ('bdc91b2e-c550-51fa-b173-2f8dd85eab8c','29:28','Северодвинский'),
	 ('6d3dba3b-c70b-590d-82c5-628216d68f59','29:29','Новая Земля'),
	 ('77098b23-e85a-5709-b940-b98b603cab82','30:00','Условный кадастровый район'),
	 ('457fa373-1e21-5e00-af5d-ab71ad407db7','30:01','Ахтубинский'),
	 ('02d62969-f7c4-5807-9453-5d7ce063afbb','30:02','Володарский'),
	 ('9e990e86-c5a4-5336-bf57-d6afe7f2e0d2','30:03','Енотаевский'),
	 ('652f4695-a5b3-5085-8172-fc894a723558','30:04','Икрянинский'),
	 ('797d33bc-c75a-5c0c-b109-632584cc5a87','30:05','Камызякский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f3972155-fc99-56a1-8b04-42cb5466d71f','30:06','Красноярский'),
	 ('ec50ae31-e6a2-51d3-b72d-1d03f35a8da2','30:07','Лиманский'),
	 ('4f1237f5-c442-5009-817b-5760e417deff','30:08','Наримановский'),
	 ('33bf75bd-c2aa-5225-bf89-ea5a20848590','30:09','Приволжский'),
	 ('3811b90c-ae79-5db6-b2a5-ba1b63c83cf5','30:10','Харабалинский'),
	 ('090e0b14-1b2f-5cc1-9dad-da27dddafefa','30:11','Черноярский'),
	 ('c27663a3-4e98-556b-a265-8edc62264f49','30:12','г. Астрахань'),
	 ('a1313e9e-f2c3-5297-9d93-db50acd41a0b','30:13','ЗАТО г. Знаменска'),
	 ('f5c9d89e-09af-5e43-9882-51c086d01a61','30:14','Акватория внутренних вод Каспийского моря'),
	 ('e5d81ec8-658b-5856-b2ff-ea11a41d4d01','31:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2ceba294-de0a-5053-b4bb-b88886499930','31:01','Ивнянский'),
	 ('09e1f9dd-1996-51ea-a3b3-0ae8407f66b0','31:02','Прохоровский'),
	 ('08c0656d-cceb-51bc-b554-7e5185110681','31:03','Губкинский'),
	 ('6bb39e0a-6de8-5bb1-a293-4267314517a5','31:04','г. Губкин'),
	 ('0a1f9cae-b3f9-591d-8662-cb2f3f127fdd','31:05','Старооскольский'),
	 ('77081202-1460-5eea-8e8a-acf36e21e4c2','31:06','г. Старый Оскол'),
	 ('d9708251-d293-57c0-a9f1-999780bae7ce','31:07','Красненский'),
	 ('8be7eb39-2ec1-5cb8-9547-48da0b5f2d7a','31:08','Чернянский'),
	 ('d4c599c1-e2e8-5837-99e7-b62b855012f4','31:09','Корочанский'),
	 ('21d2000e-d754-5404-b9a2-76c80e84536f','31:10','Яковлевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4151e06a-1c4c-5a1f-a516-71b4060b3fd5','31:11','Ракитянский'),
	 ('134f77c1-f2f0-50ca-b9c9-6d450a0e542c','31:12','Краснояружский'),
	 ('ff3ed9ad-a19a-5216-a827-d6f3b245c79f','31:13','Грайворонский'),
	 ('a59f3b5c-8de8-51f2-a298-4d316f9260ae','31:14','Борисовский'),
	 ('fec387c3-7cad-5445-a710-931002d7972f','31:15','Белгородский'),
	 ('e34446ce-2608-5fa7-b566-2cb6b9545856','31:16','г. Белгород'),
	 ('ab00426b-0815-5a5c-9945-bd6bd8a59fc1','31:17','Шебекинский'),
	 ('bb816d8d-c1a7-5962-9e30-a29394454eb5','31:18','г. Шебекино'),
	 ('c44c59f1-ef88-5510-94f8-b795031812c5','31:19','Новооскольский'),
	 ('297b5081-7778-5095-9c4d-4c0e5a57d54a','31:20','Волоконовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a3283c7c-a435-5fd8-a15d-5a1a274fcebb','31:21','Красногвардейский'),
	 ('e0de5763-07ee-51dc-91c0-3333c6f7f868','31:22','Алексеевский'),
	 ('9b6e26c6-2da3-5f10-824c-d4bfea012a6e','31:23','г. Алексеевка'),
	 ('6cef06da-2320-5270-a870-3b0f574a4cef','31:24','Ровеньский'),
	 ('3b8162bc-fc5a-5687-bce9-05457ceaf4d3','31:25','Вейделевский'),
	 ('b2e61020-4b8c-5959-953e-a4aaf4ed16f1','31:26','Валуйский'),
	 ('96b43a0c-e8ef-53f6-ae45-92e478411cea','31:27','г. Валуйки'),
	 ('1ce36e6e-ba8b-555b-a4e3-cdcda5785fc1','32:00','Условный кадастровый район'),
	 ('3e5de75f-5d96-52db-9103-f27512b99bcb','32:01','Брасовский'),
	 ('9f8c141b-41ca-557a-9ed0-3396d1c2c9a8','32:02','Брянский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('305c617c-1c76-5ecd-b730-0b168f62ab96','32:03','Выгоничский'),
	 ('6af96f3c-ef1e-519e-9339-e70193a3a6b0','32:04','Гордеевский'),
	 ('0b7c6148-3383-554e-9e31-25b2eeb0c1f1','32:05','Дубровский'),
	 ('1c256505-cc65-5266-a324-476f123f5988','32:06','Дятьковский'),
	 ('62511c13-1305-5b81-bcc9-b93910a36b7b','32:07','Жирятинский'),
	 ('1184ae77-3464-588a-ac10-ee4646a32556','32:08','Жуковский'),
	 ('c5b62e3d-00db-530b-903c-f274a98443b6','32:09','Злынковский'),
	 ('659eed52-fac0-5d4d-b3e6-f08af01378b0','32:10','Карачевский'),
	 ('d979503e-e26a-5a70-afae-ca5448340444','32:11','Клетнянский'),
	 ('52d91026-6428-5c65-abc6-e2a634a4d2ee','32:12','Климовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b21f9e3c-b2e5-543d-b8f8-2bb80f0aff28','32:13','Клинцовский'),
	 ('f2a75b45-3181-5cc3-b7fc-c48606cfdb19','32:14','Комаричский'),
	 ('52775142-4004-52a8-b4d9-8587d94d9981','32:15','Красногорский'),
	 ('94c59eaa-87f1-5408-b139-2d984e0c592f','32:16','Мглинский'),
	 ('cf14da8d-a35e-574c-adef-50a819c5aab7','32:17','Навлинский'),
	 ('58234ac3-d933-5a1b-a3cf-89637ffc16b6','32:18','Новозыбковский'),
	 ('0212228a-efa7-5979-b8fe-801a4a1a58f5','32:19','Погарский'),
	 ('f22c15d6-6fb0-5348-a430-16aae530560b','32:20','Почепский'),
	 ('f77e9c93-ffd2-556f-bf50-9211859d95b3','32:21','Рогнединский'),
	 ('4f6bc06c-2fb4-57df-8420-2b0af3931d64','32:22','Севский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6043c636-9e78-59df-86ee-7794f46a072a','32:23','Стародубский'),
	 ('64322e09-9df4-565a-8380-4bec40b273a8','32:24','Суземский'),
	 ('63a82c6e-801f-5b4d-aa75-de0ce4fb2882','32:25','Суражский'),
	 ('fd235b75-8537-55a2-b094-2d0173b67918','32:26','Трубчевский'),
	 ('9a600715-f0ab-59d2-adab-320e6e2326f7','32:27','Унечский'),
	 ('7d8a0cbd-089c-5160-ad18-19b2068485f3','32:28','г. Брянск'),
	 ('c7f63808-f8d0-5ffc-a29b-0ed865dc39d4','32:29','г. Дятьково'),
	 ('2f27061e-5235-5fb7-981f-dd3f7e55a768','32:30','г. Клинцы'),
	 ('a49fb0ba-56c3-506f-b10a-026fa2928731','32:31','г. Новозыбков'),
	 ('f5a13166-2396-5507-b89c-bd12e306f278','32:32','г. Сельцо');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('33f8af6f-371e-5e07-83d9-7daad5260d15','33:00','Условный кадастровый район'),
	 ('58795fc8-5ad7-5af5-ad3a-813001ef7ab4','33:01','Александровский'),
	 ('ceeb864c-e1cd-570d-9d14-1a26b12c632c','33:02','Киржачский'),
	 ('ede9909d-6efd-54b6-a388-f2a91da9c27e','33:03','Кольчугинский'),
	 ('5e2954c2-316d-53f8-ad14-c91964e38e3d','33:04','Юрьев-Польский'),
	 ('82e927a5-b4d8-5d0d-90ae-9abdaae68b84','33:05','Суздальский'),
	 ('b283cba8-27be-5752-b92d-523febb124be','33:06','Камешковский'),
	 ('7ce5bddd-aaee-5fd0-bd39-f46b8cf6a191','33:07','Ковровский'),
	 ('6cd27adf-ac67-54ba-a150-0beb5e1a1aea','33:08','Вязниковский'),
	 ('35642202-4f67-5952-b5b0-eef58ca1fafd','33:09','Гороховецкий');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0e2afbdb-abcf-5e77-881d-5c77589a6585','33:10','Селивановский'),
	 ('2edc8018-c39f-53ff-81ae-dd59df1b44ba','33:11','Судогодский'),
	 ('3dbe52dd-9698-596c-b86c-ec53c77164d0','33:12','Собинский'),
	 ('505ac96c-0608-54e7-8280-fd1cebaf9951','33:13','Петушинский'),
	 ('60c0337a-5c34-57b7-9c97-266752df1c33','33:14','Гусь-Хрустальный'),
	 ('ce417d03-fbd0-57d9-a460-32480f3890cd','33:15','Муромский'),
	 ('c2f71ead-5bcb-5976-b423-93daea0d35f9','33:16','Меленковский'),
	 ('650849a9-f779-5582-8a78-4216d0f05339','33:17','г. Александров'),
	 ('4ec4ccd3-8c32-5d7a-9e83-8219aeb1d9f0','33:18','г. Кольчугино'),
	 ('d7bef95d-cb4b-5f78-aa3d-2afe2c2ab7e2','33:19','г. Суздаль');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('eedb0b7c-2f5c-5759-a896-9e1a50d6a3f4','33:20','г. Ковров'),
	 ('92c6a3c8-b5c2-5aa4-919a-692fb2261c93','33:21','г. Вязники'),
	 ('64c5225c-a3d6-51c3-a15f-1c705638402f','33:22','г. Владимир'),
	 ('8ee72822-ae4c-5c02-afd0-7773f91cb217','33:23','г. Радужный'),
	 ('6486851a-015d-5ec3-a990-75e35964a842','33:24','г. Собинка'),
	 ('530f9dc8-252d-5f35-9273-ae18dabda80e','33:25','г. Гусь-Хрустальный'),
	 ('de6c4afa-d5d6-5dd1-aca5-79268fa7027b','33:26','г. Муром'),
	 ('0b8ca3c3-3191-50d0-a7b8-0a4c2d44d060','33:36','Киржачский район'),
	 ('a05df6c4-e452-5752-89eb-5ca7caa16971','34:00','Условный кадастровый район'),
	 ('c8a12cdf-f5f2-57c5-aafd-d466909e4591','34:01','Алексеевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c4a59172-d8e8-5034-b220-243fc973336c','34:02','Быковский'),
	 ('2a442dd7-00d2-5f56-8622-834f7502e0e1','34:03','Городищенский'),
	 ('9f44fed6-e43b-5b19-9253-3f8a41b79072','34:04','Даниловский'),
	 ('25e1039f-3f16-5ffb-afcb-ce24a6cc2cae','34:05','Дубовский'),
	 ('6810d5e8-9c21-5543-b09b-ef5a8b3f0d51','34:06','Еланский'),
	 ('7c665660-cc67-57d6-9dbd-ab8cf83a5dfd','34:07','Жирновский'),
	 ('e1209b5e-7f64-5a3e-8b87-4532c038e7d2','34:08','Иловлинский'),
	 ('f84eedde-fe41-52fc-8db1-29416316328b','34:09','Калачевский'),
	 ('1b529e6e-7abd-5b30-a060-e7dd234b8b5c','34:10','Камышинский'),
	 ('533543b4-f44b-5426-96a9-ece1b9df21fa','34:11','Киквидзенский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fbf2b98e-d6b1-58e4-9fc2-c2990d2d6f5b','34:12','Клетский'),
	 ('e840b5f3-7dfa-584f-8f0f-b833a67bd0bd','34:13','Котельниковский'),
	 ('8098df3e-ef0a-50f9-9714-77558c3c5282','34:14','Котовский'),
	 ('95dc2b35-f04f-55b5-9016-15a43456e0a5','34:15','Ленинский'),
	 ('6601d9fb-20e2-5514-b63d-598858650dd7','34:16','Михайловский'),
	 ('05622f31-ec5a-5dec-a412-65ec7958e499','34:17','Нехаевский'),
	 ('66bfbd72-4f0e-5651-88e4-f4f8768c0fbc','34:18','Николаевский'),
	 ('2a5646da-6809-5c63-a196-ab8b17c6aa60','34:19','Новоаннинский'),
	 ('0b888538-6366-58bf-85b1-2593b61e9054','34:20','Новониколаевский'),
	 ('a721a6cf-4360-5bfb-bc0d-8265d92d6a09','34:21','Октябрьский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5ceb7092-d42e-58d2-b26e-ae9008ba4cff','34:22','Ольховский'),
	 ('8f772178-9a3f-50ac-a10f-77cc0fd4ee57','34:23','Палласовский'),
	 ('32bad9dd-82af-548c-97b9-3cca3ae59a55','34:24','Кумылженский'),
	 ('d5e4a49f-7ae5-5ac1-8286-24e63a691da0','34:25','Руднянский'),
	 ('d1a94d0a-f405-5452-a229-148c1f03118b','34:26','Светлоярский'),
	 ('a227df5e-0a34-582a-999d-c2a3bb265bf9','34:27','Серафимовичский'),
	 ('7fd3c2b3-af9b-57c5-80b5-80f5b705bff3','34:28','Среднеахтубинский'),
	 ('3c8830c5-29c6-523c-9562-8c535f4e0102','34:29','Старополтавский'),
	 ('3f3d26e4-e879-586f-83ab-139fd4d460d6','34:30','Суровикинский'),
	 ('1b70a1b9-13db-5088-92bd-7a3360315aed','34:31','Урюпинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d4a82a9a-3731-5f3f-9a87-6f0d321c364f','34:32','Фроловский'),
	 ('1c35d74e-8a71-5d29-b796-57eec223e377','34:33','Чернышковский'),
	 ('09d4e38e-d1ac-55e5-8fe0-da5a3dd5b128','34:34','г. Волгоград'),
	 ('1fae81d4-4f1f-5b94-834a-e6dd3ab5a696','34:35','г. Волжский'),
	 ('bcd4466b-7aa3-5e8d-b4b5-fcda1d3eb622','34:36','г. Камышин'),
	 ('8c602083-8506-53bd-a93a-9c6b5f61c3c8','34:37','г. Михайловка'),
	 ('3a3435af-ce67-5184-8e3c-440aecd024db','34:38','г. Урюпинск'),
	 ('07fc14c2-f015-5ca6-9177-6102c30c8437','34:39','г. Фролово'),
	 ('97e58e02-3143-52ad-836b-33e6d6769895','35:00','Условный кадастровый район'),
	 ('f65cabfa-c7e4-59c4-9ac2-2ac5e6a12875','35:01','Вытегорский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('dfcbc87d-4666-5250-a274-7163169f9e26','35:02','Бабаевский'),
	 ('70ac69b8-3a37-516f-80e0-11ceef24b105','35:03','Белозерский'),
	 ('4bdc9f00-5248-56f0-8b03-13621c193eea','35:04','Вашкинский'),
	 ('5eef0245-0c15-549b-9b0c-19e5e26932f1','35:05','Кирилловский'),
	 ('9f6ae67b-90c3-50da-b160-83d778765107','35:06','Вожегодский'),
	 ('11f24bdb-51f7-5a57-a45b-ee282cb39286','35:07','Верховажский'),
	 ('75b0102d-6753-55b9-a8b3-f6c73f3ddb8e','35:08','Тарногский'),
	 ('3126e11b-8768-5ff6-a641-3576c28f3a3b','35:09','Нюксенский'),
	 ('8a832173-147c-54b3-9849-3320dd062c18','35:10','Великоустюгский'),
	 ('9b0936f9-ed00-5201-9305-c0cf25de3019','35:11','Усть-Кубинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('276220dd-ab86-554f-a7b6-dff01353e9fe','35:12','Харовский'),
	 ('fe328fee-d85e-528d-abd9-4ce2439de399','35:13','Сямженский'),
	 ('699f0a3d-14e8-5e92-b632-5deadec6ce1f','35:14','Тотемский'),
	 ('b2c2d15b-7ee1-55d4-b503-5aa8f22244c8','35:15','Бабушкинский'),
	 ('281281f6-f727-5f65-94be-36f443fa1650','35:16','Никольский'),
	 ('3a3c2be5-2ba8-5104-950a-6dc6f4dd98aa','35:17','Кичменгско-Городецкий'),
	 ('ccea6c90-23e5-5b71-b6ff-39c5a4891f8b','35:18','Чагодощенский'),
	 ('cb90d2ef-ea6f-5580-a2c5-efad9f457cbc','35:19','Устюженский'),
	 ('014ca0cb-8f62-52b4-bde8-c294824a5f7a','35:20','Кадуйский'),
	 ('8e35597b-cc04-5fc9-bd58-bcad83954b55','35:21','Череповецкий городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4b4e5415-f715-5182-87c6-d9a892f2b791','35:22','Череповецкий'),
	 ('a129460a-9473-5b6f-b686-bc004dd885a5','35:23','Шекснинский'),
	 ('2b1cf8d7-ac89-541a-a51b-fbad62b4517b','35:24','г. Вологда'),
	 ('00476eb0-d0da-5d66-b526-8096a5eea018','35:25','Вологодский'),
	 ('42bf362e-50e7-585f-a336-1812f24ed3d5','35:26','Сокольский'),
	 ('8099f736-8fab-5bbc-932b-870a354795f4','35:27','Междуреченский'),
	 ('4898ed81-2e9d-5ab8-a7c3-4526e8c4f812','35:28','Грязовецкий'),
	 ('75883104-e8df-5b7d-9592-f8d10e76ba38','36:00','Условный кадастровый район'),
	 ('a24a73ad-7f17-5a9c-88e2-3829d295b537','36:01','Аннинский'),
	 ('349924b9-d083-55d2-9a07-fc2d28518559','36:02','Бобровский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2f01a2b4-891c-5c8f-a9dd-551ea9956317','36:03','Богучарский'),
	 ('5bbccd5b-6362-548b-a9fe-9c7873505073','36:04','Борисоглебский'),
	 ('c96e319d-6133-5cd2-b4fd-3630b586983b','36:05','Бутурлиновский'),
	 ('a7193e89-173d-5d71-ac5b-01166e3847a9','36:06','Верхнемамонский'),
	 ('c40c35c6-a8af-5392-8435-0d54c5d81ab2','36:07','Верхнехавский'),
	 ('f4270392-4213-576f-b43e-abe1757042bb','36:08','Воробьевский'),
	 ('d6244e7d-b305-5fb0-9b5f-277396a76fb6','36:09','Грибановский'),
	 ('a584ac4a-1401-5fdf-8751-4e647e59ac71','36:10','Калачеевский'),
	 ('3ead4850-8984-5d54-b31c-6c44345bdc3a','36:11','Каменский'),
	 ('fb788fa0-5982-5035-a50f-e8d6a960313d','36:12','Кантемировский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('3073b5e1-a629-5979-a3e4-7044dc4c4f7e','36:13','Каширский'),
	 ('b6a179b1-099d-57fa-80b9-473b020842f9','36:14','Лискинский'),
	 ('1ac97b54-c376-548a-9698-8b7c5fbef255','36:15','Нижнедевицкий'),
	 ('2cfcc349-bcd0-5f96-b78b-cdf4abce8642','36:16','Новоусманский'),
	 ('80926526-6fd1-511f-a46b-3771d13d8e5e','36:17','Новохоперский'),
	 ('273c59bf-d6b0-5070-92b2-0f429f057e9e','36:18','Ольховатский'),
	 ('f688f4e3-0af2-5e5c-b387-9035e10483ae','36:19','Острогожский'),
	 ('8d3694b1-b15a-5c8f-8d8e-eac1021528b1','36:20','Павловский'),
	 ('4df19f51-37e1-5931-83b1-f54e1bf52100','36:21','Панинский'),
	 ('ac1ec03e-5cb8-50ca-be1a-dfa89f73d0bf','36:22','Петропавловский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ca93c816-d470-5649-837e-359f62885f43','36:23','Поворинский'),
	 ('e6257627-5058-5c5e-a01b-d7203be613f9','36:24','Подгоренский'),
	 ('1013bf33-144c-5b00-a09e-eed02c7ce672','36:25','Рамонский'),
	 ('82d66c26-ed7f-5743-8086-f0871c1f9b78','36:26','Репьевский'),
	 ('880b0ecb-272a-5d7f-9bc3-8356a23c8205','36:27','Россошанский'),
	 ('3790c484-1c8f-5f2b-8b0c-7c528f9ade48','36:28','Семилукский'),
	 ('9e1a3c58-d721-59d3-928b-9fbbb15f2367','36:29','Таловский'),
	 ('45c152dd-0d56-5c8d-b663-a48b2ecef5c5','36:30','Терновский'),
	 ('04ee6909-3ea5-5dab-b823-4b65d98c999a','36:31','Хохольский'),
	 ('138e0a15-4f5e-5129-9c43-5fa05c195527','36:32','Эртильский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9097bcd3-19ec-52aa-a30e-b499a51fa3ba','36:33','Нововоронежский'),
	 ('f36c2e28-6bd7-51f6-920c-2135ddf4e232','36:34','Воронежский'),
	 ('93103e2a-1261-591c-bc7b-5e75aafa301c','37:00','Условный кадастровый район'),
	 ('0438b4b5-3665-5bd4-8155-32665d101c80','37:01','Верхнеландеховский'),
	 ('ff02dbcf-7cf1-5be9-ba81-449a627bba4e','37:02','Вичугский'),
	 ('ebf4089b-902e-5b93-b8a7-7ecde6dd5e97','37:03','Гаврилово-Посадский'),
	 ('70551712-6418-536c-b454-462c06acf562','37:04','Заволжский'),
	 ('aa0f29ea-cd65-5a9c-8694-1af161298b1d','37:05','Ивановский'),
	 ('a16879ae-1c74-5c75-81c0-4c692d63d8e0','37:06','Ильинский'),
	 ('d6ef2723-d253-5092-b005-672530f04cfe','37:07','Кинешемский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cd8080e6-24a7-5d55-9934-0eb9b2e5ed7e','37:08','Комсомольский'),
	 ('6e046fc8-ebe2-5583-a16e-a77a890a4ed6','37:09','Лежневский'),
	 ('d86dcc9c-253d-5549-ba3e-f553e848af7a','37:10','Лухский'),
	 ('3154d877-6073-589f-8761-4f2ae3e7baae','37:11','Палехский'),
	 ('c5438211-ccaa-5874-bdc0-670d43f95143','37:12','Пестяковский'),
	 ('9c785eca-6454-5bfe-a9b6-278e29e472fa','37:13','Приволжский'),
	 ('d8329568-f6e1-5400-bbb7-efc008b38c29','37:14','Пучежский'),
	 ('8a1d0afc-4383-50aa-86e0-cbe3da9fbdd7','37:15','Родниковский'),
	 ('639515e9-d597-539b-8d05-549bf11a6855','37:16','Савинский'),
	 ('fcce0177-262d-59c5-8fd0-e89fd23361b8','37:18','Тейковский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('11b4097d-5e2d-5ea5-b5b3-59f1ce6decf6','37:19','Фурмановский'),
	 ('f19239d8-e2ca-545b-8a2d-d2f7f9638869','37:20','Шуйский'),
	 ('997ae207-d19b-535c-ae65-c1b277230b5f','37:21','Южский'),
	 ('a76a0d89-9604-53b7-bf5f-81bfc5ebc3d0','37:22','Юрьевецкий'),
	 ('46426856-2a8e-5461-a67e-271c035d80aa','37:23','г. Вичуга'),
	 ('9f225afd-6c58-5daf-b75a-68f9ab75e390','37:24','г. Иваново'),
	 ('45c8447b-af69-5d23-bac1-423cb10bd5f7','37:25','г. Кинешма'),
	 ('4808d49a-c5c9-5395-97be-e9fa3c060e36','37:26','г. Тейково'),
	 ('3ab7e9f1-6901-51c2-a778-e9c193c69f57','37:27','г. Фурманов'),
	 ('24de01ed-e78f-5246-8a8f-8ff634a24b1f','37:28','г. Шуя');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('159b2e8a-1a4f-5dc3-8f67-fcae99f78752','37:29','г. Кохма'),
	 ('872efc31-ca3e-5c42-803e-665ff63637c2','38:00','Условный кадастровый район'),
	 ('535c7619-3800-5371-9b39-11ec43dbf6ac','38:01','Балаганский'),
	 ('34e17218-0834-5b70-bddc-7828da26b977','38:02','Братский'),
	 ('8ff69bbd-3ca9-5087-af0c-3c51eedc054c','38:03','Жигаловский'),
	 ('29a2acde-98eb-5d62-b38c-dccb99ba62e7','38:04','Заларинский'),
	 ('88c37e29-ae2c-56fa-a74f-b6e4b00545ed','38:05','Зиминский'),
	 ('d03d1395-5cbd-5471-a014-933565a9e71b','38:06','Иркутский'),
	 ('82d03dc6-0d16-5ea1-a0fc-e962a26be816','38:07','Казачинско-Ленский'),
	 ('139d953d-110c-5ae8-8cbd-e7b68cb79631','38:08','Качугский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('da529068-d013-55cf-9013-ba72e21845ca','38:09','Киренский'),
	 ('477d11c4-c2d7-5122-993a-e070f4b41ea3','38:10','Куйтунский'),
	 ('fe360880-ad33-51dc-904d-a7ebcc806e8a','38:11','Нижнеудинский'),
	 ('a3af0cac-67d6-56fa-945a-7a6acdf62c67','38:12','Нижнеилимский'),
	 ('9b94374f-2df9-5af1-8562-5c07331b9286','38:13','Ольхонский'),
	 ('dd593ba7-cfca-52db-b343-fa07f732bf5d','38:14','Тайшетский'),
	 ('5ed070f8-a402-5eda-b2ad-6ac870c7a4e2','38:15','Тулунский'),
	 ('4ff28116-0f06-501a-85eb-8a9840eda51f','38:16','Усольский'),
	 ('7f742192-92b0-5bc8-9492-b9ef380c0aa6','38:17','Усть-Илимский'),
	 ('f518333e-0129-5f47-9b94-18ad6c315c62','38:18','Усть-Кутский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c1e11140-ed6a-5dfb-85e2-a48138854275','38:19','Усть-Удинский'),
	 ('746455a6-44b6-59ce-abc5-2d892221dfed','38:20','Черемховский'),
	 ('f3c308bf-0f33-52f9-920a-1adf5246f877','38:21','Чунский'),
	 ('7dcb41df-b89f-579a-9922-9eabf208f780','38:22','Бодайбинский'),
	 ('48ed275b-e419-51fb-98ab-c47e2063c39c','38:23','Катангский'),
	 ('59a6c1d3-c463-5dde-ae72-5c341261cf11','38:24','Мамско-Чуйский'),
	 ('ce79c933-849f-5bde-ac5c-914c7f149303','38:25','Слюдянский'),
	 ('d41fadff-253d-598d-92fd-d702cab1ebba','38:26','Ангарский'),
	 ('09142e85-e118-5243-90b9-e1c6420aff8a','38:27','Шелеховский'),
	 ('d044edb1-955d-532c-aaaa-023fe8412ca0','38:28','Саянский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b83cba45-82f5-5e33-8f1d-6ace9e285117','38:29','Тайшетский гордской'),
	 ('18d58530-fd96-5c0a-a69f-ab58f8f96abb','38:30','Тулунский городской'),
	 ('224ea2f4-7bbf-5d11-a2ab-d471a6e9fe3e','38:31','Усолье-Сибирское'),
	 ('1322634a-fa2a-5048-be86-44b645b266ee','38:32','Усть-Илимский городской'),
	 ('c0966026-6141-54f7-8be0-71bdbc9d35e6','38:33','Черемховский городской'),
	 ('e43c34e2-f714-5e4f-831f-99af0a6b260d','38:34','Братский городской'),
	 ('9539f73b-0a95-5ca0-851e-4d00b7bd8e77','38:35','Зиминский городской'),
	 ('45413876-689e-5c8a-a280-65874888e3a1','38:36','Иркутский городской'),
	 ('6f272098-a187-527d-9050-c841bb780d8a','38:37','Нижнеудинский городской'),
	 ('27497f26-40b4-5fdb-9f04-d73ae96b7795','38:38','г. Саянск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f4894059-e368-5600-a316-3b4027575efe','39:00','Условный кадастровый район'),
	 ('115d0f29-c29d-5ef4-9887-f155d6e9d684','39:01','Багратионовский'),
	 ('8ae26f10-24fc-50ba-8b68-ec2c3cc8fa16','39:02','Гвардейский'),
	 ('e1956a58-6638-599d-a08a-912d9651a7f6','39:03','Гурьевский'),
	 ('09006f0f-fbca-5e90-9059-0bdfa03122aa','39:04','Гусевский'),
	 ('40b7bd8d-f160-567c-bdfa-a1f9561eab99','39:05','Зеленоградский'),
	 ('e4610565-1023-5747-826b-1b642b135a45','39:06','Краснознаменский'),
	 ('4e3a5d14-8a4c-5248-9f9e-a193b2757ce8','39:07','Неманский'),
	 ('0e1047f2-002e-5822-89f3-cc251cc9c6ee','39:08','Нестеровский'),
	 ('9a827e53-c363-56eb-8de6-abf6269f217f','39:09','Озерский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9de1d162-0750-5d09-8083-79bab9d1056b','39:10','Полесский'),
	 ('06ddfde0-75d6-50fb-a608-075674c5ce95','39:11','Правдинский'),
	 ('b2e0c5e3-2fe5-52ae-a5dc-9b3849e2907f','39:12','Славский'),
	 ('e5627131-1951-548f-93d2-87138d58c29a','39:13','Черняховский'),
	 ('fc4ecfc4-3137-5fbf-9224-d3a3bbf329fc','39:14','Балтийский городской округ'),
	 ('536a09de-2261-5973-92b2-79a6d00bbece','39:15','г. Калининград'),
	 ('9c0854ce-356e-58e8-a503-b7dbc1e0086d','39:16','г. Советск'),
	 ('873f385e-02dd-503d-b12f-d6bcb90156ae','39:17','Светлогорский городской округ'),
	 ('04ec1d45-10a8-5422-ad84-26ee2e35dd9b','39:18','Светловский городской округ'),
	 ('6daef211-2559-56ec-bd8f-19b205667314','39:19','г. Пионерский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7fda87e5-42f1-528d-99d9-bf45d3ecf01f','39:20','г. Ладушкин'),
	 ('39205b53-fcba-55b5-b2f6-b8d3ebb6e31a','39:21','г. Мамоново'),
	 ('0aba84ce-c911-51e3-a783-262a2147d9d9','39:22','п.Янтарный'),
	 ('193f0cc1-5a44-52ab-a61c-50a4524085bf','39:23','Калининградский залив'),
	 ('66b375f0-ff0b-59d7-9071-f75a483ba72c','39:24','Полесский район.'),
	 ('2fa3d531-5f31-50de-890b-acf7722bb901','39:25','-'),
	 ('56e63e3a-6297-5585-9c49-044b00d35fb5','40:00','Условный кадастровый район'),
	 ('94dc59ff-32b0-5baf-a1df-701b344e3659','40:01','Бабынинский'),
	 ('e1ded32b-91af-564b-9726-1d2d85ab7d45','40:02','Барятинский'),
	 ('5aeca732-a481-5e42-b8d4-81b9f6b98991','40:03','Боровский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ec4f7dba-7f78-52e8-98b3-eeb42ad42b59','40:04','Дзержинский'),
	 ('4262bb1e-2fef-5a9e-832c-7546b60465cf','40:05','Думиничский'),
	 ('6b74dbd6-5431-5f7b-80e7-b5e9ce33ca27','40:06','Жиздринский'),
	 ('387a9a74-48e3-53a7-b123-2205277874b2','40:07','Жуковский'),
	 ('f9fda005-0db2-5b1d-85e6-d71145edc48e','40:08','Износковский'),
	 ('b9a0b299-2a43-5312-a216-5decfbd93c09','40:09','Кировский'),
	 ('e4653129-0f62-54c6-bf72-cb202ece9153','40:10','Козельский'),
	 ('2c50755c-54ed-540d-b927-dddc24f0c7c6','40:11','Куйбышевский'),
	 ('3b7d9f8e-49dd-561f-b9e1-6f99dd66363c','40:12','Людиновский'),
	 ('5aefc76f-56d8-5ec7-921b-d81dac87171d','40:13','Малоярославецкий');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a34e7545-8cdc-59a7-94ae-3fc959a49781','40:14','Медынский'),
	 ('8594e27d-1202-5a66-844a-6a14981b0103','40:15','Мещовский'),
	 ('0c437305-25f0-578f-9044-e91cc5487856','40:16','Мосальский'),
	 ('0db0b4b9-6aa3-565d-93f1-c7f58574820c','40:17','Перемышльский'),
	 ('4bf7a1c7-f3bb-5606-9fcd-651b489ccaa4','40:18','Спас-Деменский'),
	 ('5908aa1c-8379-5b36-9802-f9936fee8bc7','40:19','Сухиничский'),
	 ('05e86811-bf21-58e7-a1f3-0c75c0a1d85b','40:20','Тарусский'),
	 ('08f2bdcf-041f-52e7-923b-74be44d984ac','40:21','Ульяновский'),
	 ('7c1019a6-c9f0-5ed1-a7d7-845fa8948829','40:22','Ферзиковский'),
	 ('fbd5967d-0fda-51a7-8646-e85d15e0e9aa','40:23','Хвастовичский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4b919c4e-b146-5f7d-a22d-75243aa460be','40:24','Юхновский'),
	 ('dc351dd4-ba83-563b-9428-81768a76eac2','40:25','Пригородная зона Калуги'),
	 ('3696a535-1999-5353-bdef-6567f66e660c','40:26','Калуга'),
	 ('c8d2fe88-939c-5e31-a520-6035e09f86f2','40:27','Обнинск'),
	 ('61ee932c-724c-5258-95ab-2137cbd84bc9','40:28','Людиново'),
	 ('fb26e0c2-615a-52cf-be72-994a151fd8dd','40:29','Киров'),
	 ('4e2a0723-2429-53c3-8f56-cd7f50fa7c55','41:00','Условный кадастровый район'),
	 ('cd51572c-c446-581a-b94f-07f2f791b70b','41:01','Петропавловск-Камчатский'),
	 ('6d6a6148-bb96-5b4d-875d-e6292b5220d7','41:02','Вилючинский'),
	 ('7842d0ec-f069-532a-b97e-d166e4b44984','41:03','Алеутский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d233c858-acd7-5f22-bba0-eb01c6b78808','41:04','Быстринский'),
	 ('c9a00fa8-3a4a-589c-b5c4-976b27ef0380','41:05','Елизовский'),
	 ('f0bf4d97-dcd8-59b5-afbf-8140a3269619','41:06','Мильковский'),
	 ('6489424f-fbcc-5b73-a18f-c0712ad7ef17','41:07','Соболевский'),
	 ('71ab7919-e492-5af8-84a9-fbbe0cf4ab2f','41:08','Усть-Большерецкий'),
	 ('86e566a5-a6dc-55e8-bdaf-c56e9ebd8816','41:09','Усть-Камчатский'),
	 ('eba70a61-088c-526c-825b-c04f7356a468','42:00','Условный кадастровый район'),
	 ('8884d8f2-43f5-58d8-9fe7-80a5d4499b09','42:01','Беловский'),
	 ('214149c1-a563-502d-8a55-77e6de310a1c','42:02','Гурьевский'),
	 ('4e498ed6-ecd4-5448-a231-dcf292d2ba76','42:03','Ижморский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5b801a65-c5fd-5863-a6b2-39e916f89549','42:04','Кемеровский'),
	 ('3e18c4d0-f9c4-518b-b3c3-2051a830e7aa','42:05','Крапивинский'),
	 ('2f4adb19-7fba-5a1e-9aeb-f697e9aee1c8','42:06','Ленинск-Кузнецкий'),
	 ('8fd550af-434b-535d-bdf2-4dcdbb17074d','42:07','Мариинский'),
	 ('6eba088f-feb4-5e49-bbd7-ea22bc2a4d29','42:08','Междуреченский'),
	 ('eaacad47-4213-53d0-88bb-077aaf532cd3','42:09','Новокузнецкий'),
	 ('ff361445-0553-5785-b87d-ce67622cdd06','42:10','Прокопьевский'),
	 ('d57fc744-b4d7-59ca-84d7-eed1cb984363','42:11','Промышленновский'),
	 ('59bac2cc-c673-57dc-af75-d808052e97ba','42:12','Таштагольский'),
	 ('4a767e4b-05f5-5dbf-ad21-711b2a8091c7','42:13','Тисульский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('70693eaf-c57e-52d4-a98f-293de395a627','42:14','Топкинский'),
	 ('41fcade1-5389-5957-911b-80d7b4130d5a','42:15','Тяжинский'),
	 ('494f5b88-895a-5830-b932-500272226fd0','42:16','Чебулинский'),
	 ('11dd6e63-148f-5e2c-be89-6fcd2466bc71','42:17','Юргинский'),
	 ('eb2134a7-1581-5eb1-834c-532cad93c167','42:18','Яйский'),
	 ('6cc71b71-4a20-519b-a78c-917c07281231','42:19','Яшкинский'),
	 ('3f9da083-9200-589b-bf60-48aa74da634d','42:20','Анжеро-Судженск'),
	 ('fff86807-0541-55cb-a040-8352cbd6a5b2','42:21','Белово'),
	 ('ff063481-3d66-564d-baeb-a214d046d9ed','42:22','Березовский'),
	 ('4a978214-e9f7-538e-a92f-a7ac68f36af7','42:23','Гуpьевск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('17289cb1-ac32-54b4-a9d0-fc75690d4598','42:24','Кемерово'),
	 ('03d3b6ca-b4e9-5aba-a587-328286657e2e','42:25','Киселевск'),
	 ('d5e1df2f-aee2-5e19-b435-8c6bc06d53b0','42:26','Ленинск-Кузнецкий'),
	 ('e558a160-49c7-5a09-b366-28ac3fbd83fc','42:27','Маpиинск'),
	 ('4817ca3e-4561-5010-95bb-cb90df7ec4ab','42:28','Междуреченск'),
	 ('aedac252-70b2-571a-a458-d91138585b35','42:29','Мыски'),
	 ('fd2e3364-49a9-58dc-bceb-03e4fbf8f1f3','42:30','Новокузнецк'),
	 ('39af0807-673e-59ae-932d-e4ba97e1d930','42:31','Осинники'),
	 ('691f4e00-1fe4-5012-ac5f-19b847311b20','42:32','Прокопьевск'),
	 ('50a45980-4f3b-5601-866b-0748eb118b0b','42:33','Тайга');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('710a0511-9e7e-58cf-aec0-b242f44b81e0','42:34','Таштагол'),
	 ('3304364b-045e-56d8-9b80-5d4fc1d6ebc3','42:35','Топки'),
	 ('771a788d-5efc-59f5-9408-390628dba8b0','42:36','Юрга'),
	 ('1dbe3ae2-f05a-5cb8-a871-e0efb659fafd','42:37','Калтан'),
	 ('46a96ebe-1d1b-52b1-a664-0389874e40a3','42:38','Полысаево'),
	 ('81013b77-249a-54f5-80bb-cf156c8f921a','42:39','Салаир'),
	 ('f77d4f29-6e3a-5eaf-9a0f-b5646f778809','43:00','Условный кадастровый район'),
	 ('467902d1-1a61-5a17-9588-ee09fd5f7ccd','43:01','Арбажский'),
	 ('5b257fec-c017-554c-a757-e0a49f3437b7','43:02','Афанасьевский'),
	 ('60dfbbb8-37fe-5d02-b229-6e6c082675e0','43:03','Белохолуницкий');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7be62e84-99dc-5b13-b0ce-3f721dbfbd5b','43:04','Богородский'),
	 ('bb95b75d-dcf7-504e-b3ee-83ab518f25ea','43:05','Верхнекамский'),
	 ('191a6607-f3bc-5688-8e34-e4a2dd44b28e','43:06','Верхошижемский'),
	 ('6ce2ba91-7125-5e4c-b598-59ca1354008b','43:07','Вятско-Полянский районный'),
	 ('383863ce-c0af-582e-a57d-45243937ee43','43:08','Даровский'),
	 ('02abe483-3b44-57c4-9aa0-f547a2f97d0d','43:09','Зуевский'),
	 ('fa1429f4-d3ee-5a88-8363-fc4e66dec2be','43:10','Кикнурский'),
	 ('67e11fe0-fbe6-576e-b948-557711d7fdfc','43:11','Кильмезский'),
	 ('497f8423-3d8e-57c2-849e-974b45b685c2','43:12','Кирово-Чепецкий районный'),
	 ('231fbaeb-2c44-5689-8941-b709febf8f16','43:13','Котельничский районный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0938b2fc-a23f-5986-97c4-3e0dac7dcee9','43:14','Куменский'),
	 ('e59b629c-d6a4-5a43-a09f-9007d07002e3','43:15','Лебяжский'),
	 ('790a4c67-7ad1-5d06-a4ea-55797f57fa54','43:16','Лузский'),
	 ('1b3d1572-e310-5f3f-b555-399e5a6a5630','43:17','Малмыжский'),
	 ('755fb6bd-1152-50a7-9ab7-5a430f08fdc1','43:18','Мурашинский'),
	 ('0842b516-9c19-5a9b-82a4-95f1460f6de9','43:19','Нагорский'),
	 ('da86ded4-5249-51d2-a480-cb32a66ad390','43:20','Немский'),
	 ('d1b5bfdc-a056-547f-ae4b-d75182161962','43:21','Нолинский'),
	 ('ba26f1c8-31da-5f4a-ab75-94f8894f6a19','43:22','Омутнинский'),
	 ('3c9b4f51-2837-53bd-8434-0c3ce024d195','43:23','Опаринский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b90e7d8d-2195-59f3-9342-6a70df3b10b1','43:24','Оричевский'),
	 ('36149d62-b276-57f4-bd17-c229198a8096','43:25','Орловский'),
	 ('cd6f1dc7-80f2-5e0d-961a-4c3b6872c277','43:26','Пижанский'),
	 ('12640142-a4cd-500b-a391-b8ee084d160f','43:27','Подосиновский'),
	 ('99954dc9-1bfc-50bb-833b-e7157f0b0379','43:28','Санчурский'),
	 ('be7a6254-25c8-5d0c-89d6-ada8d426befc','43:29','Свечинский'),
	 ('fa4069f6-485f-5fcd-b7b5-ba83a6bbfe09','43:30','Слободской районный'),
	 ('903c9060-570c-51bc-abe7-58944e7498ea','43:31','Советский'),
	 ('cd293463-b965-57d5-a1a1-501dc1d07a1a','43:32','Сунский'),
	 ('77b8289a-e89e-59e1-82cc-eaf13cc2576d','43:33','Тужинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('822c7dd5-161b-585b-a6b6-a34c52c89a89','43:34','Унинский'),
	 ('0ea4b3fc-69cc-548d-a472-4532d6ddb907','43:35','Уржумский'),
	 ('c2728f2b-f02e-514f-bd01-ac90c267fe16','43:36','Фаленский'),
	 ('ee653c6c-4ea4-50bd-86a0-923d420fe2de','43:37','Шабалинский'),
	 ('27e0cf32-a826-5902-aa68-67970164fb20','43:38','Юрьянский'),
	 ('6ea4a89c-82c6-58fa-bef2-d8bbb6e91511','43:39','Яранский'),
	 ('b7833fb0-4605-52ee-8ace-dd55ced921ab','43:40','Кировский городской'),
	 ('bf50c8b0-e1d3-5334-a4ad-6623f3930196','43:41','Вятско- Полянский городской'),
	 ('1aa29be1-bde5-5053-a6ab-4ab6f521c12c','43:42','Кирово-Чепецский городской'),
	 ('48ffbfb1-b18d-54e7-8f1e-d5aeb34c710b','43:43','Котельничский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('871fdff8-2a0d-5ef6-ba88-5f819d6cbf4d','43:44','Слободской городской'),
	 ('18eb76cd-52ee-5b84-8371-6e459e9a2823','44:00','Условный кадастровый район'),
	 ('88e5c72f-fd60-5fdc-b91c-5e4e071760dd','44:01','Антроповский'),
	 ('aa50a7fe-071f-5e77-ae28-9b2e87deda57','44:02','Буйский'),
	 ('1af65baa-4fbe-5e55-aaa1-ad176847e896','44:03','Вохомский'),
	 ('28a11926-8332-50c1-a929-bb710d30cab8','44:04','Галичский'),
	 ('4dcc43b6-4c57-5959-b6dc-bb838e5fb928','44:05','Кадыйский'),
	 ('032b0511-6ec2-50a5-bfde-8d49c27dcebb','44:06','Кологривский'),
	 ('10a81408-8562-5b60-b43c-63e4224e8c01','44:07','Костромской'),
	 ('1a29c628-dfc7-518b-9290-500010af818b','44:08','Красносельский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('34b3ec66-7fd6-5af4-84e2-1c762c8c741f','44:09','Макарьевский'),
	 ('2dfac797-19a7-53e5-95a0-a453d3777d18','44:10','Мантуровский'),
	 ('3dc829ee-56e2-5299-98de-c78ff9901ac4','44:11','Межевской'),
	 ('cb2f6e4d-bb84-5014-b6fe-80ce6ecc12bd','44:12','Нейский'),
	 ('3131445c-6fda-5628-b31e-2172e3956ccb','44:13','Нерехтский'),
	 ('bcc2ee70-c226-5ba5-a35d-1beb19c0eb99','44:14','Октябрьский'),
	 ('9f505177-290d-5546-9d01-c0cc054b0838','44:15','Островский'),
	 ('eb4f4a4f-b172-543b-8688-b386eb11f733','44:16','Павинский'),
	 ('e499ca12-7736-578e-bd18-6444d9d11cb5','44:17','Парфеньевский'),
	 ('59e4882c-f9ea-5ac4-8feb-2c2b49bd83ca','44:18','Поназыревский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('85eb05f1-e0d3-5aa8-b834-c5160459c3db','44:19','Пыщугский'),
	 ('0d2fa644-f723-515b-a5b2-c5f5a4079e65','44:20','Солигаличский'),
	 ('1464a96d-40f6-5a9d-98eb-6917cf1833d9','44:21','Судиславский'),
	 ('adf80814-cfe3-5517-ab27-20303163e15f','44:22','Сусанинский'),
	 ('a8533dc4-a8cf-58a9-9637-6f0df7073204','44:23','Чухломский'),
	 ('43b66635-960f-5be0-bd30-708e9c878a8c','44:24','Шарьинский'),
	 ('1af39b2d-cf47-5a98-936c-eaa4632a18df','44:25','г. Буй'),
	 ('254fae25-0b66-5b51-a28f-0ce78b8bc632','44:26','г. Галич'),
	 ('1dbd67bf-407d-5763-8d42-a110c352841d','44:27','г. Кострома'),
	 ('800c6abd-5b7a-55a3-b8d9-cc631d9de5e4','44:28','г. Мантурово');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8bc54621-bf90-5ac7-ac2f-b8ea883dd6c3','44:31','г. Шарья'),
	 ('5cc6bc09-aa06-526d-af3f-7d4af45c2f03','44:32','г. Волгореченск'),
	 ('4246cdf4-a1f1-5cff-a71f-63dd3cdeaa2b','45:00','Условный кадастровый район'),
	 ('34d8ede7-e2d3-5de0-9e65-39a2ee24c97d','45:01','Альменевский'),
	 ('05cfbb95-da4e-5ebc-8c9a-890bfa33f82e','45:02','Белозерский'),
	 ('3ae56a9e-2667-5b1b-95e3-ece8378aabd3','45:03','Варгашинский'),
	 ('dd78b5fa-2c8a-5718-91eb-43f7af41112c','45:04','Далматовский'),
	 ('432cf9ad-4ecc-51f7-a2bc-6c29cd092707','45:05','Звериноголовский'),
	 ('ed0f4922-0601-5ece-8668-c52cb45c25f2','45:06','Каргапольский'),
	 ('6dbcc935-ea63-599d-9234-a12cfdedbbed','45:07','Катайский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d2f41460-2bee-5c20-8c07-a5f842575328','45:08','Кетовский'),
	 ('144ffbc8-296c-5ba0-a264-d756038ed8d1','45:09','Куртамышский'),
	 ('18bbdaf4-08be-5b62-ac61-01cd7796f512','45:10','Лебяжьевский'),
	 ('554f2086-0282-5f6f-b3f9-c28b66e5ce8c','45:11','Макушинский'),
	 ('c281372b-9cb6-5a81-9476-f50329b9b3c1','45:12','Мишкинский'),
	 ('5eaa6c57-ba79-5fd6-ac69-d5643d0103bd','45:13','Мокроусовский'),
	 ('53ff3deb-24e5-581a-9a14-e66dbd56968f','45:14','Петуховский'),
	 ('3894f77a-9b40-5980-bae7-7981d2f1382c','45:15','Половинский'),
	 ('fdaac642-aad3-57ea-b33d-83776ef3d365','45:16','Притобольный'),
	 ('7fd22cd6-26d9-5a99-973c-192fd7077dd2','45:17','Сафакулевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9f60353d-ce44-5a55-8d23-a425949ab285','45:18','Целинный'),
	 ('759912e4-01f5-5e86-a307-46ea36dd472c','45:19','Частоозерский'),
	 ('6680a8fa-6862-59e0-9b7a-a52d6753dbfa','45:20','Шадринский'),
	 ('6844d587-6f84-51b8-a762-c3d8e595d536','45:21','Шатровский'),
	 ('ae7064c5-fdd1-5922-bf14-129bd44de283','45:22','Шумихинский'),
	 ('40d459c9-2b80-5c2e-affb-2663c9ce2958','45:23','Щучанский'),
	 ('c973b76e-3697-5e9a-9d2d-e6e5e80e2bbe','45:24','Юргамышский'),
	 ('8a30bad7-a966-5ea2-ae3c-292b48e75a24','45:25','г. Курган'),
	 ('ffd67ec4-b6fd-5c8a-9321-6bd9953f192a','45:26','г. Шадринск'),
	 ('9dfbe8eb-763d-504c-90b1-ee6d61befdef','46:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d35bcc6b-8950-5c09-b570-0f40cc1b29c3','46:01','Беловский'),
	 ('eeb83c7d-90f3-5da0-94a6-77df4a2d85c9','46:02','Большесолдатский'),
	 ('c4f46c4a-8852-5269-ae6c-2eab83258963','46:03','Глушковский'),
	 ('2501024d-3ac2-56bc-affb-f5cdb55c25f9','46:04','Горшеченский'),
	 ('9bb3e5d7-ee2f-5040-be55-dfd9d9b63e4b','46:05','Дмитриевский'),
	 ('11631894-d3b2-5cf4-8ac2-1483d4a00a53','46:06','Железногорский'),
	 ('5f6a092d-0467-578d-983f-695bc3bcfa17','46:07','Золотухинский'),
	 ('a6a0ce7b-0c40-5f51-a3f8-56359bb8e05a','46:08','Касторенский'),
	 ('4225086e-a943-5825-84bf-e2cf0b318124','46:09','Конышевский'),
	 ('d779018a-9dea-5d09-b5d2-d96756455fbb','46:10','Кореневский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('944759d2-fac2-5dc1-88ff-d99e85539b27','46:11','Курский'),
	 ('c68e2380-5bd0-5e97-9c19-4af88e77ce95','46:12','Курчатовский'),
	 ('c817f985-7cec-5297-a683-224b559460ce','46:13','Льговский'),
	 ('0b56cc9f-da9d-5178-b220-dd6ff9eeda4a','46:14','Мантуровский'),
	 ('f70c83a6-9d3e-5f74-9355-33f4683a0ae8','46:15','Медвенский'),
	 ('185b509c-2ef2-5dcb-81ff-6299f9e77abe','46:16','Обоянский'),
	 ('35b6a366-c878-5a93-8940-ab09e396f874','46:17','Октябрьский'),
	 ('58f5d281-1177-54cd-94f6-98cbb2f0277f','46:18','Поныровский'),
	 ('19e9a6d0-ec87-5fba-8f99-0093baa9a505','46:19','Пристенский'),
	 ('f6483e8f-135e-5be4-bcde-c305adb8c39c','46:20','Рыльский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ee8d264b-76c2-5550-84ce-ec9e44c95bc3','46:21','Советский'),
	 ('f9291984-ff00-5967-94b6-b023d62505b5','46:22','Солнцевский'),
	 ('3d3d1f65-96bd-542a-b2e0-f74c5c736e26','46:23','Суджанский'),
	 ('bfbeae9a-f63f-50a1-933f-5b74b1378242','46:24','Тимский'),
	 ('c0f2aeeb-5679-5be0-976a-dea39c8c1744','46:25','Фатежский'),
	 ('da7e3952-d60a-593e-8a24-e8b20a82bdd9','46:26','Хомутовский'),
	 ('ee3ca678-355e-5926-a28c-d841f6dc7650','46:27','Черемисиновский'),
	 ('7c75a940-1f70-5efa-933f-14b029a64bef','46:28','Щигровский'),
	 ('3d4aa219-c7d7-597c-8acf-5260b123a33c','46:29','г. Курск'),
	 ('25a53697-5dd2-5186-ac27-2e3f331eccd5','46:30','г. Железногорск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('28f52cf9-77ff-5a60-afec-327abcb7b5e6','46:31','г. Куpчатов'),
	 ('c574c554-12e6-5961-bf8e-903188995c0b','46:32','г. Льгов'),
	 ('5901e187-f57d-593e-8a40-fd232b2d9e2d','46:33','г. Щигры'),
	 ('e55959ad-90bb-53be-9bf2-2c9aacffbec1','47:00','Условный кадастровый район'),
	 ('bef1908c-b581-5017-bea3-ca78a14d858c','47:01','Выборгский'),
	 ('5a67e9f3-29a1-518f-a12b-e136e23124c0','47:02','г. Светогорск'),
	 ('a234bffb-05ee-5049-83c7-d9d7961979b2','47:03','Приозерский'),
	 ('ec4046a7-9875-56b6-82e6-dffbdbb83c70','47:04','пос. Кузнечное'),
	 ('a3285f09-601a-53cf-8ea4-51a8f979e53e','47:05','Подпорожский'),
	 ('c116bc11-e1bb-59e1-b590-1a854f7d2291','47:06','Лодейнопольский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('18916ab7-7ac0-5156-b134-b96c53a28054','47:07','Всеволожский'),
	 ('39c261a9-0073-5825-b706-faef9baceb85','47:08','г. Сертолово'),
	 ('c03cde5c-9e26-542f-8587-b80edc5cb5a0','47:09','Колтушская волость'),
	 ('5113ad5c-3043-5015-b7af-5e6a96ab0fc7','47:10','Волховский'),
	 ('7eac055f-9295-514d-9e9d-87ba23067d6a','47:11','г. Новая Ладога'),
	 ('c9920ae5-ba28-5050-9347-d4b164953760','47:12','г. Волхов'),
	 ('775df0de-770d-5c8c-af27-fe4c3ec08fba','47:13','Тихвинский'),
	 ('9790dd16-e831-5fcf-9843-a76ff9e3423f','47:14','Ломоносовский'),
	 ('14e24521-d76e-576d-bce1-5fc46c569e79','47:15','г. Сосновый Бор'),
	 ('0baeb5aa-6dc3-566e-be27-cd2547915a3d','47:16','Кировский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1a7f5560-1af1-5bf9-968c-7568c8d1412f','47:17','г. Шлиссельбург'),
	 ('d4e46709-e199-58ed-8693-9be66f39ec65','47:18','Бокситогорский'),
	 ('fafd0d4e-ad5a-5c23-b56d-12df622a4dda','47:19','г. Пикалево'),
	 ('f2f9e1d0-8d17-5023-8c7f-a6399b315c46','47:20','Кингисеппский'),
	 ('083e38e4-5662-5023-a87b-a8ccd51c784f','47:21','г. Ивангород'),
	 ('764f1282-35df-57b4-85b1-e24d48669fd2','47:22','Волосовский'),
	 ('590abc90-cbab-5974-ad8f-7d2703bde6d0','47:23','Гатчинский'),
	 ('a0f4782a-deab-5c0f-aebe-1129cb5436f4','47:24','г. Коммунар'),
	 ('def2174c-871a-5ba2-8094-13813a9155c8','47:25','г. Гатчина'),
	 ('b799bd34-7a0e-5e60-80bc-133bc1b630df','47:26','Тосненский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('bdc47d29-72fb-50a9-adb4-2340074e8f87','47:27','Киришский'),
	 ('f771de0e-b208-5f19-8037-3be32749c601','47:28','Сланцевский'),
	 ('f2a9e5ab-46e2-5148-b6b5-e6eb45ecfd42','47:29','Лужский'),
	 ('c8a10641-ba73-50e6-9715-cd81517e9e53','47:30','Морской'),
	 ('935e21b3-19cd-5b1c-88ea-a2194a32f136','48:00','Условный кадастровый район'),
	 ('83b5e635-0720-5b4b-9b63-aba6158b3c9f','48:01','Воловский'),
	 ('5657acc1-48a5-5974-8838-1a0812e3fff3','48:02','Грязинский'),
	 ('bc57e63b-51fd-5249-8a74-ac943228ab98','48:03','Данковский'),
	 ('abe32aa8-6d4f-513c-bd97-b0e8852331dc','48:04','Добринский'),
	 ('3fc9e9ac-482d-5b63-8d36-0bc1cda7288e','48:05','Добровский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('067c5369-1cbf-5e42-a3b1-bd6cfdf78296','48:06','Долгоруковский'),
	 ('c51ccf53-849d-5d8f-91f3-22ea16dcffce','48:07','Елецкий'),
	 ('5ebb07ed-d80b-517d-992c-01efa811015f','48:08','Задонский'),
	 ('d5aa9b8c-8db0-53e0-85d9-9a1ec2e9248c','48:09','Измалковский'),
	 ('fca171ed-107a-5d1d-9b32-45622f8a2271','48:10','Краснинский'),
	 ('dd07ef7b-0005-56d9-9a63-3de9eec9e3f7','48:11','Лебедянский'),
	 ('9f2974d7-575c-5f5c-9b83-f48f048db5f5','48:12','Лев-Толстовский'),
	 ('0e4b6ee4-7eb1-5d7e-a436-48c17e3f5253','48:13','Липецкий'),
	 ('6b872513-7d20-5336-bdbb-732df06554e3','48:14','Становлянский'),
	 ('cfc3748e-399d-52a7-bc70-aef72beae63e','48:15','Тербунский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('226c34ea-c5d8-5275-bfe0-a22fa1c96031','48:16','Усманский'),
	 ('9a5555df-55ea-5e00-ab5b-2fba3cfcd0ee','48:17','Хлевенский'),
	 ('c5125f36-534d-5a3e-86de-a2fd28e726d1','48:18','Чаплыгинский'),
	 ('d59c29a9-06e2-53cc-8427-d82d4a4c2412','48:19','г. Елец'),
	 ('7c354b43-0521-51a1-9888-22fd620b99c4','48:20','г. Липецк'),
	 ('af19f5ef-e03e-5fd2-8c0a-d71667d8622b','49:00','Условный кадастровый район'),
	 ('7fcf7a21-011f-50c3-9609-1fbd6ff92ebb','49:01','Ольский'),
	 ('42b9d472-ce42-5824-9353-52211994d5b6','49:02','Омсукчанский'),
	 ('dfe72158-d34a-5452-aacc-92ca8fba0318','49:03','Северо-Эвенский'),
	 ('a2e8d197-89b1-5a55-9ebe-df86a549a33b','49:04','Среднеканский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('013629b5-eb5c-575f-81c4-fe68f27885cc','49:05','Сусуманский'),
	 ('75824ad4-a42a-5438-b279-a610e91016ac','49:06','Тенькинский'),
	 ('3719d5cd-8d6d-5aa7-8717-d79dfde4daa5','49:07','Хасынский'),
	 ('6a2b1416-c417-5107-aa93-405fe0d37312','49:08','Ягоднинский'),
	 ('d2fd4b32-08a5-51a5-98d0-5e361253bae3','49:09','Магаданский городской'),
	 ('e399b496-92d5-5a64-8d74-7bef63ec756b','49:10','Арманский'),
	 ('03fae6a2-2fb8-5971-b481-0aa3968f84ef','50:00','Условный кадастровый район'),
	 ('56698572-ae3d-5cf6-b69a-15633ffd2a09','50:01','Талдомский'),
	 ('68a5c210-a0b6-5e21-bb0a-87e1e4a6a9fc','50:02','Лотошинский'),
	 ('4ac71f33-598f-52e1-b246-9023f1909f97','50:03','Клинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2e5e419d-87ce-5917-ab54-9729401785da','50:04','Дмитровский'),
	 ('64c0378c-1bfb-5e3c-9690-c10fcd243c92','50:05','Сергиево-Посадский'),
	 ('71378547-c8c4-5b7a-bb29-a5efdaf470f3','50:06','Шаховской'),
	 ('879e11da-978e-557b-96e3-0e0c695b4ad3','50:07','Волоколамский'),
	 ('8a90a3a8-1326-5f99-83b8-b76936561ec1','50:08','Истринский'),
	 ('cdf41742-5d16-5559-89b7-3c9e6bb5f601','50:09','Солнечногорский'),
	 ('cb6658cf-92ba-5df2-9943-35a21c569a13','50:10','Химкинский'),
	 ('60ee70d6-92a8-50f9-af98-efa810e75491','50:11','Красногорский'),
	 ('69b9e85e-a26f-59ca-92f5-8cb1368ce41d','50:12','Мытищинский'),
	 ('dc79577d-6a85-5752-8c4b-e07bfe723fb0','50:13','Пушкинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4e140f53-f055-54c1-86ae-833c96d5f594','50:14','Щелковский'),
	 ('da74508e-7735-5ded-9ff3-cf9caa37d158','50:15','Балашихинский'),
	 ('f13b7ef9-774e-590b-9f0a-fee22484e0e2','50:16','Ногинский'),
	 ('94ed8f10-fa3c-5788-918e-42c7f00588f0','50:17','Павлово-Посадский'),
	 ('994df232-5f69-5d3a-b505-4245b0fc8e01','50:18','Можайский'),
	 ('1fed4c21-74c4-57de-a5a7-a8d1f465abd6','50:19','Рузский'),
	 ('24b54262-8cbd-58ce-9261-92e08f08b1db','50:20','Одинцовский'),
	 ('28aa8788-1264-5844-a414-3e776c65fc79','50:21','Ленинский'),
	 ('76712442-5c7e-530c-ab4b-02ec5dd3634b','50:22','Люберецкий'),
	 ('1245f374-2338-5d86-89db-d2cea3d9c289','50:23','Раменский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cc5ff4ba-2987-5b0d-99d3-a60f80ed206a','50:24','Орехово-Зуевский'),
	 ('d63708f0-ae23-5f13-aa89-6f350331aa56','50:25','Шатурский'),
	 ('bdc791f7-b278-5d43-8018-c2230336b97e','50:26','Наро-Фоминский'),
	 ('06040c19-09af-5d86-b4ad-9fa853ceb4b9','50:27','Подольский'),
	 ('7e4c9301-971e-5914-ab86-cb2c5a7f94cf','50:28','Домодедовский'),
	 ('e58d9e65-32f3-5d02-895d-6983398c56dc','50:29','Воскресенский'),
	 ('5a88ff45-ce4d-5115-8cd8-9d7911726aa2','50:30','Егорьевский'),
	 ('11104e7a-9f1c-59f2-a564-949181b40630','50:31','Чеховский'),
	 ('e08a25ef-f275-56a4-89b9-e08712f40083','50:32','Серпуховский'),
	 ('8bdad4ca-d6bf-5865-9054-1c6f739c6a5e','50:33','Ступинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('3317dd7c-1c31-5523-9e76-ed72f4c88eb2','50:34','Коломенский'),
	 ('168a791d-81de-5208-8767-60c4243da9d4','50:35','Луховицкий'),
	 ('932e8275-2fdd-52f8-be79-d89dfdd7ca69','50:36','Озерский'),
	 ('0799f23d-d70c-5fe8-8d9c-8b0517601829','50:37','Каширский'),
	 ('8a9ff504-23d7-5467-b681-a17a5e56cc95','50:38','Зарайский'),
	 ('98eca593-811e-5a09-a0e9-91fe32a378b4','50:39','Серебряно-Прудский'),
	 ('f6fc53c9-39ff-5b78-85ae-3502fd5ed630','50:40','Дубна'),
	 ('94a0cd11-c2f9-55a3-b31c-16f2c3a4dd49','50:41','Лобня'),
	 ('39d70555-86cc-5e9a-9d3b-b3c21c4c969d','50:42','Долгопрудный'),
	 ('8233a164-64ae-540f-a4c1-0d9ca6dd520b','50:43','Ивантеевка');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('06a8468f-14e1-53e8-aafd-69e5cb2d13e0','50:44','Фрязино'),
	 ('10ed3ae4-da1f-5ea9-9a52-853ad7d043f1','50:45','Королев'),
	 ('40986a3c-c35d-5870-b913-d11405db202e','50:46','Электросталь'),
	 ('3e108fce-142d-5b02-a11e-444790a92544','50:47','Орехово-Зуево'),
	 ('bdb0cdec-7483-5fa4-9eb5-bbf198a09f81','50:48','Реутов'),
	 ('31d41954-4fb4-5440-ba44-f115d937f808','50:49','Звенигород'),
	 ('37bd1e40-8c6d-5b92-9646-39074c7f2493','50:50','Железнодорожный'),
	 ('eb8f3b8d-1983-553d-98db-55e722064774','50:51','Краснознаменск'),
	 ('83c971ce-0eee-5058-a4c9-d8bda975a653','50:52','Жуковский'),
	 ('b20ef9fa-7979-56d0-b263-fffc3520a260','50:53','Лыткарино');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8065561a-6fd5-50a2-8e03-1b4ea043b0fd','50:54','г. Троицк'),
	 ('feea44d0-0410-5fc3-b01a-0eabc6f84aea','50:55','Подольск'),
	 ('c3ebe4b5-0564-5b62-ad09-9ea35f29fc86','50:56','Климовск'),
	 ('49111c9d-bf93-55ad-8890-2adcc16cfb1e','50:57','Коломна'),
	 ('60595eb2-71e1-5277-b025-6dc5d0b488f2','50:58','Серпухов'),
	 ('6bd42fc2-7bc9-5c6f-b0c6-f79c97fa8386','50:59','Протвино'),
	 ('b4461341-6dd3-57c0-aa6c-8c78207d216b','50:60','Пущино'),
	 ('3430d8f1-76f1-5b34-9e48-9101e0b9fe92','50:61','г. Щербинка'),
	 ('0887b32e-b367-5fc2-8f86-7ab52394a261','50:62','Бронницы'),
	 ('84b8d37b-ed4f-5cb0-aca7-324196f344bc','50:64','Дзержинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('efda7386-3bf1-5e4c-b54c-cec8aade81a1','50:65','Красноармейск'),
	 ('8a786cbb-7041-5321-8075-90df9623df4f','51:00','Условный кадастровый район'),
	 ('425ea10c-9eae-5e07-b545-d53c3e7db989','51:01','Кольский'),
	 ('7ac0c8b0-e472-5afe-8870-7dbe5e10cf95','51:02','Ловозерский'),
	 ('53434dea-d1c8-59a5-82a6-029080379e8c','51:03','Печенгский'),
	 ('97b5161a-12f9-5399-915f-213784891462','51:04','Терский'),
	 ('95c3eac5-47ff-5ca6-9971-2c0d376984ae','51:05','Ковдорский'),
	 ('35dfcb27-d69d-5faa-b3a0-9fc3b26c068a','51:06','ЗАТО Североморск'),
	 ('06646b66-9f09-5c54-9526-3362d54bd309','53:17','Старорусский'),
	 ('2afa3718-22ff-51d6-a71a-3313dff592b6','51:07','Территория, подведомственная ЗАТО Североморск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a373fa3c-18c7-5bee-8e41-d40350c62447','51:08','ЗАТО Полярный'),
	 ('243d4001-4f60-5196-bba4-3ef6e613e4f2','51:09','Территория, подведомственная ЗАТО Полярный'),
	 ('11bc3d4c-4461-5031-bcd4-ff2bba5b92bb','51:10','г. Мончегорск'),
	 ('21ab9511-8c86-5755-8910-f4e8f0907e8f','51:11','Территория, подведомственная МО г. Мончегорск'),
	 ('e195c016-8669-5a7f-b63d-150b57791af4','51:12','г. Оленегорск'),
	 ('2897f5f4-90f7-5fb6-9eb9-345fc206127e','51:13','Территория, подведомственная МО г. Оленегорск'),
	 ('d05e26c9-92c3-5b7e-95ca-76acb9c72af6','51:14','г. Апатиты'),
	 ('84633749-b07f-563c-91a1-e7d5c8a020b9','51:15','Территория, подведомственная МО г. Апатиты'),
	 ('1fda75f7-0ee4-5e8a-9c04-d65e8199b8a7','51:16','г. Кировск'),
	 ('ef0a1d50-c76b-5b4c-b9c2-997f1a4f01a3','51:17','Территория, подведомственная МО г. Кировск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('e6ddf88f-ebd2-52bc-85bb-5c54cf855a91','51:18','г. Кандалакша'),
	 ('bb430fd2-e49c-51de-b548-f26d71d36d04','51:19','Территория, подведомственная МО г. Кандалакша'),
	 ('0e097746-9477-5d13-8ece-1f6de3cc595a','51:20','г. Мурманск'),
	 ('8fb51f18-3534-51cb-a5aa-f51d4866f20f','51:21','ЗАТО Снежногорск'),
	 ('63167c73-a732-5975-b1d5-74fbdf7e915e','51:23','ЗАТО Скалистый'),
	 ('9210e659-6278-569a-895b-9f9de672938f','51:25','ЗАТО Островной'),
	 ('26f27bde-911a-552d-9206-bf26db6d728c','51:27','ЗАТО Заозерск'),
	 ('fbcf07d4-c56a-5f9f-8b29-f51c5b4d8f3b','51:28','г. Полярные Зори'),
	 ('3a1ce9cc-85da-5bf4-9ae6-6e6a5f917d01','51:29','Территория, подведомственная МО г. Полярные Зори'),
	 ('d5473cb5-ef07-5242-a8ea-7a3288393feb','51:30','ЗАТО Видяево');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9ef499c4-af97-546b-ab46-42e0599760f3','52:00','Условный кадастровый район'),
	 ('ecae1e34-22aa-59b9-90ae-9a5dc2de3440','52:01','Ветлужский'),
	 ('96ce6022-f8c1-571a-9e2d-3aaa2581a00d','52:02','Тоншаевский'),
	 ('e7e13a9d-3b65-5eb6-b669-932c541b5812','52:03','Шахунский'),
	 ('e68b314f-eb31-5088-a063-001b24a12353','52:04','Тонкинский'),
	 ('3637fed9-726a-5717-9ae3-96c7559e474e','52:05','Уренский'),
	 ('89e75ba7-32ec-5087-b94a-43e6423b0b2e','52:06','Варнавинский'),
	 ('0a315d0e-15a6-5cf2-968e-7f1bf50875c6','52:07','Сокольский'),
	 ('b58f8c16-bcde-5312-b1bc-0b96e09de1dc','52:08','Ковернинский'),
	 ('144088e3-3da8-5d7f-b138-c217c78585c2','52:09','Краснобаковский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6966d937-22d1-5a5d-9682-96a840494c79','52:10','Шарангский'),
	 ('418b6dfe-a113-5be0-8676-78956c2ff4b3','52:11','Воскресенский'),
	 ('794be1f9-51a5-5647-b1d8-437886db25e4','52:12','Семеновский'),
	 ('37db44f4-a1e2-557e-b770-7445384ce0fb','52:13','Чкаловский'),
	 ('4140746f-1758-5043-a5c2-9c1155e5415a','52:15','Городецкий'),
	 ('802e7164-0dae-5457-985e-cbf4063c40b2','52:16','Балахнинский городской'),
	 ('3c57c108-96fc-557d-864c-59ee9ded6f54','52:17','Балахнинский'),
	 ('f7ae10c8-ed56-5970-9a8a-88149344594b','52:18','г. Н. Новгород'),
	 ('c33f5fe4-d10c-545d-b56a-2044d8c128a9','52:19','Борский городской'),
	 ('8cd3de0f-4f92-56eb-8ab1-f5967a8da2ad','52:20','Борский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b4f15a5d-dd5c-59a2-b1e4-7467758aa462','52:21','Дзержинский'),
	 ('3daa2738-8078-5219-b254-f48fe0d9fff9','52:22','Володарский'),
	 ('b5495b7f-3213-5ef1-a4a4-d2c4eb75d535','52:23','Богородский городской'),
	 ('60539c37-ecc3-5458-babb-e8043047dc9a','52:24','Богородский'),
	 ('b2f9c031-8008-570f-a417-5edc9d0d5a04','52:25','Кстовский городской'),
	 ('5f0cb1fd-1a12-5b5a-8d0e-67ad4e6c1f07','52:26','Кстовский'),
	 ('6d289be1-f7cf-5c19-8aac-8f98c61842af','52:27','Лысковский'),
	 ('d9d9f50e-e98c-502b-b369-5c08ebc60027','52:28','Воротынский'),
	 ('643537ff-5dc8-5ddf-a427-d46f176398c6','52:29','Спасский'),
	 ('e610398d-5361-5960-9d8a-4b840a91aff5','52:30','Княгининский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('bdeb619e-b98d-50a9-b5d1-55e91fc470dc','52:31','Большемурашкинский'),
	 ('e8cfca08-c026-501d-bd04-f80b6aaf95a6','52:32','Дальнеконстантиновский'),
	 ('5dbed9b5-6531-5507-8ce0-679fb5330316','52:33','Павловский городской'),
	 ('7b53777c-3454-5477-87c7-d0194e242e2a','52:34','Павловский'),
	 ('a25a1053-74b0-5486-8a97-edb4d72ddf51','52:35','Сосновский'),
	 ('28de2ee8-d3de-53c6-a5b8-f84a5d6293ad','52:36','Вачский'),
	 ('c39ca956-bd2a-556b-970b-ebc5d6269029','52:37','Навашинский'),
	 ('cc5d89ce-593a-5719-a576-791fb8d88281','52:38','Кулебакский городской'),
	 ('9ef699e7-795e-5e41-af0b-6bf92db616be','52:39','Кулебакский'),
	 ('13474701-40fc-5c87-acdb-99da2be6ea25','52:40','Арзамасский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5d05b6de-f3c2-5153-9c7e-9e15d10e605c','52:41','Арзамасский'),
	 ('95c0c004-42ff-5f3f-9da0-e6b4c46b77fe','52:42','Вадский'),
	 ('a42868c4-8698-580e-8122-1660f6e32e32','52:43','Перевозский'),
	 ('2a95758c-634f-56fa-b070-1d98706f2fc9','52:44','Бутурлинский'),
	 ('57997965-554b-5fd0-928f-dab947671f7d','52:45','Сергачский'),
	 ('7caab995-f680-51a7-9e22-9717b0a4d236','52:46','Пильнинский'),
	 ('ec9c0874-c2dd-5de7-9ea1-e1b47b514716','52:47','Краснооктябрьский'),
	 ('08d991b0-14f2-5191-a0dd-68b23cb0d424','52:48','Сеченовский'),
	 ('15123dd1-1798-52fd-8bf4-2f7de118d1bc','52:49','Гагинский'),
	 ('cedddfaa-233f-58da-9fc8-9472dbfc65af','52:50','Шатковский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('28c29004-55d9-53d7-8360-9443116a8ccd','52:51','Ардатовский'),
	 ('ce2c9ab9-d999-540e-9ccc-4071c908ef00','52:52','Выксунский городской'),
	 ('0b2a7f36-e51e-5d60-a6ae-171008b69263','52:53','Выксунский'),
	 ('32bb0c75-2952-5451-8d39-328c8a2ee17d','52:54','Вознесенский'),
	 ('25f0cf0b-62de-5f02-bc5b-2cf3c02cb1eb','52:55','Дивеевский'),
	 ('128073e3-79ad-5d82-90b5-ade3a7526815','52:56','Первомайский'),
	 ('0cd8a3dc-5fcc-5ced-9bdc-9f6591fb6d59','52:57','Лукояновский'),
	 ('e1788f80-62b8-5dda-8dfe-505c0321b465','52:58','Большеболдинский'),
	 ('6a887481-b684-5b97-9c59-de8733cc986e','52:59','Починковский'),
	 ('3e2e2326-ccae-5fcf-85d1-a7db64341f23','52:60','г. Саров');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('781d8f97-558a-548e-a399-439d698188f9','53:00','Условный кадастровый район'),
	 ('6092612f-d99f-50c5-992e-ac8d42c7e3fe','53:01','Батецкий'),
	 ('24a875ee-ead0-541f-b493-c86c4d250443','53:02','Боровичский'),
	 ('f6abd3ec-e152-5516-9a95-3e0a232cbbae','53:03','Валдайский'),
	 ('a67eb82f-85ac-5d67-802f-b5481b9faadf','53:04','Волотовский'),
	 ('d6320251-dc1b-516e-9c20-cf8fb8386d9c','53:05','Демянский'),
	 ('efd57734-aa68-551a-a09e-2f887a76b97c','53:06','Крестецкий'),
	 ('8f1eabe6-4e13-5541-a60e-271f7ae37d88','53:07','Любытинский'),
	 ('08abca67-27f2-5a74-8c99-bf49c28e6aac','53:08','Маловишерский'),
	 ('66183a04-7da0-5ab3-81db-a2749dfb7abc','53:09','Маревский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9a52a9c6-6e61-5cfe-b031-acd9d86ed22f','53:10','Мошенской'),
	 ('75cb3225-1b8d-5ec5-930f-5fee97148b6e','53:11','Новгородский'),
	 ('0c0e6b0c-4bc6-5c97-94cb-3619fde023cd','53:12','Окуловский'),
	 ('4c0bca04-878e-5a8c-8e94-c46591334f6e','53:13','Парфинский'),
	 ('41d2cf58-5c50-5795-b87d-368116a083f2','53:14','Пестовский'),
	 ('ad39900a-60cf-59d0-91b4-c5713026b76b','53:15','Поддорский'),
	 ('d767e1f6-3311-51e0-9e24-cf9d9050e0a5','53:18','Хвойнинский'),
	 ('8e21a3a6-3e6d-5852-9d3b-59c1e1eed72e','53:19','Холмский'),
	 ('81009e8b-422d-5efc-adcb-ee56e5e57af6','53:20','Чудовский'),
	 ('7008249b-8b64-57b2-9f78-5cc438cf7125','53:21','Шимский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('715ae8b7-f6de-5cc5-9c3a-f4f4484f19cf','53:22','Боровичский городской'),
	 ('1f288614-9777-5e18-8784-e65911a8ffd2','53:23','Новгородский городской'),
	 ('6e83d0f3-8723-5595-a8e7-864cabf65811','53:24','Старорусский городской'),
	 ('e8ead3ea-b0d0-508c-8be8-b3b0b889a644','54:00','Условный кадастровый район'),
	 ('4b21ba1c-2dc4-586a-8a1d-f2ff8e509850','54:01','Баганский'),
	 ('78aa308f-3748-5a81-a5bd-c583e2b936da','54:02','Барабинский'),
	 ('bbd324c0-246c-5d4f-bbf2-78e628b75855','54:03','Болотнинский'),
	 ('fa332954-833d-547f-a7e0-acc2908ffcbc','54:04','Венгеровский'),
	 ('84a84bcc-77e1-5838-a29d-c9efbe779437','54:05','Доволенский'),
	 ('172b8968-c8e8-55a1-8ffd-08ed0ab607ce','54:06','Здвинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6035c508-f2a5-5b19-9168-373ee64de456','54:07','Искитимский'),
	 ('63ede859-0218-53b9-80d5-c94b4536e035','54:08','Карасукский'),
	 ('b3509a30-d1b6-50f3-9bf2-73008aa577af','54:09','Каргатский'),
	 ('ba83df22-38d4-51cf-88f8-9c010ad0cda0','54:10','Колыванский'),
	 ('1b83aabf-6030-5071-9ea5-114c6c3bceea','54:11','Коченевский'),
	 ('54f82612-0ef7-5377-b0c0-120cf5e07d71','54:12','Кочковский'),
	 ('f1ae7237-e8fd-550b-a154-95ed4d94540d','54:13','Краснозерский'),
	 ('66002d18-54a7-531e-a2aa-84c3cbe776a3','54:14','Куйбышевский'),
	 ('268b2605-b3c9-5e25-80f9-2be0b2525c97','54:15','Купинский'),
	 ('75cbabfa-a820-597f-abcc-0a48ddcb792c','54:16','Кыштовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cd18e13b-04c1-54ba-b6e9-479054330839','54:17','Маслянинский'),
	 ('96d3c714-6c8f-5759-ba32-48c359c64c2b','54:18','Мошковский'),
	 ('f8f6baf8-1be1-537f-b44c-7629984eb160','54:19','Новосибирский'),
	 ('d341f780-b6a4-5316-b870-0236df1bcbc4','54:20','Ордынский'),
	 ('a7f884e9-61c7-56d7-8533-656868469074','54:21','Северный'),
	 ('b87c29ef-61f3-565b-b572-99190741d140','54:22','Сузунский'),
	 ('ac6c82ed-d9f8-5661-94ba-9259ce0600ba','54:23','Татарский'),
	 ('f96ad77f-e76c-5633-a8bc-e718328e876c','54:24','Тогучинский'),
	 ('efbc8eb3-7314-5602-a18e-e7ad52d7baa7','54:25','Убинский'),
	 ('038f2da3-6ab9-5528-bddd-dac8c9f5973e','54:26','Усть-Таркский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('88477478-45c1-5736-88a8-46cd5ad5e457','54:27','Чановский'),
	 ('d682f0a5-dc86-5dcc-bf82-e66aba02665f','54:28','Черепановский'),
	 ('43d61cb8-a3cc-5c06-9a95-3562e575fd48','54:29','Чистоозерный'),
	 ('9cf05b3c-951d-5bed-b412-49e97f2b9b19','54:30','Чулымский'),
	 ('b5a9e273-8381-5e8d-8350-68b8e7e6da1c','54:31','Барабинск'),
	 ('a9f20d14-064a-5f64-9568-d2b05fda3a66','54:32','Бердск'),
	 ('594eb1c2-9541-57c2-b39d-6e6c8b48a030','54:33','Искитим'),
	 ('00db09e6-62d0-5f91-ad5c-0dd057d246a3','54:34','Куйбышев'),
	 ('3c31c038-f1e4-5fcb-b16a-2216deda776e','54:35','Новосибирск'),
	 ('78f5737d-1628-5438-b7e4-9798a9704b60','54:36','Обь');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('21883f65-b8a6-586f-bddc-df10fbe77881','54:37','Татарск'),
	 ('6dcc812b-c8e8-5766-b8d7-f656558388a7','55:00','Условный кадастровый район'),
	 ('b14f2377-b780-552d-aaf8-d2175cb115ce','55:01','Азовский'),
	 ('a03c902e-c46c-542f-922e-21e494575fd2','55:02','Большереченский'),
	 ('2d19cb90-58b7-582c-a175-8ad5dbfc74f5','55:03','Большеуковский'),
	 ('42dbd47f-b1c9-5c4a-a6bf-2030ce7bb92c','55:04','Горьковский'),
	 ('398e414b-f0b4-52d4-988c-6a8e7a6df5f5','55:05','Знаменский'),
	 ('529bc7fc-274b-508c-8a1d-a76155f912f6','55:06','Исилькульский'),
	 ('44c4a475-4838-527f-b14f-134a18e8eefd','55:07','Калачинский'),
	 ('b4e7f2e0-a404-5ac6-a7c7-9a5a867c853a','55:08','Колосовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cfee3346-0315-5e81-a635-e25660429cb3','55:09','Кормиловский'),
	 ('5f3ca8a6-b340-56de-a206-3c21e8a6e79a','55:10','Крутинский'),
	 ('13934711-bca5-5690-a7f9-94b3a508cd50','55:11','Любинский'),
	 ('237e1a66-715e-5a2d-8067-9e3330a69581','55:12','Марьяновский'),
	 ('e8c48dc4-3dd2-53da-82f9-89994d7233f5','55:13','Москаленский'),
	 ('c08cea32-28d5-5afe-ae0e-12e3621c6b32','55:14','Муромцевский'),
	 ('20ffa647-c9c9-537b-b089-8bc0cf0638df','55:15','Называевский'),
	 ('9092e507-ce93-59a4-9f87-1c154b2057ad','55:16','Нижнеомский'),
	 ('b9bd57f8-2ec5-5686-b40f-ceb881ca9fae','55:17','Нововаршавский'),
	 ('739bb00e-52be-5262-9ed5-4ed302c39ca1','55:18','Одесский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d3504b65-5f4e-5b13-8a81-1dc1fc6ace96','55:19','Оконешниковский'),
	 ('d46b01a5-e27f-5e92-ab74-4f305684bb2c','55:20','Омский'),
	 ('ef266e9e-5011-5398-92da-1d9076d85606','55:21','Павлоградский'),
	 ('b28b8128-818b-57fd-826d-193c46cbe33e','55:22','Полтавский'),
	 ('e3a1d58f-a6f5-519c-8b68-873747aea962','55:23','Русско-Полянский'),
	 ('8a46d2d4-6a94-5fa2-a261-8b8c97ae331c','55:24','Саргатский'),
	 ('d630e3b7-1b67-5c50-bb45-11b93c400e89','55:25','Седельниковский'),
	 ('c58d876a-6fcd-5c85-b79f-02d6cc493247','55:26','Таврический'),
	 ('18e36bc6-b864-5f3c-90d0-f35bd7143aa0','55:27','Тарский'),
	 ('2b2344cc-8c4d-528e-a0a0-65e1e2ff3b28','55:28','Тевризский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('372d3e26-261b-5524-a589-712833b2f02b','55:29','Тюкалинский'),
	 ('fe85d9a3-1abd-562f-9619-b378601f6d53','55:30','Усть-Ишимский'),
	 ('3ac1d34d-a1a6-59f3-bde1-0e70cbe09429','55:31','Черлакский'),
	 ('d6fe1ae8-655b-5ce1-bde8-c3bb897ecf31','55:32','Шербакульский'),
	 ('89112354-0590-5b6a-a6b8-f50526ec4c4a','55:33','г. Исилькуль'),
	 ('c4cd1a81-58ce-52b7-bb8b-39d5f4867278','55:34','г. Калачинск'),
	 ('f704a644-678c-502c-9544-331a54b19291','55:35','г. Называевск'),
	 ('67e98bb8-8760-57b0-8f67-2f62f0a6fd18','55:36','г. Омск'),
	 ('8c63beeb-6ccd-5fa5-b61e-7e93a58d3133','55:37','г. Тара'),
	 ('cd97a63f-af15-5320-afb9-8861e370f6ae','55:38','г. Тюкалинск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f7af821d-ddbc-5960-b44d-73fd9f10368c','56:00','Условный кадастровый район'),
	 ('9281895e-a18f-5021-952b-bfa57aee1067','56:01','Абдулинский'),
	 ('ddb2acef-4c85-5ad0-bc11-c6726026bc17','56:02','Адамовский'),
	 ('17350654-85ed-5223-8cd5-a7162ee0719a','56:03','Акбулакский'),
	 ('6bc8a30f-84dc-5ee5-9b1b-58acbe6fec20','56:04','Александровский'),
	 ('4cdcdbf1-fdab-53ba-bca4-639b87e0e147','56:05','Асекеевский'),
	 ('ab322c32-de98-5736-a91e-3f2143fc2533','56:06','Беляевский'),
	 ('a84510a9-c88f-561a-bec8-11426d138ece','56:07','Бугурусланский'),
	 ('908ee360-665e-50cc-b07f-69ca128462ad','56:08','Бузулукский'),
	 ('16f01cdb-b736-57c6-85af-8b799cc7de5d','56:09','Гайский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8188c201-a94a-562d-872b-0d2490739bc1','56:10','Грачевский'),
	 ('371f69f7-47a2-5de0-9ea3-c20a9ba29a8b','56:11','Домбаровский'),
	 ('24c51357-38d1-5ad2-9372-e8b9780dc1f7','56:12','Илекский'),
	 ('a2efe17a-d262-52de-87db-1a323b3d2f44','56:13','Кваркенский'),
	 ('fe66523b-67e7-5d90-a98c-8e486a4e898d','56:14','Красногвардейский'),
	 ('6f303898-a742-585c-a1a9-02d05451c06e','56:15','Кувандыкский'),
	 ('e633e459-6feb-5dcc-90dd-cc034227878a','56:16','Курманаевский'),
	 ('2197b8f0-ed52-5467-a769-1ae6d4b5e49b','56:17','Матвеевский'),
	 ('c1bd4968-3229-52d3-a215-73e98aaee29b','56:18','Новоорский'),
	 ('2499f05a-4a8c-5308-a65d-8c9265b0405c','56:19','Новосергиевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cf4e5357-bd66-5ca0-a462-808542c8ce2a','56:20','Октябрьский'),
	 ('53fa8c94-46ec-5197-b6f6-1df7ad0236a7','56:21','Оренбургский'),
	 ('a885cc38-7b53-5d9d-9d62-257c3fb7f4b3','56:22','Первомайский'),
	 ('bb561671-4b12-5855-82b9-05304831edac','56:23','Переволоцкий'),
	 ('a720c40d-d462-50b2-a845-7ad122caa727','56:24','Пономаревский'),
	 ('d0815ba4-c7d8-564a-96f1-3d0ef28facee','56:25','Сакмарский'),
	 ('1b23df36-690d-5175-ad1e-abe00a9e8c50','56:26','Саракташский'),
	 ('c01c2f93-dea8-56d0-8be0-ead10b859452','56:27','Светлинский'),
	 ('141e3f7c-05b2-51cb-aa58-f9211f2d475e','56:28','Северный'),
	 ('cd4d81bb-3398-52d0-a8c8-ffd3d2fb7bc6','56:29','Соль-Илецкий');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('295e66f8-d832-5f91-821e-c8c53c78baef','56:30','Сорочинский'),
	 ('200f240c-e34e-5cac-89ef-94b050e667e1','56:31','Ташлинский'),
	 ('ec2b99ea-8ed3-5164-ad6c-6dbe91e59695','56:32','Тоцкий'),
	 ('b531fb1c-7e19-5029-9c81-3f4933bc8bd9','56:33','Тюльганский'),
	 ('b8311c4a-0de8-5a58-a0ac-7edf69b00b25','56:34','Шарлыкский'),
	 ('0319fcc5-5947-556f-bb27-718269fb856d','56:35','Ясненский'),
	 ('67374042-636d-5d0c-8695-e75e2a0921ea','56:36','г. Абдулино'),
	 ('ff0e511d-e3bd-5424-b0a7-5c3a52bd3dcd','56:37','г. Бугуруслан'),
	 ('2b758af4-4077-590e-ae5e-aa2c420ae51c','56:38','г. Бузулук'),
	 ('8e96c5bd-128b-5b2b-8cff-ec88f2972244','56:39','г. Гай');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a2dd4996-5440-5fef-a913-381f48ba3585','56:40','г. Кувандык'),
	 ('2360713e-0014-5b75-a51e-5ae755ec0d2f','56:41','г. Медногорск'),
	 ('b2278557-297a-5dfc-bd11-5a036d7a2198','56:42','г. Новотроицк'),
	 ('7ef24942-9ddb-573d-a0ae-6b7d1068f5e7','56:43','г. Орск'),
	 ('3303b28f-d6eb-5101-904a-6b52eeada75c','56:44','г. Оренбург'),
	 ('0e672c7f-e06b-50ce-a674-5b10a2d407f0','56:45','г. Сорочинск'),
	 ('c0b51086-e0d3-5205-852c-ee92c9a5a3e6','56:46','г. Ясный'),
	 ('092ef1a0-f1cc-5a59-b8a0-d79667b9493f','56:47','г. Соль-Илецк'),
	 ('074fcab2-698f-5945-8e7f-695cda5ef5f4','57:00','Условный кадастровый район'),
	 ('7914e742-c75a-5b82-a0d1-64127ec0e4a0','57:01','Болховский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('14c3be81-5155-5060-a71c-063a0d8c6bc5','57:02','Знаменский'),
	 ('153e5973-350d-53aa-bd18-e231447276ac','57:03','Хотынецкий'),
	 ('b037c79b-120f-5ad9-abf9-2cb9c6b27009','57:04','Шаблыкинский'),
	 ('948f3fe9-2fd2-5134-8e5c-f3186307b190','57:05','Сосковский'),
	 ('db1d446f-fc04-5f96-9ff0-6fb1cf43aa63','57:06','Урицкий'),
	 ('3a9ed3d0-7784-5fe3-a02f-0a0346462252','57:07','Дмитровский'),
	 ('d21cad51-5f90-5115-b724-92070f8debb6','57:08','Троснянский'),
	 ('7f0769c2-0b67-560c-9d77-387327cd5c0d','57:09','Кромской'),
	 ('56ad23fc-05e2-5f0c-b763-f123bd8ae5fa','57:10','Орловский'),
	 ('17e141b8-3546-5201-8384-a19f914f68e7','57:11','Мценский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('907eef2d-b5b0-5a43-9179-86e89999b048','57:12','Корсаковский'),
	 ('f7af76b3-39a5-5439-9695-73effcdef3cd','57:13','Новосильский'),
	 ('354f0e32-d09c-5f4c-9931-e77487281aa9','57:14','Залегощенский'),
	 ('e367b04e-60dd-589a-bc14-1e03b488f974','57:15','Свердловский'),
	 ('fd6e1f3c-c0d8-50ca-9557-1eff16e60c0f','57:16','Глазуновский'),
	 ('57938e4f-db77-51a2-a023-8acd5cb4625a','57:17','Малоархангельский'),
	 ('ed0d4719-cb80-52ab-820b-24ca56715f13','57:18','Покровский'),
	 ('d1d5ac37-185f-5606-b797-890527f58b93','57:19','Верховский'),
	 ('cba69281-cfda-543a-809a-75b238c85371','57:20','Новодеревеньковский'),
	 ('931d8737-72ff-5366-8e4c-f1bd5f9cb4b1','57:21','Краснозоренский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2676b7ab-804a-58ae-9f9e-ca5817e5ec45','57:22','Ливенский'),
	 ('b06e23bd-7a3e-5dd4-a891-528ddd7d3ee9','57:23','Колпнянский'),
	 ('ebe703b4-aaa7-5728-97bb-838b9e8685df','57:24','Должанский'),
	 ('a32754e1-fb9d-5bb5-94c3-849d345c6ed8','57:25','г. Орел'),
	 ('db2c51ec-b453-51f0-b600-ec70be62077a','57:26','г. Ливны'),
	 ('b4ea9863-14c4-5bdf-b4b6-0c0b24d6004d','57:27','г. Мценск'),
	 ('18641c40-d1d4-5768-980f-07ac217b878f','58:00','Условный кадастровый район'),
	 ('fdd37e0b-4d55-584a-b6a8-bd61d8b45626','58:01','Башмаковский'),
	 ('8bd7eb5e-b234-5af8-8833-957276822406','58:02','Беднодемьяновский'),
	 ('1598a706-66d4-582f-9c37-f8668688d721','58:03','Бековский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('27bafd96-91e3-54aa-b417-131cce549850','58:04','Белинский'),
	 ('31b20eac-3a87-5c02-a726-6126d84736d2','58:05','Бессоновский'),
	 ('1dd77a69-8220-5b20-8f34-e84cc1aece37','58:06','Вадинский'),
	 ('850360b8-cfec-5678-a008-61c5b3a9de47','58:07','Городищенский'),
	 ('1fcfb041-f2f9-5fb2-be9e-ca3a2a7d6ff2','58:08','Земетчинский'),
	 ('67f79d58-aa31-52da-989f-91477149db21','58:09','Иссинский'),
	 ('ffcc9d11-cbe5-565f-8fdc-3c46ce139038','58:10','Каменский'),
	 ('42682b52-db88-580b-a76e-7fb734a1ddeb','58:11','Камешкирский'),
	 ('4c0cdde9-03c0-53e8-83d7-ee527a8c6b89','58:12','Колышлейский'),
	 ('a2e53d1d-4da6-516a-82f5-e1503f964b62','58:13','Кондольский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('4222de98-f8bd-5d7b-add7-5049e1a52f0b','58:14','Кузнецкий'),
	 ('e5ffe05f-ac1e-583d-b35e-985deaba159c','58:15','Лопатинский'),
	 ('53373fa0-973e-5869-91f4-7b82884f11bd','58:16','Лунинский'),
	 ('82e77b3d-7a50-5167-ba49-e572bad8d91c','58:17','Малосердобинский'),
	 ('7eedf70b-c502-5d10-9040-c61120f3a6bf','58:18','Мокшанский'),
	 ('bef9a10c-bd29-510d-a2f3-6f281e1af93e','58:19','Наровчатский'),
	 ('29660ef0-45a7-530a-9228-55fc16f7760b','58:20','Неверкинский'),
	 ('28d6bb29-184d-560c-a6cb-16f8721e3593','58:21','Нижнеломовский'),
	 ('9f6ae98f-dba9-5a61-b575-9f98505b6a5d','58:22','Никольский'),
	 ('fb56655f-fcda-5d55-9017-a8df6273ce5c','58:23','Пачелмский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b61b08d0-0fbd-59dc-8471-97011c8eb6d3','58:24','Пензенский'),
	 ('6ccf9e5e-cbaf-53f6-ba7d-c968ea143909','58:25','Сердобский'),
	 ('2dd57740-21bd-5feb-aee2-e6820c884b56','58:26','Сосновоборский'),
	 ('b547631a-1050-5dc1-883c-76d6b014ef16','58:27','Тамалинский'),
	 ('716c8b58-bc8c-5c7c-8198-56387b7040a9','58:28','Шемышейский'),
	 ('3578ccc7-6afe-5a7a-8517-f747f2519104','58:29','Пензенский городской'),
	 ('708530c4-fb1b-5424-b318-b3439ffd70ac','58:30','Каменский городской'),
	 ('f13cfafe-2af8-5d5f-ac20-15a062a0b9d1','58:31','Кузнецкий городской'),
	 ('1b5339a8-561f-5941-87b0-67d1534bafa3','58:32','Сеpдобский городской'),
	 ('4e5cc6ab-f982-5886-823f-4e40f43cd288','58:34','Зареченский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('8adee8c3-8ef2-5ae9-b8d4-38922209a150','59:00','Условный кадастровый район'),
	 ('9b1f59c9-81f7-5ae1-b611-2f46b86eb053','59:01','г. Пермь'),
	 ('0aeb695c-7fd9-5f79-9771-734917770c57','59:02','г. Александpовск'),
	 ('7e669605-cc8d-53cd-aba8-de708e02178c','59:03','г. Березники'),
	 ('3a51a117-34e2-506f-b835-117cde824a93','59:04','г. Гpемячинск'),
	 ('0bd84ce7-68c9-5395-8e3d-325fdfb38ea7','59:05','г. Губаха'),
	 ('23956def-2531-58cf-9d84-f189c18dc4bc','59:06','г. Кизел'),
	 ('9e012c20-8d11-5e7d-94fd-bdcd2217adcb','59:07','г. Краснокамск'),
	 ('2ef212a3-6f6e-5d69-8725-81932ef4a967','59:08','г. Кунгур'),
	 ('51ccf763-d8be-5ab8-a46e-ddebc7688bb8','59:09','г. Лысьва');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('3287e93d-c170-5841-98d3-fd8438f3e647','59:10','г. Соликамск'),
	 ('27f42451-2507-5972-a85b-8d11259141ae','59:11','г. Чусовой'),
	 ('14cd86cc-8888-5d7b-bc75-9d2afe57fd82','59:12','г. Чайковский'),
	 ('e1977c51-c9e7-527f-a197-0b3d333e184b','59:13','Бардымский'),
	 ('2d2130e6-2c70-5892-906d-b0710f7613c8','59:14','Березовский'),
	 ('18910582-b774-5e63-b683-d9b70f82025d','59:15','Большесосновский'),
	 ('43ed6584-2d93-5d6b-bcde-ac2d5f50c9f0','59:16','Верещагинский'),
	 ('9f24eeb9-1076-5201-87f7-e8227a8e436c','59:17','Горнозаводский'),
	 ('dfed4912-5a01-5b41-bd12-1d9ab31b40e6','59:18','Добрянский'),
	 ('c78035dc-0c61-56d5-872a-31616ce3c395','59:19','Еловский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7061f979-ffc1-56be-ad09-2ad59644777f','59:20','Ильинский'),
	 ('3afc33fc-53b0-550f-9149-049af0e7852a','59:21','Карагайский'),
	 ('51703b4e-899b-5577-97f2-9147b56bb12f','59:22','Кишертский'),
	 ('ab4c7bd7-4668-5905-a9a9-876d4ea30904','59:23','Куединский'),
	 ('43ccc8c7-fad3-5660-a38c-30f3a09361a1','59:24','Кунгурский'),
	 ('39507c35-2e42-5e8a-92a6-8bdeb41f3b29','59:25','Красновишерский'),
	 ('ca3bfbc4-e1bc-558c-9aff-4e6f0f668246','59:26','Нытвенский'),
	 ('d8be896c-0784-55c1-8f63-d92028ff4115','59:27','Октябрьский'),
	 ('4f3fe54a-36c7-5590-80d4-c9b6ef57633d','59:28','Ординский'),
	 ('b64d3d3f-82f8-5c61-b040-eeb99ba340d3','59:29','Осинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('11abf711-7691-5ef2-8670-8e75147d6661','59:30','Оханский'),
	 ('62c1d1d4-7547-5d3f-aab8-c5fc7597ea79','59:31','Очерский'),
	 ('edf6c8fd-8047-5fd4-aa14-e00f418b0d7c','59:32','Пермский'),
	 ('ff62907b-d799-562a-b739-d35c66705916','59:33','Сивинский'),
	 ('832d970e-1c47-50b6-b5e5-9e0951736964','59:34','Соликамский'),
	 ('3fc6bcf8-4076-51b3-8bac-115cbe838d25','59:35','Суксунский'),
	 ('70e2d593-cd20-52b0-8f03-884216eec599','59:36','Уинский'),
	 ('990de669-fb85-5061-b6f9-a2ca249ce354','59:37','Усольский'),
	 ('5a7380ea-aeeb-5dd5-b4da-e0a2338f5288','59:38','Частинский'),
	 ('c4d4a7e3-19d0-5e73-91a8-553c5ea8608a','59:39','Чердынский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('48b58beb-349f-5f45-ad6a-480d9bea5610','59:40','Чернушинский'),
	 ('4656d8a3-6edb-5412-9887-0b934c8efbe4','59:41','ЗАТО Пермь-76'),
	 ('35e0ce5c-55bc-54a0-bdcd-9a2c214b1d57','60:00','Условный кадастровый район'),
	 ('0e69e561-182f-5f39-bf23-3328a2f26cf4','60:01','Бежаницкий'),
	 ('3962d809-80c1-55eb-9084-19d695bb104d','60:02','Великолукский'),
	 ('8e481e42-037b-595d-a21e-1bf19ca2e6d4','60:03','Гдовский'),
	 ('4c25e53a-5cd7-5fd4-a644-969f7cc10452','60:04','Дедовичский'),
	 ('ef712c58-7aba-5a14-832a-294405c746ba','60:05','Дновский'),
	 ('ddc2721d-a169-5310-9b93-84990598c03a','60:06','Красногородский'),
	 ('563ac9a1-eff4-59ff-afcc-1a8669b3e6df','60:07','Куньинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c1435fb7-48eb-5aaa-83ce-29eefbec43aa','60:08','Локнянский'),
	 ('870cf74a-e847-55c8-a928-b1e846aa28d8','60:09','Невельский'),
	 ('6de4f9bd-3803-5574-b640-df5c5126594e','60:10','Новоржевский'),
	 ('17f11311-a6b2-5e20-a94c-b5e99dab04cc','60:11','Новосокольнический'),
	 ('7e08abeb-fdf9-59dd-bfa2-f04b9ce30275','60:12','Опочецкий'),
	 ('9ad9c8ae-6232-5e60-9812-2369de0d5c1e','60:13','Островский'),
	 ('6058bf36-e1a2-573e-8cbf-c90fc03376b6','60:14','Палкинский'),
	 ('a2a9d8c7-7723-5cff-b800-be33497acbe0','60:15','Печорский'),
	 ('888aff18-bf9f-5134-8bd6-6a8810023140','60:16','Плюсский'),
	 ('87d15ccd-f3a1-5770-969f-cc14ea970926','60:17','Порховский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0ba8c003-3b8d-5dee-a5c7-7d826efea5c0','60:18','Псковский'),
	 ('91fbddbb-87d0-5a39-921c-6d7cde2d8cb2','60:19','Пустошкинский'),
	 ('d57f487b-823e-5ab4-9ea4-49931965de2b','60:20','Пушкиногорский'),
	 ('4146e420-e3f5-5618-baf3-d6fff3710d0f','60:21','Пыталовский'),
	 ('1cbe692f-f981-58bd-86da-83ed2cc30c15','60:22','Себежский'),
	 ('21ef68ad-b960-514c-a4d6-a5fabc4bf950','60:23','Стругокрасненский'),
	 ('0a672835-1cdb-557a-8aeb-7a70e9f5e462','60:24','Усвятский'),
	 ('1f7061eb-38b5-59ab-a1a6-84b7d8bbd9ce','60:25','г. Великие Луки'),
	 ('3c22b8f9-325d-5081-9c23-bb08286525bf','60:27','г. Псков'),
	 ('d00e627d-8747-5dce-9b2b-63d6d5c39f7e','61:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('049316a9-d4af-533c-8e61-ccb99e11ca4e','61:01','Азовский'),
	 ('d1535df0-7ed6-5ce4-9e8e-987276009c04','61:02','Аксайский'),
	 ('4e19cf76-8151-5342-bed9-c38c7f0fd39d','61:03','Багаевский'),
	 ('12d719c8-2aa1-53b4-ad60-3824a781a33a','61:04','Белокалитвинский'),
	 ('5a43c124-a694-5ab5-a5d8-a8df1660f650','61:05','Боковский'),
	 ('e7b64a9b-54f0-5464-9e2b-02edeb4daf63','61:06','Веселовский'),
	 ('d8115cca-6bcb-5ca2-954b-0d534ba85c30','61:07','Верхнедонской'),
	 ('9c49a456-9bf9-5cfb-884d-5b8f97499c5e','61:08','Волгодонской'),
	 ('c8ae139d-4e8f-5fbc-8688-6d4ba85f9e29','61:09','Дубовский'),
	 ('a9da00c7-f730-534e-bc99-c605cb1760c9','61:10','Егорлыкский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c5ea287e-5c15-5da0-b3a6-1b9c20097b55','61:11','Заветинский'),
	 ('71e9496f-1d92-5b2a-81c0-afd47bfe58e6','61:12','Зерноградский'),
	 ('9379246c-24cf-52ff-b866-d8f3abf9ea91','61:13','Зимовниковский'),
	 ('5d14485b-c108-59ce-af30-cfcbc12681d9','61:14','Кагальницкий'),
	 ('355c7cd3-0b57-5f01-bdda-7d4ef467c152','61:15','Каменский'),
	 ('23338681-f80e-5f41-82c0-f632bfd311e0','61:16','Кашарский'),
	 ('cd4f7c49-a88d-5bb9-9be1-fed8e67f16b3','61:17','Константиновский'),
	 ('8cf3893c-2b56-5556-b1c6-1876365d1780','61:18','Красносулинский'),
	 ('f1f5b599-266c-59fa-a151-f858da5e16e0','61:19','Куйбышевский'),
	 ('e33b5238-79ad-5c9b-bf78-b8e187eb7987','61:20','Мартыновский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('44afcb34-cc1f-5a6f-8697-adbd480157ca','61:21','Матвеево-Курганский'),
	 ('53fdd05a-5f01-57a8-a29f-c90eee45b200','61:22','Миллеровский'),
	 ('a55b89df-05c2-5bec-9b0c-d0c6257f4b7b','61:23','Милютинский'),
	 ('c8702a12-2c3b-5c6a-b602-314a8ee8d6e8','61:24','Морозовский'),
	 ('8040ef7f-6826-57f0-8987-28b5dfbd0279','61:25','Мясниковский'),
	 ('ab456781-1f9b-5825-8e96-ba8432e7a9a5','61:26','Неклиновский'),
	 ('923fa196-7c88-502f-94d8-ec0283dda7bc','61:27','Обливский'),
	 ('6387df65-fec4-593f-9ebf-3a70e28b7e18','61:28','Октябрьский'),
	 ('27e10d4b-3ee7-5f49-b615-92da182e1d59','61:29','Орловский'),
	 ('75ee1dfe-5166-57dc-b1ae-6685c0515daa','61:30','Песчанокопский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b9f19728-12e3-566a-a3ba-4a38033d325c','61:31','Пролетарский'),
	 ('03f27d35-ea30-5893-b7ad-6ff5772eac70','61:32','Ремонтненский'),
	 ('8f7e2976-7b75-5665-8632-4208d98ed305','61:33','Родионово-Несветайский'),
	 ('83a682b9-8526-54ba-9f49-3870b6aca054','61:34','Сальский'),
	 ('84dd90bd-2ea4-52e2-8ed1-e9bd1a624c72','61:35','Семикаракорский'),
	 ('08c07dde-5a42-54fa-838a-c32273d0493a','61:36','Советский'),
	 ('79e7405e-b332-5053-a414-19d7f204a029','61:37','Тарасовский'),
	 ('50af62f5-1825-5913-aef7-eb397d252f64','61:38','Тацинский'),
	 ('4282d1a7-5bc0-5c7d-b404-1bdd1c34a3d7','61:39','Усть-Донецкий'),
	 ('7d197a30-d939-52e4-8444-569e2f48199b','61:40','Целинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7f58c481-6a3c-57ca-9d38-31d6ef4975a5','61:41','Цимлянский'),
	 ('0c0377eb-e214-594b-943e-20cfb07c7c67','61:42','Чертковский'),
	 ('79e1fcb9-da82-5f3c-899c-a450f9506855','61:43','Шолоховский'),
	 ('2841f237-4918-5ccf-afbe-cf2db363747c','61:44','Ростов-на-Дону'),
	 ('8f9f6056-8221-5c1a-ad45-e7557e37a5fa','61:45','Азов'),
	 ('0bc830b7-a97e-53b5-8979-461a68698db9','61:46','Батайск'),
	 ('06da0f57-d4f3-5631-9c36-5c805f2d13c0','61:47','Белая Калитва'),
	 ('84e1b654-9ff0-5cf9-bd81-8b0cee0e8afd','61:48','Волгодонск'),
	 ('2cf543a9-6975-5bcc-a9ee-565bb62b1bfc','61:49','Гуково'),
	 ('de8ae789-c2a4-5de5-b720-aafedcd875ad','61:50','Донецк');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b9e51def-da8e-54eb-b80b-0cb582b34ef4','61:51','Зверево'),
	 ('fe244356-d047-5bee-bb8c-04073250eec5','61:53','Красный Сулин'),
	 ('78df0a00-5b9d-5d7a-8aab-bbf4ef15177a','61:54','Миллерово'),
	 ('8c749bea-7133-5d17-b12a-6999f4ad95e0','61:55','Новочеркасск'),
	 ('472441aa-c2e7-575e-a29c-e7675fde55bd','61:56','Новошахтинск'),
	 ('74d0d54f-8cb7-5191-9f95-48dd294aef02','61:57','Сальск'),
	 ('36d7756a-386a-5005-b705-d76fa8c574e6','61:58','Таганрог'),
	 ('eb4ee09f-728c-5230-867b-8088694776f4','61:59','Шахты'),
	 ('4a94ddf2-2314-519b-bf29-cfd065edba4d','62:00','Условный кадастровый район'),
	 ('ecb2af90-591d-568b-97da-4ef33729fbc1','62:01','Ермишинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('23ebeb31-b0a7-58a4-8429-b9e3e4732137','62:02','Захаровский'),
	 ('d8c9159f-2039-5452-bce9-e544823d3a31','62:03','Кадомский'),
	 ('aaacc5ba-a850-5469-a2c5-fdfd07d7a350','62:04','Касимовский'),
	 ('f2f14752-2b98-5904-b898-23be5f1acfcd','62:05','Клепиковский'),
	 ('dbab9712-07f9-5aad-8d7f-af112fe6eeae','62:06','Кораблинский'),
	 ('bc2c76bc-99e5-56a8-a4c9-1e6659f3afee','62:07','Милославский'),
	 ('6926f764-84eb-5797-89d5-b37c08a40516','62:08','Михайловский'),
	 ('60658c6b-530f-5e2e-8e24-3f2de2e66474','62:09','Новодеревенский'),
	 ('79d29f6e-59ae-5492-b929-5f3220758051','62:10','Пителинский'),
	 ('8ccd6ecc-2486-58c1-8c78-3e92ec83efd6','62:11','Пронский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('efdbdc36-e6b3-5539-ac9e-5ec8dee24161','62:12','Путятинский'),
	 ('2c1a4b9d-edc3-5003-96bf-b840a26945fe','62:13','Рыбновский'),
	 ('7ff0e5fb-3194-5a56-96c7-64da3e5aab0a','62:14','Ряжский'),
	 ('2111bd4b-ce9b-5bf7-99bd-6ef7fee7e7a0','62:15','Рязанский'),
	 ('2922ce73-c3a3-5442-b6ed-a91f59ff16d7','62:16','Сапожковский'),
	 ('ae6d52bc-b33f-5700-b3ac-f244ceb48647','62:17','Сараевский'),
	 ('c62a3c6f-585c-555f-b983-3c1cdcdde50e','62:18','Сасовский'),
	 ('c70e8178-84be-50c8-b422-cb549ec647db','62:19','Скопинский'),
	 ('274f5d48-a32c-544d-920d-130d58550f09','62:20','Спасский'),
	 ('ed2272e5-73f3-5872-901b-6262cb7c29ff','62:21','Старожиловский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('33de4dc1-01af-5824-ae1f-09a249694a6a','62:22','Ухоловский'),
	 ('1c144195-9fbe-5699-aa82-159680036bf8','62:23','Чучковский'),
	 ('e109f078-d200-55e5-bf45-f5bad7bf798b','62:24','Шацкий'),
	 ('5c5072a8-8e32-54e6-9a18-d9b4badf3184','62:25','Шиловский'),
	 ('e1642490-ab50-5efe-bd5e-51a3075038d3','62:26','г. Касимов'),
	 ('97114832-22f4-5062-b71e-f8aa4dade967','62:27','г. Сасово'),
	 ('85488e05-cca4-5d07-9df6-1e9331b09929','62:28','г. Скопин'),
	 ('94768a73-4199-5270-ad5c-92c6899b0527','62:29','г. Рязань'),
	 ('15c4797c-b388-5259-a031-af6ff0c6793e','63:00','Условный кадастровый район'),
	 ('e9539440-7c5f-5479-b512-7d6e90071159','63:01','г. Самара');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('e36219eb-d43e-57b7-9e5c-ce4c195718c4','63:02','г. Жигулевск'),
	 ('fd85cff4-8802-576e-b1df-7f06289c224a','63:03','г. Кинель'),
	 ('196037e8-0092-5566-a2fc-cda9179cfb9d','63:04','г. Новокуйбышевск'),
	 ('cf13a79e-05d9-545a-ad72-d3563e9684d8','63:05','г. Октябpьск'),
	 ('2ed51727-d723-54b3-942b-3ea0ea750dc8','63:06','г. Отpадный'),
	 ('cc678f73-7412-54bd-9be1-21143eaed8c3','63:07','г. Похвистнево'),
	 ('0e9ea1c8-7d48-5c89-a6d0-63564d66664f','63:08','г. Сызрань'),
	 ('4567aa30-c86a-5197-b3e3-914398a86b62','63:09','г. Тольятти'),
	 ('e4476f97-1574-5dac-a917-6ce44c72746b','63:10','г. Чапаевск'),
	 ('ab6655b2-26cf-5eb2-a42d-4577eb6e12d0','63:11','Алексеевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fe6d76d5-b165-513c-962e-8c8bf83017fb','63:12','Безенчукский'),
	 ('4284d9ef-a691-53bc-96b4-6492099bb9d7','63:13','Богатовский'),
	 ('b33442cc-1560-5650-8e92-ada69485f7f5','63:14','Большеглушицкий'),
	 ('c759fc49-2e7d-59a0-9e71-e36306fb2b2c','63:15','Большечерниговский'),
	 ('5370c566-68fb-55fe-90cf-63e4f8d74344','63:16','Борский'),
	 ('6d7ead99-e45b-5c21-a41c-017a8c0a1540','63:17','Волжский'),
	 ('30fcd726-80ea-5301-b68a-6f6cbb1a15ea','63:18','Елховский'),
	 ('03bdcf45-6339-5966-9383-4f39fd5944e1','63:19','Исаклинский'),
	 ('d93b1151-0923-5531-80d2-3b637217fc68','63:20','Камышлинский'),
	 ('e12a38dc-1b4b-5cab-8a17-434e397ca82d','63:21','Клявлинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('702aaf39-e731-5a10-ade7-8b4d57e4d418','63:22','Кинельский'),
	 ('6d1af876-01c6-5e99-bd80-d9474aeef6dc','63:23','Кинель-Черкасский'),
	 ('45109a92-1525-516f-9eef-2c4e3ac14e5a','63:24','Кошкинский'),
	 ('ec6ff7a4-7455-5628-b7d9-13f1806fda40','63:25','Красноармейский'),
	 ('714fe41f-8483-5124-a550-c71df790fbd5','63:26','Красноярский'),
	 ('c34ae25c-ab27-56ab-b11e-33f76cbc305b','63:27','Нефтегорский'),
	 ('97f74598-193c-5745-97c3-e2ec1baf9d85','63:28','Пестравский'),
	 ('486a6ae8-d11c-53bd-8c1e-c4af6caf6672','63:29','Похвистневский'),
	 ('1239dbdb-08a2-5a39-b8ab-706ae0fdc02e','63:30','Приволжский'),
	 ('633756f9-f27b-534b-b8c9-0b507a97fcc5','63:31','Сергиевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d2c2ad18-b5b8-563d-9bfc-b443962f9c93','63:32','Ставропольский'),
	 ('6771bf8d-eaca-5bfb-bc58-cb20f47f2ca3','63:33','Сызранский'),
	 ('ab4e611f-d4a7-5249-a4d1-6204400c52bb','63:34','Хворостянский'),
	 ('d015731c-a14b-5513-8266-b17b7de3a2d9','63:35','Челно-Вершинский'),
	 ('eccd6603-38ba-565e-8d63-5c1a1c24e349','63:36','Шенталинский'),
	 ('b397e632-3a2f-5dd0-8e31-c611585da903','63:37','Шигонский'),
	 ('19a9ce4a-ff1e-53fa-bf7d-383e891ee383','64:00','Условный кадастровый район'),
	 ('c27bc288-962b-5287-bfc7-006bf7768c68','64:01','Александрово-Гайский'),
	 ('f56a9d81-d344-51db-bbba-cbcb4ce163f8','64:02','Аркадакский'),
	 ('ce7c8676-82a1-5897-ba14-3421a3fccf52','64:03','Аткарский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('29b33fb0-476e-5a64-9e6c-afc5e47ea358','64:04','Базарно-Карабулакский'),
	 ('2cafc98f-f7ec-5a40-96fe-d3a7776d8aaa','64:05','Балаковский'),
	 ('17c10da6-7671-51b0-9af7-545ff4d566a6','64:06','Балашовский'),
	 ('9d139e9c-0977-5060-8f86-075bbe6897b6','64:07','Балтайский'),
	 ('d8404041-29bb-52ce-b603-f140edd2e302','64:08','Вольский'),
	 ('bacf5503-91a9-5f27-9bb5-db6ff707cd51','64:09','Воскресенский'),
	 ('28c31376-a0bc-5811-b3a5-76cbcb8f81ae','64:10','Дергачевский'),
	 ('558c9b16-fadf-5492-8ca7-558320d9bb62','64:11','Духовницкий'),
	 ('591de673-978e-5d09-a4c3-9e76eb3ffbca','64:12','Екатериновский'),
	 ('b7457115-8168-5e9b-bb06-b4b2f37ee4b8','64:13','Ершовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6121bffb-8819-5ad3-9cf7-b2a146229375','64:14','Ивантеевский'),
	 ('db478fd2-0066-5043-8798-fe7b99f1414c','64:15','Калининский'),
	 ('9400cfb9-b612-5602-831c-4a448662bf54','64:16','Красноармейский'),
	 ('427c2746-e0d0-52a3-90be-94128d6ea85a','64:17','Краснокутский'),
	 ('18bbeed5-0873-504a-bdde-029227152df0','64:18','Краснопартизанский'),
	 ('53f068d5-26fe-568b-9992-4c5df7bfdf20','64:19','Лысогорский'),
	 ('79b9c8f2-8c27-59d9-a70e-4d833aa0b081','64:20','Марксовский'),
	 ('64d77dba-7bc6-5a37-a625-1073908ef0f1','64:21','Новобурасский'),
	 ('5a02c890-3e6d-51a0-910d-5dcc05774002','64:22','Новоузенский'),
	 ('780b3742-da4c-5d69-8709-78e0f965dedd','64:23','Озинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('afbd1556-cfaa-5da8-ab95-65f0c8e98642','64:24','Перелюбский'),
	 ('1f1bd843-e8c9-53a9-8788-72dd077a3626','64:25','Петровский'),
	 ('404171a1-27db-5420-8e0d-d6d180e79d55','64:26','Питерский'),
	 ('c03d37f8-5a97-5061-be39-ee2cc99f051b','64:27','Пугачевский'),
	 ('7a30480f-f2b3-5d2a-b598-445332198cd9','64:28','Ровенский'),
	 ('52605d02-df15-5427-82ff-ff629edaf7bc','64:29','Романовский'),
	 ('10b9e749-d8c7-5d4d-b2c0-53b841810376','64:30','Ртищевский'),
	 ('a296efa5-0209-59dc-87b7-d325405c0e6e','64:31','Самойловский'),
	 ('7c1e2320-36bd-5149-8415-65d757c739d7','64:32','Саратовский'),
	 ('7aa133aa-7dc8-5f52-b55e-1abc8d306691','64:33','Советский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cbee272f-ac91-5afb-bbea-46118640aa53','64:34','Татищевский'),
	 ('b1e8d157-c0f2-5fd5-8fc2-3790004ceb0c','64:35','Турковский'),
	 ('a7907046-5320-5481-9eaf-95da06cd0bfe','64:36','Федоровский'),
	 ('97249293-3016-54e5-ac5a-af1dbf460dff','64:37','Хвалынский'),
	 ('09398531-a713-5372-8ef3-526a9c347ece','64:38','Энгельсский'),
	 ('9323b76e-8f24-5cd3-b17c-4aa9214b6732','64:39','Аткарский городской'),
	 ('b269cd90-8285-5ee8-a057-960f2aef02b6','64:40','Балашовский городской'),
	 ('a555af3e-dffe-5aa3-aa25-9f90169b79dc','64:41','Балаковский городской'),
	 ('e22b0cad-eb0a-5282-b108-98d85b61204c','64:42','Вольский городской'),
	 ('a8d85ab5-d92f-5d59-b2bf-9d1c99d31c69','64:43','Красноармейск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6cbd0e69-5cb2-5fa6-9141-63bb73522417','64:44','Марксовский городской'),
	 ('14467853-7bda-5172-bd9e-627ddda20822','64:45','Петровский городской'),
	 ('67175552-2317-599b-afc3-3814026f7979','64:46','Пугачевский городской'),
	 ('0a50021e-d340-5c42-912c-44a55298983f','64:47','Ртищевский городской'),
	 ('1eb7cc91-1a84-53b2-8476-37d82ecc2466','64:48','Саратовский городской'),
	 ('2858a7b9-5467-5e4b-8b0d-76437e9b003c','64:49','Хвалынский городской'),
	 ('e668285b-d877-583d-a9b7-e35b1708bece','64:50','Шиханский'),
	 ('804559a1-728d-507e-ae03-8881fcaf8cb7','64:51','Энгельский городской'),
	 ('97aa0cd3-58b0-5d0e-bf5f-46859c2837f2','64:52','Светлый'),
	 ('ccaa4573-55df-53aa-93a0-a9b42840a8e5','65:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b272fa31-ad42-5867-98df-f766549d9b6a','65:01','г. Южно-Сахалинск'),
	 ('a6d3883d-5222-5abf-a543-aaf0990a0a9b','65:02','Южно-Сахалинский'),
	 ('139db36e-6a5b-505d-b27c-d840100da0f9','65:03','Корсаковский'),
	 ('d31da66f-a704-5e51-8303-38e221c4fb6d','65:04','г. Корсаков'),
	 ('78e65035-a954-5d8a-866c-d0467f8c7d41','65:05','Анивский'),
	 ('50a1e071-c830-5cdd-9535-29bc383a374a','65:06','Невельский'),
	 ('4874a714-524b-5d32-bb1b-66e334424899','65:07','г. Невельск'),
	 ('786c2e06-c432-5b61-a366-07b576ecccac','65:08','Холмский'),
	 ('a5f35108-16ae-5de0-9eaa-b891dab81f58','65:09','г. Холмск'),
	 ('e2eff032-a5dd-5026-8241-f5720899ba45','65:10','Долинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a013970e-09d1-5a30-890e-d0117e868da0','65:11','г. Долинск'),
	 ('453a2707-51ea-5ed2-96fc-4d9eb101e5cb','65:12','Томаринский'),
	 ('8dd73063-48de-5654-9004-43e7ac78bec6','65:13','Макаровский'),
	 ('2166bd8d-f5c6-5691-a528-abf4b68766c9','65:14','Углегорский'),
	 ('30368e52-5651-515c-b433-e2cea0ffb399','65:15','г. Углегорск'),
	 ('7475e2c2-f35d-510c-a551-c0334f6cffba','65:16','Поронайский'),
	 ('ab61d5d3-4373-508b-bd52-7c599719356c','65:17','г. Поронайск'),
	 ('e884bb79-a754-59f2-b597-9603170ed896','65:18','Смирныховский'),
	 ('b799eb9c-55ed-5c22-8a2c-f4cf64e746f4','65:19','Тымовский'),
	 ('8b4e3cb8-c8ea-570f-a8b5-92ec82fdaef3','65:20','Александровск-Сахалинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5dcbb84b-f9c1-565e-9577-6816fff33ddb','65:21','г. Александровск-Сахалински'),
	 ('f9ae961b-8bf2-576d-89da-f52ef6b0cfdf','65:22','Ногликский'),
	 ('ac6aa253-54bf-5b37-9858-1a189065a1f3','65:23','Охинский'),
	 ('1202650b-48ca-560b-b2a8-0b66caa7546d','65:24','г. Оха'),
	 ('c0e6d9cf-2553-5ce3-9d43-db6ced5a6257','65:25','Южно-Курильский'),
	 ('e89f1d29-fffa-5864-9173-def66f00e1dd','65:26','Курильский'),
	 ('e74353ea-d454-5058-af87-233eed916cb7','65:27','Северо-Курильский'),
	 ('b05ecfb4-df70-54b9-bc5d-7e405eedaa05','65:28','Сахалинский морской'),
	 ('4d26a5f2-ec95-5253-a317-fa2b7d140ec8','65:29','Курильский морской'),
	 ('59a8e329-de69-5fcb-a039-52d441bb9b7c','66:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('777303be-24ef-59dd-aaff-f960e925fa7b','66:01','Алапаевский районный'),
	 ('1fbf9cd3-2bb0-53bd-86b8-7c7e9f6a18fb','66:02','Артемовский'),
	 ('b32bb9ff-bea3-5b1f-a87d-e8c4ea3cd578','66:03','Артинский'),
	 ('ada12965-8dd8-5472-80cb-398fdd49cc73','66:04','Ачитский'),
	 ('af206d65-d642-5e74-8db6-277a0e593642','66:05','Байкаловский'),
	 ('2375c9f8-6f14-5356-986d-fb6c2e15d68c','66:06','Белоярский'),
	 ('bfe4cfbb-994f-5ba7-bc6d-f0d918f8bd2e','66:07','Богдановичский'),
	 ('fa584b45-d945-50e5-bff9-28ec197ad15b','66:08','Верхнесалдинский'),
	 ('1c839a5c-4168-55aa-b479-e3056cab6a0a','66:09','Верхотурский'),
	 ('f2ec957a-ea93-56a6-969c-68e52214cb85','66:10','Гаринский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('38ad735d-32d2-5dde-b91c-0dc37c755f26','66:11','Ирбитский районный'),
	 ('a52204ec-7c1b-52fb-b4bb-44d464070362','66:12','Каменский'),
	 ('4e36dae3-42d4-5143-9e3c-14be4cd9a555','66:13','Камышловский районный'),
	 ('6ccba51d-36c5-58cd-ae44-c79750cfd5ab','66:14','Красноуфимский районный'),
	 ('bb916343-094e-5319-b78e-dececc1f0cbd','66:15','Невьянский'),
	 ('9e0c028d-5d99-52ef-a6d0-b0995c8875ac','66:16','Нижнесергинский'),
	 ('446b3bdf-3fb8-5906-b09e-41b27a76f0d2','66:17','Нижнетуринский'),
	 ('9e27d771-e397-5b6a-afa4-a6d6a9b94e32','66:18','Новолялинский'),
	 ('f7e0fe1b-4980-50b7-988f-73f41f75f359','66:19','Пригородный'),
	 ('152b898b-807e-5c82-b054-5c43513c1ecb','66:20','Пышминский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7673113f-645e-576d-a833-b413b31e6bb2','66:21','Ревдинский'),
	 ('25ec8c75-2271-5942-a242-8a3b03837612','66:22','Режевской'),
	 ('b45cc601-a475-55e2-bb66-ae61b305b3e9','66:23','Серовский районный'),
	 ('445b83a9-e037-55cf-a9be-9f9f8b0d52cc','66:24','Слободо-Туринский'),
	 ('27b7a3d7-b88e-5802-a3a5-e65db6a510a4','66:25','Сысертский'),
	 ('2902e041-c579-5bb4-a0c0-21f22a6e7606','66:26','Таборинский'),
	 ('2fa35231-a2e5-5f45-89d9-e06a4e77abb5','66:27','Тавдинский'),
	 ('84031e30-823d-5734-901b-1dc94d3492d9','66:28','Талицкий'),
	 ('c49073ee-6a89-54df-89ed-02391d41f96b','66:29','Тугулымский'),
	 ('8e57125c-1e65-5b86-8366-eef4f0e7dca3','66:30','Туринский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6a468c80-80ea-50f9-8bdf-fc235697586b','66:31','Шалинский'),
	 ('cdd72682-0719-51bc-b785-186cd9c7383f','66:32','Алапаевский городской'),
	 ('594450da-ffe8-5a7d-bcce-0965a4a4374c','66:33','Арамильский'),
	 ('bb58520b-a838-56ca-8cd0-97b806a53e96','66:34','Асбестовский'),
	 ('8e99e9cd-7267-5cda-bc6d-85e7e5d13c94','66:35','Березовский'),
	 ('d9167148-423b-57e0-99a0-a62e5d0d883e','66:36','Верхнепышминский'),
	 ('7cf7527f-40c3-5bb2-8e2d-84765ef02fdb','66:37','Верхнетагильский'),
	 ('d0dbc560-4a28-59e4-af0f-21ae42384772','66:38','Верхнетуринский'),
	 ('61559864-2ccf-5ac9-92c6-bec406bb95ef','66:39','Волчанский'),
	 ('eebe850c-fd96-5783-8764-d3e2ac4e393e','66:40','Дегтярский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('3923aea9-e2da-5fae-930e-709169094228','66:41','Екатеринбургский'),
	 ('9e53d7d7-6df7-502e-80a9-82051dbde97e','66:42','Заречный'),
	 ('8e84474d-e342-5b79-8047-eaa5bf21763f','66:43','Ивдельский'),
	 ('e7795447-bacc-5854-a778-6713b9ab84f6','66:44','Ирбитский городской'),
	 ('67e66826-fd92-5da2-8dff-6958dc9b816b','66:45','Каменск-Уральский'),
	 ('fefecc31-0658-5cdc-9d77-11c37dd612fc','66:46','Камышловский городской'),
	 ('ed156cd3-73be-5eb7-b0f0-e5677639c05e','66:47','Карпинский'),
	 ('28e9c92d-9ea6-5b80-8eea-f55ce6bef0fb','66:48','Качканарский'),
	 ('1ff46e30-1d44-5819-872a-e131f665487c','66:49','Кировградский'),
	 ('c44cdecf-f879-5db9-9db8-21859401af24','66:50','Краснотурьинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('84b4d8e5-b9d0-5751-b797-d61668a4206f','66:51','Красноуральский'),
	 ('7a3653f1-e446-5ffe-8072-000fd6babf4a','66:52','Красноуфимский городской'),
	 ('efd93bc1-56dd-52f7-a430-a469d84319ca','66:53','Кушвинский'),
	 ('eafefa75-719e-5ab1-ad19-d50aa3f2fcb4','66:54','Лесной'),
	 ('6c33254a-01ca-5a2d-b50d-4f5445902f12','66:55','Нижнесалдинский'),
	 ('4aaeded6-2b48-540e-8032-922853afa9d3','66:56','Нижнетагильский'),
	 ('d522a1eb-65e8-58cd-b35c-91b12a41a5b8','66:57','Новоуральский'),
	 ('10130278-9810-55f4-ae23-fa2005a4eaa5','66:58','Первоуральский'),
	 ('bfc6154c-d0a0-5aee-9c47-d32194d354ae','66:59','Полевской'),
	 ('62ea0e5f-0388-59cc-845c-add97118c894','66:60','Североуральский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('37ea4162-fd5c-5da4-ab33-2728f17b6a44','66:61','Серовский городской'),
	 ('8b51eddc-6f09-532a-a9a5-e5db5ccb468f','66:62','Среднеуральский'),
	 ('27691671-2419-5349-aa37-d163a0bce6ed','66:63','Сухоложский'),
	 ('ab27dea5-f79d-5cb3-8116-4cce3d1817ab','66:65','Бисертский'),
	 ('04b44854-6df2-58de-9dbc-af4e3ddeb5e0','66:66','Верхнедубровский'),
	 ('05e6e987-a3e9-5322-8a97-28ae5410f43e','66:67','Верх-Нейвинский'),
	 ('2805c4d9-255b-5881-9edd-3875747357c4','66:68','Малышевский'),
	 ('58e2ae5d-9085-5ddf-86fb-5c4fa7c92105','66:69','Рефтинский'),
	 ('93fe134e-003e-5cef-8653-08b0201b1404','66:70','Пелымский'),
	 ('a7ff4473-905d-5a9c-bed0-8df668ee89e8','66:71','Свободный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('56b6ace4-a104-582d-bcab-6145487ef225','66:72','Староуткинский'),
	 ('b83dbea3-5407-51b8-b4dd-31d5c5d698b5','66:73','Уральский'),
	 ('437b00c2-3154-5fa9-9b78-7ddb1022c229','67:00','Условный кадастровый район'),
	 ('caf06fdc-2633-51a3-8810-93bbc2b5bd83','67:01','Велижский'),
	 ('09480000-429b-59bb-a0de-2525d7cd3e27','67:02','Вяземский'),
	 ('8180217f-96a4-5f74-bee6-fdac7ec314ac','67:03','Гагаринский'),
	 ('d3d03900-2a62-5e0a-9f83-9b4e9e8d3263','67:04','Глинковский'),
	 ('2c517475-b3bb-5540-9c8b-33ee9ee2a7f4','67:05','Демидовский'),
	 ('c997c287-1751-5cd2-8918-13d645ad3fd4','67:06','Дорогобужский'),
	 ('90cd0bee-3b3d-58e9-a393-e0c4797f505c','67:07','Духовщинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f94a85bf-30fa-556a-836e-ec81d50303d8','67:08','Ельнинский'),
	 ('d6d8d12f-63a6-52f4-a4ac-ac5cacdbdd38','67:09','Ершичский'),
	 ('4319eb09-f28c-5508-9d5a-ba3530c1ce49','67:10','Кардымовский'),
	 ('4c877947-086c-53a1-b910-6b7d5ea7ccdf','67:11','Краснинский'),
	 ('d579b51f-2b67-54d2-b599-e8e4647c8488','67:12','Монастырщинский'),
	 ('fb5da36b-26fa-5dca-ac5d-ba43875ed43c','67:13','Новодугинский'),
	 ('e5e79059-778b-5879-8f67-a776f2a551e5','67:14','Починковский'),
	 ('cae9353d-fc6c-50b7-bcf5-0f70e6e4d3ca','67:15','Рославльский'),
	 ('67a23194-6278-56e8-a115-7b51748a68fe','67:16','Руднянский'),
	 ('0fc86f47-d578-5ded-9d99-c67d5c272dc9','67:17','Сафоновский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('5ce97fb8-8c84-5cbd-8617-a77b16ce7413','67:18','Смоленский районный'),
	 ('cdceb8d5-b589-5496-920b-1e569b36bd55','67:19','Сычёвский'),
	 ('32ab514a-d2be-510f-b888-359a55016ba7','67:20','Тёмкинский'),
	 ('622f6021-c4cc-5c69-a7bb-4c19f79af7a9','67:21','Угранский'),
	 ('d42b88fb-0644-5292-95e2-930691d1ea54','67:22','Хиславичский'),
	 ('0dc35eaf-18b0-54a5-9531-84c28016fe54','67:23','Холм-Жирковский'),
	 ('aa1373e2-6ab5-50a9-adf7-a95258d3a230','67:24','Шумячский'),
	 ('2c47b4b1-f75e-54de-a9aa-cff5b99e4c05','67:25','Ярцевский'),
	 ('ee6fecea-2642-5407-849a-ecb914e5623a','67:26','Десногорский'),
	 ('0cbd3d1b-33ce-5244-a656-a22390f64b1a','67:27','Смоленский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0a48ccf0-4aaa-568d-bce2-949be84d280e','68:00','Условный кадастровый район'),
	 ('f2b0574c-4365-5057-a6d6-20bd0ca769f1','68:01','Бондарский'),
	 ('0a64433a-184a-54db-9a23-94bdc417c2ca','68:02','Гавриловский'),
	 ('6e450dd3-4fc9-5312-8b7f-5c0b657074f1','68:03','Жердевский'),
	 ('85597490-da2d-50ea-9fb2-377203692c15','68:04','Знаменский'),
	 ('18a4f4c1-a34d-5ca5-806a-08025a6086cb','68:05','Инжавинский'),
	 ('32cec737-e836-521d-a4d6-8d36c6dfceb3','68:06','Кирсановский районный'),
	 ('8b9bb8ea-275f-5c91-b391-ef7103e53581','68:07','Мичуринский районный'),
	 ('5016f2be-9c87-5649-9e4c-cd6f3d97bcfb','68:08','Мордовский'),
	 ('7ca5dc93-1db9-59db-aa24-e85e7a0c7b00','68:09','Моршанский районный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('2a87a1a4-4504-5525-9761-ac6c6443eee1','68:10','Мучкапский'),
	 ('ffd3f78f-f97d-568c-80cc-2734ef7faae6','68:11','Никифоровский'),
	 ('8b5dd885-5be4-528f-ae23-367645eef004','68:12','Первомайский'),
	 ('a5d5001f-46fe-5e5d-9337-4939529bddf3','68:13','Петровский'),
	 ('c8683ac9-3319-5558-b57e-91f2e865568a','68:14','Пичаевский'),
	 ('77eebebe-a371-515f-bf51-695dcb442466','68:15','Рассказовский районный'),
	 ('7405de58-792d-5f4d-96d3-56b10dc999b7','68:16','Ржаксинский'),
	 ('3d78c5cd-1bf1-5e02-b02b-8d5614b3a3bc','68:17','Сампурский'),
	 ('0753ee9d-c20f-55b7-9bdd-c2895194f54d','68:18','Сосновский'),
	 ('629f5de1-463a-5574-9086-4976b9146aea','68:19','Староюрьевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a245ce6d-4ef7-5b29-959e-630c1bc5ed2a','68:20','Тамбовский'),
	 ('a78f6028-af09-5c46-b14f-7f674ecf37c9','68:21','Токаревский'),
	 ('7902ded0-8f7c-5868-82c5-5f622824738d','68:22','Уваровский районный'),
	 ('709cfed4-04bc-5c16-8ede-8265cb20f0d6','68:23','Уметский'),
	 ('13291150-2bf8-50c5-8542-e5f765d2126c','68:24','Кирсановский городской'),
	 ('77311e7e-087a-55c8-9d23-2aea706267a4','68:25','Котовский городской'),
	 ('bb206540-edf0-5255-8d43-8fb49c4bfdff','68:26','Мичуринский городской'),
	 ('b8e1dcac-0e84-5156-8d29-2e1a3b728e29','68:27','Моршанский городской'),
	 ('6a4891ce-41ef-5d06-860d-b75e08d686cb','68:28','Рассказовский городской'),
	 ('f92e8e96-8025-5bc3-be70-68c49ecf1fa3','68:29','Тамбовский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('910550ac-a680-56b5-a066-8ead8d3fd10f','68:30','Уваровский городской'),
	 ('01582f29-f539-5ca6-a85f-21874daaa215','69:00','Условный кадастровый район'),
	 ('85d8b8c1-9476-5d58-9dd5-73a7aab6c3e4','69:01','Андреапольский'),
	 ('9ae84b49-41d6-51ba-9874-d74472008d44','69:02','Бежецкий'),
	 ('59adc157-f442-520a-9a58-5c4d03682c0b','69:03','Бельский'),
	 ('9d7d087e-07d6-598d-93ed-2be35a898dd5','69:04','Бологовский'),
	 ('d73612e9-6f61-51bb-a2be-06de7ed64ceb','69:05','Весьегонский'),
	 ('26f04ee5-88d2-5efb-ab88-8d7530827bf6','69:06','Вышневолоцкий'),
	 ('2cf8cc8f-8e2a-51fd-89fb-b5b5d35a097c','69:07','Жарковский'),
	 ('07aa0f58-5e01-5969-bd81-2a1a87446e1e','69:08','Западнодвинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('95c52230-f4b8-55eb-a220-832e1c9f5c89','69:09','Зубцовский'),
	 ('868acadc-46bc-54a6-9148-14480ab850a2','69:10','Калининский'),
	 ('d2a0ce8d-0435-5825-9dbb-f39c8119f308','69:11','Калязинский'),
	 ('146b51b5-64ff-52ed-ad9b-5b61d085e63f','69:12','Кашинский'),
	 ('5300c10f-74e4-5cca-a2cb-c4a2749d4c26','69:13','Кесовогорский'),
	 ('02a74b6b-3be4-504d-84f8-7efa9a0b85de','69:14','Кимрский'),
	 ('66646e04-384e-5ee3-9b57-af4bd66fc48e','69:15','Конаковский'),
	 ('def712b6-5677-5844-84f2-432c90a221e6','69:16','Краснохолмский'),
	 ('11f9f045-6742-5ee0-8716-71fe43ef8bc6','69:17','Кувшиновский'),
	 ('3a3c36f3-244d-5196-8bac-9594e33dd0cf','69:18','Лесной');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('58fd9a60-8c06-5915-853f-6ba83f8561a3','69:19','Лихославльский'),
	 ('10c2b2bb-3c3b-5e45-9fe5-e671df65cdee','69:20','Максатихинский'),
	 ('80acbbbd-cdb5-5cdf-ae86-1ce3d49c2ea3','69:21','Молоковский'),
	 ('fba21299-425f-5f04-b006-192402293c68','69:22','Нелидовский'),
	 ('52714533-6682-5468-ac4c-af34927cf00b','69:23','Оленинский'),
	 ('495a44e6-6b92-55c5-b917-cf6f7cb673de','69:24','Осташковский'),
	 ('e2b10244-96e5-53dd-b316-1ebbd2985e23','69:25','Пеновский'),
	 ('f874669d-f79e-57ea-9806-a13c82d2f2d7','69:26','Рамешковский'),
	 ('8c4a84da-3fc9-5243-ba83-75b2327269ed','69:27','Ржевский'),
	 ('9fa6ed31-9e93-5417-8189-a864f4210955','69:28','Сандовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('80d375e4-069a-546c-8358-bd8ba89a766e','69:29','Селижаровский'),
	 ('e7094f8f-72eb-53cc-8548-4208da556774','69:30','Сонковский'),
	 ('245a958d-f966-59f5-b1cb-026881963826','69:31','Спировский'),
	 ('8059fd0a-71d5-5fdc-9078-8f015823de23','69:32','Старицкий'),
	 ('d2c9cca5-36e7-593b-8384-e6b9e382c68e','69:33','Торжокский'),
	 ('cec4097e-a339-5cd8-8648-ccb9ba133432','69:34','Торопецкий'),
	 ('0639f41f-e98c-5fbe-8eb3-6c2dd1fba5e1','69:35','Удомельский'),
	 ('0127e0cb-74fa-5808-b035-da2d8c59d83f','69:36','Фировский'),
	 ('1a42bfec-dae6-5147-a911-f2731c69506e','69:37','Бежецк'),
	 ('57074929-2334-510a-8456-6c29caf932e9','69:38','Бологое');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b3fed48a-19ce-5347-ac71-4e1cef3f49a7','69:39','Вышний Волочёк'),
	 ('3c078dfb-d636-5efc-a349-3e7307e504cd','69:40','Тверь'),
	 ('50c49c5f-0fcf-577c-80ee-d23275f23a1e','69:41','Кашин'),
	 ('015fb785-4953-5c2a-990c-2d63cf8c8c5a','69:42','Кимры'),
	 ('83428077-720e-503f-a539-c9c8c1ea326f','69:43','Конаково'),
	 ('5e5eb021-04c9-53cb-bb30-b10c285a1752','69:44','Нелидово'),
	 ('7076c88d-a78b-5fb7-a463-6289feb846ac','69:45','Осташков'),
	 ('9eed05f9-ce0f-5bbc-b099-26d031f2157d','69:46','Ржев'),
	 ('8f802c37-3a40-575a-90d5-26dfebd5086e','69:47','Торжок'),
	 ('fbaf706f-a6dd-5f9b-bb48-cad00c66fc3a','69:48','Удомля');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0efbba8a-2604-5ddd-8367-56baa1a2c13d','69:49','ЗАТО "Озерный"'),
	 ('4796e828-7593-5f11-95cd-5cdfae8efd53','69:50','ЗАТО "Солнечный"'),
	 ('cf48093a-9344-556d-b427-70d87b8a65cc','70:00','Условный кадастровый район'),
	 ('b9e6bf6d-5812-5103-9970-656aa8f7570a','70:01','Александровский'),
	 ('721a5f8f-1225-57ae-81c2-6568f4aeed06','70:02','Асиновский'),
	 ('ab17d20a-4f09-5c60-af69-b15550e3019a','70:03','Бакчарский'),
	 ('9e8e8a7d-9260-5099-9046-5e1d93f4caa1','70:04','Верхнекетский'),
	 ('1ac1a74a-6639-52ec-9a65-2ef9c27043ed','70:05','Зырянский'),
	 ('ab73b7e0-3c7c-5638-ba3d-d71623fa28fe','70:06','Каргасокский'),
	 ('a3a5c743-8da4-51c5-a881-59a5c46fba34','70:07','Кожевниковский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fc459e12-708f-528d-9819-f62fee15d852','70:08','Колпашевский'),
	 ('25d9a7fc-6c0b-5c43-a64b-38548c66396b','70:09','Кривошеинский'),
	 ('de82fc9f-c43a-5e85-b44a-5039707d2cc5','70:10','Молчановский'),
	 ('15898788-0b06-5594-83fe-3371772be81a','70:11','Парабельский'),
	 ('efd0d019-0522-5c31-831a-8780e3edad81','70:12','Первомайский'),
	 ('8daf9c94-b814-501d-8138-788db5d5b7ea','70:13','Тегульдетский'),
	 ('18f6a3c4-05ab-56f8-b8d1-e73cba9339dd','70:14','Томский'),
	 ('b0abe4ad-2255-52fc-ad61-9f02b7b62953','70:15','Чаинский'),
	 ('6922d351-4f49-5ae2-9af7-ffc9624ef385','70:16','Шегарский'),
	 ('d247ab0a-70ee-5888-91d8-77774c60270e','70:17','г. Асино');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('9501ddb4-735d-53aa-a6d5-813779ef939d','70:18','Пудинский'),
	 ('d91aeea2-aa75-5abe-9611-2b16452d0dcd','70:19','г. Колпашево'),
	 ('8449702a-1a32-580c-bfab-9db8be202b1c','70:20','Стрежевской'),
	 ('2d3141b6-6c77-5143-b68f-a5d292c6e5bc','70:21','г. Томск'),
	 ('97bc0261-107b-58bb-85d0-8c0ca17b0ee8','70:22','Северский'),
	 ('ae63fc6d-3b38-51fa-82c0-103f9fd6705e','71:00','Условный кадастровый район'),
	 ('137e0cbc-2817-5ccb-bf18-c255116d0b38','71:01','Алексинский'),
	 ('b2975f3f-4bc3-53bf-bb12-a3fbe337f5f1','71:02','Арсеньевский'),
	 ('ddef8cdd-a8a9-5d12-9da8-2e8e16114536','71:03','Белевский'),
	 ('427450dc-df00-50be-9286-06c8f554703d','71:04','Богородицкий');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1cbbd2f5-64ad-53b2-a364-17b8d218e269','71:05','Веневский'),
	 ('f42804c4-02cd-5a08-9cde-1667f1c26261','71:06','Воловский'),
	 ('dbba0b69-5c5e-55dc-9845-82e6f00422f5','71:07','Дубенский'),
	 ('d7f176a7-8e27-5b81-b54b-bc05aea727cc','71:08','Ефремовский'),
	 ('bbbc5afd-c81d-5ffd-b7ce-3aebc79fbde3','71:09','Заокский'),
	 ('95e72539-e8c3-57a7-afbf-a19f18ef5f8d','71:10','Каменский'),
	 ('d3f5c651-9d8c-53ae-ba3b-c9cddebd3f79','71:11','Кимовский'),
	 ('5c7ff293-9bf7-573a-bd56-9ff07f2a7470','71:12','Киреевский'),
	 ('3f7a58fd-79b0-5cf0-8e42-8b96311ca854','71:13','Куркинский'),
	 ('1741022a-6026-5cf4-895e-0c41c9a1ee12','71:14','Ленинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('005d4cfa-0e6d-5bff-a528-94e048bba4b6','71:15','Новомосковский'),
	 ('04ba3e99-af35-5180-a6ff-8293e489c1c1','71:16','Одоевский'),
	 ('ff3817f2-e6d6-5973-95e0-c3bfdf831766','71:17','Плавский'),
	 ('ee2888e2-d101-5b2b-abbe-b9363112b661','71:18','Суворовский'),
	 ('c2a2a3a0-d02c-597f-8859-61cd6891feb9','71:19','Тепло-Огаревский'),
	 ('92ad3b99-63d3-5d0c-9674-15d2dfa8ca0d','71:20','Узловский'),
	 ('682e8b31-b7f0-58a6-8d65-03ae1ccf7b31','71:21','Чернский'),
	 ('efb7a923-5342-5bcd-8e1b-b97f310bde51','71:22','Щекинский'),
	 ('87c7748c-bdab-5834-bce9-fc0ce29ab6d5','71:23','Ясногорский'),
	 ('302d5f48-bc26-536a-a188-98036bd10355','71:24','г. Алексин');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0f27233e-9cc4-5757-9fdc-5d46a59659eb','71:25','г. Богородицк'),
	 ('fa50c59f-262d-5b57-942e-8adf8ecc8a5c','71:26','г. Донской'),
	 ('6473ba57-6d02-541c-9ff2-af7b3118c7fa','71:27','г. Ефремов'),
	 ('ef5d5200-23cc-5246-ad60-7a43d733a80a','71:28','г. Кимовск'),
	 ('09d3d328-21e1-5d9e-9641-de7a1ed95c80','71:29','г. Новомосковск'),
	 ('d772cd6a-b3c9-58ff-84f8-5655483041c2','71:30','г. Тула'),
	 ('054450b1-603b-5774-9913-8a673792d2ee','71:31','г. Узловая'),
	 ('c4f1679d-c274-51a6-a6b3-fee43116fc07','71:32','г. Щекино'),
	 ('4a02437f-ad43-549c-b08b-ab69595cfa91','72:00','Условный кадастровый район'),
	 ('e1b21943-b1c6-5af9-bf1a-41af706cad9f','72:01','Абатский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('f5943905-580d-512c-9fb3-1d804d1c77bd','72:02','Армизонский'),
	 ('179f1346-7465-5b78-a4ea-d83efb5c10bb','72:03','Аромашевский'),
	 ('f18abc25-3197-5310-9049-2e80d66f8fc4','72:04','Бердюжский'),
	 ('5f178f5c-48c2-5d04-ad7d-abdf9e2b92c1','72:05','Вагайский'),
	 ('dd066680-3b7f-5085-9ffa-3ef2d106685b','72:06','Викуловский'),
	 ('323d0883-6c4c-5922-867d-00a23ed7e751','72:07','Голышмановский'),
	 ('861fa543-2a1d-5c72-bb8d-83d6668bc9aa','72:08','Заводоуковский'),
	 ('0f9f9572-cf52-5f22-91e2-ba11b4fba958','72:09','Исетский'),
	 ('1c786920-02af-589e-bec7-f4732c03753a','72:10','Ишимский'),
	 ('b2ce795b-d1e2-579d-b9bd-a90b1c217e10','72:11','Казанский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6b54c38c-132a-529a-b1dd-737334371568','72:12','Нижнетавдинский'),
	 ('13c3efae-d1e5-5949-bd9c-f4c1780c1ded','72:13','Омутинский'),
	 ('d8c759cf-2d9e-5bdf-9b29-6f58e12069aa','72:14','Сладковский'),
	 ('70b34d7e-dec3-5c17-b32f-27980a309fba','72:15','Сорокинский'),
	 ('db2ea42d-d4fe-51ae-94de-053e7aea7dd4','72:16','Тобольский'),
	 ('13a476d8-0257-5959-91e3-216ab3ee0a17','72:17','Тюменский'),
	 ('4107b077-a5bb-575a-b5c0-446dfc6c53bb','72:18','Уватский'),
	 ('d3250924-f360-573a-bc26-4b2237f39994','72:19','Упоровский'),
	 ('f038007b-f1d9-534f-9048-a7c2fa904f61','72:20','Юргинский'),
	 ('62bf310d-4ee2-5f9d-a1b8-9e2ece8a5532','72:21','Ялуторовский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('6ce72cb8-3263-534d-889e-b7886eb41bc0','72:22','Ярковский'),
	 ('588fe9ae-93cb-5364-8e77-774c5c376e22','72:23','г. Тюмень'),
	 ('b9a5e924-1fac-5b67-a389-8331db9d6e36','72:24','г. Тобольск'),
	 ('39d6d524-e654-556b-a249-157e049e445a','72:25','г. Ишим'),
	 ('25ad59dc-49e9-5ca2-a39d-3dae4cc44ed9','72:26','г. Ялуторовск'),
	 ('888660ba-b832-543a-8eae-e93372c165e7','73:00','Условный кадастровый район'),
	 ('ac97f7cb-4a10-5702-85d0-72fb039327bc','73:01','Базарносызганский'),
	 ('24128546-189c-50c5-a944-be2462eed119','73:02','Барышский'),
	 ('0e7e793b-c02b-53c0-bd7e-cb019e272ee9','73:03','Вешкаймский'),
	 ('48a4a7a7-b9bc-530c-b8b0-ab19300ea225','73:04','Инзенский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('b348f728-9d45-506d-8860-4a5f24223c13','73:05','Карсунский'),
	 ('fe5f6134-6368-57f9-ba30-f19c26652faf','73:06','Кузоватовский'),
	 ('8db42990-1085-5630-b118-404c53631464','73:07','Майнский'),
	 ('2b14efac-1851-5624-84aa-c0e9fced2ee6','73:08','Мелекесский'),
	 ('28bb56f2-5ff8-58a2-af4a-1d9c6b4bc08e','73:09','Николаевский'),
	 ('7349b4da-3c2e-5636-b2d0-1c84a60dfa60','73:10','Новомалыклинский'),
	 ('fa934412-d993-5b7b-a760-759bd01aed29','73:11','Новоспасский'),
	 ('d2bfe50e-e804-5978-b22f-cfbec31d3eca','73:12','Павловский'),
	 ('06ee8dce-ceef-504f-8b67-f713c812b07a','73:13','Радищевский'),
	 ('9f3ae7b6-6c3e-5bc5-95b9-3f4818040eff','73:14','Сенгилеевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7b65ef62-08ad-5d3c-8c2c-c1fee398f587','73:15','Старокулаткинский'),
	 ('ceff15fb-795f-56b5-ae5c-5fcf9177977b','73:16','Старомайнский'),
	 ('2ba0cefc-a9a3-552a-ae83-585d14084e83','73:17','Сурский'),
	 ('640b5949-2f9f-59fb-9ee4-926dcc4e7b36','73:18','Теренгульский'),
	 ('fbc824b6-6d03-5593-b520-728b05345b8d','73:19','Ульяновский'),
	 ('0013fb6c-2922-5af5-843e-008a65fc68b0','73:20','Цильнинский'),
	 ('c50499a0-4412-50ff-90bd-3dee6ff50fc4','73:21','Чердаклинский'),
	 ('6c4f1b4c-052a-5afb-8589-b60311927f97','73:22','Барышский городской'),
	 ('52923185-f677-53dc-9181-8b8031736024','73:23','Димитровградский городской'),
	 ('da6bac8a-9b4c-5d55-8b05-e5728045d704','73:24','Ульяновский городской');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('0547a45d-e3b8-5a88-bd17-dbe3f44d4c7d','74:00','Условный кадастровый район'),
	 ('e6a18a8c-ca68-55d7-9f7a-1e6279e270e5','74:01','Агаповский'),
	 ('8855cec4-b309-524c-bbe4-445d22f909a3','74:02','Аргаяшский'),
	 ('adb656ef-455e-5e6d-b57d-d30ff27f9207','74:03','Ашинский'),
	 ('72370c65-c03c-5808-9d22-b82aabfa2249','74:04','Брединский'),
	 ('d12453df-5749-55eb-80e1-35359dcf38f4','74:05','Варненский'),
	 ('fd4dad09-7f7e-5d9a-80ee-ee10e2e89c62','74:06','В.-Уральский'),
	 ('94a42536-10b8-5690-b86b-47ad347aae85','74:07','Еткульский'),
	 ('9c15e2d4-5d35-5cca-8762-261f8dd93ca2','74:08','Карталинский'),
	 ('3f6c22d4-19a7-5c26-86d7-f90a6c33a915','74:09','Каслинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('19b83f62-2f4f-5162-a237-68cb8316028d','74:10','Катав-Ивановский'),
	 ('f0f0c333-30b3-563a-a6f2-47249ab74f80','74:11','Кизильский'),
	 ('5c12f0da-6855-5072-a5ad-bc5870b12d76','74:12','Красноармейский'),
	 ('2b5b72a1-0256-56d4-89e5-b03d261f751b','74:13','Кунашакский'),
	 ('7b528c0a-ad4b-516c-8b83-01f7a20bb81d','74:14','Кусинский'),
	 ('88fd433c-6f8c-5772-9160-dff398af53b8','74:15','Нагайбакский'),
	 ('4a8e5e88-458a-5b9c-90e8-513b2ef2568d','74:16','Нязепетровский'),
	 ('0f1f3e8a-f739-5111-b77b-6714485a19a4','74:17','Октябрьский'),
	 ('1324348e-7576-5f6f-a62f-d593a426b28a','74:18','Саткинский'),
	 ('35008723-48c5-59d8-88a5-1b20d63ebbc7','74:19','Долгодеревенский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('41b5d6aa-daf2-5e0c-8c9a-4effd1a79db4','74:20','Троицкий'),
	 ('911b50ba-f5da-5a60-abb7-1b538ffda838','74:21','Увельский'),
	 ('2e751934-9424-5968-81ff-3c4e9bb9392b','74:22','Уйский'),
	 ('eeb6d7d8-d131-5f73-b872-1f0b84dc2ea8','74:23','Чебаркульский'),
	 ('f4467dcb-8431-592e-b42b-8f554071f80f','74:24','Чесменский'),
	 ('ec9cfcce-99f3-52e3-9964-2e385a58f704','74:25','г. Златоуст'),
	 ('539ebedd-c2f9-53b6-9d8d-e7d7db2b3472','74:26','г. Пласт'),
	 ('8830946f-b871-5c59-b17e-5814f6e512ab','74:27','Верхне-Уфалей'),
	 ('823edc11-4cde-580a-b6fc-2ddf756d559c','74:28','г. Еманжелинск'),
	 ('e7d34848-9c2c-5c92-af62-1e524e044fd9','74:29','г. Карабашск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('22f487d5-243a-5657-8feb-0e72d89c917b','74:30','г. Копейск'),
	 ('4c6fd657-1923-5094-b084-4e8e87ee0729','74:31','г. Коркино'),
	 ('ccc0796f-13de-592f-8095-e1cbf1cf5774','74:32','г. Кыштым'),
	 ('9bbcff28-a4ce-530b-84f4-4bd25fd40cee','74:33','г. Магнитогорск'),
	 ('89ae2717-1725-5ee8-8c36-d82958885692','74:34','г. Миасс'),
	 ('9d6e1878-e9a7-5e9c-8a17-e066a2cf6444','74:35','г. Троицк'),
	 ('820a099e-90c8-50e6-9885-5bdb6101e7fe','74:36','г. Челябинск'),
	 ('0fd2ffa3-fae3-5709-af48-8168966e8744','74:37','г. Южно-Уральск'),
	 ('2109d1fe-dd92-58ba-91eb-d48627161280','74:38','г. Чебаркуль'),
	 ('1d4b51f9-aa72-5276-894a-a8cb993732eb','74:39','г. Усть-Катав');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c9c3a05c-c4e6-5e94-9dc8-ab1c0f014830','74:40','г. Снежинск'),
	 ('a34092db-8ba9-574d-aea2-fe08b665d081','74:41','г. Озерск'),
	 ('af8ab602-19a8-5b6c-8b35-f18c6e21acce','74:42','г. Трехгорный'),
	 ('c0aef076-b25c-531c-aad2-bdca3cd1cb0e','74:43','п. Локомотивный'),
	 ('7501faa6-1104-5f69-9cff-1aea489539d1','75:00','Условный кадастровый район'),
	 ('012f8cd6-49b6-5933-83e6-8503762488d1','75:01','Акшинский'),
	 ('85c9a4e6-596b-5421-934a-4d7bdc1c9b0b','75:02','Александрово-Заводский'),
	 ('0c082d17-082f-5c81-b88a-a077569b2826','75:03','Балейский'),
	 ('229cc3b5-6e3c-50a4-aa11-42695c66fcbd','75:04','Борзинский'),
	 ('014fc4a8-9622-50ba-9693-3a1c71928323','75:05','Газимуро-Заводский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('cdc278dd-39e9-58a2-a892-219d74be3209','75:06','Забайкальский'),
	 ('c20a30e0-8f85-5eee-b212-c589e7f4eed9','75:07','Калганский'),
	 ('1412b9ae-156c-5b35-b005-9f9f1561b7f0','75:08','Карымский'),
	 ('0656dbbf-07f2-57ad-a8ef-d658cbf86438','75:09','Краснокаменский'),
	 ('3dd29dc9-9111-5f94-a07d-e23e1ac8fc82','75:10','Красночикойский'),
	 ('398b4bde-a757-5d9e-85fc-00da84d5d025','75:11','Кыринский'),
	 ('eeeae345-4113-581d-a18c-1ed553170fb8','75:12','Нерчинский'),
	 ('ed5a846f-5f1c-51d8-943b-db0a02c7939d','75:13','Нерчинско-Заводский'),
	 ('c1d9a802-eb89-587a-a49f-5bff424d93ee','75:14','Оловяннинский'),
	 ('4952186a-8196-5597-a0d1-fb4a0b8b0c60','75:15','Оловяннинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('844bdcdb-bdeb-5e35-8a7b-a23dfa281225','75:16','Петровск-Забайкальский'),
	 ('66816a27-2d24-5edf-ae97-f9ca460a9abb','75:17','Приаргунский'),
	 ('b660c901-9700-518f-810f-2d32244d76ef','75:18','Сретенский'),
	 ('3d3155d3-2e1e-511b-a3b8-b7ed370a1a7e','75:19','Улетовский'),
	 ('83a58068-74ca-57d0-b0ba-da5c7516570c','75:20','Хилокский'),
	 ('f6fba3ee-4efd-53bf-83a9-847afa199240','75:21','Чернышевский'),
	 ('19641dc6-4934-5bf3-b677-b45f45cca5cb','75:22','Читинский'),
	 ('310e634b-9d31-5d04-83a3-209d35dd94ec','75:23','Шелопугинский'),
	 ('2ae6b4ce-a549-57e2-8b67-33f8ffc1ce01','75:24','Шилкинский'),
	 ('53679d9b-72f9-5849-a6e6-98584d59585c','75:25','Каларский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d0f7913a-ec57-599c-835d-584bddf04bc9','75:26','Тунгиро-Олекминский'),
	 ('26a31821-d09c-551f-a683-3317b2e83611','75:27','Тунгокоченский'),
	 ('ba5ced78-6345-5ceb-a0ab-3cae9f9b81ca','75:28','Могочинский'),
	 ('eced6a64-02ef-579f-9229-fccaa245299a','75:32','г. Чита'),
	 ('3e6b0121-bdcc-5e7e-84c1-f5e603005c19','76:00','Условный кадастровый район'),
	 ('8fa190df-fd90-5f53-b3c2-ac818350880f','76:01','Большесельский'),
	 ('599f4a3a-6e7e-5aca-96c4-734205a574b2','76:02','Борисоглебский'),
	 ('cc8ea818-5701-5509-90b1-fa38c427eeea','76:03','Брейтовский'),
	 ('e6df3ebb-ee4a-5d9d-9bac-a51ce164cbaf','76:04','Гаврилов-Ямский'),
	 ('1bc5fae9-4edf-55fe-bd95-9740080acc3a','76:05','Даниловский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('c33c89c9-5277-5552-83db-d1bea6b58363','76:06','Любимский'),
	 ('80caee5c-c47b-5e3e-b246-2a1a5f1347f1','76:07','Мышкинский'),
	 ('dbeeea64-5751-5cc8-b26d-34f93cb3f5c3','76:08','Некоузский'),
	 ('dac5e0b6-5552-5112-b5c2-45bd99e19110','76:09','Некрасовский'),
	 ('392c99f1-70c5-5ac1-acf5-234c83460221','76:10','Первомайский'),
	 ('df52ade6-2694-5058-8f4f-134e2c513b36','76:11','Переславский'),
	 ('18a1586d-5168-5841-800e-57fb0ba0ba1e','76:12','Пошехонский'),
	 ('2fbca6a0-488f-5972-9623-02e493a48afc','76:13','Ростовский'),
	 ('b0272d11-d3c8-5d24-9790-7f45a170cdc9','76:14','Рыбинский'),
	 ('2dcfbd8a-ba09-569e-8040-b9edcea4cad9','76:15','Тутаевский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('ee98f602-6ace-5157-b793-12525888ef85','76:16','Угличский'),
	 ('6e6eb242-f5a6-5be1-bb14-bbfb3376897e','76:17','Ярославский'),
	 ('17cb6e4c-05e6-5efc-8eb6-2baa0dd71111','76:18','г. Переславль-Залесский'),
	 ('4ed600d7-aa33-5696-849a-5f1d86cffe90','76:19','г. Ростов'),
	 ('38b6843c-cbca-50f7-ba81-2015ae294693','76:20','г. Рыбинск'),
	 ('6ecad61d-5fd8-5645-8ec8-4817438c77d0','76:21','г. Тутаев'),
	 ('a9422aa8-4927-5137-9a3c-b2c48838c64b','76:22','г. Углич'),
	 ('e0637dce-1e27-5895-90f5-94ce20683bbb','76:23','г. Ярославль'),
	 ('ab494b3c-e2d2-5ce8-a09f-19148dbd0c9d','77:00','Условный кадастровый район'),
	 ('ef121a39-82e3-55ea-9e3e-ef53de0a091e','77:01','Центральный');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('fb8d0b8d-adc2-501b-aa2a-6023d4f82ffd','77:02','Северо-Восточный'),
	 ('c5ef7095-04e4-528e-b85b-fc0e60b5a6ad','77:03','Восточный'),
	 ('1d7252ef-0ce8-5c6a-94b8-f113cf847110','77:04','Юго-Восточный'),
	 ('514e2312-6991-5ac2-bc6b-fcedc3899cba','77:05','Южный'),
	 ('1ae2fa10-6e18-5ad2-8a45-f980fa028722','77:06','Юго-Западный'),
	 ('024979a8-eb7f-56f6-9b42-8e7fa02cc03d','77:07','Западный'),
	 ('8aca7e2f-3c71-528f-91b2-1ce5cb640e91','77:08','Северо-Западный'),
	 ('ea62e451-769a-5385-8422-5e0da989945c','77:09','Северный'),
	 ('eb7bc6d5-5ed1-59eb-8327-2ae942d851f4','77:10','Зеленоградский'),
	 ('c6c6699a-bfbe-5b97-9203-80f859b24b91','77:11','Красногорский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('abb0f237-3178-5b7d-be35-29622c5fd2c9','77:12','Архангельский'),
	 ('b3b2b55b-5d8b-596e-a3c9-475552755919','77:13','Щербинка'),
	 ('a6f434da-4358-5076-9f6f-4b13afda1b7c','77:14','Одинцовский'),
	 ('d877605c-9fb9-566e-9b9b-5f757c38503e','77:15','Сколково'),
	 ('50c2d987-8208-5d60-bab3-e6b7f8ffbcba','77:16','Люберецкий'),
	 ('0793b340-8fd1-5286-828b-d1bd584a3574','77:17','Ленинский'),
	 ('999365ae-f79d-51c7-a764-1c9c03bc319e','77:18','Первомайский'),
	 ('fcf62404-30fd-55bf-ace8-31c156fdb823','77:19','Троицк'),
	 ('187fecea-6aa1-5873-8211-d1e3f0277594','77:20','Рязановский'),
	 ('61f02f0f-a85b-5deb-aae4-8088301d3494','77:21','Наро-Фоминский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a77cc44f-3688-5b48-803e-8c119a1cc88e','77:22','Подольский'),
	 ('f4a228e1-0be8-5175-b186-a785ac98b609','78:00','Условный кадастровый район'),
	 ('a1747ee7-de78-501b-96a1-5d08645f6bd5','78:06','Василеостровский'),
	 ('20d4e9f0-e711-534c-813f-4031adc386a6','78:07','Петроградский'),
	 ('f3aa6470-f8d0-58a9-a16a-72ac42a62a7a','78:10','Калининский'),
	 ('9f76ea24-c9fb-591a-80ba-3d39281c63a4','78:11','Красногвардейский'),
	 ('becec10c-3744-5110-af87-01c10fc6c39a','78:12','Невский'),
	 ('17eb9ea4-a6f1-5231-8cae-96e620a84e3e','78:13','Фрунзенский'),
	 ('c7a09745-068d-54c3-a9ce-57c437ee0f8d','78:14','Московский'),
	 ('ee178646-1cb9-5df4-a7d1-7ed036f64bf9','78:15','Кировский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('abdef424-856a-5e36-838b-e544fb8359ad','78:31','Центральный'),
	 ('4e1cbb73-ca15-5ac9-ad81-972528de0458','78:32','Адмиралтейский'),
	 ('3c7b7428-e659-5097-aaa2-0a02579a3fbf','78:34','Приморский'),
	 ('2d24bf2c-3c23-510f-994f-bdd8e5894ef8','78:36','Выборгский'),
	 ('f45ee458-16eb-5415-a292-f206dbc41c8b','78:37','Колпинский'),
	 ('2a10315e-bd45-55f3-a3f8-64403c384c7f','78:38','Курортный'),
	 ('6f32625b-e4ac-5d1b-a05a-586c0b294ba4','78:40','Юго-Западный'),
	 ('612680d4-ddbb-54f5-94e1-756cb8e68867','78:42','Южный'),
	 ('43f9af09-6876-56c1-909a-30ce257618f3','78:43','Морской'),
	 ('9fe929d7-e5d1-5d7b-97d7-cfa1ee1896ee','78:44','Предпортовый');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a5d57040-bd0a-5159-816e-4fbe0c6d86c8','78:45','Хвойный'),
	 ('a2fdbcde-9a0d-5be8-9bd7-a386c01461ab','79:00','Условный кадастровый район'),
	 ('bcdcf410-afcc-5e53-9c98-282662dd30a9','79:01','г. Биробиджан'),
	 ('c8ac3fdb-064e-55ea-86fd-7b4ae7b73a2d','79:02','Октябрьский'),
	 ('5f807222-c965-5383-847f-4dcf90eea643','79:03','Ленинский'),
	 ('f4f17cfa-2e13-5b43-b1eb-8e6228536d36','79:04','Биробиджанский'),
	 ('83dc968b-6a3c-5292-bd59-3a0d0b1a4fd7','79:05','Облученский'),
	 ('0cd23723-ee08-5084-bb09-496164abbff1','79:06','Смидовичский'),
	 ('0ca12990-3c33-5a12-b969-289ce6f85169','80:00','Условный кадастровый район'),
	 ('bb92a2ce-e53b-5db7-8baf-3e2ed14f8c7d','80:01','Агинский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('a41cc3e2-e5d5-5004-a3f5-1148da5967f1','80:02','Могойтуйский'),
	 ('75c23b57-ea29-5339-84f6-2b040cdbc908','80:03','Дульдургинский'),
	 ('3b345388-d91d-55e9-8bb3-14cce431ed1a','81:00','Условный кадастровый район'),
	 ('e07f7d72-8ade-5aea-9bfb-dd4c05247445','81:01','Гайнский'),
	 ('1402b242-44a4-5507-9060-f5cabf716099','81:02','Косинский'),
	 ('15987540-9ec2-5267-9aae-21654a10ddc1','81:03','Кочевский'),
	 ('96696a84-4144-595a-8471-1dd9d1bac998','81:04','Юрлинский'),
	 ('7ea78389-e15f-57a5-8016-967a6e16438c','81:05','Юсьвинский'),
	 ('232ec5be-7fd8-5664-9b36-cd34ed105884','81:06','Кудымкарский'),
	 ('bba66c20-3896-5b3e-9ea9-a27818f06f28','81:07','г. Кудымкар');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1f949935-12ee-54dd-9304-f9af848e499b','82:00','Условный кадастровый район'),
	 ('cdfcafe5-af5b-5409-8d2d-76cb88682d44','82:01','Тигильский'),
	 ('7e0600c9-aa4c-5b63-b15a-5465f91c0135','82:02','Карагинский'),
	 ('c94157c4-a614-57da-8468-32987d586b40','82:03','Олюторский'),
	 ('b9bce3cb-8d41-5dc3-bc64-09c6792905b8','82:04','Пенжинский'),
	 ('d2e4b5c7-f968-5212-b7db-3f5d0fe2cb41','83:00','Условный кадастровый район'),
	 ('f682608f-9bf4-5301-a62e-722bbd9c81ee','84:00','Условный кадастровый район'),
	 ('286a6582-4976-5876-b9eb-96a0e0f3c3a8','84:01','Диксонский'),
	 ('4475e225-13bf-55f6-b0d1-2c730685c85c','84:02','Дудинский'),
	 ('f5d443bb-77db-5b74-8831-392b32e62cc1','84:03','г. Дудинка');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('58f095ce-333f-5937-a7da-441802724a30','84:04','Усть-Енисейский'),
	 ('3b45390e-8832-5eb8-8b64-2eace28bcf49','84:05','Хатангский'),
	 ('a0deeb92-056b-5af9-b3d5-9dbd5c9a368a','85:00','Условный кадастровый район'),
	 ('fcb2704c-63d4-577f-a9d0-cff7ac4cec3b','85:01','Аларский'),
	 ('8bdf9fb8-eb63-5377-a0a0-9d9339fb09e4','85:02','Баяндаевский'),
	 ('e6e135fa-6834-5582-963e-fc260cde3e82','85:03','Боханский'),
	 ('a3af88ef-a349-5dd9-ae3d-7931e765fd6b','85:04','Нукутский'),
	 ('42d23923-5b91-5644-8afd-3c3d8670694e','85:05','Осинский'),
	 ('e7616858-970f-5b6b-b089-59821d4941df','85:06','Эхирит-Булагатский'),
	 ('be2c3d7b-4e58-56da-8073-2230a3209105','86:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('51594e1f-8b0c-5843-808a-09c3e2d05499','86:01','Кондинский'),
	 ('4a994760-c396-558c-ac27-3eefce480b2b','86:02','Ханты-Мансийский'),
	 ('1244c04b-bc84-577a-9862-b305379cbf2c','86:03','Сургутский'),
	 ('87e5d815-550f-5a45-89c9-04c96d5bdbdf','86:04','Нижневартовский'),
	 ('ce647f67-b7d6-55d3-ad39-a218b20994ad','86:05','Березовский'),
	 ('60f5dc1e-9723-5328-8e2a-2db9c4cd5be4','86:06','Белоярский'),
	 ('4aaab640-29f5-5f35-b4a6-1f2390c53be4','86:07','Октябрьский'),
	 ('bc3e9fdb-f30c-5598-8d70-a30c3ea0f160','86:08','Нефтеюганский'),
	 ('578c11eb-e3ad-5d2e-87e3-a411b996c53c','86:09','Советский'),
	 ('3d334b91-2ca8-5354-bff4-40f00dd86376','86:10','г. Сургут');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1a58e0d9-733c-580c-b3dc-0fd2476455d9','86:11','г. Нижневартовск'),
	 ('c6023adb-2d71-5c4a-9a15-2c6a26c3d894','86:12','г. Ханты-Мансийск'),
	 ('2f0eeba6-526a-59c6-bd44-b54a3e2c236b','86:13','г. Нягань'),
	 ('df81f64d-f34b-55d3-b49b-d649a307a2a6','86:14','г. Урай'),
	 ('97f78418-a05b-5afe-833c-5ef049fbd8e1','86:15','г. Пыть-Ях'),
	 ('7a232185-1771-5aa5-8a0c-00ddb9b25d48','86:16','г. Лангепас'),
	 ('8a8d5a2e-af8c-5016-a759-a67fed7aef9b','86:17','г. Когалым'),
	 ('85e03f0a-7d95-590f-8a07-e55099ae5d69','86:18','г. Радужный'),
	 ('b245054c-870d-57a8-a4c4-2bc693498100','86:19','г. Мегион'),
	 ('420f8aa2-e427-5895-9859-21c18d5f64bb','86:20','г. Нефтеюганск');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('90b42473-9cd3-508e-bcfc-38773a49f28c','86:21','г. Покачи'),
	 ('d8d36ed2-a9cb-55dd-918b-90330e7fca98','86:22','г. Югорск'),
	 ('7e372e63-c766-525c-a13c-6c419fdff7c9','87:00','Условный кадастровый район'),
	 ('ce6d64a2-9328-592a-a785-f2c6db00ff59','87:01','Билибинский'),
	 ('296464e1-c237-5277-800b-6262af19aa8a','87:02','Чаунский'),
	 ('3c509cb2-6c24-5ca1-97c5-d7f55fb47cab','87:03','Шмидтовский'),
	 ('94a90671-df92-52ae-9304-6bf21303a774','87:04','Анадырский'),
	 ('f1f563c6-1b3f-5dc3-a20e-88f2b08f6ffa','87:05','г. Анадырь'),
	 ('a2eb8adc-5dd6-5126-981e-e7c9f2578f5b','87:06','Иультинский'),
	 ('fca6699c-ca43-5ebc-9782-ce71acd73877','87:07','Провиденский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('32af9f38-fc51-5cc2-a9e8-b99fa1be7d59','87:08','Чукотский'),
	 ('a0893e9c-4ca9-5204-948a-f3da85c2caa9','87:09','Беринговский'),
	 ('4aa9416e-bb15-5435-8aa7-a0340de4d321','88:00','Условный кадастровый район'),
	 ('f4f8d71a-cdeb-57ed-a71d-89d1061a32b5','88:01','Илимпийский'),
	 ('815806b4-ed31-5edc-8e8c-1a32ad3c0cbb','88:02','Байкитский'),
	 ('00a740a4-63b1-5e92-b127-74c8254eb869','88:03','Тунгусско-Чунский'),
	 ('6a970f5c-2c9a-5673-ab94-f844c0a74013','89:00','Условный кадастровый район'),
	 ('3fe2c588-8cb9-5742-a3fa-3efb55af8a1e','89:01','Шурышкарский'),
	 ('181ef730-f219-5958-a873-61eaa51f2b7a','89:02','Приуральский'),
	 ('c039988d-61d9-59cb-ae7b-92b673470e1f','89:03','Ямальский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('34a9ac76-04a9-569e-868e-66b77a125bd0','89:04','Надымский'),
	 ('3f2e5896-af2a-55f9-b75a-8b76b50c10f2','89:05','Пуровский'),
	 ('45621d61-a5a1-5c00-a8bd-6b80022e5c44','89:06','Тазовский'),
	 ('2538fde1-391e-5a17-8e87-4c36aa38f8b5','89:07','Красноселькупский'),
	 ('08da7801-4719-5cbe-b909-62339114302f','89:08','г. Салехард'),
	 ('f3b3c5ea-1bcd-5403-b036-967ab7d3d93a','89:09','г. Лабытнанги'),
	 ('875410e0-14ee-5a62-be04-4f32062c22cb','89:10','г. Надым'),
	 ('d1fbf749-2c6e-5eb7-b426-a445ea293c63','89:11','г. Новый Уренгой'),
	 ('9fae52fa-ebe5-5005-95b3-9bfa7a32a538','89:12','г. Ноябрьск'),
	 ('6dc62deb-e213-50b0-93d8-41703b48c8da','89:13','г. Муравленко');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('240604a6-4d33-51f1-aed7-99ccfdc537a8','89:14','г. Губкинский'),
	 ('badf836d-2740-5cd8-b42d-a35a5a8a9ef0','90:00','Условный кадастровый район'),
	 ('8bcafea8-2865-594f-be49-2da1ca12a998','90:01','Бахчисарайский'),
	 ('063e61d7-2e87-5807-bee4-ca1411d581a6','90:02','Белогорский'),
	 ('e3d59636-3808-5e94-b8dc-e19e8d494c18','90:03','Джанкойский'),
	 ('395f2b50-a762-5de6-a62a-5faf5ba24b97','90:04','Кировский'),
	 ('8069e787-cada-5717-a6ca-ce5b029a12bc','90:05','Красногвардейский'),
	 ('e29a28aa-cfda-50f2-8194-47f9ed164a32','90:06','Красноперекопский'),
	 ('a4443f10-be01-5fa8-82bb-805a4ba67eb5','90:07','Ленинский'),
	 ('43e8df58-bde9-5304-b779-d2f40e5919ac','90:08','Нежнегорский');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('7bbdc9f1-2be5-568c-98cf-96b1b3454d08','90:09','Первомайский'),
	 ('553bfcfd-3433-5150-aaea-d7dac8ec4ac2','90:10','Раздольненский'),
	 ('9921669d-96de-5a00-b9c7-a3db246ca221','90:11','Сакский'),
	 ('52ca6bc7-4dba-58f9-b833-ec75b7ec3c95','90:12','Симферопольский'),
	 ('0f8cac65-f05b-56e6-abbe-6077d54df678','90:13','Советский'),
	 ('690cfa2c-01e2-507e-a519-9426e90ee3a5','90:14','Черноморский'),
	 ('974ca62f-42ff-5b55-8204-3b05573150d6','90:15','г. Алушта'),
	 ('7f9d3667-29b2-5e27-96d7-68b5e459c815','90:16','г. Армянск'),
	 ('61122351-80af-5470-83f8-f9ca2254e448','90:17','г. Джанкой'),
	 ('fe6a849e-b0d7-580b-b942-d5d42ab53b26','90:18','г. Евпатория');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('d3f4014c-cd7f-579f-852e-12658a91ba0b','90:19','г. Керчь'),
	 ('d7fb0a02-b366-5574-8bc8-1901aa1c08e0','90:20','г. Красноперекопск'),
	 ('e02a9355-121c-5a45-84fb-bd2e31802ebf','90:21','г. Саки'),
	 ('3afe9174-cbf2-5a00-a7b5-38670d1a7224','90:22','г. Симферополь'),
	 ('3074b725-121e-5c61-9b78-7dd86e9f9e30','90:23','г. Судак'),
	 ('f3ffb68f-ed1e-5663-a93e-9c49eb714183','90:24','г. Феодосия'),
	 ('b814dfaa-ce47-5cc8-83c1-23e254fe69c6','90:25','г. Ялта'),
	 ('1b1fad6e-9c2c-5b3e-8c60-691cec5e9838','90:26','Морской'),
	 ('8841c106-a450-5ba6-bb18-2bd5646e1b9a','90:27','Азовский'),
	 ('389ba55b-cc8c-5866-9777-d9488ddfb068','91:00','Условный кадастровый район');
INSERT INTO public.d_cadastral_level_02 (cadastral_level_02_id,cadastral_level_02_code,cadastral_level_02_anno) VALUES
	 ('1c02455a-7f86-5e5c-90f8-79a59587f4a7','91:01','Балаклавский'),
	 ('8e46d3bd-504a-5f59-b3fb-d93864ddef84','91:02','Гагаринский'),
	 ('b460fbef-ee89-59db-8f7f-1cd99478dcc2','91:03','Ленинский'),
	 ('38417f58-03c9-5335-acb6-d0cf293b5286','91:04','Нахимовский');

ALTER TABLE public.d_cadastral_level_01 ALTER COLUMN cadastral_level_01_code SET NOT NULL;
ALTER TABLE public.d_cadastral_level_02 ALTER COLUMN cadastral_level_02_code SET NOT NULL;

INSERT INTO
    d_cadastral_level_03(
        cadastral_level_03_id,
        cadastral_level_03_code
    )
SELECT
	uuid_generate_v5(uuid_ns_oid(), tc.cadblock_code)::uuid,
	tc.cadblock_code
FROM
	t_cadblocks tc
WHERE
    length(tc.cadblock_code) < 15
    AND length(tc.cadblock_code) > 1;
ALTER TABLE public.d_cadastral_level_03 ALTER COLUMN cadastral_level_03_code SET NOT NULL;


INSERT INTO d_cadastral_level_04 (
    cadastral_level_04_id,
    cadastral_level_04_code,
    cadastral_level_04_anno,
    realty_id
)
SELECT
    uuid_generate_v5(uuid_ns_oid(), tc.cadnum_code)::uuid,
    tc.cadnum_code,
    null,
    tc.realty_id
FROM
    t_cadnums tc
WHERE
    length(tc.cadnum_code) < 22
    AND length(tc.cadnum_code) > 1
    AND (
        tc.realty_id = 2001006000
        OR tc.realty_id = 2001008000
    );
ALTER TABLE public.d_cadastral_level_04 ALTER COLUMN cadastral_level_04_code SET NOT NULL;


INSERT INTO d_cadastral_level_05 (
    cadastral_level_05_id,
    cadastral_level_05_code,
    cadastral_level_05_anno,
    realty_id
)
SELECT
    uuid_generate_v5(uuid_ns_oid(), tc.cadnum_code)::uuid,
    tc.cadnum_code,
    null,
    tc.realty_id
FROM
    t_cadnums tc
WHERE
    length(tc.cadnum_code) < 22
    AND length(tc.cadnum_code) > 1
    AND tc.realty_id = 2001001000;
ALTER TABLE public.d_cadastral_level_05 ALTER COLUMN cadastral_level_05_code SET NOT NULL;


INSERT INTO d_cadastral_level_06 (
    cadastral_level_06_id,
    cadastral_level_06_code,
    cadastral_level_06_anno,
    realty_id
)
SELECT
    uuid_generate_v5(uuid_ns_oid(), tc.cadnum_code)::uuid,
    tc.cadnum_code,
    null,
    tc.realty_id
FROM
    t_cadnums tc
WHERE
    length(tc.cadnum_code) < 22
    AND length(tc.cadnum_code) > 1
    AND (
        tc.realty_id = 2001002000
        OR tc.realty_id = 2001004000
        OR tc.realty_id = 2001005000
        OR tc.realty_id = 2001010000
    );
ALTER TABLE public.d_cadastral_level_06 ALTER COLUMN cadastral_level_06_code SET NOT NULL;
ALTER TABLE public.d_cadastral_level_07 ALTER COLUMN cadastral_level_07_code SET NOT NULL;
ALTER TABLE public.d_cadastral_level_08 ALTER COLUMN cadastral_level_08_code SET NOT NULL;


CREATE TABLE public.l_cadastral_hierarchy (
	cadastral_id uuid NOT NULL,
    cadastral_level_01_id uuid NOT NULL,
    cadastral_level_02_id uuid NULL,
    cadastral_level_03_id uuid NULL,
    cadastral_level_04_id uuid NULL,
    cadastral_level_05_id uuid NULL,
    cadastral_level_06_id uuid NULL,
    cadastral_level_07_id uuid NULL,
    cadastral_level_08_id uuid NULL,
	CONSTRAINT l_cadastral_hierarchy_pk PRIMARY KEY (cadastral_id),
	CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_01_fk FOREIGN KEY (cadastral_level_01_id) REFERENCES public.d_cadastral_level_01(cadastral_level_01_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_02_fk FOREIGN KEY (cadastral_level_02_id) REFERENCES public.d_cadastral_level_02(cadastral_level_02_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_03_fk FOREIGN KEY (cadastral_level_03_id) REFERENCES public.d_cadastral_level_03(cadastral_level_03_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_04_fk FOREIGN KEY (cadastral_level_04_id) REFERENCES public.d_cadastral_level_04(cadastral_level_04_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_05_fk FOREIGN KEY (cadastral_level_05_id) REFERENCES public.d_cadastral_level_05(cadastral_level_05_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_06_fk FOREIGN KEY (cadastral_level_06_id) REFERENCES public.d_cadastral_level_06(cadastral_level_06_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_07_fk FOREIGN KEY (cadastral_level_07_id) REFERENCES public.d_cadastral_level_07(cadastral_level_07_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT l_cadastral_hierarchy_pk_d_cadastral_level_08_fk FOREIGN KEY (cadastral_level_08_id) REFERENCES public.d_cadastral_level_08(cadastral_level_08_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX l_cadastral_hierarchy_idx_1 ON public.l_cadastral_hierarchy (
    cadastral_level_01_id,
    cadastral_level_02_id,
    cadastral_level_03_id,
    cadastral_level_04_id,
    cadastral_level_05_id,
    cadastral_level_06_id,
    cadastral_level_07_id,
    cadastral_level_08_id
);

COMMENT ON TABLE public.l_cadastral_hierarchy IS 'Иерархия кадастровых номеров';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_id IS 'Идентификатор кадастрового номера';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_01_id IS 'Идентификатор кадастрового округа';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_02_id IS 'Идентификатор кадастрового района';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_03_id IS 'Идентификатор кадастрового квартала';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_04_id IS 'Идентификатор единого недвижимого комплекса';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_05_id IS 'Идентификатор кадастрового номера земельного участка';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_06_id IS 'Идентификатор кадастрового номера объекта капитального строительства';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_07_id IS 'Идентификатор кадастрового номера помещения';
COMMENT ON COLUMN public.l_cadastral_hierarchy.cadastral_level_08_id IS 'Идентификатор кадастрового номера комнаты в помещении';

INSERT INTO public.l_cadastral_hierarchy(cadastral_id,cadastral_level_01_id)
SELECT cadastral_level_01_id,cadastral_level_01_id
FROM public.d_cadastral_level_01;

INSERT INTO public.l_cadastral_hierarchy(cadastral_id,cadastral_level_01_id,cadastral_level_02_id)
SELECT cadastral_level_02_id,uuid_generate_v5(uuid_ns_oid(), substring(cadastral_level_02_code,1, 2)),cadastral_level_02_id
FROM public.d_cadastral_level_02
WHERE cadastral_level_02_code IS NOT NULL;

INSERT INTO public.l_cadastral_hierarchy(cadastral_id,cadastral_level_01_id,cadastral_level_02_id,cadastral_level_03_id)
SELECT
    cadastral_level_03_id,
    uuid_generate_v5(uuid_ns_oid(), substring(cadastral_level_03_code,1, 2)),
    uuid_generate_v5(uuid_ns_oid(), substring(cadastral_level_03_code,1, 5)),
    cadastral_level_03_id
FROM public.d_cadastral_level_03
WHERE cadastral_level_03_code IS NOT NULL;

INSERT INTO public.l_cadastral_hierarchy(cadastral_id,cadastral_level_01_id,cadastral_level_02_id,cadastral_level_03_id,cadastral_level_04_id,cadastral_level_05_id)
SELECT
    dcl5.cadastral_level_05_id cadastral_id,
    uuid_generate_v5(uuid_ns_oid(), CASE
        WHEN tcb.cadblock_code IS NOT NULL THEN substring(tcb.cadblock_code, 1, 2)
        ELSE substring(dcl5.cadastral_level_05_code, 1, 2)
    END) cadastral_level_01_id,
    uuid_generate_v5(uuid_ns_oid(), CASE
        WHEN tcb.cadblock_code IS NOT NULL THEN substring(tcb.cadblock_code, 1, 5)
        ELSE substring(dcl5.cadastral_level_05_code, 1, 5)
    END) cadastral_level_02_id,
    tcn.cadblock_id cadastral_level_03_id,
    NULL::uuid cadastral_level_04_id,
    dcl5.cadastral_level_05_id
FROM public.d_cadastral_level_05 dcl5
LEFT JOIN t_cadnums tcn ON tcn.cadnum_id = dcl5.cadastral_level_05_id
LEFT JOIN t_cadblocks tcb ON tcn.cadblock_id = tcb.cadblock_id;

INSERT INTO public.l_cadastral_hierarchy(cadastral_id,cadastral_level_01_id,cadastral_level_02_id,cadastral_level_03_id,cadastral_level_04_id,cadastral_level_06_id)
SELECT
    dcl6.cadastral_level_06_id cadastral_id,
    uuid_generate_v5(uuid_ns_oid(), CASE
        WHEN tcb.cadblock_code IS NOT NULL THEN substring(tcb.cadblock_code, 1, 2)
        ELSE substring(dcl6.cadastral_level_06_code, 1, 2)
    END) cadastral_level_01_id,
    uuid_generate_v5(uuid_ns_oid(), CASE
        WHEN tcb.cadblock_code IS NOT NULL THEN substring(tcb.cadblock_code, 1, 5)
        ELSE substring(dcl6.cadastral_level_06_code, 1, 5)
    END) cadastral_level_02_id,
    tcn.cadblock_id cadastral_level_03_id,
    NULL::uuid cadastral_level_04_id,
    dcl6.cadastral_level_06_id
FROM public.d_cadastral_level_06 dcl6
LEFT JOIN t_cadnums tcn ON tcn.cadnum_id = dcl6.cadastral_level_06_id
LEFT JOIN t_cadblocks tcb ON tcn.cadblock_id = tcb.cadblock_id;


COMMIT;