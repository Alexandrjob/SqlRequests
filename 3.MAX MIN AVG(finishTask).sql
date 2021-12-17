SELECT MAX(Price) AS ћаксимальна€÷ена
FROM Clocks 

SELECT MIN(Price) AS ћинимальна€÷ена 
FROM Clocks

SELECT AVG(Price) AS —редн€€÷ена
FROM Clocks

SELECT
	ClockTypeId,
	Name,
	(SELECT AVG(Price) FROM Clocks AS DClocks
	WHERE DClocks.ClockTypeId = PClocks.ClockTypeId) AS AVGPrice 
FROM Clocks AS PClocks
/* ак и выборки убрать повтор€ющиес€ значени€*/