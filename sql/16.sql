/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT film.title,
       sum(payment.amount) as profit 
FROM payment, rental, inventory, film
WHERE film.film_id = inventory.film_id AND
      inventory.inventory_id = rental.inventory_id AND
      rental.rental_id = payment.rental_id
GROUP BY film.title
ORDER BY profit DESC; 
