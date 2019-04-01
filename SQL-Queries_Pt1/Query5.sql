select concat(a.first_name, " ", a.last_name) as name, count(*) as number_of_films
from actor a
inner join film_actor fa
	on a.actor_id = fa.actor_id
where
	a.first_name = "SEAN"
and
	a.last_name = "WILLIAMS";
