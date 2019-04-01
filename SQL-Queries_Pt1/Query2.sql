select f.title, count(*) as times_rented
from film f 
inner join inventory i
	on f.film_id = i.film_id
inner join rental r
	on r.inventory_id = i.inventory_id
inner join film_category as fc
	on fc.film_id = f.film_id
inner join category as c
	on fc.category_id = c.category_id
where
	c.name = "Horror"
group by f.film_id
order by count(*) desc
LIMIT 3
;
