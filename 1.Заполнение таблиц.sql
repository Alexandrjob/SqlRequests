INSERT INTO Сountries 
VALUES
('Россия'),
('США'),
('Франция'),
('Германия'),
('Австралия'),
('Китай')

INSERT INTO Suppliers 
VALUES
('Краун Трейдинг'),
('Медовый Дом'),
('Колобок'),
('Кондипрод'),
('Лимак'),
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
('Карманные'),
('Наручные'),
('Каретные'),
('Настольные'),
('Настенные'),
('Каминные'),
('Напольные'),
('Умные'),
('Башенные')

INSERT INTO Clocks
VALUES 
(
	'Марк-1',
	'10-12-2009',
	(SELECT Id FROM ClockTypes WHERE Name='Карманные'),
	(SELECT Id FROM Manufacturer WHERE Name='Vacheron Constantin'),
	200000
),
(
	'Кравица',
	'30-03-2001',
	(SELECT Id FROM ClockTypes WHERE Name='Умные'),
	(SELECT Id FROM Manufacturer WHERE Name='Breguet'),
	150000
),
(
	'Пурпурный берег',
	'22-02-2004',
	(SELECT Id FROM ClockTypes WHERE Name='Каретные'),
	(SELECT Id FROM Manufacturer WHERE Name='Omega'),
	140000
),
(
	'Престиж',
	'14-09-1992',
	(SELECT Id FROM ClockTypes WHERE Name='Каминные'),
	(SELECT Id FROM Manufacturer WHERE Name='Cartier'),
	80000
),
(
	'Рассвет',
	'24-11-2011',
	(SELECT Id FROM ClockTypes WHERE Name='Башенные'),
	(SELECT Id FROM Manufacturer WHERE Name='Ulysse Nardin'),
	75000
),
(
	'Космос',
	'17-06-2006',
	(SELECT Id FROM ClockTypes WHERE Name='Настенные'),
	(SELECT Id FROM Manufacturer WHERE Name='Patek Philippe'),
	530000
),
(
	'Муло',
	'20-01-2017',
	(SELECT Id FROM ClockTypes WHERE Name='Настольные'),
	(SELECT Id FROM Manufacturer WHERE Name='Longines'),
	320000
),
(
	'Еден',
	'02-02-2022',
	(SELECT Id FROM ClockTypes WHERE Name='Башенные'),
	(SELECT Id FROM ClockTypes WHERE Name='Vacheron Constantin'),
	120000
),
(
	'Фиско',
	'09-05-1999',
	(SELECT Id FROM ClockTypes WHERE Name='Наручные'),
	(SELECT Id FROM Manufacturer WHERE Name='Patek Philippe'),
	480000
),
(
	'Перка',
	'07-07-2000',
	(SELECT Id FROM ClockTypes WHERE Name='Напольные'),
	(SELECT Id FROM Manufacturer WHERE Name='Ulysse Nardin'),
	190000
),
(
	'Шокока',
	'15-12-2009',
	(SELECT Id FROM ClockTypes WHERE Name='Наручные'),
	(SELECT Id FROM Manufacturer WHERE Name='Longines'),
	275000
),
(
	'Камро',
	'20-04-2008',
	(SELECT Id FROM ClockTypes WHERE Name='Наручные'),
	(SELECT Id FROM Manufacturer WHERE Name='Breguet'),
	3100000
)

INSERT INTO Deliveries
VALUES
(
	'10-10-2009',
	(SELECT Id FROM Clocks WHERE Name='Камро'),
	(SELECT Id FROM Suppliers WHERE Name='Медовый Дом'),
	(SELECT Id FROM Сountries WHERE Name='Россия'),
	DEFAULT,
	2
),
(
	'13-10-2009',
	(SELECT Id FROM Clocks WHERE Name='Престиж'),
	(SELECT Id FROM Suppliers WHERE Name='Grace Foods'),
	(SELECT Id FROM Сountries WHERE Name='США'),
	6,
	DEFAULT
),
(
	'15-10-2009',
	(SELECT Id FROM Clocks WHERE Name='Рассвет'),
	(SELECT Id FROM Suppliers WHERE Name='MakStory'),
	(SELECT Id FROM Сountries WHERE Name='Франция'),
	DEFAULT,
	DEFAULT
),
(
	'20-09-2010',
	(SELECT Id FROM Clocks WHERE Name='Космос'),
	(SELECT Id FROM Suppliers WHERE Name='Медовый Дом'),
	(SELECT Id FROM Сountries WHERE Name='США'),
	2,
	0
),
(
	'25-09-2010',
	(SELECT Id FROM Clocks WHERE Name='Муло'),
	(SELECT Id FROM Suppliers WHERE Name='Колобок'),
	(SELECT Id FROM Сountries WHERE Name='Германия'),
	12,
	2
),
(
	'29-09-2010',
	(SELECT Id FROM Clocks WHERE Name='Еден'),
	(SELECT Id FROM Suppliers WHERE Name='Кондипрод'),
	(SELECT Id FROM Сountries WHERE Name='Австралия'),
	7,
	0
),
(
	'03-11-2010',
	(SELECT Id FROM Clocks WHERE Name='Фиско'),
	(SELECT Id FROM Suppliers WHERE Name='Grace Foods'),
	(SELECT Id FROM Сountries WHERE Name='Китай'),
	9,
	4
),
(
	'20-09-2010',
	(SELECT Id FROM Clocks WHERE Name='Перка'),
	(SELECT Id FROM Suppliers WHERE Name='Лимак'),
	(SELECT Id FROM Сountries WHERE Name='Китай'),
	4,
	DEFAULT
),
(
	'03-04-2011',
	(SELECT Id FROM Clocks WHERE Name='Кравица'),
	(SELECT Id FROM Suppliers WHERE Name='Краун Трейдинг'),
	(SELECT Id FROM Сountries WHERE Name='Франция'),
	8,
	2
)

INSERT INTO Purchases
VALUES
(
	(SELECT Id FROM Clocks WHERE Name='Перка'),
	1,
	'19-10-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='Фиско'),
	2,
	'21-10-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='Муло'),
	3,
	'01-11-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='Космос'),
	1,
	'04-11-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='Кравица'),
	5,
	'10-11-2021'
),
(
	(SELECT Id FROM Clocks WHERE Name='Еден'),
	4,
	'20-12-2021'
)