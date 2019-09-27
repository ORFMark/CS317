SELECT COUNT(*) FROM rental
    INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE rental.return_date IS NULL
    AND rental_date + INTERVAL film.rental_duration DAY < CURRENT_DATE();