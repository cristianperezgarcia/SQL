-- 1.Consultas
USE TRAVELIN;
Insert into sucursales values 
	(10, 'Tenerife', 'C/Luciano Bello ALfonso,38639 Tenerife', 'travel_tenerife', 'tenerife@travel.com', 'Alejandro Pérez');
Insert into telefonos values 
	(10, 922476566);
Insert into clientes values
	('46246977R', 'Tenerife', 10);
Insert into usuario_web values
	('46246977R', 'danisss', 12345);

#Ruta mas reservada
SELECT id_ruta, COUNT(*) AS cantidad_reservas
FROM rutas_reservadas
GROUP BY id_ruta
ORDER BY cantidad_reservas DESC
LIMIT 1;
#Alojamientos más reservados
SELECT 
    id_alojamiento, COUNT(*) AS cantidad_reservas
FROM
    alojamientos_reservados
GROUP BY id_alojamiento
ORDER BY cantidad_reservas DESC
LIMIT 1;
-- Ruta más rentable
SELECT id_ruta,
       SUM(precio) AS ingresos_totales
FROM precio_ruta
GROUP BY id_ruta
ORDER BY ingresos_totales DESC
LIMIT 1;

#Alojamiento más rentable
SELECT A.id_alojamiento,
       SUM(PA.coste_noche * DATEDIFF(STR_TO_DATE(A.fecha_fin_alojamiento, '%d-%b'), STR_TO_DATE(A.fecha_inicio_alojamiento, '%d-%b'))) AS ingresos_totales
FROM alojamientos_reservados A
JOIN precio_alojamiento PA ON A.id_alojamiento = PA.id_alojamiento
GROUP BY A.id_alojamiento
ORDER BY ingresos_totales DESC
LIMIT 1;

#Provincia con más sucursales
SELECT Provincia, COUNT(*) AS Numero_de_Sucursales
FROM sucursales
GROUP BY Provincia
ORDER BY Numero_de_Sucursales DESC;

-- 2.Checks
ALTER TABLE viajeros
	ADD CONSTRAINT dni CHECK (LENGTH(dni) = 9 AND dni REGEXP '^[0-9]{8}[a-zA-Z]$');
ALTER TABLE precio_ruta 
	ADD CONSTRAINT precio CHECK (precio>0);
AlTER TABLE precio_alojamiento
	ADD CONSTRAINT coste_noche CHECK (coste_noche>0);
AlTER TABLE utiliza
    ADD CONSTRAINT id_ruta CHECK (id_ruta IN (1,2,3,4));
    
-- 3.Vistas 
# Usuarios que hayan cogido simultaneamente alojamiento y ruta
SELECT r.Localizador, r.DNI, rr.id_ruta, ar.id_alojamiento
FROM reservas r
JOIN rutas_reservadas rr ON r.Localizador = rr.localizador
JOIN alojamientos_reservados ar ON r.Localizador = ar.localizador;


