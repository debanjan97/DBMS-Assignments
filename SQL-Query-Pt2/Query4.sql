select c.name, count(*)
from category c
inner join film_category fc
	on c.category_id = fc.category_id
inner join inventory i
	on i.film_id = fc.film_id
inner join rental r
	on r.inventory_id = i.inventory_id
inner join payment p
	on r.rental_id = p.rental_id
inner join customer cus
	on cus.customer_id = p.customer_id
where cus.first_name = "PATRICIA" and cus.last_name = "JOHNSON"
group by c.name
order by count(*) desc
LIMIT 3;

