-- Concatenate string -> ||
SELECT
  name || ', ' || country AS location
FROM
  cities

-- Concatenate string -> concat() è uguale
SELECT
  CONCAT(name, ', ', country) AS full
FROM
  cities

-- Lowercase string ->
SELECT
  LOWER(CONCAT(name, ', ', country)) AS full
FROM
  cities

-- Uppercase string -> UPPER()
SELECT
  CONCAT(UPPER(name), ', ', UPPER(country)) AS full
FROM
  cities

-- Length()
SELECT
  LENGTH(name) as name_length
FROM
  cities