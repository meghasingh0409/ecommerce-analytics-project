USE EcommerceAnalytics;

SELECT TOP 10
    oi.seller_id,
    COUNT(oi.order_id) AS total_orders,
    SUM(oi.price) AS total_revenue,
    AVG(oi.price) AS avg_price
FROM order_items oi
GROUP BY oi.seller_id
ORDER BY total_revenue DESC;
