--interrogazione 1: Elenco delle partite giocate nel 2023, ordinate per data.

SELECT ID_Partita, Data_partita, Squadra_Casa_ID, Squadra_Ospite_ID, Punteggio_Casa, Punteggio_Ospite
FROM Partita
WHERE YEAR(Data_partita) = 2021
ORDER BY Data_partita;

--Interrogazione 2: Elenco delle partite giocate in uno stadio con capacità superiore a 60.000 spettatori, mostrando il nome dello stadio e la data della partita.

SELECT data_Partita, S.Nome AS Stadio
FROM Partita AS P
JOIN Stadio AS S ON id_stadio= ID_Stadio
WHERE Capacita > 30000;

--Interrogazione 3:Numero totale di partite giocate da ciascuna squadra nella stagione di riferimento (2021-2022), ordinato per numero di partite decrescente

SELECT S.Nome AS Squadra, COUNT(*) AS Numero_Partite_Giocate
FROM Squadra AS S
LEFT JOIN Partita AS P ON ID_Squadra = Squadra_Casa_ID OR ID_Squadra =Squadra_Ospite_ID
WHERE YEAR(Data_partita) =2021
GROUP BY S.Nome
ORDER BY Numero_Partite_Giocate DESC;

--interrogazione 4: Elenco delle partite giocate da una squadra specifica (es. Juventus) nel 2021, mostrando la data e il risultato, ordinato per data.

SELECT Data_partita, Punteggio_Casa, Punteggio_Ospite
FROM Partita
WHERE (Squadra_Casa_ID = 1 OR Squadra_Ospite_ID = 1) AND YEAR(Data_partita) = 2021
ORDER BY Data_partita;

--interrogazione 5:Elenco degli allenatori delle squadre con join

SELECT allenatore.nome, allenatore.cognome, squadra.nome AS squadra FROM allenatore
INNER JOIN squadra ON allenatore.squadra_id=squadra.id_squadra;

--interrogazione 6: Allenatore di una squadra specifica

SELECT A.Nome, A.Cognome
FROM Allenatore AS A
JOIN Squadra AS S ON A.Squadra_ID = S.ID_Squadra
WHERE S.Nome = 'Juventus';

--interrogazione 7: selezione da squadra dei giocatori che appartengono a una squadra specifica (inter), con doppia inner join per mostrare anche da chi è allenata.

SELECT*FROM squadra
INNER JOIN allenatore ON squadra.ID_Squadra =allenatore.squadra_id
INNER JOIN giocatore ON squadra.ID_Squadra =giocatore.squadra_id
where squadra.ID_Squadra=3;

--interrogazione 8: selezione degli stadi con join per individuare le città di appartenenza 

SELECT*from citta
inner join stadio on citta.id_citta=Stadio.ID_Stadio;

--interrogazione 9: trovare giocatori determinata squadra con ruolo.

SELECT RUOLO, giocatore.nome, giocatore.cognome FROM GIOCATORE
WHERE squadra_id=3 ;

--interrogazione 10: trovare gli stadi con le rispettive città 

SELECT * FROM Stadio
INNER JOIN squadra ON stadio.ID_stadio = squadra.Stadio_ID
INNER JOIN citta ON stadio.id_stadio= citta.id_citta;
