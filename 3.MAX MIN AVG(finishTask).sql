SELECT MAX(Price) AS ����������������
FROM Clocks 

SELECT MIN(Price) AS ��������������� 
FROM Clocks

SELECT AVG(Price) AS �����������
FROM Clocks

SELECT
	ClockTypeId,
	Name,
	(SELECT AVG(Price) FROM Clocks AS DClocks
	WHERE DClocks.ClockTypeId = PClocks.ClockTypeId) AS AVGPrice 
FROM Clocks AS PClocks
/*��� � ������� ������ ������������� ��������*/