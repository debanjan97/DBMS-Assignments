use sakila;
select f.title
from film f, film_category fc, category c
where f.rating = "PG-13"
and f.film_id = fc.film_id and
fc.category_id = c.category_id and    
c.name = "Comedy";
