-- numeric type

-- SENZA DECIMALI
-- smallint -> -32768 +32768
-- integer -> -2147583648 +2147583648
-- bigint -> -9223372036854775808

-- SENZA DECIMALI, AUTO INCREMENT
-- smallserial -> 1 to 32767
-- serial -> 1 to 2147483647
-- bigserial -> 1 to 9223372036854775808

-- DECIMALI
-- decimal 
-- numeric
-- real
-- double precision
-- float 

-- regole per scegliere correttamente il tipo numerico

-- id -> serial
-- numer non decimale -> integer
-- numero decimale e il dato deve essere molto accurato (grammi oro, calcoli scientifici) -> numeric
-- numero decimale e decimale non deve essere troppo preciso (litri acqua in un lago) -> double precision