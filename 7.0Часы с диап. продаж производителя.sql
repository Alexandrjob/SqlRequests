SELECT *
FROM Clocks
JOIN Purchases ON ClockId = Clocks.Id
JOIN Manufacturer ON ManufacturerId = Manufacturer.Id
WHERE DateSale > '01-11-2021' AND DateSale < '30-11-2021' AND Manufacturer.Name = 'Breguet' 
