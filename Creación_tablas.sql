CREATE DATABASE IF NOT EXISTS TRAVELIN;
USE TRAVELIN;
CREATE TABLE IF NOT EXISTS sucursales(
   id_sucursal INT NOT NULL,
   Provincia CHAR(20) NOT NULL,
   dirección VARCHAR(50) NULL,
   redes_sociales VARCHAR(30)  NOT NULL,
   mail VARCHAR(40) NOT NULL,
   gerente VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS telefonos(
   id_sucursal  CHAR(2) NOT NULL,
   telefonos CHAR(9) NOT NULL
);
CREATE TABLE IF NOT EXISTS clientes(
   dni   CHAR(9) NOT NULL,
   ciudad VARCHAR(9) NOT NULL,
   id_sucursal CHAR(6) NOT NULL
);
CREATE TABLE IF NOT EXISTS usuario_web(
   dni   CHAR(9) NOT NULL,
   login VARCHAR(9) NOT NULL,
   password VARCHAR(9) NOT NULL
);
CREATE TABLE IF NOT EXISTS viajeros(
   dni   CHAR(9) NOT NULL,
   nombre CHAR(9) NOT NULL,
   apellidos VARCHAR(9) NULL,
   mail VARCHAR(50) NOT NULL,
   dirección VARCHAR(50) NULL
);
CREATE TABLE IF NOT EXISTS atencion_clientes(
   id CHAR(5) NOT NULL,
   telefonos CHAR(9) NOT NULL,
   mail VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS consultas(
   dni   CHAR(9) NOT NULL,
   id_atención_cliente CHAR(9) NOT NULL,
   num_consultas INT 
);
CREATE TABLE IF NOT EXISTS alojamientos(
   id_alojamiento  INT NOT NULL,
   nombre VARCHAR(30) NOT NULL,
   regimen VARCHAR(9) NULL
);
CREATE TABLE IF NOT EXISTS edificio(
   nombre   VARCHAR(30) NOT NULL,
   dirección VARCHAR(30) NOT NULL,
   categoria ENUM('1','2','3','4','5') NOT NULL,
   tipo ENUM('hotel', 'apartamento') NOT NULL
);
CREATE TABLE IF NOT EXISTS precio_alojamiento(
   id_alojamiento INT NOT NULL,
   coste_noche INT NOT NULL,
   fecha_inicio VARCHAR(30) NOT NULL,
   fecha_fin VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS rutas_reservadas(
   localizador VARCHAR(9) NOT NULL,
   id_ruta INT NOT NULL,
   fecha_ruta VARCHAR(9) NOT NULL
);
CREATE TABLE IF NOT EXISTS reservas(
   DNI   CHAR(9) NOT NULL,
   Localizador VARCHAR(20) NOT NULL,
   nºpersonas INT NOT NULL,
   precio FLOAT NOT NULL
);
CREATE TABLE IF NOT EXISTS alojamientos_reservados(
   localizador   VARCHAR(20) NOT NULL,
   id_alojamiento INT NOT NULL,
   fecha_inicio_alojamiento VARCHAR(30) NOT NULL,
   fecha_fin_alojamiento VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS rutas(
   id_ruta  CHAR(5) NOT NULL,
   nombre VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS paradas(
   id_ruta CHAR(5) NOT NULL,
   orden INT NOT NULL,
   ciudad VARCHAR(9) NOT NULL
);
CREATE TABLE IF NOT EXISTS precio_ruta(
   id_ruta   INT NOT NULL,
   fecha_inicio VARCHAR(10) NOT NULL,
   fecha_fin VARCHAR(10) NOT NULL,
   precio FLOAT NOT NULL
);
CREATE TABLE IF NOT EXISTS utiliza(
   id_ruta   INT NOT NULL,
   matricula VARCHAR(9) NOT NULL
);
CREATE TABLE IF NOT EXISTS autocares(
   matricula  VARCHAR(10) NOT NULL,
   marca VARCHAR(30) NOT NULL,
   modelo VARCHAR(2) NOT NULL,
   capacidad INT NOT NULL
);
-- Definición de claves primarias
ALTER TABLE sucursales
   ADD CONSTRAINT sucursalesPK PRIMARY KEY (id_sucursal);
ALTER TABLE telefonos
   ADD CONSTRAINT telefonosPK PRIMARY KEY (id_sucursal, telefonos);
ALTER TABLE clientes
   ADD CONSTRAINT clientesPK PRIMARY KEY (dni);
ALTER TABLE usuario_web
   ADD CONSTRAINT usuario_webPK PRIMARY KEY (dni);
ALTER TABLE viajeros
   ADD CONSTRAINT viajerosPK PRIMARY KEY (dni);
ALTER TABLE atencion_clientes
   ADD CONSTRAINT atencion_clientesPK PRIMARY KEY (id);
ALTER TABLE consultas
   ADD CONSTRAINT consultasPK PRIMARY KEY (dni, id_atención_cliente);
ALTER TABLE alojamientos
   ADD CONSTRAINT alojamientosPK PRIMARY KEY (id_alojamiento);
ALTER TABLE edificio
   ADD CONSTRAINT edificioPK PRIMARY KEY (nombre);
ALTER TABLE precio_alojamiento
   ADD CONSTRAINT precio_alojamientoPK PRIMARY KEY (id_alojamiento, coste_noche);
ALTER TABLE reservas
   ADD CONSTRAINT reservasPK PRIMARY KEY (localizador);
ALTER TABLE alojamientos_reservados
   ADD CONSTRAINT alojamientos_reservadosPK PRIMARY KEY (localizador, id_alojamiento);
ALTER TABLE rutas_reservadas
   ADD CONSTRAINT rutas_reservadasPK PRIMARY KEY (localizador, id_ruta);
ALTER TABLE rutas
   ADD CONSTRAINT rutasPK PRIMARY KEY (id_ruta);
ALTER TABLE paradas
   ADD CONSTRAINT paradasPK PRIMARY KEY (id_ruta, orden);
ALTER TABLE precio_ruta
   ADD CONSTRAINT precio_rutaPK PRIMARY KEY (id_ruta, fecha_inicio);
ALTER TABLE utiliza
   ADD CONSTRAINT utilizaPK PRIMARY KEY (id_ruta, matricula);
ALTER TABLE autocares
   ADD CONSTRAINT autocaresPK PRIMARY KEY (matricula);
-- Definición de claves ajenas 
ALTER TABLE telefonos
   ADD CONSTRAINT sucursales FOREIGN KEY (id_sucursal)
   REFERENCES sucursales(id_sucursal)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE clientes
   ADD CONSTRAINT sucursales FOREIGN KEY (id_sucursal)
   REFERENCES sucursales(id_sucursal)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE clientes
   ADD CONSTRAINT viajeros FOREIGN KEY (dni)
   REFERENCES viajeros(dni)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE usuario_web
   ADD CONSTRAINT viajeros FOREIGN KEY (dni)
   REFERENCES viajeros(dni)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE consultas
   ADD CONSTRAINT viajeros FOREIGN KEY (dni)
   REFERENCES viajeros(dni)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE consultas
   ADD CONSTRAINT atencion_clientes FOREIGN KEY (telefonos)
   REFERENCES atencion_clientes(telefonos)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE alojamientos
   ADD CONSTRAINT precio_alojamiento FOREIGN KEY (id_alojamiento)
   REFERENCES precio_alojamiento(id_alojamiento)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE reservas
   ADD CONSTRAINT viajeros FOREIGN KEY (dni)
   REFERENCES viajeros(dni)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE alojamientos_reservados
   ADD CONSTRAINT reserva FOREIGN KEY (localizador)
   REFERENCES reserva(localizador)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE rutas_reservadas
   ADD CONSTRAINT reservas FOREIGN KEY (localizador)
   REFERENCES reservas(localizador)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE paradas
   ADD CONSTRAINT rutas FOREIGN KEY (id_ruta)
   REFERENCES rutas(id_ruta)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE precio_ruta
   ADD CONSTRAINT rutas FOREIGN KEY (id_ruta)
   REFERENCES rutas(id_ruta)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE utiliza
   ADD CONSTRAINT rutas FOREIGN KEY (id_ruta)
   REFERENCES rutas(id_ruta)
   ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE utiliza
   ADD CONSTRAINT autocares FOREIGN KEY (matricula)
   REFERENCES autocares(matricula)
   ON DELETE CASCADE ON UPDATE CASCADE;