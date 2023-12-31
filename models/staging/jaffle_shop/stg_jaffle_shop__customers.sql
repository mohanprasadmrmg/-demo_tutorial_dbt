{{ config(
    pre_hook=[
      "insert into hook_dbt(pre_post) values('shop_customer_pre)"
    ],
    post_hook=[
      "insert into hook_dbt(pre_post) values('shop_customer_post')"
    ]
) }}

with 

source as (

  select * from {{ source('jaffle_shop', 'customers') }}

),

transformed as (

  select 

    id as customer_id,
    last_name as customer_last_name,
    first_name as customer_first_name,
    first_name || ' ' || last_name as full_name

  from source

)

select * from transformed