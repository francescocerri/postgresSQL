-- nel FROM di solito si specifica un insieme di righe su cui si vuole fare la ricerca, quindi non
-- per forze ci devono essere tutte le righe e tutte le colonne della tabella
-- possiamo ritornare diverse strutture, un solo valore, più colonne più righe, ecc..
-- in questo caso ci restituisce 2 colonne e diverse righe
select name, price / weight as price_weight_ratio
from products

-- se mettiamo una subquery nel from, nella select fuori possiamo riferirci solo alle colonne che
-- sono ritornate nel from, come nel where ecc...
select name, price_weight_ratio
from (
	select name, price / weight as price_weight_ratio
	from products 
) as p -- ogni volta che usiamo una subquery nel from dobbiamo usare un alias
where price_weight_ratio > 5

-- altro esempio con un solo valore nella subquery del from
-- alla fine sarà sempre un risultato, non ha molto senso è un esempio
select *
from (
	select max(price)
	from products
) as p

-- altro ex
-- trovare la media degli ordini di tutti gli utenti
-- senza una subquery non potevamo farlo perchè avg non può andare su valori nested
select avg(p.order_count)
from (
	select user_id, count(*) as order_count
	from orders
	group by user_id
) as p
