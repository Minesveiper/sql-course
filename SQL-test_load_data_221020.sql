use SQLtest


SET IDENTITY_INSERT sale.orders ON;
  
INSERT INTO sale.orders(order_id, customer_id, order_date, shipped_date) VALUES(3001,2,'20210305','20210315');
INSERT INTO sale.orders(order_id, customer_id, order_date, shipped_date) VALUES(3002,3,'20210205','20210212');
INSERT INTO sale.orders(order_id, customer_id, order_date, shipped_date) VALUES(3003,1,'20210225','20210305');
INSERT INTO sale.orders(order_id, customer_id, order_date, shipped_date) VALUES(3004,4,'20210101','20210115');


SET IDENTITY_INSERT sale.orders OFF;

SET IDENTITY_INSERT sales.orders_items OFF;  

INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3001,1,1001,135,16.95);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3001,2,1003,1,5700.00);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3002,1,1001,390,16.95);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3002,2,1002,25,45.89);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3002,3,1004,25,37.89);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3003,1,1001,210,16.95);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3003,2,1003,1,5700.00);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3003,3,1002,12,45.89);
INSERT INTO sale.order_items(order_id, item_id, product_id, quantity, list_price) VALUES(3004,1,1004,1,37.89);







INSERT INTO sale.customers(first_name, last_name, email, street, zip_code) VALUES('Bruno','Burgland','Bruno@flingen.com','Andefjellveien 55',9060);
INSERT INTO sale.customers(first_name, last_name, email, street, zip_code) VALUES('Jurgen','Crawson','Jurgen@lablab.com','Kranesveien 7',9060);
INSERT INTO sale.customers(first_name, last_name, email, street, zip_code) VALUES('Petrus','Burnes','petrus@horse.com','Rundveien 456',9060);
INSERT INTO sale.customers(first_name, last_name, email, street, zip_code) VALUES('Bhaal','Skauvogen','Bhaal@Pandemonium.net','Harrogath 667',0000);
INSERT INTO sale.customers(first_name, last_name, email, street, zip_code) VALUES('Deckard','Cain','listen@sanctuary.net','Tristramveien 11',9999);

SET IDENTITY_INSERT producer.products ON;

INSERT INTO producer.products(product_id, product_name, list_price, manufacturer) VALUES(1001,'Combi E23 FDX',16.95,'OS ID')
INSERT INTO producer.products(product_id, product_name, list_price, manufacturer) VALUES(1002,'Bells 6,5cm',45.89,'OS ID')
INSERT INTO producer.products(product_id, product_name, list_price, manufacturer) VALUES(1003,'HHR 3000 Pro',5700.00,'Quickscan')
INSERT INTO producer.products(product_id, product_name, list_price, manufacturer) VALUES(1004,'Kvikk Collar',37.89,'Kvikk AS')

set IDENTITY_INSERT producer.products OFF;


