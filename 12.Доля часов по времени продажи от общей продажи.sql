SELECT TOP 1
(SELECT SUM(CountClockSold*100.) 
	FROM Purchases 
	WHERE
	DateSale > '31-10-2021' AND DateSale < '30-11-2021')
/
(SELECT SUM(CountClockSold) FROM Purchases)	