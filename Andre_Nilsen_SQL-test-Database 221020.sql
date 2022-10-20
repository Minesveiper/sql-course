select p.product_name as 'Product name', 
p.manufacturer as 'Manufacturer', 
i.quantity as 'Quantity', 
p.list_price as 'Price', 
s.order_id as 'Order ID', 
s.order_date as 'Order Placed', 
c.first_name as 'First Name', 
c.last_name as 'Sirname', 
c.customer_id as 'Customer ID' 

from producer.products as p
join sale.order_items as i on p.product_id = i.product_id
join sale.orders as s on i.order_id = s.order_id
join sale.customers as c on s.customer_id = c.customer_id
order by s.order_id
