-- viene sempre creato un index per la chiave primaria
-- viene create sempre un index per ogni colonna definita come UNIQUE (si vede nella tabella hastags)

-- vedere tutti gli index nel db
select realname, relkind
from pg_class
where relkind = 'i' -- i -> index