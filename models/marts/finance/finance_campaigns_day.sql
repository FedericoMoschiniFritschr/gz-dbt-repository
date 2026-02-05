WITH temp_campaign_table AS(
SELECT
CAST(date_date AS TIMESTAMP) AS date_date
, ads_cost
, impression
, click
FROM {{ ref('int_campaigns_day') }}
)
SELECT
finance.*
, operational_margin - ads_cost AS ads_margin
, ads_cost
, impression
, click
FROM temp_campaign_table AS campaign
RIGHT JOIN {{ ref('finance_days') }} AS finance
ON finance.date_date = campaign.date_date