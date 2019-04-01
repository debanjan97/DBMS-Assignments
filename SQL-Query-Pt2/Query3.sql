select c.name as Genre, sum(p.amount) as Total_Sales 
from payment p
inner join rental r
	on p.rental_id = r.rental_id
inner join inventory i
	on i.inventory_id = r.inventory_id
inner join film f
	on f.film_id = i.film_id
inner join film_category fc
	on fc.film_id = f.film_id
inner join category c
	on c.category_id = fc.category_id
where c.name = "Animation"
;
