SHOW DATABASES;

USE mysql_example;

insert into Customer(name, date) VALUES('Charlie', '2021-05-12');
insert into Customer(name, date) VALUES('Ruthie', '2021-05-12');
insert into Customer(name, date) VALUES('Ralphie', '2021-05-12');
insert into Customer(name, date) VALUES('Lucy', '2021-05-12');
insert into Customer(name, date) VALUES('Rocky', '2021-05-12');

Select * FROM Customer;

insert into Product(id, product_name, description) VALUES(2, 'Cat Litter', 'Clumping');
insert into Product(id, product_name, description) VALUES(3, 'Litter Box', 'Blue');
insert into Product(id, product_name, description) VALUES(4, 'Meow Mix', '15lb bag / Indoor cat');
insert into Product(id, product_name, description) VALUES(5, 'Brush', 'detangler');
insert into Product(id, product_name, description) VALUES(6, 'Cat Toys', '14pieces');


Select * FROM Product;


insert into Orders(customer_id, product_id, date_placed, Quantity) VALUES (3, 6, '2021-01-05', '10');
insert into Orders(customer_id, product_id, date_placed, Quantity) VALUES (3, 4, '2021-01-05', '2');
insert into Orders(customer_id, product_id, date_placed, Quantity) VALUES (2, 3, '2021-05-11', '5');
insert into Orders(customer_id, product_id, date_placed, Quantity) VALUES (6, 4, '2021-01-15', '1');
insert into Orders(customer_id, product_id, date_placed, Quantity) VALUES (5, 2, '2021-01-05', '10');


Select * FROM Orders;