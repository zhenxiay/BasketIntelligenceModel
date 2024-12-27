{{ config(materialized='view') }}

select avg(BPM) as avg_BPM,
			 avg(TS) as avg_TS
from {{ ref('fact_player_stats') }}