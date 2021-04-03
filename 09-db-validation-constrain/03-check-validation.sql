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