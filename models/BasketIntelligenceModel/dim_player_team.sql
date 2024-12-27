{{ config(materialized='table') }}

SELECT distinct a.Player, 
                a.Team, 
                concat(a.Player,'_',a.Team) as player_team
FROM `BasketIntelligence`.per_game_stats a