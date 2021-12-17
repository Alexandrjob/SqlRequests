SELECT MAX(Price) AS ÌàêñèìàëüíàÿÖåíà
FROM Clocks 

SELECT MIN(Price) AS ÌèíèìàëüíàÿÖåíà 
FROM Clocks

SELECT AVG(Price) AS ÑðåäíÿÿÖåíà
FROM Clocks

SELECT
	ClockTypeId,
	Name,
	(SELECT AVG(Price) FROM Clocks AS DClocks
	WHERE DClocks.ClockTypeId = PClocks.ClockTypeId) AS AVGPrice 
FROM Clocks AS PClocks
/*Как и выборки убрать повторяющиеся значения.*/
