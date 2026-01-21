SELECT
  order_id,
  order_date,
  ship_date,
  customer_id,
  product_name,
  category,
  sub_category,
  region,
  sales,
  quantity,
  profit
FROM {{ ref('stg_raw__SUPERSTORE_ORDERS') }}
