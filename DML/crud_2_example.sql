SELECT * FROM Customer;

SELECT * FROM Customer
JOIN Orders ON (Orders.customer_id = Customer.id)
JOIN Product ON (Product.id = Orders.product_id);

UPDATE Customer set name = 'Charlotte' where id = 1;
UPDATE Customer set name = 'David' where id = 2;

SELECT * FROM Customer;

SELECT * FROM Product WHERE product_name = 'Cat Litter';

-- Disable safe mode
SET SQL_SAFE_UPDATES=0;
SET FOREIGN_KEY_CHECKS=0; -- to disable them

DELETE FROM Product WHERE product_name = 'Cat Litter';

SELECT * FROM Product;

SET FOREIGN_KEY_CHECKS=1; -- to re-enable them



