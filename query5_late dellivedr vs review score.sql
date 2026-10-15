
SELECT 
    o.is_late,
    AVG(CAST(r.review_score AS FLOAT)) AS avg_review_score,
    COUNT(*) AS total_orders
FROM orders o
JOIN reviews r ON o.order_id = r.order_id
WHERE o.order_status = 'delivered'
GROUP BY o.is_late
ORDER BY o.is_late;