/*
 * List the last names of actors, as well as how many actors have that last name.
 * HINT:
 * Use the count() aggregation function and group by the actor's last name.
 */

-- GROUP BY clause must include names of all columns not in an aggregate function
-- GROUP BY can also be used to remove duplicates
SELECT
    last_name,
    count(*) AS last_name_count
FROM actor
GROUP BY last_name
ORDER BY last_name_count DESC;
