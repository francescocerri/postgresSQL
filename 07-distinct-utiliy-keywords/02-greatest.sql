-- ritorna 30
select greatest(20, 10, 30)

-- calcolare il costo di spedizione di ogni item, che è il massimo tra (weigth * 2) e 30
select name, weight, greatest(30, 2 * weight)
from products

-- l'incontrario di greatest
select least(10, 2, 14)

-- stampare ogni prodotto, il suo prezzo e una descrizione del prezzo,
-- se il prezzo è > 600 "high", > 300 "medium", altrimenti "cheap"
select name, price,
	CASE
		WHEN price > 600 THEN 'high'
		WHEN price > 300 THEN 'medium'
		ELSE 'cheap'
	END
from products