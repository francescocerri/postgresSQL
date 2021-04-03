-- null constraint
INSERT INTO products (name, department, weight)
VALUES
	('Shirt', 'Toys', 3),
-- in questo caso la tabella products ha anche un altra colonna price a cui non stiamo inserendo il valore
-- quindi verrà salvato null a DB, se vogliamo mettere una constraint possiamo definirla all'inizio

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  price	INTEGER NOT NULL, -- mettiamo una regola per cui non può essere null
  weight INTEGER
 );
 
 -- possiamo anche aggiornare la colonna se abbiamo già creato la tabella,
 -- però non ci devono già essere dei valori con null in quella colonna, altrimenti dà errore
 ALTER TABLE products
 ALTER COLUMN price
 SET NOT NULL
 -- in questo caso possiamo quindi aggiornarle direttamente quei valori con un update
 UPDATE products
 SET price = 999
 where price IS null
 


 -- DEFAULT VALUE IN TABLE

 CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  price	INTEGER DEFAULT 999 -- default a 999
  weight INTEGER
 );
 --
 ALTER TABLE products
 ALTER COLUMN price
 SET DEFAULT 999
