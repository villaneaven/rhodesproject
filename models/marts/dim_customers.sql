SELECT         

    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,        
    product_name,
    sales,
    quantity,
    discount,
    profit,
    regional_manager,
    target_profit_margin,
    profit_margin,
    above_target,
    days_to_ship,
    ship_performance

FROM {{ref("stg_raw__SUPERSTORE_ORDERS")}}
WHERE segment = 'Consumer'
