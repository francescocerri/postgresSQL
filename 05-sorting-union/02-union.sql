-- da usare quando ci sono 2 o più query diverse da fare ma poi unire nel risultato

-- trovare i 4 prodotti con il maggior prezzo e i successivi 4 prodotti con il 
-- miglior rapporto price/weight

-- UNION -> unisce 2 query e se ha dei risultati comuni li mostra una sola volta
-- UNION ALL -> anche se è già presente lo rimette
(
	select *
	from products
	order by price DESC
	limit 4
)
UNION
(
	select *
	from products
	order by price/weight DESC
	limit 4
);

-- questo dà errore perchè da una parte ha un tipo stringa, mentre nell'altro il tipo integer
select name from products
union
select price from products