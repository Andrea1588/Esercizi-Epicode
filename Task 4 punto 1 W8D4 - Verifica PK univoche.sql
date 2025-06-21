#verificare che la PK in Category sia univoca
SELECT Category_ID, COUNT(*) AS occorrenze
FROM CATEGORY
GROUP BY Category_ID
HAVING COUNT(*) > 1;

#verificare che la PK in Product sia univoca
SELECT Product_ID, COUNT(*) AS occorrenze
FROM Product
GROUP BY Product_ID
HAVING COUNT(*) > 1;

#verificare che la PK in Region sia univoca
SELECT Region_ID, COUNT(*) AS occorrenze
FROM Region
GROUP BY Region_ID
HAVING COUNT(*) > 1;

#verificare che la PK in Country sia univoca
SELECT Country_ID, COUNT(*) AS occorrenze
FROM Country
GROUP BY Country_ID
HAVING COUNT(*) > 1;

#verificare che la PK in Sales sia univoca
SELECT Sale_ID, COUNT(*) AS occorrenze
FROM Sales
GROUP BY Sale_ID
HAVING COUNT(*) > 1;
