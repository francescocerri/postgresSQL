-- intersect -> trova le righe comuni delle query, rimuovendo i duplicati
-- in questo caso c'è un prodotto in comune e ci mostra quello
(
	select *
	from products
	order by price DESC
	limit 4
)
INTERSECT
(
	select *
	from products
	order by price/weight DESC
	limit 4
);

-- intersect all -> trova le righe comuni delle query, non rimuove i duplicati
