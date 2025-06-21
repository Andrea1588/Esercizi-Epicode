#Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?
SELECT
	c.Category_Name,
    SUM(s.Quantity) AS totale_venduto
FROM Sales s
JOIN Product p ON s.Product_ID = p.Product_ID
JOIN Category c ON p.Category_ID = c.Category_ID
GROUP BY c.Category_Name
ORDER BY totale_venduto DESC
LIMIT 1;