
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with order_customer as (
select * from {{source('t1_source','orders')}} 
left join {{source('t1_source','customers')}} 
on order_customer_id == customer_id
)
select * from order_customer


