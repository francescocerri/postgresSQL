-- come è assemblato un index
-- prima di tutto ci serve capire quale colonna ci serve per farci restituire i dati in maniera efficiente (username)

/* in base a quella colonna per creare l0indice ci saranno i seguenti step:
 1. estrarre da tutte le righe solo la proprietà che vogliamo prendere (username), il block e l'index di quella riga
    quindi avremo FRANCESCO (block 0, index1), ALF (block 0 index2), .... -> le altre info tipo id ecc. non vengono considerate
 2. Dopodichè viene fatto il sort di questi valori (alfanumerico, numerico, ecc..) in ASC o DESC
    nel nostro caso se diciamo ASC viene messo prima ALF poi FRANCESCO
 3. viene organizzato in un data tree structure.
    ogni foglia conterrà un numero di righe e il padre di questa foglia dirà di visualizzarla per esempio se lo username
    che cerchiamo è tra ALF <= username <= Cheril per esempio, che sarebbero il primo e l'ultimo valore nella foglia
    in ordine alfabetico
 4. A questo punto quando avviene la ricerca capirà in quale foglia andare e trovera l'indicazione del block e dell'index
    senza guardare la maggior parte dei dati, perchè guarderà solo il block corrispondente
*/

