WITH temp_finance_day AS(
  SELECT
  CAST(date_date AS DATE) AS days,
  average_basket,
  operational_margin,
  quantity,
  revenue,
  purchase_cost,
  margin,
  shipping_fee,
  logcost,
  ship_cost
FROM {{ ref('finance_days') }}
)
SELECT
days,
(operational_margin - ads_cost) AS ads_margin,
average_basket,
operational_margin,
ads_cost,
impression,
click,
quantity,
revenue,
purchase_cost,
margin,
shipping_fee,
logcost,
ship_cost
FROM temp_finance_day AS finance_days
JOIN {{ ref('int_campaigns') }} AS int_campaigns
ON finance_days.days = int_campaigns.date_date