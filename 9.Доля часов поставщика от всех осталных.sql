SELECT TOP 1
(SELECT SUM(CountClocks*100.) 
	FROM Deliveries 
	WHERE
	SupplerId = (SELECT Id FROM Suppliers WHERE Name = '������� ���'))
/
(SELECT SUM(CountClocks) FROM Deliveries)	