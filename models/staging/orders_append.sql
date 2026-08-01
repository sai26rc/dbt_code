{{config(materialized='incremental',
      incremental_strategy='append')}}

WITH tb1 as(
    select
    id ,
    user_id,
    order_date,
    status
    from {{source('datafeed_shared_schema','raw_ordersdata')}})
select * from tb1 limit 1000