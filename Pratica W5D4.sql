#creazione tabella Iscritti
CREATE TABLE Iscritti (
	Codice_Fiscale VARCHAR(16) PRIMARY KEY,
    Nome_iscritto VARCHAR(50),
    Cognome_iscritto VARCHAR(50),
    Email VARCHAR(50) UNIQUE,
    Data_di_nascita DATE,
    Telefono VARCHAR(25)
);

#creazione tabella corsi
CREATE TABLE Corsi (
	ID_corso INT PRIMARY KEY auto_increment,
    Nome_corso VARCHAR(50) NOT NULL,
    Livello VARCHAR(25),
    Durata INT NOT NULL,
    Giorno_ora VARCHAR(30),
    ID_istruttore INT,
    FOREIGN KEY (ID_istruttore) REFERENCES Istruttore(Istruttore_ID)
);

#creazione tabella Utenti corsi
CREATE TABLE Utenti_corsi (
Codice_Fiscale VARCHAR(16),
ID_corso INT,
Data_iscrizione DATE NOT NULL,
PRIMARY KEY (Codice_Fiscale, ID_corso),
FOREIGN KEY (Codice_Fiscale) REFERENCES Iscritti(Codice_Fiscale),
FOREIGN KEY (ID_corso) REFERENCES Corsi(ID_corso)
);

#creazione tabella Istruttore
CREATE TABLE Istruttore (
ID_istruttore INT PRIMARY KEY AUTO_INCREMENT,
Nome_istruttore VARCHAR(50) NOT NULL,
Cognome_istruttore VARCHAR(50) NOT NULL,
Telefono_istruttore VARCHAR(50),
);

#creazione tabella Pagamenti
CREATE TABLE Pagamenti (
ID_pagamento INT PRIMARY KEY AUTO_INCREMENT,
Importo DECIMAL(8,2) NOT NULL,
Data_ora DATETIME NOT NULL,
FOREIGN KEY (Codice_Fiscale) REFERENCES Iscritti(Codice_Fiscale)
);
