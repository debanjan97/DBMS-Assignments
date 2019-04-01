select count(distinct f.title) as CountofMovies
from film f
inner join film_category fc
	on fc.film_id = f.film_id
inner join category c
	on fc.category_id = c.category_id
inner join inventory i
	on i.film_id = f.film_id
inner join rental r
	on r.inventory_id = i.inventory_id
inner join staff s
	on s.staff_id = r.staff_id
where s.first_name = "Jon" and s.last_name = "Stephens" and c.name = "Sci-Fi";
