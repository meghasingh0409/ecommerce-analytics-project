USE EcommerceAnalytics;
SELECT
    SUM(payment_value) AS total_revenue,
    COUNT(distinct order_id) AS total_orders,
    avg(payment_value) as avg_order_value
from payments;



