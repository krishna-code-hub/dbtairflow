
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='incremental',
    incremental_strategy='merge',
    unique_key='txn_id')
    }}

select *, 
    {% if is_incremental() %}
        'incremental'
    {% else %}
        'full'
    {% endif %} as build_source,
    '{{ invocation_id }}' as invocation_id
from {{source('t1_source','transactions')}} 
{% if is_incremental() %}
    where txn_date > (select max(txn_date) from {{ this }})
{% endif %}

