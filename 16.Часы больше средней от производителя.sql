SELECT *
FROM Clocks
JOIN Manufacturer ON ManufacturerId = Manufacturer.Id
WHERE Price > (SELECT AVG(Price) FROM Clocks JOIN Manufacturer ON ManufacturerId = Manufacturer.Id WHERE Manufacturer.Name = 'Cartier')