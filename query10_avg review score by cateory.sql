USE EcommerceAnalytics;

SELECT TOP 10
    p.product_category_name,
    ROUND(AVG(CAST(r.review_score 
    AS FLOAT)), 2) AS avg_review_score,
    COUNT(*) AS total_reviews
FROM reviews r
JOIN orders o ON r.order_id = o.order_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY avg_review_score DESC;