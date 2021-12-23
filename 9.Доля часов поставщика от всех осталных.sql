SELECT TOP 1
(SELECT SUM(CountClocks*100.) 
	FROM Deliveries 
	WHERE
	SupplerId = (SELECT Id FROM Suppliers WHERE Name = 'Медовый Дом'))
/
(SELECT SUM(CountClocks) FROM Deliveries)	