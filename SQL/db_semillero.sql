USE db_semillero;


--CREACIÓN DE TABLAS

-- TABLA VEHICULOS
DROP TABLE IF EXISTS vehiculos;
CREATE TABLE vehiculos(
    nro_placa VARCHAR(255) PRIMARY KEY NOT NULL UNIQUE NOT NULL,
    id_linea INT(5) UNSIGNED NOT NULL,
    modelo VARCHAR(100) NULL, /*Este elemento puede ser de tipo nulo y no tener registro debido a que su contenido no es de tanta relevancia*/
    fecha_ven_seguro DATE NOT NULL,
    fecha_ven_tecnomecanica DATE NOT NULL,
    fecha_ven_contratodo DATE NOT NULL
)ENGINE = InnoDB;

--TABLA TIPO_LINEA
DROP TABLE IF EXISTS tipo_linea;
CREATE TABLE tipo_linea(
    id_linea INT(5) UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    desc_linea VARCHAR(255) NULL, /*Este elemento puede ser de tipo nulo y no tener registro debido a que su contenido no es de tanta relevancia*/
    id_marca INT(10) UNSIGNED NOT NULL,
    activo ENUM('S', 'N')
)ENGINE = InnoDB;

--AGREGAR LLAVE FORANEA
ALTER TABLE tipo_linea
ADD CONSTRAINT `fk_id_linea`
FOREIGN KEY ('id_linea')
REFERENCES vehiculos(id_linea); 

-- TABLA TIPO_MARCA
DROP TABLE IF EXISTS tipo_marca;
CREATE TABLE tipo_marca(
    id_marca INT(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    desc_marca VARCHAR(255) NULL,/*Este elemento puede ser de tipo nulo y no tener registro debido a que su contenido no es de tanta relevancia*/
    activo ENUM('S', 'N')
)ENGINE = InnoDB;

-- AGREGAR LLAVE FORANEA
ALTER TABLE tipo_marca
ADD CONSTRAINT `fk_id_marca`
FOREIGN KEY ('id_marca')
REFERENCES tipo_linea(id_marca);

--INSERTAR DATOS A CADA TABLA

-- DATOS EN TABLA VEHICULOS

INSERT INTO vehiculos (nro_placa, id_linea, modelo, fecha_ven_seguro, fecha_ven_tecnomecanica, fecha_ven_contratodo) VALUES 
('YMZ97A', 1, 2014, '2021-08-13', '2021-10-20', '2022-12-22');
('MFF55D', 2, 2018, '2021-02-02', '2021-11-14', '2022-12-25'),
('SZQ578', 3, 2015, '2021-05-14', '2021-08-20', '2022-12-28'),
('LAB979', 4, 2019, '2021-12-14', '2021-05-04', '2022-12-04'),
('MLW986', 5, 2015, '2021-06-12', '2021-04-28', '2022-12-15'),
('IHR198', 6, 2016, '2021-03-16', '2021-10-19', '2022-12-02'),
('LAT968', 7, 2019, '2021-09-11', '2021-12-10', '2022-12-10'),
('RKV560', 8, 2015, '2021-06-18', '2021-05-18', '2022-12-13'),
('DRY014', 9, 2015, '2021-03-16', '2021-10-19', '2022-12-23'),
('SNR954', 10, 2018, '2021-07-15', '2021-11-09', '2022-12-21'),
('RZA71E', 11, 2019, '2021-08-16', '2021-07-19', '2022-12-07'),
('FHZ30D', 12, 2020, '2021-07-14', '2021-10-12', '2022-12-15'),
('ZAC15A', 13, 2019, '2021-05-19', '2021-10-18', '2022-12-01'),
('FHH73D', 14, 2016, '2021-01-17', '2021-09-11', '2022-12-19'),
('QBP76C', 15, 2017, '2021-03-13', '2021-03-04', '2022-12-24'),
('CPP78D', 16, 2016, '2021-07-17', '2021-10-05', '2022-12-12'),
('BXN15E', 17, 2018, '2021-04-22', '2021-01-16', '2022-12-09'),
('URU656', 18, 2015, '2021-06-09', '2021-12-11', '2022-12-13'),
('HOO50B', 19, 2017, '2021-05-24', '2021-08-15', '2022-12-18'),
('MPU84E', 20, 2020, '2021-08-21', '2021-10-22', '2022-12-20'),
('CPO77E', 21, 2018, '2021-04-11', '2021-02-13', '2022-12-16'),
('WHI000', 22, 2016, '2021-05-12', '2021-06-15', '2022-12-30'),
('RAP44W', 23, 2015, '2021-08-10', '2021-09-17', '2022-12-25'),
('CD1760', 24, 2019, '2021-07-04', '2021-03-01', '2022-12-03'),
('53075', 25, 2016, '2021-08-15', '2021-10-04', '2022-12-15'),
('SE9081', 26, 2019, '2021-05-13', '2021-05-21', '2022-12-13'),
('CG0550', 27, 2015, '2021-07-16', '2021-10-19', '2022-12-23'),
('60694', 28, 2016, '2021-09-17', '2021-08-18', '2022-12-01'),
('AK1480', 29, 2018, '2021-11-16', '2021-04-18', '2022-12-08'),
('CVY000', 30, 2020, '2021-05-10', '2021-02-19', '2022-12-07');

--DATOS EN TABLA TIPO_LINEA

INSERT INTO tipo_linea (id_linea, desc_linea, id_marca, activo) VALUES
(1, 'Descapotable', 1, 'S'),
(2, 'Todoterreno', 2, 'N'),
(3, 'Deportivo', 3, 'S'),
(4, 'Familiar', 4, 'S'),
(5, 'Compacto', 5, 'N'),
(6, 'Deportivo', 6, 'S'),
(7, 'Subcompacto', 7, 'N'),
(8, 'Compacto', 8, 'S'),
(9, 'Todoterreno', 9, 'N'),
(10, 'Deportivo', 10, 'S'),
(11, 'Familiar', 11, 'N'),
(12, 'Familiar', 12, 'S'),
(13, 'Todoterreno', 13, 'N'),
(14, 'Subcompacto', 14, 'S'),
(15, 'Compacto', 15, 'N'),
(16, 'Descapotable', 16, 'S'),
(17, 'Familiar', 17, 'N'),
(18, 'Deportivo', 18, 'S'),
(19, 'Subcompacto', 19, 'N'),
(20, 'Descapotable', 20, 'S');

--DATOS EN TABLA TIPO_MARCA

INSERT INTO tipo_marca (id_marca, desc_marca, activo) VALUES
(1, 'Renault', 'S'),
(2, 'BMW', 'N'),
(3, 'Mazda', 'S'),
(4, 'Toyota', 'S'),
(5, 'Honda', 'N');