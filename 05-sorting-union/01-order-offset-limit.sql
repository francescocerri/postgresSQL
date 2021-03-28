select *
from products
order by price -- order by price ASC è uguale

-- in descending order
select *
from products
order by price DESC;

-- doppio sort
select *
from products
order by price, weight;

--OFFSET LIMIT
-- offset 40 -> non mostrare i primi 40 risultati
select *
from users
offset 40

-- salta i primi 10 e restituiscimi solo 10 risultati
select *
from users
offset 10
limit 10