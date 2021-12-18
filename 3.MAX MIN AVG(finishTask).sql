SELECT MAX(Price) AS МаксимальнаяЦена
FROM Clocks 

SELECT MIN(Price) AS МинимальнаяЦена 
FROM Clocks

SELECT AVG(Price) AS СреняяЦена
FROM Clocks

 SELECT 
	AVG(Price) FROM Clocks
	JOIN ClockTypes ON Clocks.ClockTypeId = ClockTypes.Id
	WHERE ClockTypes.Name = 'Карманные'
