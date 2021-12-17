INSERT INTO �ountries 
VALUES
('������'),
('���'),
('�������'),
('��������'),
('���������'),
('�����')

INSERT INTO Suppliers 
VALUES
('����� ��������'),
('������� ���'),
('�������'),
('���������'),
('�����'),
('Grace Foods'),
('MakStory')

INSERT INTO Manufacturer
VALUES
('Vacheron Constantin'),
('Breguet'),
('Longines'),
('Patek Philippe'),
('Ulysse Nardin'),
('Cartier'),
('Omega')

INSERT INTO ClockTypes
VALUES
('���������'),
('��������'),
('��������'),
('����������'),
('���������'),
('��������'),
('���������'),
('�����'),
('��������')

INSERT INTO Clocks
VALUES 
(
	'����-1',
	'10-12-2009',
	(SELECT Id FROM ClockTypes WHERE Name='���������'),
	(SELECT Id FROM Manufacturer WHERE Name='Vacheron Constantin'),
	200000
),
(
	'�������',
	'30-03-2001',
	(SELECT Id FROM ClockTypes WHERE Name='�����'),
	(SELECT Id FROM Manufacturer WHERE Name='Breguet'),
	150000
),
(
	'��������� �����',
	'22-02-2004',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM Manufacturer WHERE Name='Omega'),
	140000
),
(
	'�������',
	'14-09-1992',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM Manufacturer WHERE Name='Cartier'),
	80000
),
(
	'�������',
	'24-11-2011',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM Manufacturer WHERE Name='Ulysse Nardin'),
	75000
),
(
	'������',
	'17-06-2006',
	(SELECT Id FROM ClockTypes WHERE Name='���������'),
	(SELECT Id FROM Manufacturer WHERE Name='Patek Philippe'),
	530000
),
(
	'����',
	'20-01-2017',
	(SELECT Id FROM ClockTypes WHERE Name='����������'),
	(SELECT Id FROM Manufacturer WHERE Name='Longines'),
	320000
),
(
	'����',
	'02-02-2022',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM ClockTypes WHERE Name='Vacheron Constantin'),
	120000
),
(
	'�����',
	'09-05-1999',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM Manufacturer WHERE Name='Patek Philippe'),
	480000
),
(
	'�����',
	'07-07-2000',
	(SELECT Id FROM ClockTypes WHERE Name='���������'),
	(SELECT Id FROM Manufacturer WHERE Name='Ulysse Nardin'),
	190000
),
(
	'������',
	'15-12-2009',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM Manufacturer WHERE Name='Longines'),
	275000
),
(
	'�����',
	'20-04-2008',
	(SELECT Id FROM ClockTypes WHERE Name='��������'),
	(SELECT Id FROM Manufacturer WHERE Name='Breguet'),
	3100000
)

INSERT INTO Deliveries
VALUES
(
	'10-10-2009',
	(SELECT Id FROM Clocks WHERE Name='�����'),
	(SELECT Id FROM Suppliers WHERE Name='������� ���'),
	(SELECT Id FROM �ountries WHERE Name='������'),
	DEFAULT,
	2
),
(
	'13-10-2009',
	(SELECT Id FROM Clocks WHERE Name='�������'),
	(SELECT Id FROM Suppliers WHERE Name='Grace Foods'),
	(SELECT Id FROM �ountries WHERE Name='���'),
	6,
	DEFAULT
),
(
	'15-10-2009',
	(SELECT Id FROM Clocks WHERE Name='�������'),
	(SELECT Id FROM Suppliers WHERE Name='MakStory'),
	(SELECT Id FROM �ountries WHERE Name='�������'),
	DEFAULT,
	DEFAULT
),
(
	'20-09-2010',
	(SELECT Id FROM Clocks WHERE Name='������'),
	(SELECT Id FROM Suppliers WHERE Name='������� ���'),
	(SELECT Id FROM �ountries WHERE Name='���'),
	2,
	0
),
(
	'25-09-2010',
	(SELECT Id FROM Clocks WHERE Name='����'),
	(SELECT Id FROM Suppliers WHERE Name='�������'),
	(SELECT Id FROM �ountries WHERE Name='��������'),
	12,
	2
),
(
	'29-09-2010',
	(SELECT Id FROM Clocks WHERE Name='����'),
	(SELECT Id FROM Suppliers WHERE Name='���������'),
	(SELECT Id FROM �ountries WHERE Name='���������'),
	7,
	0
),
(
	'03-11-2010',
	(SELECT Id FROM Clocks WHERE Name='�����'),
	(SELECT Id FROM Suppliers WHERE Name='Grace Foods'),
	(SELECT Id FROM �ountries WHERE Name='�����'),
	9,
	4
),
(
	'20-09-2010',
	(SELECT Id FROM Clocks WHERE Name='�����'),
	(SELECT Id FROM Suppliers WHERE Name='�����'),
	(SELECT Id FROM �ountries WHERE Name='�����'),
	4,
	DEFAULT
),
(
	'03-04-2011',
	(SELECT Id FROM Clocks WHERE Name='�������'),
	(SELECT Id FROM Suppliers WHERE Name='����� ��������'),
	(SELECT Id FROM �ountries WHERE Name='�������'),
	8,
	2
)

INSERT INTO Purchases
VALUES
(
	(SELECT Id FROM Clocks WHERE Name='�����'),
	1,
	'19-10-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='�����'),
	2,
	'21-10-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='����'),
	3,
	'01-11-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='������'),
	1,
	'04-11-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='�������'),
	5,
	'10-11-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='����'),
	4,
	'20-12-2021'
)