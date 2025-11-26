-- Monthly revenue (sum of payment values per month).
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS year_month,
    SUM(p.payment_value) AS total_revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
    ON o.order_id = p.order_id
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY year_month;
