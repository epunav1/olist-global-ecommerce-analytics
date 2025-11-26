-- Top 10 best-selling product categories by revenue

SELECT
    p.product_category_name,
    SUM(oi.price + oi.freight_value) AS total_revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;
