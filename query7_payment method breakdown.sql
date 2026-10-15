USE EcommerceAnalytics;

SELECT 
    payment_type,
    COUNT(*) AS total_transactions,
    SUM(payment_value) AS total_revenue,
    ROUND(COUNT(*) * 100.0 / 
    (SELECT COUNT(*) FROM payments), 2) 
    AS percentage
FROM payments
GROUP BY payment_type
ORDER BY total_transactions DESC;
