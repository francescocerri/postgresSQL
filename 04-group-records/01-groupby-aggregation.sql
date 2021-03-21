-- restituire tutti gli utenti univoci che hanno fatto un commento
-- in questo caso il group by trova tutte le corrispondenze univoche di users_id
select user_id
from comments
group by user_id

-- se volessimo vedere per esempio il contenuto di ogni commento, dobbiamo usare le funzioni
-- di aggregazione, perchè il group by raccoglie più righe, in questo caso in base allo user_id
-- count(), sum(), avg(), min(), max()
select SUM(id)
from comments

select SUM(id), id -- questo dà errore, perchè non puoi selezionare una colonna e usare un aggrgazione
from comments --      allo stesso momento, a meno che non usi il group by

-- group by + aggregate
-- numero di commenti per ogni utente
select user_id, count(id)
from comments
group by user_id

--count -> meglio sempre usarlo con (*)
-- il risultato è 20 perchè uno ha user id null
select count(user_id)
from photos

-- il risultato è 21, perchè li prende tutti
select count(*)
from photos

-- trovare il numero di commenti per ogni foto
select photo_id, count(*)
from comments
group by photo_id