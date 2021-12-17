CREATE TABLE Ñountries
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL,
)

CREATE TABLE Suppliers
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL,	
)

CREATE TABLE Manufacturer
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL
)

CREATE TABLE ClockTypes
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL,
)

CREATE TABLE Clocks
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL,
	ReleaseDate DATE NOT NULL,
	ClockTypeId INT,
	ManufacturerId INT,
	Price INT NOT NULL,
	CONSTRAINT FK_Clocks_To_ClockTypes FOREIGN KEY (ClockTypeId) REFERENCES ClockTypes (Id),  
	CONSTRAINT FK_Clocks_To_Manufacturer FOREIGN KEY (ManufacturerId) REFERENCES Manufacturer (Id)  
)

CREATE TABLE Deliveries
(
	Id INT PRIMARY KEY IDENTITY,
	DateDelivery DATE NOT NULL,
	ClockId INT,
	SupplerId INT,
	CountryId INT,
	CountClocks INT DEFAULT 5,
	CountDefectiveClocks INT DEFAULT 1,
	CONSTRAINT FK_Deliveries_To_Clocks FOREIGN KEY (ClockId) REFERENCES Clocks (Id),
	CONSTRAINT FK_Deliveries_To_Suppliers FOREIGN KEY (SupplerId) REFERENCES Suppliers (Id),
	CONSTRAINT FK_Deliveries_To_Ñountries FOREIGN KEY (CountryId) REFERENCES Ñountries (Id)
)

CREATE TABLE Purchases
(
	Id INT PRIMARY KEY IDENTITY,
	ClockId INT,
	CountClockSold INT,
	DateSale DATE NOT NULL,
	CONSTRAINT FK_Purchases_To_Clocks FOREIGN KEY (ClockId) REFERENCES Clocks (Id)  
)