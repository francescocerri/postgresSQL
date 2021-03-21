CREATE TABLE cities (
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area	INTEGER
 );
 
 /*
    CREATE TABLE keyword -> sempre in capitalize
    cities identifier della tabella -> sempre in lowercase
    varchart(50) -> variable length character -> string max 50 characters
*/

INSERT INTO cities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 3850500, 8233);

-- Insert multiple rows
INSERT INTO cities (name, country, population, area)
VALUES
	('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);

-- all columns
SELECT * FROM cities;

-- solo 2 colonne
SELECT name, country FROM cities;

-- fare dei calcoli prima e aggiungerla in una colonna temporanea 
SELECT
  name,
  population / area as population_density
FROM
  cities