#esplorazione tabella prodotti
SELECT *
FROM dimproduct;

#interrogazione tabella per mostrare solo alcune colonne cambiando intestazione
SELECT
	ProductKey,
    ProductAlternateKey AS CodiceArticolo,
    EnglishProductName AS NomeProdotto,
    Color AS Colore,
    StandardCost AS CostoStandard,
    FinishedGoodsFlag AS ProdottoFinito
FROM dimproduct;

#esponi in output i soli prodotti finiti cioè, quelli per cui il campo FinishedGoodsFlag è uguale a 1
SELECT
	ProductKey,
    ProductAlternateKey AS CodiceArticolo,
    EnglishProductName AS NomeProdotto,
    Color AS Colore,
    StandardCost AS CostoStandard,
    FinishedGoodsFlag AS ProdottoFinito
FROM dimproduct
WHERE FinishedGoodsFlag = 1;

#Scrivi una nuova query al fine di esporre in output i prodotti il cui codice modello ProductAlternateKey) comincia con FR oppure BK
SELECT
	ProductKey AS CodiceProdotto,
    ProductAlternateKey AS Modello,
    EnglishProductName AS NomeProdotto,
    StandardCost AS CostoStandard,
    ListPrice AS PrezzoDiListino
FROM dimproduct
WHERE
	ProductAlternateKey LIKE "FR%" OR
    ProductAlternateKey LIKE "BK%";
    
#Arricchisci il risultato della query scritta nel passaggio precedente del Markup applicato dallʼazienda ListPrice - StandardCost)   
SELECT
	ProductKey AS CodiceProdotto,
    ProductAlternateKey AS Modello,
    EnglishProductName AS NomeProdotto,
    StandardCost AS CostoStandard,
    ListPrice AS PrezzoDiListino,
    (ListPrice - StandardCost) AS Markup
FROM dimproduct
WHERE
	ProductAlternateKey LIKE "FR%" OR
    ProductAlternateKey LIKE "BK%";
    
 #Scrivi unʼaltra query al fine di esporre lʼelenco dei prodotti finiti il cui prezzo di listino è compreso tra 1000 e 2000.
SELECT *
FROM dimproduct;

SELECT
	ProductKey AS CodiceProdotto,
    ProductAlternateKey AS Modello,
    EnglishProductName AS NomeProdotto,
    StandardCost AS CostoStandard,
    ListPrice AS PrezzoDiListino,
    FinishedGoodsFlag AS ProdottoFinito,
    (ListPrice - StandardCost) AS Markup
FROM dimproduct
WHERE
	FinishedGoodsFlag = 1 AND
    ListPrice BETWEEN 1000 AND 2000;
    
#Esplora la tabella degli impiegati aziendali DimEmployee)
SELECT *
FROM dimemployee;

#Esponi, interrogando la tabella degli impiegati aziendali, lʼelenco dei soli agenti.
SELECT *
FROM dimemployee
WHERE SalesPersonFlag = 1;


#Interroga la tabella delle vendite FactResellerSales). Esponi in output lʼelenco delle transazioni registrate a partire dal 1 gennaio 2020 dei soli codici prodotto: 597, 598, 477, 214. Calcola per ciascuna transazione il profitto SalesAmount - TotalProductCost).
SELECT *
FROM factresellersales;

SELECT *,
	(SalesAmount - TotalProductCost) AS Profitto
FROM factresellersales
WHERE OrderDate >= "2020-01-01"
AND
	ProductKey IN (597, 598, 477, 214);
