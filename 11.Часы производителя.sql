SELECT *
FROM Clocks
JOIN Manufacturer ON Clocks.ManufacturerId = Manufacturer.Id
WHERE Manufacturer.Name = 'Patek Philippe'