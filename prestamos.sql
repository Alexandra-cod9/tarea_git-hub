-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2025 a las 20:52:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `prestamo_id` int(11) NOT NULL,
  `fk_libro_id` int(11) NOT NULL,
  `nombre_prestatario` varchar(100) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`prestamo_id`, `fk_libro_id`, `nombre_prestatario`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(1, 1, 'Ana Martínez', '2025-08-01', '2025-08-15'),
(2, 3, 'Carlos Rivera', '2025-08-02', '2025-08-12'),
(3, 5, 'Sofía Gómez', '2025-08-05', NULL),
(4, 2, 'Luis Fernández', '2025-08-10', '2025-08-25'),
(5, 4, 'Elena Torres', '2025-08-11', NULL),
(6, 7, 'Javier Morales', '2025-08-15', '2025-08-30'),
(7, 6, 'Isabella Castillo', '2025-08-20', NULL),
(8, 9, 'Mateo Díaz', '2025-09-01', '2025-09-15'),
(9, 10, 'Valentina Ortiz', '2025-09-03', NULL),
(10, 8, 'Diego Jiménez', '2025-09-05', '2025-09-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`prestamo_id`),
  ADD KEY `fk_libro_id` (`fk_libro_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `prestamo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`fk_libro_id`) REFERENCES `libros` (`libro_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
