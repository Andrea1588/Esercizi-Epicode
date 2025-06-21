#Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.
SELECT
	s.Product_ID AS codice_prodotto,
	p.Product_Name AS nome_prodotto,
YEAR(s.Sale_Date) AS anno,
SUM(s.Amount) AS fatturato_totale
FROM Sales s
JOIN Product p ON s.Product_ID = p.Product_ID
GROUP BY s.Product_ID, YEAR(s.Sale_Date)
ORDER BY s.Product_ID, anno; 