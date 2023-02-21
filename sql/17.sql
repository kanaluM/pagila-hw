/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country.country, 
       sum(payment.amount) AS profit
FROM payment, rental, customer, address, city, country
WHERE payment.rental_id = rental.rental_id AND
      rental.customer_id = customer.customer_id AND
      customer.address_id = address.address_id AND
      address.city_id = city.city_id AND
      city.country_id = country.country_id
GROUP BY country
ORDER BY country ASC;
