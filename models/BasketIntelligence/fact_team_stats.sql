{{ config(materialized='view') }}

SELECT a.*,
       b.*
FROM `BasketIntelligence`.team_adv_stats a
JOIN `BasketIntelligence`.team_shooting b 
ON a.Team = b.Team