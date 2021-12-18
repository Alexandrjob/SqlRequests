SELECT COUNT(*)*100./(SELECT COUNT(*) FROM Clocks)	
FROM Clocks																
 JOIN Deliveries ON ClockId = Clocks.Id
WHERE Price > 150000 