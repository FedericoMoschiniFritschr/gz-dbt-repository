SELECT
sales.*
, purchase_price
, quantity * purchase_price AS purchase_cost
FROM {{ ref("stg_gz_raw_data__product")}} AS product
RIGHT JOIN {{ ref("stg_gz_raw_data__sales")}} AS sales
ON product.products_id = sales.product_id