#Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite realizzate nell’ultimo anno censito. (ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). Nel result set devono comparire solo il codice prodotto e il totale venduto.
SELECT
	s.Product_ID AS codice_prodotto,
	SUM(s.Quantity) AS totale_venduto
FROM Sales s
GROUP BY s.Product_ID
HAVING SUM(s.Quantity) > (
	SELECT AVG(sub.Quantity)
    FROM Sales sub
    WHERE YEAR(sub.Sale_Date) = (
		SELECT MAX(YEAR(Sale_Date)) FROM Sales
	)
);