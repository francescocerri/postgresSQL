-- mostrare il nome e il prezzo di tutti i prodotti che sono più costosi,
-- del prodotto più costoso nel dipartimento 'Toys'

-- prendiamo il più costoso del dipartimento Toys
select max(price)
from products
where department = 'Toys'
-- questa sarebbe la seconda query da fare
select name, price
from products
where price > {risultato prima query}
-- per unirle quindi, si parte dalla seconda poi con le parentesi si mette la subquery
select name, price
from products
where price > ( -- questa è una subquery
	select max(price)
	from products
	where department = 'Toys'
)

--scalar query è una query che ci restituisce una colonna e una riga
select count(*) from orders

-- per capire le subquery è importante tenere a mente ogni query che risultato ritorna,
-- se molte righe molte colonne, se molte righe una colonna se una riga una colonna 