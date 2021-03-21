
-- foreign key constraints

-- se cerchiamo di aggiungere una foto ad un utente che non esiste abbiamo un errore
insert into photos (url, user_id)
values ('http://aaaa.jpg', 999);
    -- ERROR Key (user_id)=(999) is not present in table "users".

-- se cerchiamo di aggiungere una foto a nessun utente, lo possiamo fare con NULL
insert into photos (url, user_id)
values ('http://aaaa.jpg', NULL);

--DELETE

-- se eliminiamo un utente con delle foto associate?
-- se eliminimao un utente con id = 1, non potrà mai più esistere un utente con id = 1
-- perchè abbiamo messo il serial, ci darà un errore
delete from users where id = 1;
    -- ERROR  Key (id)=(1) is still referenced from table "photos".

-- DELETE CASCADE
-- possiamo eliminare tutte le foto quando eliminamo l'utente
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	url VARCHAR(200),
	user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
        -- in questo caso nell fk abbiamo aggiunto questa constrain
);
 
INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 4),
('http:/two.jpg', 1),
('http:/25.jpg', 1),
('http:/36.jpg', 1),
('http:/754.jpg', 2),
('http:/35.jpg', 3),
('http:/256.jpg', 4);

-- nonostante l'id 1 avesse 3 photo, sono riuscito ad eliminarlo, e mi ha cancellato anche tutte
-- le foto associate
delete from users
where id = 1;

-- DELETE SET NULL
-- quando eliminiamo l'utente mette tutte le foto associate a lui a null
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	url VARCHAR(200),
	user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);

delete from users
where id = 4;

-- DELETE SET DEFAULT

