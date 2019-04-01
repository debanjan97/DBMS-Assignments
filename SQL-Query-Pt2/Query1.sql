select count(*) no_of_documentary_w_deleted_sc
from film
where (description like "%Documentary%" or description like "%documentary%") and special_features like "%Deleted Scenes%"; 
