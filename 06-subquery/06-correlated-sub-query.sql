-- una subquery correlata è una subquery che usa dei dati dalla query esterna

-- mostrare nome, dipartimento e prezzo del più costoso prodotto in ogni department
-- in questo caso abbiamo utilizzato l'alias per entrambi i from per poterli utilizzare nella subquery
select name, department, price
from products as p1
where p1.price = (
	select max(price)
	from products as p2
	where p1.department = p2.department
)