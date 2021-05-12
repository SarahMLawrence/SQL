SHOW DATABASES;

USE mysql_example;

CREATE TABLE Orders
(
    Order_id INT
    AUTO_INCREMENT, 
    customer_id INT, 
    product_id INT, 
    date_placed DATE NOT NULL, 
    Quantity INT, 
    PRIMARY KEY
    (Order_id), 
    FOREIGN KEY
    (customer_id) REFERENCES Customer
    (id), 
    FOREIGN KEY
    (product_id) REFERENCES Product
    (id)
);

Insert INTO Orders
    (customer_id, product_id, date_placed, Quantity)
VALUES
    (1, 1, '2021-05-11', '1');