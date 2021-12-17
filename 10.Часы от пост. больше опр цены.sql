SELECT Clocks.Id, Clocks.Name, Suppliers.Name, Price
FROM Clocks
JOIN Deliveries ON ClockId = Clocks.Id
JOIN Suppliers ON SupplerId = Suppliers.Id
WHERE Price > 10000 AND Suppliers.Name = 'Grace Foods'