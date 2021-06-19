-- CHECK validation
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  price	INTEGER CHECK (price > 0) -- condizione che vogliamo controllare
  weight INTEGER
 );

 --- dentro il check possiamo mettere solo <, >, >=, =, ecc..
ALTER TABLE products
ADD CHECK(price > 0)

-- CHECK MULTIPLE COLUMNS
create table orders (
  id serial primary key,
  name varchar(40) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  est_delivery TIMESTAMP NOT NULL,
  CHECK (created_at < est_delivery) -- mettiamo un check tra più colonne
)

-- ritorna il primo valore non nullo -> 5 
SELECT COALESCE(null, 5):
-- prendo il 5, lo converto prima a boolean e poi a integer ->1
SELECT COALESCE((5)::boolean::integer, 0)
-- rimane sempre null nelle conversioni, quindi mette 0
SELECT COALESCE((null)::boolean::integer, 0)

-- check che almeno uno dei 2 valori sia definito
ADD CHECK of (
 COALESCE((post_id)::boolean::integer, 0)
 +
 COALESCE((comment_id)::boolean::integer, 0)
) = 1