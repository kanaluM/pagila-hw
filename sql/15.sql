/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, 
       count(category.name) AS sum
FROM category, film_category, film, language
WHERE film.language_id = language.language_id AND
      language.name = 'English' AND
      film.film_id = film_category.film_id AND 
      film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY category.name ASC;
