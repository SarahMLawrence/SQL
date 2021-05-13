SHOW DATABASES;

USE sakila;

SHOW TABLES;

SELECT *
FROM actor;

SELECT *
FROM actor
WHERE first_name = 'John';

SELECT *
FROM actor
WHERE last_name = 'Neeson';

SELECT *
FROM actor
WHERE actor_id%10;

SELECT *
FROM actor
WHERE actor_id = 100;

SHOW Tables;

SELECT *
FROM film;

SELECT *
FROM film
WHERE rating = 'R';

SELECT *
FROM film
WHERE rating != 'R';

SELECT MIN(length)
FROM film;
SELECT *
FROM film
WHERE length < 48;

SELECT *
FROM film
WHERE special_features = 'Deleted Scenes';

SELECT *
FROM film_list;

SELECT title
FROM film_list
WHERE category = 'Horror';

SELECT *
FROM language;

SELECT DISTINCT (name)
FROM language
ORDER BY (name) desc;

SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%son'
ORDER BY (first_name) asc;