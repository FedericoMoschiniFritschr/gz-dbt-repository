SELECT
EXTRACT (MONTH FROM date_date) AS month_date,
SUM (total_ads_cost) AS total_ads_cost,
SUM(total_impessions) AS total_impessions,
SUM(total_click) AS total_click,
SUM(nb_transactions)AS totalnb_transactions,
SUM(revenue) AS total_revenue,
SUM(average_basket) AS total_average_basket,
SUM(margin) AS total_margin,
SUM(operational_margin)AS operational_margin,
SUM(purchase_cost) AS total_purchase_cost,
SUM(shipping_fee)AS total_shipping_fee,
SUM(logcost)AS total_logcost,
SUM(ship_cost)AS total_ship_cost,
SUM(quantity)AS total_quantity,
SUM(ads_margin) AS total_ads_margin

FROM {{ref('finance_campaigns_day')}}
GROUP BY month_date, paid_source

