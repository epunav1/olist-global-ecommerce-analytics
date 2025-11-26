-- Revenue by customer state

SELECT
    c.customer_state,
    SUM(p.payment_value) AS total_revenue
FROM olist_orders_dataset o
JOIN olist_customers_dataset c
    ON o.customer_id = c.customer_id
JOIN olist_order_payments_dataset p
    ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;
