SELECT
  order_id,
  customer_id,
  product_id || ' - ' || product_name AS product_key,

  order_date,
  ship_date,

  region,
  country,
  state,
  city,
  postal_code

  sales,
  quantity,
  profit,
  discount,


  regional_manager,
  target_profit_margin,
  profit_margin,
  above_target,
  days_to_ship,
  ship_performance
FROM {{ ref('stg_raw__SUPERSTORE_ORDERS') }}
