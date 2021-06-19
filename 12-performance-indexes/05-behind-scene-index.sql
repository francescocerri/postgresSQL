/* quando creiamo un index, viene creato un file apposta nel nostro hd
come prima abbiamo blocchi da 8kb
1° blocco -> metapage -> informazioni generiche sull'index
          -> root page (smista le foglie)
          -> leaft page (pagina foglia) 
          */
-- aggiungiamo un estensione che ci dà più informazioni, sui singoli blocchi del file dell'indice
create extension pageinspect
-- bt -> binary tree, metap -> meta page
-- cerchiamo le meta informazioni dell'index
-- ci ritorna alcune info tra cui l'indice del blocco della root, nel nostro caso 3
select * from bt_metap('users_username_idx')

-- dammi tutti gli item di una specifica pagina
select * from bt_page_items('users_username_idx', 3)
-- nella colonna ctid (x,y), ci sono le informazioni dove sono presenti quei dati
-- (page, foglia) -> (per esempio in page non ci sarà il 3 perchè il 3 è il root)

-- nella colonna data ci sono dei valori esadecimali, che corrispondono al primo valore salvato in quella pagina
-- ovvero nel nostro caso uno username. quindi ci garantisce che in quella foglia ci sono valori >= 'alyson' per esempio,
-- si và sempre avanti, fino a quando la string ache cerchi non è < della prima in una pagina

-- se guardiamo i valori della prima pagina (che non è root)
select * from bt_page_items('users_username_idx', 1)
-- nella colonna ctid (x,y) rappresentano la PAGINA e L'INDEX nell'heap file, quindi nel file vero dove ci sono tutti i dati,
-- non solo l'indicazione dell'indice
-- per esempio ci dice che Aaliyah.Hintz ha come ctid(33,43), se facciamo la query
select ctid, * from users where username = 'Aaliyah.Hintz'
-- triviamo che ctid ha (33,43)

-- la prima riga dentro 
select * from bt_page_items('users_username_idx', 1)
-- non fà riferimento a un vero utente, ma ha un pointer del nodo successivo

