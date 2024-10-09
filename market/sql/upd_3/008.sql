BEGIN;

INSERT INTO geospatial.l_cadastral_geometry_hierarchy(cadastral_geometry_id,cadastral_geometry_level_01_id)
SELECT
    gcl.cadastral_geometry_level_01_id,
    gcl.cadastral_geometry_level_01_id
FROM
    geospatial.g_cadastral_level_01 gcl;

INSERT INTO geospatial.l_cadastral_geometry_hierarchy(cadastral_geometry_id,cadastral_geometry_level_01_id,cadastral_geometry_level_02_id)
SELECT
    gcl2.cadastral_geometry_level_02_id,
    gcl1.cadastral_geometry_level_01_id,
    gcl2.cadastral_geometry_level_02_id
FROM
    geospatial.g_cadastral_level_02 gcl2
LEFT JOIN public.l_cadastral_hierarchy lch ON
    gcl2.cadastral_id = lch.cadastral_level_02_id
LEFT JOIN geospatial.g_cadastral_level_01 gcl1 ON
    gcl1.cadastral_id = lch.cadastral_level_01_id
WHERE
    lch.cadastral_id = gcl2.cadastral_id;

INSERT INTO geospatial.l_cadastral_geometry_hierarchy(cadastral_geometry_id,cadastral_geometry_level_01_id,cadastral_geometry_level_02_id,cadastral_geometry_level_03_id)
SELECT
    gcl3.cadastral_geometry_level_03_id,
    gcl1.cadastral_geometry_level_01_id,
    gcl2.cadastral_geometry_level_02_id,
    gcl3.cadastral_geometry_level_03_id
FROM
    geospatial.g_cadastral_level_03 gcl3
LEFT JOIN public.l_cadastral_hierarchy lch ON
    gcl3.cadastral_id = lch.cadastral_level_03_id
LEFT JOIN geospatial.g_cadastral_level_02 gcl2 ON
    gcl2.cadastral_id = lch.cadastral_level_02_id
LEFT JOIN geospatial.g_cadastral_level_01 gcl1 ON
    gcl1.cadastral_id = lch.cadastral_level_01_id
WHERE
    lch.cadastral_id = gcl3.cadastral_id;

COMMIT;