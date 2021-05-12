
-- SHOW DATABASES - used to see how many databases are present on the server
SHOW DATABASES;

-- USE db_name - will switch to db_name database
USE mysql_example;

-- CREATE TABLE - used to create a new table in a database
CREATE TABLE Orders
(
    Order_id INT AUTO_INCREMENT, 
    customer_id INT, 
    product_id INT, 
    date_placed DATE NOT NULL, 
    Quantity INT, 
    PRIMARY KEY (Order_id), 
    FOREIGN KEY (customer_id) REFERENCES Customer(id), 
    FOREIGN KEY(product_id) REFERENCES Product(id)
);


    -- INSERT INTO - used to insert new records in a table
    Insert INTO Orders
        (customer_id, product_id, date_placed, Quantity)
    VALUES
        (1, 1, '2021-05-11', '1');


    -- ALTER TABLE - modifies a table definition by altering, adding, or dropping columns and constraints
    ALTER TABLE Orders
    ADD customer_name VARCHAR(100);


    -- DESC TABLE - used to describe the list of column definitions in a specified table
    DESC Orders;


    -- DROP TABLE - removes one or more table definitions and all data, constraints for those tables
    DROP TABLE Orders;
