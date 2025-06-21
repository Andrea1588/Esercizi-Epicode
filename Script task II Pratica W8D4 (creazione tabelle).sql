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