-- Distribution of payment types (count & percentage)

SELECT
    payment_type,
    COUNT(*) AS total_transactions,
    ROUND(COUNT(*) / (SELECT COUNT(*) FROM olist_order_payments_dataset) * 100, 2)
        AS percentage
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_transactions DESC;
