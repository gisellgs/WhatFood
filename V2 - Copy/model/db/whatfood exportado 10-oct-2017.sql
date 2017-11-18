-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2017 a las 19:58:17
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `whatfood`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `comeCodigo` int(11) NOT NULL,
  `comeOpinion` varchar(45) NOT NULL,
  `comeCalificacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`comeCodigo`, `comeOpinion`, `comeCalificacion`) VALUES
(23, 'este es una buena opinion ', 'esta calificación va desde el 23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_por_pdc`
--

CREATE TABLE `comentario_por_pdc` (
  `pdcNit` varchar(45) NOT NULL,
  `comeCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_por_usuario`
--

CREATE TABLE `comentario_por_usuario` (
  `usuaNumeDocumento` varchar(10) NOT NULL,
  `comeCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario_por_usuario`
--

INSERT INTO `comentario_por_usuario` (`usuaNumeDocumento`, `comeCodigo`) VALUES
('1036643343', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `imgaCodigo` int(11) NOT NULL,
  `imgaFoto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`imgaCodigo`, `imgaFoto`) VALUES
(989, 'daniel.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `mesaCodigo` int(11) NOT NULL,
  `mesaDescuento` varchar(45) DEFAULT NULL,
  `mesaEstado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`mesaCodigo`, `mesaDescuento`, `mesaEstado`) VALUES
(3, 'el 8  por ciento', 'buen estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdc`
--

CREATE TABLE `pdc` (
  `pdcNit` varchar(45) NOT NULL,
  `tipocodigo` int(11) NOT NULL,
  `pdcNombre` varchar(90) NOT NULL,
  `pdcDireccion` varchar(45) NOT NULL,
  `pdcHoraAperertura` time(5) NOT NULL,
  `pdcHoraCierre` time(5) NOT NULL,
  `pdcLatitud` float NOT NULL,
  `pdcLongitud` float NOT NULL,
  `pdcEstado` tinyint(1) NOT NULL,
  `pdcTelefono` int(11) DEFAULT NULL,
  `pdcCelular` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pdc`
--

INSERT INTO `pdc` (`pdcNit`, `tipocodigo`, `pdcNombre`, `pdcDireccion`, `pdcHoraAperertura`, `pdcHoraCierre`, `pdcLatitud`, `pdcLongitud`, `pdcEstado`, `pdcTelefono`, `pdcCelular`) VALUES
('cualquier csa', 43, 'comida rapidas', 'calle47#46 - 78', '11:17:08.00024', '05:14:00.28734', 45, 45, 45, 5555555, 4455655);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdc_por_mesa`
--

CREATE TABLE `pdc_por_mesa` (
  `mesaCodigo` int(11) NOT NULL,
  `pdcNit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `platCodigo` int(11) NOT NULL,
  `pdcNit` varchar(45) NOT NULL,
  `PlatNombre` varchar(45) NOT NULL,
  `platPrecio` double NOT NULL,
  `platDetallle` varchar(45) DEFAULT NULL,
  `platFoto` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`platCodigo`, `pdcNit`, `PlatNombre`, `platPrecio`, `platDetallle`, `platFoto`) VALUES
(23, 'cualquier csa', 'sanduche', 23, 'este cotiene queso ', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato_imagen`
--

CREATE TABLE `plato_imagen` (
  `imgqCodigo` int(11) NOT NULL,
  `platCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plato_imagen`
--

INSERT INTO `plato_imagen` (`imgqCodigo`, `platCodigo`) VALUES
(989, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `prodCodigo` int(11) NOT NULL,
  `platCodigo` int(11) NOT NULL,
  `prodNombre` varchar(45) NOT NULL,
  `prodPrecio` int(11) NOT NULL,
  `prodDescuento` int(11) DEFAULT NULL,
  `prodPromocion` varchar(45) DEFAULT NULL,
  `prodDetalle` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`prodCodigo`, `platCodigo`, `prodNombre`, `prodPrecio`, `prodDescuento`, `prodPromocion`, `prodDetalle`) VALUES
(56, 23, 'sin  queso', 34, 5, 'promociona  un helado', 'contiene todo lo que el cliente requiere ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `promCodigo` int(11) NOT NULL,
  `tipoPromCodigo` int(11) NOT NULL,
  `promFechInicial` datetime NOT NULL,
  `promFechFin` datetime NOT NULL,
  `promValor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`promCodigo`, `tipoPromCodigo`, `promFechInicial`, `promFechFin`, `promValor`) VALUES
(12, 23, '2017-09-01 00:00:00', '2017-09-14 00:00:00', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_por_plato`
--

CREATE TABLE `promocion_por_plato` (
  `promCodigo` int(11) NOT NULL,
  `platCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `promocion_por_plato`
--

INSERT INTO `promocion_por_plato` (`promCodigo`, `platCodigo`) VALUES
(12, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `reseCodigo` int(11) NOT NULL,
  `reseNumeMesa` varchar(45) NOT NULL,
  `reseConfirmar` varchar(45) DEFAULT NULL,
  `pdcId` varchar(45) NOT NULL,
  `reseEstado` varchar(20) NOT NULL,
  `reseFecha` date NOT NULL,
  `reseHora` time(5) NOT NULL,
  `reseTiemEspera` time(5) NOT NULL,
  `pdcNit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`reseCodigo`, `reseNumeMesa`, `reseConfirmar`, `pdcId`, `reseEstado`, `reseFecha`, `reseHora`, `reseTiemEspera`, `pdcNit`) VALUES
(344, '4', 'si', '3', 'bueno', '2017-09-13', '04:35:35.54500', '05:14:14.22100', 'cualquier csa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_por_mesa`
--

CREATE TABLE `reserva_por_mesa` (
  `reseCodigo` int(11) NOT NULL,
  `mesaCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva_por_mesa`
--

INSERT INTO `reserva_por_mesa` (`reseCodigo`, `mesaCodigo`) VALUES
(344, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_promocion`
--

CREATE TABLE `tipo_promocion` (
  `tipoPromCodigo` int(11) NOT NULL,
  `tipoNombPromocion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_promocion`
--

INSERT INTO `tipo_promocion` (`tipoPromCodigo`, `tipoNombPromocion`) VALUES
(23, 'helado americano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_punto_venta`
--

CREATE TABLE `tipo_punto_venta` (
  `tipoCodigo` int(11) NOT NULL,
  `tipoPuntVenta` varchar(45) NOT NULL,
  `tipoDescripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_punto_venta`
--

INSERT INTO `tipo_punto_venta` (`tipoCodigo`, `tipoPuntVenta`, `tipoDescripcion`) VALUES
(43, 'comida rapids calle', 'este contiene comida rapida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuaNumeDocumento` varchar(10) NOT NULL,
  `usuaPrimNombre` varchar(60) NOT NULL,
  `usuaSeguNombre` varchar(60) DEFAULT NULL,
  `usoPrimerApe` varchar(60) NOT NULL,
  `usuaSeguApellido` varchar(60) DEFAULT NULL,
  `usuDireccion` varchar(20) DEFAULT NULL,
  `usuaTipoDocumento` varchar(10) NOT NULL,
  `usuaTelefono` varchar(8) DEFAULT NULL,
  `usuaCelular` date NOT NULL,
  `usuaCorreo` varchar(45) NOT NULL,
  `usuaClave` varchar(16) NOT NULL,
  `usuaTipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuaNumeDocumento`, `usuaPrimNombre`, `usuaSeguNombre`, `usoPrimerApe`, `usuaSeguApellido`, `usuDireccion`, `usuaTipoDocumento`, `usuaTelefono`, `usuaCelular`, `usuaCorreo`, `usuaClave`, `usuaTipo`) VALUES
('1036643343', 'Daniela', NULL, 'TORO', 'PULGARIN', 'Cale46#47-69', 'cedula', '2771375', '2017-09-10', 'daneilatoro@gmail.com', '123', 'cliente '),
('1036681310', 'Daniela', NULL, 'TORO', 'PULGARIN', 'Cale46#47-69', 'cedula', '2771375', '2017-09-10', 'daneilatoro@gmail.com', '123', 'cliente ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_por_reserva`
--

CREATE TABLE `usuario_por_reserva` (
  `reseCodigo` int(11) NOT NULL,
  `NumeDocumento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_por_reserva`
--

INSERT INTO `usuario_por_reserva` (`reseCodigo`, `NumeDocumento`) VALUES
(344, '1036643343');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`comeCodigo`);

--
-- Indices de la tabla `comentario_por_pdc`
--
ALTER TABLE `comentario_por_pdc`
  ADD KEY `fk_comentarioPorPdc_PdC1_idx` (`pdcNit`),
  ADD KEY `fk_comentarioPorPdc_comentario1_idx` (`comeCodigo`);

--
-- Indices de la tabla `comentario_por_usuario`
--
ALTER TABLE `comentario_por_usuario`
  ADD KEY `fk_comentarioPorUsuario_usuario1_idx` (`usuaNumeDocumento`),
  ADD KEY `fk_comentarioPorUsuario_comentario1_idx` (`comeCodigo`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`imgaCodigo`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`mesaCodigo`);

--
-- Indices de la tabla `pdc`
--
ALTER TABLE `pdc`
  ADD PRIMARY KEY (`pdcNit`),
  ADD KEY `fk_PdC_tipo_punto_venta1_idx` (`tipocodigo`);

--
-- Indices de la tabla `pdc_por_mesa`
--
ALTER TABLE `pdc_por_mesa`
  ADD KEY `fk_table1_mesa1_idx` (`mesaCodigo`),
  ADD KEY `fk_table1_PdC1_idx` (`pdcNit`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`platCodigo`),
  ADD KEY `fk_plato_PdC1_idx` (`pdcNit`);

--
-- Indices de la tabla `plato_imagen`
--
ALTER TABLE `plato_imagen`
  ADD KEY `fk_table1_imagenes1_idx` (`imgqCodigo`),
  ADD KEY `fk_table1_plato1_idx` (`platCodigo`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`prodCodigo`),
  ADD KEY `fk_producto_menu1_idx` (`platCodigo`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`promCodigo`),
  ADD KEY `fk_promocion_tipoPromocion1_idx` (`tipoPromCodigo`);

--
-- Indices de la tabla `promocion_por_plato`
--
ALTER TABLE `promocion_por_plato`
  ADD KEY `fk_table2_promocion1_idx` (`promCodigo`),
  ADD KEY `fk_table2_plato1_idx` (`platCodigo`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`reseCodigo`,`pdcId`),
  ADD KEY `fk_reserva_PdC1_idx` (`pdcNit`);

--
-- Indices de la tabla `reserva_por_mesa`
--
ALTER TABLE `reserva_por_mesa`
  ADD KEY `fk_table1_reserva1_idx` (`reseCodigo`),
  ADD KEY `fk_table1_mesa2_idx` (`mesaCodigo`);

--
-- Indices de la tabla `tipo_promocion`
--
ALTER TABLE `tipo_promocion`
  ADD PRIMARY KEY (`tipoPromCodigo`);

--
-- Indices de la tabla `tipo_punto_venta`
--
ALTER TABLE `tipo_punto_venta`
  ADD PRIMARY KEY (`tipoCodigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuaNumeDocumento`);

--
-- Indices de la tabla `usuario_por_reserva`
--
ALTER TABLE `usuario_por_reserva`
  ADD KEY `fk_usuPorReserva_reserva1_idx` (`reseCodigo`),
  ADD KEY `fk_usuPorReserva_usuario1_idx` (`NumeDocumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `comeCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `imgaCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;
--
-- AUTO_INCREMENT de la tabla `plato`
--
ALTER TABLE `plato`
  MODIFY `platCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `promCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `reseCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
--
-- AUTO_INCREMENT de la tabla `tipo_promocion`
--
ALTER TABLE `tipo_promocion`
  MODIFY `tipoPromCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario_por_pdc`
--
ALTER TABLE `comentario_por_pdc`
  ADD CONSTRAINT `fk_comentarioPorPdc_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarioPorPdc_comentario1` FOREIGN KEY (`comeCodigo`) REFERENCES `comentario` (`comeCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentario_por_usuario`
--
ALTER TABLE `comentario_por_usuario`
  ADD CONSTRAINT `fk_comentarioPorUsuario_comentario1` FOREIGN KEY (`comeCodigo`) REFERENCES `comentario` (`comeCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarioPorUsuario_usuario1` FOREIGN KEY (`usuaNumeDocumento`) REFERENCES `usuario` (`usuaNumeDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pdc`
--
ALTER TABLE `pdc`
  ADD CONSTRAINT `fk_PdC_tipo_punto_venta1` FOREIGN KEY (`tipocodigo`) REFERENCES `tipo_punto_venta` (`tipoCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pdc_por_mesa`
--
ALTER TABLE `pdc_por_mesa`
  ADD CONSTRAINT `fk_table1_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_mesa1` FOREIGN KEY (`mesaCodigo`) REFERENCES `mesa` (`mesaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plato`
--
ALTER TABLE `plato`
  ADD CONSTRAINT `fk_plato_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plato_imagen`
--
ALTER TABLE `plato_imagen`
  ADD CONSTRAINT `fk_table1_imagenes1` FOREIGN KEY (`imgqCodigo`) REFERENCES `imagenes` (`imgaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_plato1` FOREIGN KEY (`platCodigo`) REFERENCES `plato` (`platCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_menu1` FOREIGN KEY (`platCodigo`) REFERENCES `plato` (`platCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `fk_promocion_tipoPromocion1` FOREIGN KEY (`tipoPromCodigo`) REFERENCES `tipo_promocion` (`tipoPromCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `promocion_por_plato`
--
ALTER TABLE `promocion_por_plato`
  ADD CONSTRAINT `fk_table2_plato1` FOREIGN KEY (`platCodigo`) REFERENCES `plato` (`platCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table2_promocion1` FOREIGN KEY (`promCodigo`) REFERENCES `promocion` (`promCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_reserva_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reserva_por_mesa`
--
ALTER TABLE `reserva_por_mesa`
  ADD CONSTRAINT `fk_table1_mesa2` FOREIGN KEY (`mesaCodigo`) REFERENCES `mesa` (`mesaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_reserva1` FOREIGN KEY (`reseCodigo`) REFERENCES `reserva` (`reseCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_por_reserva`
--
ALTER TABLE `usuario_por_reserva`
  ADD CONSTRAINT `fk_usuPorReserva_reserva1` FOREIGN KEY (`reseCodigo`) REFERENCES `reserva` (`reseCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuPorReserva_usuario1` FOREIGN KEY (`NumeDocumento`) REFERENCES `usuario` (`usuaNumeDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
