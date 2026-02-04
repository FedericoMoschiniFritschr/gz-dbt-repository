SELECT
margin.*
, shipping_fee
, logcost
,ship_cost
, (margin.margin + shipping_fee - logcost - ship_cost) AS operational_margin
FROM {{ ref("int_sales_margin")}} AS margin
LEFT JOIN {{ ref("stg_gz_raw_data__ship")}} AS ship
ON margin.orders_id =ship.orders_id