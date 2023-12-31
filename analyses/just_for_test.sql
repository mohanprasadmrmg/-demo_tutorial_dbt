with source_store_sales_data as(
    select * from {{ source('snowflake_sample_data', 'STORE_SALES') }}
),
final as(
    select *from source_store_sales_data
)
select * from final 