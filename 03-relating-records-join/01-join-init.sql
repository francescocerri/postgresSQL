CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  contents VARCHAR(240),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  photo_id INTEGER REFERENCES photos(id) ON DELETE CASCADE
);

-- JOINS: produces value by merging together rows from different related table
--        used to find a datathat involves multiple resources

-- AGGREGATION: looks at many rows and calculates a single values
--              most, average, least, are a sign that you need to use aggregation

-- JOINS
-- for each comments we want to say the content and the username
select contents, username
from comments
join users on users.id = comments.user_id;
-- join <nome tabella a cui riferirsi> on campo di riferimento dell'utente con quello del commento (fk)

-- for each comments we want to say the content and the url of photos
select contents, url
from comments
join photos on photos.id = comments.photo_id;

-- alternative form

-- in questo caso id esiste sia in comments che in photos, quindi darebbe errore, per questo ci
-- mettiamo il nome della tabella davanti
select comments.id
from comments
join photos on photos.id = comments.photo_id;

-- same id columns in multiple table
select comments.id as comment_id, photos.id
from comments
join photos on photos.id = comments.photo_id;

-- posso anche rinominare la tabella per avere un shortcut
select c.id as comment_id, photos.id
from comments as c
join photos on photos.id = c.photo_id;