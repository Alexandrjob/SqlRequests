SELECT COUNT(*)*100./(SELECT COUNT(*) FROM Clocks)	
FROM Clocks																
 JOIN Deliveries ON ClockId = Clocks.Id
WHERE Price > 150000 AND Deliveries.DateDelivery > '10-10-2010' AND Deliveries.DateDelivery < '10-11-2010' 