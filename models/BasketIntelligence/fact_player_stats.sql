{{ config(materialized='view') }}

with source_data as (

SELECT a.Player,
       a.Team,
       concat(a.Player,'_',a.Team) as player_ID,
       a.Pos,
       a.G,
       a.GS,
       a.MP,
       a.FG,
       a.FGA,
--     a.FG%, 
       a.3P, 
       a.3PA, 
       a.3P_pct, 
       a.2P, 
       a.2PA, 
       a.2P_pct, 
       a.eFG_pct, 
       a.FT,
       a.FTA, 
       a.FT_pct, 
       a.ORB, 
       a.DRB, 
       a.TRB, 
       a.AST, 
       a.STL, 
       a.BLK, 
       a.TOV, 
       a.PF,
       a.PTS,
       b.PER, 
       b.TS,
       b.3PAr, 
       b.FTr, 
       b.ORB_rate, 
       b.ORD_rate, 
       b.TRB_rate, 
       b.AST_rate,
       b.STL_rate, 
       b.BLK_rate, 
       b.TOV_rate, 
       b.USG_rate, 
       b.OWS, 
       b.DWS, 
       b.WS,
       b.WS_48, 
       b.OBPM, 
       b.DBPM, 
       b.BPM, 
       b.VORP
FROM `BasketIntelligence`.per_game_stats a
LEFT JOIN `BasketIntelligence`.adv_stats b 
ON a.Player=b.Player
AND a.Team = b.Team
)

select *
from source_data