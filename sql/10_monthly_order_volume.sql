SELECT
    YEAR(o.order_purchase_timestamp)   AS order_year,
    MONTH(o.order_purchase_timestamp)  AS order_month,
    COUNT(*)                           AS total_orders
FROM olist_orders_dataset o
GROUP BY
    order_year,
    order_month
ORDER BY
    order_year,
    order_month;
