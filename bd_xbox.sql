-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2023 a las 20:54:38
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_xbox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_juegos`
--

CREATE TABLE `tbl_juegos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idJuego` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `stock` int(10) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `codigo` int(10) NOT NULL,
  `desarrolladores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_juegos`
--

INSERT INTO `tbl_juegos` (`id`, `idJuego`, `nombre`, `descripcion`, `precio`, `stock`, `genero`, `codigo`, `desarrolladores`) VALUES
(1, 11, 'Minecraft', 'Un gran juego para toda la familia', '780.00', 1391, 'Mundo Abierto', 1, 'Mojang'),
(7, 0, 'Valorant', 'Juego de disparos estratégico.', '300.00', 778, 'Shooter', 2, 'Riot Games'),
(8, 0, 'League of Legends', 'Juego que te quita la sanidad mental', '350.00', 999, 'RPG', 3, 'Tesla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_juegos_vendidos`
--

CREATE TABLE `tbl_juegos_vendidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_juego` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_juegos_vendidos`
--

INSERT INTO `tbl_juegos_vendidos` (`id`, `id_juego`, `cantidad`, `id_venta`) VALUES
(5, 1, 1, 5),
(6, 1, 1, 6),
(7, 7, 1, 6),
(8, 1, 7, 7),
(9, 7, 1, 7),
(10, 8, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `total` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_ventas`
--

INSERT INTO `tbl_ventas` (`id`, `fecha`, `total`) VALUES
(5, '2023-11-16 20:46:12', '780.00'),
(6, '2023-11-16 20:52:18', '1080.00'),
(7, '2023-11-16 20:53:46', '6110.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_juegos`
--
ALTER TABLE `tbl_juegos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_juegos_vendidos`
--
ALTER TABLE `tbl_juegos_vendidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_juego` (`id_juego`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_juegos`
--
ALTER TABLE `tbl_juegos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_juegos_vendidos`
--
ALTER TABLE `tbl_juegos_vendidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_juegos_vendidos`
--
ALTER TABLE `tbl_juegos_vendidos`
  ADD CONSTRAINT `tbl_juegos_vendidos_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `tbl_juegos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_juegos_vendidos_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `tbl_ventas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
