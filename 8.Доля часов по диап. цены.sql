SELECT COUNT(*)*100./(SELECT COUNT(*) FROM Clocks)
FROM Clocks
WHERE
Price > 120000 AND Price < 150000