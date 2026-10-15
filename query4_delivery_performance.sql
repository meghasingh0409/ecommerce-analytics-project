select 
   count(*) as total_orders,
   sum(case when is_late ='True'
       then 1 else 0 end) as late_orders,
   round(sum(case when is_late='True'
       then 1 else 0 end) * 100.0 / count(*) , 2)
       as late_precentage,
   avg(cast(delivery_delay_days as float))
       as avg_delay_days
   from orders
   where order_status = 'delivered'
   and delivery_delay_days is not null;