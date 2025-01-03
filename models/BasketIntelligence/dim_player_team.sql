{{ config(materialized='table') }}

SELECT distinct a.Player, 
                a.Team, 
                concat(a.Player,'_',a.Team) as player_team,
                b.conference
FROM `BasketIntelligence`.per_game_stats a
JOIN `BasketIntelligence`.team_conf b
ON a.Team = b.Team