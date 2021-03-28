-- In a SELECT we can set any subquery that result in a SINGLE VALUE

-- questo ci restituisce una riga e una colonna, quindi un solo valore
select max(price)
from products
-- abbiamo unito il singolo valore dentro un altra query, in questo caso il valore della subquery
-- verrà ripetuto per tutte le righe
select name, price, ( -- in questo caso il max non potevamo metterlo senza una subquery, perchè
	select max(price) -- è una funzione di aggregazione e vorrebbe il group by
	from products
)
from products
where price > 867

-- altro esempio con la select
select name, price, (
	select price
	from products
	where id = 3
) as id_3_price
from products
where price > 867