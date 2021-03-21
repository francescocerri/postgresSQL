-- set population for one city
UPDATE
  cities
SET
  population = 39505000
WHERE
  name = 'Tokyo'

-- delete
DELETE FROM
  cities
WHERE
	name = 'Tokyo'