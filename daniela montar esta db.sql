-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2017 a las 23:27:43
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
-- Estructura de tabla para la tabla `access`
--

CREATE TABLE `access` (
  `acc_token` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `acc_pass` varchar(255) NOT NULL,
  `acc_failed_att` int(11) NOT NULL COMMENT 'Failed connection attempts',
  `acc_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `access`
--

INSERT INTO `access` (`acc_token`, `user_id`, `acc_pass`, `acc_failed_att`, `acc_status`) VALUES
(1, 'USU1511214161', '$2y$10$dtImxIVbFdTbpXjGsvjCueEwc4dQwWgh2Uo2CTmIh39yD1XXIS1nu', 0, 'offline');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `comeCodigo` int(11) NOT NULL,
  `comeOpinion` varchar(45) NOT NULL,
  `comeCalificacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_por_pdc`
--

CREATE TABLE `comentario_por_pdc` (
  `comentario_comeCodigo` int(11) NOT NULL,
  `pdc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `imgaCodigo` int(11) NOT NULL,
  `imgaFoto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menuCodigo` int(11) NOT NULL,
  `menuNombre` varchar(45) NOT NULL,
  `menuDetallle` varchar(45) DEFAULT NULL,
  `menuFoto` blob,
  `pdc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `mesaCodigo` int(11) NOT NULL,
  `mesaDescripcion` varchar(45) DEFAULT NULL,
  `mesaEstado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id_modulo` int(11) NOT NULL,
  `mod_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdc`
--

CREATE TABLE `pdc` (
  `pdc_id` int(11) NOT NULL,
  `pdc_nit` varchar(45) CHARACTER SET big5 NOT NULL,
  `tipo_pdc_codigo` int(11) NOT NULL,
  `pdc_nombre` varchar(90) NOT NULL,
  `pdc_direccion` varchar(45) NOT NULL,
  `pdc_hora_apertura` time(5) NOT NULL,
  `pdc_hora_cierre` time(5) NOT NULL,
  `pdc_latitud` varchar(50) NOT NULL,
  `pdc_longitud` varchar(50) NOT NULL,
  `pdc_estado` tinyint(1) NOT NULL,
  `pdc_telefono` int(11) DEFAULT NULL,
  `pdc_celular` int(20) DEFAULT NULL,
  `pdc_fech_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pdc`
--

INSERT INTO `pdc` (`pdc_id`, `pdc_nit`, `tipo_pdc_codigo`, `pdc_nombre`, `pdc_direccion`, `pdc_hora_apertura`, `pdc_hora_cierre`, `pdc_latitud`, `pdc_longitud`, `pdc_estado`, `pdc_telefono`, `pdc_celular`, `pdc_fech_creacion`) VALUES
(1, '8464228', 5, 'CarrHamburguer', 'Calle 67 53 110', '00:00:00.00000', '00:00:00.00000', '09875456789-', '987656789x', 2, 12345678, 123456, '2017-11-20 17:11:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdc_por_mesa`
--

CREATE TABLE `pdc_por_mesa` (
  `mesaCodigo` int(11) NOT NULL,
  `pdc_pdc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL,
  `roolUsuaCodigo` int(11) NOT NULL,
  `per_Crear` int(1) DEFAULT NULL,
  `per_modificar` int(1) DEFAULT NULL,
  `per_eliminar` int(1) DEFAULT NULL,
  `id_modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato_imagen`
--

CREATE TABLE `plato_imagen` (
  `imgqCodigo` int(11) NOT NULL,
  `platCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_por_plato`
--

CREATE TABLE `promocion_por_plato` (
  `promCodigo` int(11) NOT NULL,
  `platCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `pdc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_por_mesa`
--

CREATE TABLE `reserva_por_mesa` (
  `reseCodigo` int(11) NOT NULL,
  `mesaCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rool`
--

CREATE TABLE `rool` (
  `rool_codigo` int(11) NOT NULL,
  `rool_ nombre` varchar(45) NOT NULL,
  `rool_descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pdc`
--

CREATE TABLE `tipo_pdc` (
  `tipo_pdc_codigo` int(11) NOT NULL,
  `tipo_pdc_nombre` varchar(45) NOT NULL,
  `tipo_pdc_descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_pdc`
--

INSERT INTO `tipo_pdc` (`tipo_pdc_codigo`, `tipo_pdc_nombre`, `tipo_pdc_descripcion`) VALUES
(4, 'Restaux', 'Sin descripcio'),
(5, 'Carritos', 'carr');

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
('USU1511214161', 'Fredy', 'LujÃ¡n', 'falujan8@misena.edu.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_por_reserva`
--

CREATE TABLE `usuario_por_reserva` (
  `rese_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`acc_token`),
  ADD KEY `fk_access_users1_idx` (`user_id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`comeCodigo`);

--
-- Indices de la tabla `comentario_por_pdc`
--
ALTER TABLE `comentario_por_pdc`
  ADD KEY `fk_comentario_por_pdc_comentario1_idx` (`comentario_comeCodigo`),
  ADD KEY `fk_comentario_por_pdc_pdc1_idx` (`pdc_id`);

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
  ADD KEY `fk_menu_pdc1_idx` (`pdc_id`);

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
  ADD PRIMARY KEY (`pdc_id`,`pdc_nit`),
  ADD KEY `fk_PdC_tipo_pdc1_idx` (`tipo_pdc_codigo`);

--
-- Indices de la tabla `pdc_por_mesa`
--
ALTER TABLE `pdc_por_mesa`
  ADD KEY `fk_table1_mesa1_idx` (`mesaCodigo`),
  ADD KEY `fk_pdc_por_mesa_pdc1_idx` (`pdc_pdc_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `fk_permiso_modulo1_idx` (`id_modulo`),
  ADD KEY `fk_permiso_rool_usuario1_idx` (`roolUsuaCodigo`);

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
  ADD KEY `fk_reserva_pdc1_idx` (`pdc_id`);

--
-- Indices de la tabla `reserva_por_mesa`
--
ALTER TABLE `reserva_por_mesa`
  ADD KEY `fk_table1_reserva1_idx` (`reseCodigo`),
  ADD KEY `fk_table1_mesa2_idx` (`mesaCodigo`);

--
-- Indices de la tabla `rool`
--
ALTER TABLE `rool`
  ADD PRIMARY KEY (`rool_codigo`);

--
-- Indices de la tabla `tipo_pdc`
--
ALTER TABLE `tipo_pdc`
  ADD PRIMARY KEY (`tipo_pdc_codigo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `usuario_por_reserva`
--
ALTER TABLE `usuario_por_reserva`
  ADD KEY `fk_usuPorReserva_reserva1_idx` (`rese_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `access`
--
ALTER TABLE `access`
  MODIFY `acc_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT de la tabla `pdc`
--
ALTER TABLE `pdc`
  MODIFY `pdc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT de la tabla `tipo_pdc`
--
ALTER TABLE `tipo_pdc`
  MODIFY `tipo_pdc_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `fk_access_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentario_por_pdc`
--
ALTER TABLE `comentario_por_pdc`
  ADD CONSTRAINT `fk_comentario_por_pdc_comentario1` FOREIGN KEY (`comentario_comeCodigo`) REFERENCES `comentario` (`comeCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentario_por_pdc_pdc1` FOREIGN KEY (`pdc_id`) REFERENCES `pdc` (`pdc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_pdc1` FOREIGN KEY (`pdc_id`) REFERENCES `pdc` (`pdc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pdc`
--
ALTER TABLE `pdc`
  ADD CONSTRAINT `fk_PdC_tipo_pdc1` FOREIGN KEY (`tipo_pdc_codigo`) REFERENCES `tipo_pdc` (`tipo_pdc_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pdc_por_mesa`
--
ALTER TABLE `pdc_por_mesa`
  ADD CONSTRAINT `fk_pdc_por_mesa_pdc1` FOREIGN KEY (`pdc_pdc_id`) REFERENCES `pdc` (`pdc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_mesa1` FOREIGN KEY (`mesaCodigo`) REFERENCES `mesa` (`mesaCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `fk_permiso_modulo1` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_permiso_rool_usuario1` FOREIGN KEY (`roolUsuaCodigo`) REFERENCES `rool` (`rool_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_reserva_pdc1` FOREIGN KEY (`pdc_id`) REFERENCES `pdc` (`pdc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_usuPorReserva_reserva1` FOREIGN KEY (`rese_codigo`) REFERENCES `reserva` (`reseCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
