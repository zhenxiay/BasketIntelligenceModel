{{ config(materialized='view') }}

SELECT a.*,
       2P-FGA,
       0-3-FGA,
       3-10-FGA,
       10-16-FGA,
       16-3P-FGA,
       3P-FGA,
       2P-pct,
       0-3-pct,
       3-10-pct,
       10-16-pct,
       16-3P-pct,
       3P-pct,
       3PA-corner,
       3P-corner

FROM `BasketIntelligence`.team_adv_stats a
JOIN `BasketIntelligence`.team_shooting b 
ON a.Team = b.Team