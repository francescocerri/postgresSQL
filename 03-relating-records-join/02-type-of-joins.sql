-- qualche volta l'ordine del from e del join produce risultati diversi
select url, username
from photos
join users on users.id = photos.user_id

-- ora aggiungiamo una foto con user_id null
insert into photos (url, user_id)
values ('http://banner.jpg', NULL);

-- se rifacciamo la stessa join di prima, non troviamo la nuova foto perchè non ha un utente

-- INNER JOIN (default)
-- mergia le 2 colonne e prende i valori che hanno entrambi

-- LEFT OUTER JOIN 
-- avremo anche la foto con user_id null, perchè prende tutti i dati della colonna a sinistra (foto)
-- e ci aggiunge la username, NULL per quelli che non hanno user_id

select url, username
from photos
left join users on users.id = photos.user_id -- abbiamo anche una foto senza utente

-- RIGHT OUTER JOIN 
-- in questo caso le foto senza id non vengono prese, però vengono aggiunti tutti gli utenti,
-- anche quelli che non hanno foto associate, con photo NULL
insert into users (username)
values ('Nicole') -- abbiamo inserito un utente senza foto 

select url, username
from photos
right join users on users.id = photos.user_id -- abbiamo anche l'utente senza foto associate

-- FULL JOIN
-- prende tutti i dati della colonna a sinitra e di quella a destra, mergiando quelle possibili,
-- le altre aggiungendolo comunque
select url, username
from photos
full join users on users.id = photos.user_id
-- abbiamo sia la foto senza utente, che l'utente senza foto associate