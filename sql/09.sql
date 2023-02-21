/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT
    first_name,
    last_name,
    sum(amount)
FROM staff, payment
WHERE staff.staff_id = payment.staff_id AND  payment_date < '2020-02-01'
GROUP BY first_name, last_name
ORDER BY last_name DESC;
