/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT
    customer.customer_id,
    first_name,
    last_name,
    sum(amount)
FROM payment, customer
WHERE payment.customer_id = customer.customer_id
GROUP BY customer.customer_id, first_name, last_name
ORDER BY last_name ASC;
