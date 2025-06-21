#Creare una vista per le informazioni geografiche
CREATE VIEW v_info_geografiche AS
SELECT
	co.Country_ID AS codice_stato,
    co.Country_Name AS nome_stato,
    r.Region_Name AS nome_regione
FROM Country co
JOIN Region r ON co.Region_ID = r.Region_ID;