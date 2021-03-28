-- deve tornare dei dati che siano compatibili con la clausula ON
-- Esempio stupido, potremmo farlo senza join

select first_name
from users
join (
	select user_id
	from orders
	where product_id = 3
) as o
ON o.user_id = users.id; 

