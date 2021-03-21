-- where, postgres prima esegue il from, poi il where e poi la select, non và nell'ordine
-- in cui scriviamo 
SELECT
  name,
  area
FROM
  cities
 WHERE area > 4000;

-- where -> between, 
SELECT
  name,
  area
FROM
  cities
WHERE
  area BETWEEN 2000 AND 4000

-- where -> in, not in
SELECT
  name,
  area
FROM
  cities
WHERE
  name IN ('Delhi', 'Shanghai');

-- multiple where
SELECT
  name,
  area
FROM
  cities
WHERE
  area NOT IN (3043, 8233)
  AND name = 'Delhi';

-- math operation in where
SELECT
  name,
  population / area AS density
FROM
  cities
WHERE
	population / area > 6000 -- qui non si può usare density, perchè fà prima il where che il select