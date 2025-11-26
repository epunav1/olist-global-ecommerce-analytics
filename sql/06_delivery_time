-- Average delivery time in days

SELECT 
    ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)), 2) 
        AS avg_delivery_days
FROM olist_orders_dataset o
WHERE o.order_delivered_customer_date IS NOT NULL;
