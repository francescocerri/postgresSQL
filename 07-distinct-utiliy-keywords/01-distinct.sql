-- distinct ritorna una lista di valori univoci
select distinct department
from products

-- il numero di department univoci
select count(distinct department)
from products

-- ci dà una lista di tutti i valori univoci di questa coppia
select distinct department, name
from products

-- questo dà errore, non si può fare un count di una distinct con più valori
select count(distinct department, name)
from products