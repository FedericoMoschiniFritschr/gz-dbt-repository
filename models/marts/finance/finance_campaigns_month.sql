SELECT
EXTRACT(MONTH FROM days) AS date_month,
ads_margin,
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
FROM {{ ref('finance_campaigns_day') }}