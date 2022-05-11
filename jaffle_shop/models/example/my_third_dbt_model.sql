{{ config(materialized='table') }}

select * from {{source("jaffle_data","raw_customers")}}