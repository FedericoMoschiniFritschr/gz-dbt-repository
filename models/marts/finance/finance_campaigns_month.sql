
SELECT
EXTRACT(MONTH FROM date_date) AS Month_date
, nb_transactions	
, revenue	
, average_basket
, margin	
, operational_margin	
, purchase_cost
, ads_cost
, operational_margin - ads_cost AS ads_margin
, impression
, click
, shipping_fee	
, logcost	
, ship_cost	
, quantity
FROM {{ ref('finance_campaigns_day') }}
