
SHOW DATABASES;

USE sakila;

SHOW TABLES;

SELECT *
FROM actor;

-- Find the surname of the actor with the forename 'John'
SELECT *
FROM actor
WHERE first_name = 'John';

-- Find all actors with surname 'Neeson'.
SELECT *
FROM actor
WHERE last_name = 'Neeson';

-- Find all actors with ID numbers divisible by 10.
SELECT *
FROM actor
WHERE actor_id%10;


SHOW Tables;

SELECT *
FROM film;

-- Find every R-rated movie.
SELECT *
FROM film
WHERE rating = 'R';

-- Find every non-R-rated movie.
SELECT *
FROM film
WHERE rating != 'R';

-- Find the ten shortest movies.
SELECT MIN(length)
FROM film;

SELECT *
FROM film
WHERE length < 48;

-- Find all movies that have deleted scenes.
SELECT *
FROM film
WHERE special_features = 'Deleted Scenes';

SELECT *
FROM film_list;

-- Find the titles of all the horror movies.
SELECT title
FROM film_list
WHERE category = 'Horror';

SELECT *
FROM language;

-- List the name of every language in reverse-alphabetical order. (HINT: use 'ORDER BY' and 'SELECT DISTINCT')
SELECT DISTINCT (name)
FROM language
ORDER BY (name) desc;

SELECT *
FROM actor;

-- List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename (HINT: use %son%)
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%son'
ORDER BY (first_name) asc;
