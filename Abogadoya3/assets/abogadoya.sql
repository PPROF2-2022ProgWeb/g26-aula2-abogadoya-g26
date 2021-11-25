-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 09:49 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abogadoya`
--

-- --------------------------------------------------------

--
-- Table structure for table `abogado`
--

CREATE TABLE `abogado` (
  `Matricula` varchar(60) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Telefono` varchar(60) NOT NULL,
  `Mail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abogado`
--

INSERT INTO `abogado` (`Matricula`, `Nombre`, `Direccion`, `Telefono`, `Mail`) VALUES
('11000', 'Rodrigo del Valle Moreno', 'Maipu 700', '156333999', 'drmoreno@hotmail.com'),
('44099', 'Roberto Maggi', 'Pueyrredon 344', '155333222', 'drmaggi@estudio.com');

-- --------------------------------------------------------

--
-- Table structure for table `caso`
--

CREATE TABLE `caso` (
  `IdCaso` varchar(60) NOT NULL,
  `Expediente` varchar(60) NOT NULL,
  `Juzgado` varchar(60) NOT NULL,
  `FechaAlta` datetime NOT NULL,
  `UltimoMovimiento` datetime NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `Matricula` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caso`
--

INSERT INTO `caso` (`IdCaso`, `Expediente`, `Juzgado`, `FechaAlta`, `UltimoMovimiento`, `usuario`, `Matricula`) VALUES
('1', '2234989', 'Camara del Crimen Decima', '2020-09-01 06:20:51', '2021-06-07 06:20:51', 'amugas', '11000'),
('2', '3588833', 'Camara del Crimen Tercera', '2019-04-01 06:20:51', '2020-07-07 06:20:51', 'nahuel', '11000'),
('3', '9776653', 'Camara Laboral Tercera', '2017-04-01 06:20:51', '2020-11-15 06:20:51', 'nahuel', '44099');

-- --------------------------------------------------------

--
-- Table structure for table `detallefactura`
--

CREATE TABLE `detallefactura` (
  `IdDetalle` varchar(60) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` varchar(60) NOT NULL,
  `Detalle` varchar(60) NOT NULL,
  `NroFact` varchar(60) NOT NULL,
  `NroServicio` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detallefactura`
--

INSERT INTO `detallefactura` (`IdDetalle`, `Precio`, `Cantidad`, `Detalle`, `NroFact`, `NroServicio`) VALUES
('1', 7000, '1', 'Nota en Camara del crimen Decima juicio Nahuel', '100', '1');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `NroFact` varchar(60) NOT NULL,
  `Fecha` datetime NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `FormaPago` varchar(60) NOT NULL,
  `IdTipoFactura` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`NroFact`, `Fecha`, `usuario`, `FormaPago`, `IdTipoFactura`) VALUES
('100', '2021-11-22 20:27:53', 'amugas', 'contado', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `formapago`
--

CREATE TABLE `formapago` (
  `FormaPago` varchar(60) NOT NULL,
  `Nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formapago`
--

INSERT INTO `formapago` (`FormaPago`, `Nombre`) VALUES
('contado', 'efectivo'),
('debito', 'tarjeta debito');

-- --------------------------------------------------------

--
-- Table structure for table `logincliente`
--

CREATE TABLE `logincliente` (
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `celular` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logincliente`
--

INSERT INTO `logincliente` (`usuario`, `password`, `mail`, `nombre`, `direccion`, `celular`) VALUES
('alberto', '123', 'alberto@hotmail.com', 'Alberto Campos', 'Zipoli 3322', '156777555'),
('alvaro', '123', 'amugas1@hotmail.com', 'alvaro mugas', 'zipoli 2187', '155777555'),
('amugas', '123', 'amugas1@hotmail.com', 'Alvaro Mugas', 'zipoli 2187', '156777222'),
('federico', '123', 'federico@hotmail.com', 'federico ramirez', 'rosario de santa fe 444', '15478903'),
('fernando', '111', 'fernando@gmail.com', 'fernando gamboa', '24 de septiembre 444', '155999333'),
('nahuel', '321', 'nahuel@hotmail.com', 'Nahuel Troncoso', 'colon 355', '156444333'),
('roberto', '123', 'roberto@hotmail.com', 'roberto perez', 'colon 223', '156777999'),
('santiago', '123', 'santiago@hotmail.com', 'santiago mugas', 'colon 233', '155777999');

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `NroServicio` varchar(60) NOT NULL,
  `Descripción` varchar(60) NOT NULL,
  `CostoUnit` int(11) DEFAULT NULL,
  `PrecioUnit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`NroServicio`, `Descripción`, `CostoUnit`, `PrecioUnit`) VALUES
('1', 'Consulta Basica', 1000, 3000),
('2', 'Presentacion nota juzgado', 3000, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `tipofactura`
--

CREATE TABLE `tipofactura` (
  `IdTipoFactura` varchar(60) NOT NULL,
  `NombreTipo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipofactura`
--

INSERT INTO `tipofactura` (`IdTipoFactura`, `NombreTipo`) VALUES
('A', 'Factura A Responsable Inscripto'),
('B', 'Factura B Consumidor Final'),
('C', 'Factura C Monotributista');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abogado`
--
ALTER TABLE `abogado`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indexes for table `caso`
--
ALTER TABLE `caso`
  ADD PRIMARY KEY (`IdCaso`),
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `usuario` (`usuario`);

--
-- Indexes for table `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD PRIMARY KEY (`IdDetalle`),
  ADD KEY `NroFact` (`NroFact`),
  ADD KEY `NroServicio` (`NroServicio`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`NroFact`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `FormaPago` (`FormaPago`),
  ADD KEY `IdTipoFactura` (`IdTipoFactura`);

--
-- Indexes for table `formapago`
--
ALTER TABLE `formapago`
  ADD PRIMARY KEY (`FormaPago`);

--
-- Indexes for table `logincliente`
--
ALTER TABLE `logincliente`
  ADD PRIMARY KEY (`usuario`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`NroServicio`);

--
-- Indexes for table `tipofactura`
--
ALTER TABLE `tipofactura`
  ADD PRIMARY KEY (`IdTipoFactura`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caso`
--
ALTER TABLE `caso`
  ADD CONSTRAINT `caso_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `abogado` (`Matricula`),
  ADD CONSTRAINT `caso_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `logincliente` (`usuario`);

--
-- Constraints for table `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`NroFact`) REFERENCES `factura` (`NroFact`),
  ADD CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`NroServicio`) REFERENCES `servicios` (`NroServicio`);

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `logincliente` (`usuario`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`FormaPago`) REFERENCES `formapago` (`FormaPago`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`IdTipoFactura`) REFERENCES `tipofactura` (`IdTipoFactura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
