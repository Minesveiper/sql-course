-- create schemas
CREATE SCHEMA producer;
go

CREATE SCHEMA sale;
go


-- create tables
CREATE TABLE sale.customers (
	customer_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	zip_code VARCHAR (4)
);	
	

CREATE TABLE producer.products (
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	manufacturer varchar (255) NOT NULL
);
	
	
CREATE TABLE sale.orders (
	order_id INT IDENTITY (1, 1) PRIMARY KEY,
	customer_id INT,
	order_date DATE NOT NULL,
	shipped_date DATE,
	FOREIGN KEY (customer_id) REFERENCES sale.customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE sale.order_items (
	order_id INT,
	item_id INT,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (order_id) REFERENCES sale.orders (order_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) REFERENCES producer.products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);


