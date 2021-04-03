
 -- UNIQUE constant
 CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE, -- valore unico, non si potranno inserire altri nomi uguali
  department VARCHAR(50),
  price	INTEGER
  weight INTEGER
 );
 -- anche qui se c'è già un duplicato non si può fare
 ALTER TABLE products
 ADD UNIQUE(name)

 -- UNIQUE MULTI COLUMN
-- in questo caso non si può inserire dei valori che non ono univoci per questa coppia
ALTER TABLE products
ADD UNIQUE(name, department)

-- PER eliminare una constrain andare a cercare il nome della constrain in pg nella tabella e fare
ALTER TABLE products
DROP CONSTRAINT products_name_key