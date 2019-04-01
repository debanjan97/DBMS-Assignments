select distinct count(f.title) as Number_of_R_rated_Movies_Rented_By_Susan_Wilson
from film f
inner join inventory i
	on f.film_id = i.film_id
inner join rental r
	on i.inventory_id = r.inventory_id
inner join payment p
	on r.rental_id = p.rental_id
inner join customer cus
	on cus.customer_id = p.customer_id
where f.rating = "R" and cus.first_name = "SUSAN" and cus.last_name = "WILSON";
