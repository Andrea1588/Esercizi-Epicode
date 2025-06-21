#Esporre l’elenco delle transazioni indicando nel result set il codice documento, la data, il nome del prodotto, la categoria del prodotto, il nome dello stato, il nome della regione di vendita e un campo booleano valorizzato in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False)
SELECT
	s.Sale_ID AS codice_documento,
	s.Sale_Date AS data,
	p.Product_Name AS nome_prodotto,
	c.Category_Name AS categoria_prodotto,
	co.Country_Name AS stato,
	r.Region_Name AS regione_vendita,
CASE 
        WHEN DATEDIFF(CURDATE(), s.Sale_Date) > 180 THEN TRUE
        ELSE FALSE
    END AS oltre_180_giorni
FROM Sales s
JOIN Product p ON s.Product_ID = p.Product_ID
JOIN Category c ON p.Category_ID = c.Category_ID
JOIN Country co ON s.Country_ID = co.Country_ID
JOIN Region r ON co.Region_ID = r.Region_ID;