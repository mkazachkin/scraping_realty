BEGIN;

WITH tac AS (
    SELECT
        ta.address_id,
        tcn.cadnum_id,
        tcc.cadblock_id
    FROM
        t_cadnums tcn
    LEFT JOIN t_cadblocks tcc ON
        tcn.cadblock_id = tcc.cadblock_id
    INNER JOIN t_addresses ta ON
        ta.cadnum_id = tcn.cadnum_id
)
UPDATE
    t_characteristics_flats tc
SET
    cadnum_id = tac.cadnum_id,
    cadblock_id = tac.cadblock_id
FROM
    tac
WHERE
    tc.address_id = tac.address_id;

WITH tac AS (
    SELECT
        ta.address_id,
        tcn.cadnum_id,
        tcc.cadblock_id
    FROM
        t_cadnums tcn
    LEFT JOIN t_cadblocks tcc ON
        tcn.cadblock_id = tcc.cadblock_id
    INNER JOIN t_addresses ta ON
        ta.cadnum_id = tcn.cadnum_id
)
UPDATE
    t_characteristics_garages tc
SET
    cadnum_id = tac.cadnum_id,
    cadblock_id = tac.cadblock_id
FROM
    tac
WHERE
    tc.address_id = tac.address_id;

WITH tac AS (
    SELECT
        ta.address_id,
        tcn.cadnum_id,
        tcc.cadblock_id
    FROM
        t_cadnums tcn
    LEFT JOIN t_cadblocks tcc ON
        tcn.cadblock_id = tcc.cadblock_id
    INNER JOIN t_addresses ta ON
        ta.cadnum_id = tcn.cadnum_id
)
UPDATE
    t_characteristics_houses tc
SET
    cadnum_id = tac.cadnum_id,
    cadblock_id = tac.cadblock_id
FROM
    tac
WHERE
    tc.address_id = tac.address_id;	

WITH tac AS (
    SELECT
        ta.address_id,
        tcn.cadnum_id,
        tcc.cadblock_id
    FROM
        t_cadnums tcn
    LEFT JOIN t_cadblocks tcc ON
        tcn.cadblock_id = tcc.cadblock_id
    INNER JOIN t_addresses ta ON
        ta.cadnum_id = tcn.cadnum_id
)
UPDATE
    t_characteristics_parcels tc
SET
    cadnum_id = tac.cadnum_id,
    cadblock_id = tac.cadblock_id
FROM
    tac
WHERE
    tc.address_id = tac.address_id;	

WITH tac AS (
    SELECT
        ta.address_id,
        tcn.cadnum_id,
        tcc.cadblock_id
    FROM
        t_cadnums tcn
    LEFT JOIN t_cadblocks tcc ON
        tcn.cadblock_id = tcc.cadblock_id
    INNER JOIN t_addresses ta ON
        ta.cadnum_id = tcn.cadnum_id
)
UPDATE
    t_characteristics_rooms tc
SET
    cadnum_id = tac.cadnum_id,
    cadblock_id = tac.cadblock_id
FROM
    tac
WHERE
    tc.address_id = tac.address_id;	

COMMIT;
