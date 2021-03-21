-- voglio vedere chi ha commentato le proprie foto
select url, contents
from photos
join comments on photos.id = comments.photo_id
where photos.user_id = comments.user_id;

-- aggiungiamo anche lo username, quindi 3 tabelle
-- non abbiamo avuto bisogno del where, ma tramite le 2 inner join siamo sicuri di
-- prendere solo i valori che hanno lo username
select url, contents, username
from photos
join comments on photos.id = comments.photo_id
join users on users.id = comments.user_id
	and users.id = photos.user_id;