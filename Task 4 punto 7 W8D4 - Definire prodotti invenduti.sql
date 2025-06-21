#Rispondere alla seguente domanda: quali sono i prodotti invenduti? Proponi due approcci risolutivi differenti.
#JOIN
SELECT p.Product_ID, p.Product_Name
FROM Product p
LEFT JOIN Sales s ON p.Product_ID = s.Product_ID
WHERE s.Sale_ID IS NULL;

#SUBQUERY
SELECT Product_ID, Product_Name
FROM Product
WHERE Product_ID NOT IN (
	SELECT DISTINCT Product_ID
    FROM Sales
);