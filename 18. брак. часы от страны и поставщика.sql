SELECT 
	SUM(CountDefectiveClocks)
FROM Deliveries
JOIN —ountries ON CountryId = —ountries.Id
JOIN Suppliers ON SupplerId = Suppliers.Id
WHERE Suppliers.Name = 'Grace Foods' AND —ountries.Name = ' ËÚ‡È'
