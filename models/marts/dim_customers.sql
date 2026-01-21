SELECT DISTINCT        
  customer_id,
  customer_name,
  segment,
FROM {{ref("stg_raw__SUPERSTORE_ORDERS")}}
