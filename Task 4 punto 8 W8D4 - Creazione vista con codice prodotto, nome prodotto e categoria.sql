#Creare una vista sui prodotti in modo tale da esporre una “versione denormalizzata” delle informazioni utili (codice prodotto, nome prodotto, nome categoria)
CREATE VIEW v_prodotti_denormalizzati AS
SELECT
	p.Product_ID AS codice_prodotto,
    p.Product_Name AS nome_prodotto,
    c.Category_Name AS nome_categoria
FROM Product p
JOIN Category c ON p.Category_ID = c.Category_ID;