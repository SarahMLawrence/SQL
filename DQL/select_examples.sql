SHOW DATABASES;
USE mysql_example;

SHOW TABLES;

SELECT *
FROM customer;

SELECT *
FROM customer
WHERE date = '2021-05-12';

SELECT *
FROM customer
ORDER BY date;

SELECT *
FROM customer
ORDER BY name DESC;

SELECT *
FROM customer c JOIN orders o ON c.id = o.customer_id;
