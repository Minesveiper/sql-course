/*
	Select all brands.
*/
select *  from production.brands 

/*
	Customers from Bronx and Brooklyn
*/
select Customer_id as 'Cust ID', 
	last_name as 'Last name', 
	first_name as 'First name', 
	email as Email, 
	street as 'Street Address', 
	city as 'City', 
	state as 'State' 
	from sales.customers where city like 'Bronx' or city like 'Brooklyn'
	order by city, last_name
	

/*
	All Products, brand should be readable not id. 
*/
select product_name as 'Product name', 
	brand_name as Brand, model_year as 'model', 
	list_price as Price 
	from production.products, production.brands
	where production.brands.brand_id = production.products.brand_id
	order by product_name desc


/*
	Use SQL COUNT() function to get number of customers who are from state NY.
*/
select count(*) from sales.customers where state like 'NY'


/*
	All products that Pamala Henry from Bronx NY has ordered.
	Brand should be readable not id
*/
select p.product_name as 'Product name', b.brand_name as 'Brand', p.list_price as 'Price'
	from production.products as p
	join production.brands as b on p.brand_id = b.brand_id
	join sales.order_items as soi on p.product_id = soi.product_id
	join sales.orders as so on soi.order_id = so.order_id
	where so.customer_id = 57
	

