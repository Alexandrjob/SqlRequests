SELECT 
	(SELECT AVG(Price) FROM Clocks)
FROM Clocks
JOIN Purchases ON ClockId = Clocks.Id
WHERE Purchases.DateSale > '10-10-2021' AND Purchases.DateSale < '10-11-2021' 