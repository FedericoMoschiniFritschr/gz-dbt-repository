WITH finance_campaigns AS 

(
SELECT *
FROM {{ref('int_campaigns_day')}} AS campaigns
JOIN {{ref('finance_days')}} AS finance
ON campaigns.date_date = finance.date_date_new
)
SELECT  
    final.* EXCEPT (date_date_new,campaign_key,campaign_name,average_basket_bis),
    ( operational_margin - total_ads_cost ) AS ads_margin
FROM finance_campaigns AS final