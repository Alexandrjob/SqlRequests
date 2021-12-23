SELECT *
FROM Clocks
ORDER BY ReleaseDate

SELECT *
FROM Clocks
JOIN Deliveries ON ClockId = Clocks.Id
JOIN Suppliers ON SupplerId = Suppliers.Id
ORDER BY Suppliers.Name

SELECT *
FROM Clocks
ORDER BY Price