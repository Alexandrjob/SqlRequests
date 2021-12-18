SELECT *
FROM Clocks
JOIN Deliveries ON ClockId = Clocks.Id
JOIN Suppliers ON Deliveries.SupplerId = Suppliers.Id
JOIN Сountries ON Deliveries.CountryId = Сountries.Id
WHERE Price > (SELECT AVG(Price) FROM Clocks) AND Сountries.Name = 'Россия' AND Suppliers.Name = 'Медовый Дом'