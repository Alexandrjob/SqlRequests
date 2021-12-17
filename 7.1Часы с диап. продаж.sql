SELECT *
FROM Purchases
JOIN Clocks ON ClockId = Clocks.Id
WHERE DateSale > '31-10-2021' AND DateSale < '30-11-2021'