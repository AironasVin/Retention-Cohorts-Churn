--Retention_rate
WITH week_0 AS
(
  SELECT DISTINCT
  user_pseudo_id AS user_id,
  category,
  subscription_start,
  DATE_TRUNC(subscription_start, WEEK) AS start_week,
  subscription_end,
  DATE_TRUNC(subscription_end, WEEK) AS end_week
  FROM `turing_data_analytics.subscriptions`
  WHERE subscription_start <= ('2021-02-07')
  ORDER BY subscription_start
),
retention_table AS
(
  SELECT 
  start_week AS cohort,
  COUNT(user_id) AS week_0,
  
--start_week < DATE_ADD(start_week, INTERVAL 1 WEEK) ensures returning start_week + 1 week, subscription started before week 1 ends
--end_week >= DATE_ADD(start_week, INTERVAL 1 WEEK) ensures that end_week is later or equal to end_week + 1 week, subscription is still active in week 1 

    SUM(CASE WHEN start_week < DATE_ADD(start_week, INTERVAL 1 WEEK) AND end_week >= DATE_ADD(start_week, INTERVAL 1 WEEK) OR subscription_end IS NULL THEN 1 ELSE 0 END) AS week_1,
  
    SUM(CASE WHEN start_week < DATE_ADD(start_week, INTERVAL 2 WEEK) AND end_week >= DATE_ADD(start_week, INTERVAL 2 WEEK) OR subscription_end IS NULL THEN 1 ELSE 0 END) AS week_2,
  
    SUM(CASE WHEN start_week < DATE_ADD(start_week, INTERVAL 3 WEEK) AND end_week >= DATE_ADD(start_week, INTERVAL 3 WEEK) OR subscription_end IS NULL THEN 1 ELSE 0 END) AS week_3,
  
    SUM(CASE WHEN start_week < DATE_ADD(start_week, INTERVAL 4 WEEK) AND end_week >= DATE_ADD(start_week, INTERVAL 4 WEEK) OR subscription_end IS NULL THEN 1 ELSE 0 END) AS week_4,
  
    SUM(CASE WHEN start_week < DATE_ADD(start_week, INTERVAL 5 WEEK) AND end_week >= DATE_ADD(start_week, INTERVAL 5 WEEK) OR subscription_end IS NULL THEN 1 ELSE 0 END) AS week_5,
  
    SUM(CASE WHEN start_week < DATE_ADD(start_week, INTERVAL 6 WEEK) AND end_week >= DATE_ADD(start_week, INTERVAL 6 WEEK) OR subscription_end IS NULL THEN 1 ELSE 0 END) AS week_6

  FROM week_0
  GROUP BY 1
)
SELECT
cohort,
week_0/week_0 AS week_0,
ROUND(week_1/week_0, 2) AS week_1,
ROUND(week_2/week_0, 2) AS week_2,
ROUND(week_3/week_0, 2) AS week_3,
ROUND(week_4/week_0, 2) AS week_4,
ROUND(week_5/week_0, 2) AS week_5,
ROUND(week_6/week_0, 2) AS week_6
FROM retention_table;
