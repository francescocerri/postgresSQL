-- come creare un index
create index on users (username)

-- ci dà informazioni sull'esecuzione della query, tempo, ecc..
explain analyze select * from users u where u.username = 'Emil30';

-- quando e quando non usarli
-- creare questa alberature ha un costo, ogni volta che creiamo un index stiamo aggiungendo dello spazio di storage
-- sul nostro pc, si può vedere quanto spazio è.
-- ci mostra lo spazio che occupa la tabella users (880kb)
select pg_size_pretty(pg_relation_size('users'))
-- ci mostro lo spazio che occupa l'indece che abbiamo creato (184kb)
select pg_size_pretty(pg_relation_size('users_username_idx'))
-- lo storage ha un costo, per esempio su aws paghi lo storage, quindi più indici aggiungi, più storage hai, più paghi

-- oltre a questo anche l'insert/delete/update sarà più lenta, perchè ogni volta che ci sarà un cambiamento, si dovranno
-- aggiornare gli index, per esempio 20 aggiunte, 20 modifiche degli index

-- Non è detto che creando un indece, questo venga utilizzato da postgress, se la scan ci mette meno utilizzerà quella
