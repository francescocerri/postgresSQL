-- HAVING filters set of groups, where per esempio filtraun set di righe
-- sarà sempre insieme a grop by

-- numero di commenti per ogni foto dove l'id della foto è meno di 3 e le foto hanno più
-- di 2 commenti
select photo_id, count(*) as comments_photo
from comments
where photo_id < 3
group by photo_id
having count(*) > 2

-- trovare gli utenti(user_id) dove l'utente ha commentato la foto con id minore di 50
-- e l'utente ha aggiunto almeno 20 commenti con queste foto
select user_id, count(*)
from comments
where photo_id < 50
group by user_id
having count (*) > 20