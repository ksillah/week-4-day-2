--How many actors are there with the last name ‘Wahlberg’?
SELECT last_name, COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;

--How many payments were made between $3.99 and $5.99?
SELECT amount, COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount;

--What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--How many customers have the last name ‘William’
SELECT last_name, COUNT(last_name)
FROM customer
WHERE last_name = 'William'
GROUP BY last_name;
--Did the question mean to ask for Williams?
SELECT last_name, COUNT(last_name)
FROM customer
WHERE last_name = 'Williams'
GROUP BY last_name;

--What store employee (get the id) sold the most rentals? 
SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id
LIMIT 1;

--How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;

--What film has the most actors in it? (use film_actor table and get film_id
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) DESC
LIMIT 1;

--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table
SELECT store_id, COUNT(last_name) 
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY COUNT(last_name) DESC
Limit 1;

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id,amount 
FROM payment
WHERE customer_id BETWEEN 380 and 430;


--Within the film table, how many rating categories are there? 
SELECT COUNT(DISTINCT rating)
FROM film;
--And what rating has the most movies total?
SELECT rating, count( rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC
LIMIT 1;

