-- id degli ordini che interessano i prodotti con un peso/prezzo più grande di 50
-- si poteva fare con la join
-- in questo caso nel where stiamo usan do una IN, quindi il risultato può essere più di un elemento
select id
from orders
where product_id IN (
	select id
	from products
	where price / weight > 50
)

-- nome di tutti i prodotti che non sono nello stesso reparto dei prodotti con un prezzo minore di 100
select name
from products
where department NOT IN (
    select department
    from products
    where price < 100
)

-- name, department and price dei prodotti che sono più costosi di tutti i prodotti presenti del dipartimento "Industrial"
select name, department, price
from products
where price > (
    select max(price)
    from products
    where department = 'Industrial'
)
-- un altro equivalente ma con il > ALL
select name, department, price
from products
where price > ALL (
    select price
    from products
    where department = 'Industrial'
)

-- SOME ANY, fanno la stessa cosa, sono alias
-- 50 > SOME (20, 100) controlla che 50 sia più grande di almeno uno dei valori nella lista 

-- name dei prodotti che sono più costosi di almeno un prodotto presenti del dipartimento "Industrial"
select name, department, price
from products
where price > SOME (
    select price
    from products
    where department = 'Industrial'
)