#Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.
SELECT
	c.Country_Name AS stato,
	YEAR(s.Sale_Date) AS anno,
	SUM(s.Amount) AS fatturato_totale
FROM Sales s
JOIN Country c ON s.Country_ID = c.Country_ID
GROUP BY c.Country_Name, YEAR(s.Sale_Date)
ORDER BY anno ASC, fatturato_totale DESC;