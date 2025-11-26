-- Top 10 cities by total revenue

SELECT
    c.customer_city,
    SUM(p.payment_value) AS total_revenue
FROM olist_orders_dataset o
JOIN olist_customers_dataset c 
    ON o.customer_id = c.customer_id
JOIN olist_order_payments_dataset p
    ON o.order_id = p.order_id
GROUP BY c.customer_city
ORDER BY total_revenue DESC
LIMIT 10;
