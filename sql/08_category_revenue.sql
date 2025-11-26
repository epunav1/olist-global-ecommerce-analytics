-- Percentage of late deliveries

SELECT
    ROUND(
        (SUM(CASE 
                WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date 
                THEN 1 ELSE 0 END) 
         / COUNT(*)) * 100, 
    2) AS late_delivery_percentage
FROM olist_orders_dataset o
WHERE o.order_delivered_customer_date IS NOT NULL;
