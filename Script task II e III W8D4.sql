#creazione database Toysgroup
CREATE DATABASE toysgroup_db;
USE toysgroup_db;

#creazione tabella Category
CREATE TABLE Category (
Category_ID INT AUTO_INCREMENT PRIMARY KEY,
Category_Name VARCHAR(100) NOT NULL
);

#creazione tabella Product
CREATE TABLE Product (
Product_ID INT AUTO_INCREMENT PRIMARY KEY,
Product_Name VARCHAR(100) NOT NULL,
Category_ID INT NOT NULL,
FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

#creazione tabella Region
CREATE TABLE Region (
Region_ID INT AUTO_INCREMENT PRIMARY KEY,
Region_Name VARCHAR(100) NOT NULL
);

#creazione tabella Country
CREATE TABLE Country (
Country_ID INT AUTO_INCREMENT PRIMARY KEY,
Country_Name VARCHAR(100) NOT NULL,
Region_ID INT NOT NULL,
FOREIGN KEY (Region_ID) REFERENCES Region(Region_ID)
);

#creazione tabella Sales
CREATE TABLE Sales (
Sale_ID INT AUTO_INCREMENT PRIMARY KEY,
Product_ID INT NOT NULL,
Country_ID INT NOT NULL,
Sale_Date DATE NOT NULL,
Quantity INT NOT NULL,
Amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID)
);

#popolazione tabella Category
INSERT INTO Category (Category_Name) VALUES
('Bikes'),
('Clothing'),
('Accessories');

#popolazione tabella Product
INSERT INTO Product (Product_Name, Category_ID) VALUES
('Bike-100', 1),
('Bike-200', 1),
('Bike Gloves M', 2),
('Bike Gloves L', 2),
('Helmet Pro', 3);

#popolazione tabella Regione
INSERT INTO Region (Region_Name) VALUES
('WestEurope'),
('SouthEurope');

#popolazione tabella Country
INSERT INTO Country (Country_Name, Region_ID) VALUES
('France', 1),
('Germany', 1),
('Italy', 2),
('Greece', 2);

#popolazione tabella Sales
INSERT INTO Sales (Product_ID, Country_ID, Sale_Date, Quantity, Amount) VALUES
(1, 3, '2024-01-15', 2, 500.00),
(2, 3, '2024-01-20', 1, 300.00),
(3, 4, '2024-02-10', 4, 80.00),
(4, 1, '2024-03-05', 2, 40.00),
(5, 2, '2024-03-12', 1, 60.00),
(1, 1, '2024-04-01', 1, 250.00);