{{ config(materialized='table') }}

with source_data as (

select distinct pos
from `BasketIntelligence`.per_game_stats

)

select pos
from source_data