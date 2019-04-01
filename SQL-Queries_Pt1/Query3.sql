select distinct concat(c.first_name," ", c.last_name) as name
from customer c
inner join rental r
	on r.customer_id = c.customer_id
inner join address a
	on c.address_id = a.address_id
inner join city
	on city.city_id = a.city_id
inner join country
	on country.country_id = city.country_id
inner join inventory i
	on i.inventory_id = r.inventory_id
inner join film_category fc
	on fc.film_id = i.film_id
inner join category
	on category.category_id = fc.category_id
where country.country = "India" and category.name = "Sports";
