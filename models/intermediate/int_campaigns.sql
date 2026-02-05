SELECT
*
FROM {{ ref("stg_gz_raw_data__adwords")}}
UNION ALL
SELECT
*
FROM {{ ref("stg_gz_raw_data__bings")}}
UNION ALL
SELECT
*
FROM {{ ref("stg_gz_raw_data__criteo")}}
UNION ALL
SELECT
*
FROM {{ ref("stg_gz_raw_data__facebook")}}