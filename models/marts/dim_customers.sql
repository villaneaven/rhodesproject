SELECT         
  customer_id,
  customer_name,
  segment,
  region
FROM {{ref("stg_raw__SUPERSTORE_ORDERS")}}
