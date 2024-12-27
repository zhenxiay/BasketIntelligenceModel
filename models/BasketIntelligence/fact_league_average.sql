
select avg(BPM) as avg_bpm
from {{ ref('fact_player_stats') }}