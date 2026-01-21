with 

source as (

    select * from {{ source('raw', 'SUPERSTORE_ORDERS') }}

),

renamed as (

    select
        row_id,
        order_id,
        TO_DATE(order_date, 'MM/DD/YY') AS order_date,
        TO_DATE(ship_date, 'MM/DD/YY') AS ship_date,
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
        "Sub-Category" AS sub_category,        
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

    from source

)

select * from renamed