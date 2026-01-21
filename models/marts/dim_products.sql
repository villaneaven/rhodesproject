SELECT DISTINCT
  product_id,
  product_name,
  category,
  sub_category,
  product_id || ' - ' || product_name AS product_key
FROM {{ ref('stg_raw__SUPERSTORE_ORDERS') }}
