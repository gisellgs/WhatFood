-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2017 a las 20:02:52
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
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `token` int(11) NOT NULL,
  `acc_contra` varchar(255) NOT NULL,
  `usuaCodigo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`token`, `acc_contra`, `usuaCodigo`) VALUES
(123, 'daniela toro', '123'),
(1234455, 'daniela toro', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access`
--

CREATE TABLE `access` (
  `acc_token` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `acc_pass` varchar(255) NOT NULL,
  `acc_failed_att` int(11) NOT NULL COMMENT 'Failed connection attempts',
  `acc_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `access`
--

INSERT INTO `access` (`acc_token`, `user_id`, `acc_pass`, `acc_failed_att`, `acc_status`) VALUES
('$cjCHpQW4b8KMgBvQS2dTHQk$YNPLp', 'USU-21032017-1', '$2y$10$cpbPbgfs35nH9hspLcU0w.cpqjvpZKadWmWQJq0QO1anJ8jyqjr5.', 0, 'offline');

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
(1, 'esta opinio bla bla', '2'),
(6, 'esta opinio bla bla', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_por_pdc`
--

CREATE TABLE `comentario_por_pdc` (
  `pdcNit` varchar(45) NOT NULL,
  `comeCodigo` int(11) NOT NULL,
  `usuaCodigo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario_por_pdc`
--

INSERT INTO `comentario_por_pdc` (`pdcNit`, `comeCodigo`, `usuaCodigo`) VALUES
('aureles', 6, '123'),
('aureles', 6, '123');

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
(1998, ''),
(19993939, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menuCodigo` int(11) NOT NULL,
  `pdcNit` varchar(45) NOT NULL,
  `menuNombre` varchar(45) NOT NULL,
  `menuDetallle` varchar(45) DEFAULT NULL,
  `menuFoto` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menuCodigo`, `pdcNit`, `menuNombre`, `menuDetallle`, `menuFoto`) VALUES
(15, 'aureles', 'hamburgusa', 'queso , ensalda, ripido de papas, carne,', NULL),
(17, 'aureles', 'hamburgusa', 'queso , ensalda, ripido de papas, carne,', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `mesaCodigo` int(11) NOT NULL,
  `mesaDescripcion` varchar(45) DEFAULT NULL,
  `mesaEstado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`mesaCodigo`, `mesaDescripcion`, `mesaEstado`) VALUES
(8, 'esta mesa tiene asento para 6 personas', 'buen estado'),
(9, 'esta mesa tiene asento para 6 personas', 'buen estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id_modulo` int(11) NOT NULL,
  `mod_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id_modulo`, `mod_nombre`) VALUES
(111, 'puntos de comida'),
(112, 'puntos de comida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdc`
--

CREATE TABLE `pdc` (
  `pdcNit` varchar(45) NOT NULL,
  `pdcNombre` varchar(90) NOT NULL,
  `pdcDireccion` varchar(45) NOT NULL,
  `pdcHoraAperertura` time(5) NOT NULL,
  `pdcHoraCierre` time(5) NOT NULL,
  `pdcLatitud` float NOT NULL,
  `pdcLongitud` float NOT NULL,
  `pdcEstado` tinyint(1) NOT NULL,
  `pdcTelefono` int(11) DEFAULT NULL,
  `pdcCelular` int(11) DEFAULT NULL,
  `tipo_Pdc_Codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pdc`
--

INSERT INTO `pdc` (`pdcNit`, `pdcNombre`, `pdcDireccion`, `pdcHoraAperertura`, `pdcHoraCierre`, `pdcLatitud`, `pdcLongitud`, `pdcEstado`, `pdcTelefono`, `pdcCelular`, `tipo_Pdc_Codigo`) VALUES
('aureles', 'comida rapidas', 'calle 47 # 64 -56', '09:00:00.00000', '07:14:14.00000', 3, 4, 55, 333333, 3333333, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdc_por_mesa`
--

CREATE TABLE `pdc_por_mesa` (
  `mesaCodigo` int(11) NOT NULL,
  `pdcNit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pdc_por_mesa`
--

INSERT INTO `pdc_por_mesa` (`mesaCodigo`, `pdcNit`) VALUES
(8, 'aureles'),
(8, 'aureles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL,
  `per_Crear` int(1) DEFAULT NULL,
  `per_modificar` int(1) DEFAULT NULL,
  `per_eliminar` int(1) DEFAULT NULL,
  `id_modulo` int(11) NOT NULL,
  `tip_usua_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `per_Crear`, `per_modificar`, `per_eliminar`, `id_modulo`, `tip_usua_codigo`) VALUES
(113, 0, 1, 1, 111, 1),
(114, 0, 1, 1, 111, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `platCodigo` int(11) NOT NULL,
  `menuCodigo` int(11) NOT NULL,
  `platNombre` varchar(45) DEFAULT NULL,
  `platPrecio` int(11) DEFAULT NULL,
  `platDetalle` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`platCodigo`, `menuCodigo`, `platNombre`, `platPrecio`, `platDetalle`) VALUES
(16, 15, 'bandeja paisa', 10, 'frijoles, chorizo, arroz'),
(17, 15, 'bandeja paisa', 10, 'frijoles, chorizo, arroz');

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
(1998, 17),
(1998, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `promCodigo` int(11) NOT NULL,
  `tipoPromCodigo` int(11) NOT NULL,
  `promNombre` varchar(45) DEFAULT NULL,
  `promValor` int(11) NOT NULL,
  `promImagen` varchar(45) DEFAULT NULL,
  `promFechInicial` datetime NOT NULL,
  `promFechFin` datetime NOT NULL,
  `promEstado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`promCodigo`, `tipoPromCodigo`, `promNombre`, `promValor`, `promImagen`, `promFechInicial`, `promFechFin`, `promEstado`) VALUES
(9, 1, 'combo con bombon de pollo', 10, NULL, '2017-10-17 10:00:32', '2017-10-29 09:31:00', '12'),
(10, 17, 'combo con bombon de pollo', 10, NULL, '2017-10-17 10:00:32', '2017-10-29 09:31:00', '12');

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
(9, 16),
(9, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `reseCodigo` int(11) NOT NULL,
  `reseNumeMesa` varchar(45) NOT NULL,
  `reseConfirmar` varchar(45) DEFAULT NULL,
  `reseEstado` varchar(20) NOT NULL,
  `reseFecha` date NOT NULL,
  `reseHora` time(5) NOT NULL,
  `reseTiemEspera` time(5) NOT NULL,
  `pdcNit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`reseCodigo`, `reseNumeMesa`, `reseConfirmar`, `reseEstado`, `reseFecha`, `reseHora`, `reseTiemEspera`, `pdcNit`) VALUES
(114, '1', 'confirmado', 'buen estado', '2017-10-11', '09:29:00.00000', '07:17:16.00000', 'aureles'),
(115, '1', 'confirmado', 'buen estado', '2017-10-11', '09:29:00.00000', '07:17:16.00000', 'aureles');

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
(114, 8),
(114, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rool_tipo_usuario`
--

CREATE TABLE `rool_tipo_usuario` (
  `tip_usua_codigo` int(11) NOT NULL,
  `tip_usua_rol` varchar(45) NOT NULL,
  `roolDescripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rool_tipo_usuario`
--

INSERT INTO `rool_tipo_usuario` (`tip_usua_codigo`, `tip_usua_rol`, `roolDescripcion`) VALUES
(1, 'admistrador', 'de la empresa'),
(3, 'admistrador', 'de la empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pdc`
--

CREATE TABLE `tipo_pdc` (
  `tipoPdcCodigo` int(11) NOT NULL,
  `tipoPdcNombre` varchar(45) NOT NULL,
  `tipoPdcDescripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_pdc`
--

INSERT INTO `tipo_pdc` (`tipoPdcCodigo`, `tipoPdcNombre`, `tipoPdcDescripcion`) VALUES
(1, 'UNO', 'No descrip'),
(4, 'comidas de la esquina', 'vendas comidas rapidas'),
(5, 'comidas de la esquina', 'vendas comidas rapidas'),
(123, 'dff', ''),
(1234, 'sdfg', ''),
(12321, 'kjkj', ''),
(12345, 'ds', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_lastname` varchar(40) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_lastname`, `user_email`) VALUES
('USU-21032017-1', 'Andrew', 'Smith Rae', 'prueba@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuaCodigo` varchar(45) NOT NULL,
  `usuaNumeDocumento` varchar(10) NOT NULL,
  `usuaNombre` varchar(60) NOT NULL,
  `usuaApellido` varchar(60) NOT NULL,
  `usuaDireccion` varchar(20) DEFAULT NULL,
  `usuaTipoDocumento` varchar(10) NOT NULL,
  `usuaTelefono` varchar(8) DEFAULT NULL,
  `usuaCelular` varchar(45) NOT NULL,
  `usuaCorreo` varchar(45) NOT NULL,
  `tip_usua_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuaCodigo`, `usuaNumeDocumento`, `usuaNombre`, `usuaApellido`, `usuaDireccion`, `usuaTipoDocumento`, `usuaTelefono`, `usuaCelular`, `usuaCorreo`, `tip_usua_codigo`) VALUES
('123', '1036681310', 'daniela', 'toro pulgarin', 'calle 46· 47 # 69', 'cedula', '2771375', '234444555', 'daneilatoro@gmail.com', 1),
('123', '1036681310', 'daniela', 'toro pulgarin', 'calle 46· 47 # 69', 'cedula', '2771375', '234444555', 'daneilatoro@gmail.com', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_por_reserva`
--

CREATE TABLE `usuario_por_reserva` (
  `reseCodigo` int(11) NOT NULL,
  `usuaCodigo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_por_reserva`
--

INSERT INTO `usuario_por_reserva` (`reseCodigo`, `usuaCodigo`) VALUES
(114, '123'),
(114, '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`token`),
  ADD KEY `fk_acceso_usuario1_idx` (`usuaCodigo`);

--
-- Indices de la tabla `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`acc_token`),
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `fk_comentarioPorPdc_comentario1_idx` (`comeCodigo`),
  ADD KEY `fk_comentario_por_Pdc_usuario1_idx` (`usuaCodigo`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`imgaCodigo`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuCodigo`),
  ADD KEY `fk_plato_PdC1_idx` (`pdcNit`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`mesaCodigo`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `pdc`
--
ALTER TABLE `pdc`
  ADD PRIMARY KEY (`pdcNit`),
  ADD KEY `fk_PdC_tipo_pdc1_idx` (`tipo_Pdc_Codigo`);

--
-- Indices de la tabla `pdc_por_mesa`
--
ALTER TABLE `pdc_por_mesa`
  ADD KEY `fk_table1_mesa1_idx` (`mesaCodigo`),
  ADD KEY `fk_table1_PdC1_idx` (`pdcNit`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `fk_permiso_modulo1_idx` (`id_modulo`),
  ADD KEY `fk_permiso_Rool_tipo_usuario1_idx` (`tip_usua_codigo`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`platCodigo`),
  ADD KEY `fk_plato_menu1_idx` (`menuCodigo`);

--
-- Indices de la tabla `plato_imagen`
--
ALTER TABLE `plato_imagen`
  ADD KEY `fk_table1_imagenes1_idx` (`imgqCodigo`),
  ADD KEY `fk_table1_plato1_idx` (`platCodigo`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`promCodigo`);

--
-- Indices de la tabla `promocion_por_plato`
--
ALTER TABLE `promocion_por_plato`
  ADD KEY `fk_table2_promocion1_idx` (`promCodigo`),
  ADD KEY `fk_promocion_por_plato_plato1_idx` (`platCodigo`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`reseCodigo`),
  ADD KEY `fk_reserva_PdC1_idx` (`pdcNit`);

--
-- Indices de la tabla `reserva_por_mesa`
--
ALTER TABLE `reserva_por_mesa`
  ADD KEY `fk_table1_reserva1_idx` (`reseCodigo`),
  ADD KEY `fk_table1_mesa2_idx` (`mesaCodigo`);

--
-- Indices de la tabla `rool_tipo_usuario`
--
ALTER TABLE `rool_tipo_usuario`
  ADD PRIMARY KEY (`tip_usua_codigo`);

--
-- Indices de la tabla `tipo_pdc`
--
ALTER TABLE `tipo_pdc`
  ADD PRIMARY KEY (`tipoPdcCodigo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuaCodigo`,`tip_usua_codigo`),
  ADD KEY `fk_usuario_Rool_tipo_usuario1_idx` (`tip_usua_codigo`);

--
-- Indices de la tabla `usuario_por_reserva`
--
ALTER TABLE `usuario_por_reserva`
  ADD KEY `fk_usuPorReserva_reserva1_idx` (`reseCodigo`),
  ADD KEY `fk_usuario_por_reserva_usuario1_idx` (`usuaCodigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `comeCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `imgaCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19993940;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menuCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `promCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `reseCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `fk_acceso_usuario1` FOREIGN KEY (`usuaCodigo`) REFERENCES `usuario` (`usuaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario_por_pdc`
--
ALTER TABLE `comentario_por_pdc`
  ADD CONSTRAINT `fk_comentarioPorPdc_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarioPorPdc_comentario1` FOREIGN KEY (`comeCodigo`) REFERENCES `comentario` (`comeCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentario_por_Pdc_usuario1` FOREIGN KEY (`usuaCodigo`) REFERENCES `usuario` (`usuaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_plato_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pdc`
--
ALTER TABLE `pdc`
  ADD CONSTRAINT `fk_PdC_tipo_pdc1` FOREIGN KEY (`tipo_Pdc_Codigo`) REFERENCES `tipo_pdc` (`tipoPdcCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pdc_por_mesa`
--
ALTER TABLE `pdc_por_mesa`
  ADD CONSTRAINT `fk_table1_PdC1` FOREIGN KEY (`pdcNit`) REFERENCES `pdc` (`pdcNit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_mesa1` FOREIGN KEY (`mesaCodigo`) REFERENCES `mesa` (`mesaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `fk_permiso_Rool_tipo_usuario1` FOREIGN KEY (`tip_usua_codigo`) REFERENCES `rool_tipo_usuario` (`tip_usua_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_permiso_modulo1` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plato`
--
ALTER TABLE `plato`
  ADD CONSTRAINT `fk_plato_menu1` FOREIGN KEY (`menuCodigo`) REFERENCES `menu` (`menuCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plato_imagen`
--
ALTER TABLE `plato_imagen`
  ADD CONSTRAINT `fk_table1_imagenes1` FOREIGN KEY (`imgqCodigo`) REFERENCES `imagenes` (`imgaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_plato1` FOREIGN KEY (`platCodigo`) REFERENCES `menu` (`menuCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `promocion_por_plato`
--
ALTER TABLE `promocion_por_plato`
  ADD CONSTRAINT `fk_promocion_por_plato_plato1` FOREIGN KEY (`platCodigo`) REFERENCES `plato` (`platCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_Rool_tipo_usuario1` FOREIGN KEY (`tip_usua_codigo`) REFERENCES `rool_tipo_usuario` (`tip_usua_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_por_reserva`
--
ALTER TABLE `usuario_por_reserva`
  ADD CONSTRAINT `fk_usuPorReserva_reserva1` FOREIGN KEY (`reseCodigo`) REFERENCES `reserva` (`reseCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_por_reserva_usuario1` FOREIGN KEY (`usuaCodigo`) REFERENCES `usuario` (`usuaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
