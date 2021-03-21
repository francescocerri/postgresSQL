/* database for a phptp sharing app
 tables: users, photos, comments, likes
 Quando dobbiamo decidere lo schema di un database, prima conviene fare una ricerca su google,
 è probabile che qualcuno abbia implementato lo stesso schema.
 es. sql schema upvote system
 Che tipo di risorse ci sono ? Crea una tabella per ogni risorsa
 */

create table users (
	id serial primary key,
    -- serial -> we want to generate the value automatically
    -- primary key -> set this a primary key
	username varchar(50)
)

-- abbiamo inserito solo lo username, l'id lo genererà automaticamente
insert into users (username)
values
	('monahan93'),
	('pfeffer'),
	('si93onis'),
	('99stroman');

-- creiamo la fk nella tabella photos
create table photos (
	id serial primary key,
	url varchar(200),
	user_id integer references users(id)
	-- creiamo una colonna user_id di tipo integer che sarà collegata alla pk della tabella utente
	-- stiamo facendo una foreign key
);

-- qui abbiamo aggiunto una foto mettendo l'url e lo user id
insert into photos (url, user_id)
values 
  ('http://one.jpg', 4)

-- possiamo quindi controllare le foto di un particolare utente
select * from photos
where user_id = 4

-- se abbiamo bisogno di dati di 2 colonne però possiamo usare JOIN
-- in questo caso url è di photos e username di users, quindi 2 tabelle diverse
-- con il join "le uniamo"
select url, username from photos
join users on users.id = photos.user_id
