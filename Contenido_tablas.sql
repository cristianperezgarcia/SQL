-- Relleno de las tablas
USE TRAVELIN;
Insert into sucursales values 
	(1, 'Madrid', 'C/Arriaga 1, 28009 Madrid', 'travel_madrid1', 'madrid1@travel.com', 'Paco Pérez'),
    (3, 'Madrid', NULL, 'travel_madrid3', 'madrid3@travel.com', 'Ana Antonia'),
    (4, 'Barcelona', 'C/Arrecife 4', 'travel_barcelona4', 'barna@travel.com', 'Omar'),
    (5, 'Barcelona', 'Avinguda del prat', 'travel_barcelona5', 'barna1@travel.com', 'Oscar Leine'),
    (6, 'Valencia', NULL, 'travel_valencia6', 'val1@travel.com', 'Ana Aparicio'),
    (7, 'Valencia', NULL, 'travel_valencia7', 'val2@travel.com', 'Mario Pita'),
    (8, 'Valencia', NULL, 'travel_valencia8', 'val3@travel.com', 'Ana Aparicio'),
    (9, 'Valencia', NULL, 'travel_valencia9', 'val4@travel.com', 'Mario Pita')
;
Insert into telefonos values
    (1, 917776622),
    (1, 917776666),
	(3, 917772266),
    (4, 938887770),
    (5, 934445588),
    (6, 968887767),
    (7, 967765566),
    (8, 967655566),
    (9, 967656778)
;
Insert into clientes values
   ("11111111L", "Madrid", 1),
   ("32323433A", "Madrid", 3),
   ("88477474L", "Barcelona", 4)
;
Insert into usuario_web values
    ("88383737D", "Marcos333", "esa"),
	("63647347G", "Maríajjk", "paso"),
    ("73773663H", "Manuel", "manuel_75")
;
Insert into viajeros values
	("88383737D", "Marcos", "Martínez", "marcos@gmail.com", NULL),
	("63647347G", "María", "de Andres", "mariaan@outlook.es", NULL ),
	("73773663H", "Manuel", NULL, "manuel75@outlook.com", NULL ),
	("11111111L", "Alvaro", "Lopez", "alvaro@gmail.com", "C/Alcala 34, Madrid"),
	("32323433A", "Alvaro", "Estiarte", "alvaro3@gmail.com", "C/Marqués 334, Madrid"),
	("88477474L", "Alberto", "Lucas", "alberto@gmail.com", "C/Real 223, Terrasa")
;
Insert into atencion_clientes values
	(1, 900110010, "atencioncliente@travel.com"),
    (2, 900192222, "atencionweb@travel.com")
;
Insert into consultas values
	("11111111L", 1, 1),
    ("63647347G", 2, 1),
	("32323433A", 1, 2)
;
Insert into alojamientos values
	(1, "Hotel Torredembarra", "AD"),
	(2, "Hotel Torredembarra", "MP"),
	(3, "Hotel Torredembarra", "PC"),
	(4, "Apartamento Manga Mayor", NULL),
	(5, "Apartamento Sol", NULL),
	(6, "Hotel Centrol", "AD"),
	(7, "Hotel Centrol", "MP"),
	(8, "Ap Tierra y mar 3", NULL),
	(9, "Hotel Estrella", "AD"),
	(10, "Hotel Estrella", "PC"),
	(11, "Hotel Mediterráneo", "AD"),
	(12, "Hotel la cala", "AD"),
	(13, "Hotel la cala", "MP")
;
Insert into edificio values 
	('Hotel Torredembarra','C/Torredembarra 1, Barcelona', 3, 'Hotel'),
	('Apartamento Manga Mayor','C/Alcañiz 4, Murcia', 3, 'Apartamento'),
	('Apartamento Sol','Av Brasil, Alicante', 4, 'Apartamento'),
	('Hotel Centrol','C/Alcala 4, Madrid', 4, 'Hotel'),
	('Ap Tierra y mar 3','C/Pez 5, Barcelona', 3, 'Apartamento'),
	('Hotel Estrella','C/Alonso Martínez 5, Madrid', 5, 'Hotel'),
	('Hotel Mediterráneo','C/maritimo, Valencia', 4, 'Hotel'),
	('Hotel la cala','C/Cala 3, La pineda Tarragona', 3, 'Hotel'),
	('Apartamento Nubesol','C/Alaurin 5, Santander', 3, 'Apartamento')
;
Insert into precio_alojamiento values
	(1, 50, '01-ene', '31-dic'),
	(2, 50, '01-ene', '01-jun'),
	(2, 60, '02-jun', '31-dic'),
	(3, 50, '01-ene', '01-jun'),
	(3, 102, '02-jun', '31-dic'),
	(4, 30, '01-ene', '01-jun'),
	(4, 50, '02-ene', '31-dic'),
	(5, 30, '01-ene', '01-jun'),
	(5, 34, '02-jun', '31-dic'),
	(6, 40, '01-ene', '31-dic'),
	(7, 50, '01-ene', '31-dic'),
	(8, 50, '01-ene', '31-dic'),
	(9, 100, '01-ene', '31-dic'),
	(10, 100, '01-ene', '01-jun'),
	(10, 123, '02-jun', '31-dic'),
	(11, 122, '01-ene', '01-jun'),
	(11, 100, '02-jun', '31-dic'),
	(12, 40, '01-ene', '01-jun'),
	(12, 50, '02-jun', '31-dic'),
	(13, 90, '01-ene', '01-jun'),
	(13, 100, '02-jun', '31-dic'),
	(14, 230, '01-ene', '31-dic')
;
Insert into reservas values
	('11111111L', 'AD4JJFH5', 2, 100),
	('11111111L', 'KKEI2233', 1, 1000),
	('88383737D', '88G37JJD', 2, 455),
	('63647347G', 'UYYDU334', 1, 335),
	('88383737D', 'KDAFIL34', 2, 2000),
	('32323433A', 'ADFJLKJ3', 2, 1039),
	('32323433A', 'A6F22JP4', 3, 125),
	('32323433A', 'K2KDKJ3J', 3, 876),
	('88477474L', 'J8DJ5C53', 3, 384),
	('88383737D', 'DMMMJ344', 3, 376)
;
Insert into alojamientos_reservados values
	('AD4JJFH5', 1, '44682', '44683'),
	('KKDKKFJ', 1, '44713', '44752'),
	('KKEI2233', 2, '45109', '45117'),
	('88G37JJD', 2, '44044', '44048'),
	('UYYDU334', 5, '45109', '45117'),
	('KDAFIL34', 9, '44713', '44752'),
	('ADFJLKJ3', 10, '44044', '44048'),
	('A6F22JP4', 11, '45110', '45112'),
	('K2KDKJ3J', 12, '44682', '44683'),
	('J8DJ5C53', 13, '44713', '44752'),
	('DMMMJ344', 14, '45109', '45117')
;
Insert into rutas_reservadas values
	('OS83NF01', 1, 2023-01-01),
	('9MZG4F9U', 1, 2023-01-01),
	('FI4B9W2H', 1, 2023-01-01),
	('J5F8HA5F', 1, 2023-01-01),
	('J9OMB6GY', 1, 2023-01-01),
	('OKM54G1N', 2, 2023-06-01),
	('9IMF0L3A', 2, 2023-06-01),
	('KKEI2233', 3, 2023-07-01)
;
Insert into rutas values
	(1, 'Mediterráneo'),
	(2, 'de los caballeros'),
	(3, 'Cantábrico'),
	(4, 'Centro')
;
Insert into paradas values
	(1, 1, 'Valencia'),
	(1, 2, 'Alicante'),
	(1, 3, 'Valencia'),
	(2, 1, 'Madrid'),
	(2, 2, 'Toledo'),
	(2, 3, 'Almansa'),
	(2, 4, 'Madrid'),
	(3, 1, 'Madrid'),
	(3, 2, 'León'),
	(3, 3, 'Santader'),
	(3, 4, 'Oviedo'),
	(3, 5, 'Gijón'),
	(3, 6, 'Madrid'),
	(4, 1, 'Madrid'),
	(4, 2, 'Cuenca'),
	(4, 3, 'Madrid')
;
Insert into precio_ruta values
	(1, '01-ene','01-jun', 20),
	(1, '02-jun','31-dic', 30),
	(2, '01-ene','01-jun', 109),
	(2, '02-jun', '31-dic', 230),
	(3, '01-ene','01-jun', 100),
	(3, '02-jun','31-dic', 234),
	(4, '01-ene','01-jun', 198),
	(4, '02-jun', '31-dic', 123)
;
Insert into utiliza values
	(3, '7767JKK'),
	(4, '3748HKD'),
	(3, '8876BND'),
	(1, '9989KLO'),
	(2, '8878HHH'),
	(2, '9878LJK')
;
Insert into autocares values
	('7767JKK', 'MERCEDES BENZ', 'M3', 100),
    ('3748HKD', 'SETRA', 'S3', 50),
	('8876BND', 'MERCEDES BENZ', 'M1', 90),
	('9989KLO', 'SCANIA', 'J1', 80),
	('8878HHH', 'VOLVO', 'A4', 89),
	('9878LJK', 'VOLVO', 'A4', 89)
;










	

	


    

    

	

    



	
