{{ config(materialized='view') }}

SELECT 
    b.Team,
    Age,
    W,
    L,
    PW,
    PL,
    MOV,
    SOS,
    SRS,
    ORtg,
    DRtg,
    NRtg,
    Pace,
    FTr,
    3PAr,
    TS_pct,
    Arena,
    Attend,
    Attend_G
--    dev_eFG_pct,
--   dev_TOV_pct,
--    dev_DRB_pct,
--    dev_FT_FGA,
--    off_eFG_pct,
--    off_TOV_pct,
--    off_ORB_pct,
--   off_FT_FGA,

FROM `BasketIntelligence`.team_adv_stats a
JOIN `BasketIntelligence`.team_shooting b 
ON a.Team = b.Team