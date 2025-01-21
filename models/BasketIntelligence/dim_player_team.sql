{{ config(materialized='table') }}

SELECT distinct a.Player, 
                a.Team, 
                concat(a.Player,'_',a.Team) as player_team,
								b.Full_name as Team_name_full,
								b.Conference
FROM `BasketIntelligence`.per_game_stats a
JOIN  {{ ref('team_conf') }} b
ON a. Team = b.Team