SELECT *
FROM Clocks
JOIN Deliveries ON ClockId = Clocks.Id
JOIN Suppliers ON Deliveries.SupplerId = Suppliers.Id
JOIN �ountries ON Deliveries.CountryId = �ountries.Id
WHERE Price > (SELECT AVG(Price) FROM Clocks) AND �ountries.Name = '������' AND Suppliers.Name = '������� ���'