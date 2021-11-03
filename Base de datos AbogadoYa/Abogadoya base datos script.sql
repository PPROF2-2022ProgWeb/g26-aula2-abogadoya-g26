CREATE DATABASE IF NOT EXISTS ABOGADOYA;
USE ABOGADOYA;


CREATE TABLE IF NOT EXISTS `localidad`(
`IdLocalidad` varchar(60) not null PRIMARY KEY,
`Nombre` varchar (60) not null
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `abogado`(
`IdAbogado` varchar(60) not null PRIMARY KEY,
`Nombre` varchar (60) not null,
`Direccion` varchar (60) not null,
`Telefono` varchar (60) not null,
`Mail` varchar (60) not null,
`Matricula` varchar (60) not null
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `formaPago`(
`FormaPago` varchar(60) not null PRIMARY KEY,
`Nombre` varchar (60) not null
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tipoFactura`(
`IdTipoFactura` varchar(60) not null PRIMARY KEY,
`NombreTipo` varchar (60) not null
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTs `cliente`(
`IdCliente` varchar(60) not null PRIMARY KEY,
`NroDoc` varchar(60) not null,
`TipoDoc` varchar(60) not null,
`Nombre` varchar (60) not null,
`Direccion` varchar (60) not null,
`tel` varchar(60),
`IdLocalidad` varchar(60) not null,
FOREIGN KEY (`IdLocalidad`) REFERENCES localidad (`IdLocalidad`)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `login`(
`Usuario` varchar(60) not null PRIMARY KEY,
`IdCliente` varchar (60) not null,
`Clave` varchar (60) not null,
FOREIGN KEY (`IdCliente`) REFERENCES cliente (`IdCliente`) ON DELETE CASCADE
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `caso`(
`IdCaso` varchar (60) not null PRIMARY KEY,
`NumExpediente` varchar (60) not null,
`Juzgado` varchar (60) not null,
`FechaAlta` datetime not null,
`UltimoMovimiento` datetime not null,
`IdCliente` varchar(60) not null,
`IdAbogado` varchar(60) not null,
FOREIGN KEY (`IdAbogado`) REFERENCES abogado (`IdAbogado`),
FOREIGN KEY (`IdCliente`) REFERENCES cliente (`IdCliente`)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `servicios`(
`NroServicio` varchar(60) not null PRIMARY KEY,
`Descripción` varchar (60) not null,
`CostoUnit` decimal(2) null,
`PrecioUnit` decimal(2) null
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `factura`(
`NroFact` varchar(60) not null PRIMARY KEY,
`Fecha` datetime not null,
`IdCliente` varchar(60) not null,
`FormaPago` varchar(60) not null,
`IdTipoFactura` varchar(60) not null,
FOREIGN KEY (`IdCliente`) REFERENCES cliente (`IdCliente`),
FOREIGN KEY (`FormaPago`) REFERENCES formaPago (`FormaPago`),
FOREIGN KEY (`IdTipoFactura`) REFERENCES tipoFactura (`IdTipoFactura`)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `detalleFactura`(
`IdDetalle` varchar (60) not null PRIMARY KEY,
`Precio` decimal(2) not null,
`Cantidad` varchar(60) not null,
`Detalle` varchar(60) not null,
`NroFact` varchar(60) not null,
`NroServicio` varchar(60) not null,
FOREIGN KEY (`NroFact`) REFERENCES factura (`NroFact`),
FOREIGN KEY (`NroServicio`) REFERENCES servicios (`NroServicio`)
)ENGINE = InnoDB;

INSERT INTO localidad (IdLocalidad,Nombre) VALUES(1,'Cordoba');
INSERT INTO cliente(IdCliente,NroDoc,TipoDoc,Nombre,Direccion,tel,IdLocalidad) VALUES (1,30111111,'dni', 'juan perez','calle 123',155222222,1);

INSERT INTO login (idCliente, Usuario, Clave) VALUES(1,'juan', 123456);
SELECT * FROM login WHERE Usuario='juan' AND Clave='123456';
UPDATE cliente SET Direccion='Calle 555' WHERE Direccion='Calle 123';
UPDATE cliente SET Direccion='Calle 555', tel=155000000, TipoDoc='Libreta enrolamiento' WHERE Nombre='juan perez';
DELETE FROM cliente WHERE IdCliente= 1 ;
SELECT * FROM cliente








