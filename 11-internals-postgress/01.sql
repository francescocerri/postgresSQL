-- mostrare il path dove salva i dati
show data_directory

-- dentro data ci sono tutti i db, qui ci mostra l'id al nome corrispondente
select oid, datname
from pg_database

-- dentro il singolo db ci sono una marea di file, da qui vediamo le nostre colonne in che file si trovano,
-- ci sono anche file per le pk, fk, index, ecc...
select * from pg_class

-- heap file -> file che contiene tutti i dati(righe) della tabella
-- tuple o item -> singola riga della tabella
-- block or page -> l'head file è diviso in tanti diversi 'blocks' or 'pages', ognuno di esse continene un numero
--      di righe della tabella. sono di 8kb

-- il block salva le informazione sull'hard disk in binario, una collezione di 0 e 1 
-- i primi dati sono infromativi del blocco stesso
-- i secondi sono informazione dei dati che sono salvati (dove possiamo trovare le righe)
-- c'è  una parte di spazio libero
-- e alla fine c'è il dato vero delle informazioni salvate