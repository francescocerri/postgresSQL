-- EXCEPT -> trova le righe che sono presenti nella prima query, ma non nella seconda, rimuove i duplicati
-- se nella seconda query ci sono delle righe in più non presenti nella prima non li considera
-- cambiando l'ordine delle query cambia anche il risultato quindi
(
	select *
	from products
	order by price DESC
	limit 4
)
EXCEPT
(
	select *
	from products
	order by price/weight DESC
	limit 4
);

-- EXPECT ALL -> non rimuove i duplicati
