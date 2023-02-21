/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT title
FROM category, film_category, film
WHERE film.film_id = film_category.film_id 
    AND film_category.category_id = category.category_id
    AND name = 'Family'
ORDER BY title ASC;
