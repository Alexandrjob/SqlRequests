SELECT COUNT(*)*100./(SELECT COUNT(*) FROM Clocks)						/*SELECT COUNT(Item)*100./(SELECT COUNT(Item) FROM Table)*/ /*������� �� �������, �� ��� ������ item �������*/
FROM Clocks																/*FROM Table											 */
WHERE 																	/*WHERE													 */
ManufacturerId = (SELECT Id FROM Manufacturer WHERE Name = 'Breguet')	/*Product = '����� �'									 */
/*��������� �� ������ ��������� �������������*/