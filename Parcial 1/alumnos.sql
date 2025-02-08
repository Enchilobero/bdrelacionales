-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:09:48
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Diego Joan', 'Dominguez Lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez23@cetis107.edu.mx', '6671412966'),
(2, 'Angel Daniel', 'Gastelum Rocha', '23325061070380', '2008-01-05', 1, 'angel.gastelum23@cetis107.edu.mx', '6673049937'),
(3, 'Christopher Israel', 'Martinez Valenzuela', '23325052240480', '2008-03-04', 1, 'christopher.martinez23@cetis107.edu.mx', '6672685963'),
(4, 'Paolo Nicholas', 'Valdez Bernal', '23325052240460', '2008-10-27', 1, 'paolo.valdez23@cetis107.edu.mx', '6675412714'),
(5, 'Bayron Uriel', 'Estrada Camacho', '23325052240375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx\r\n', '9095160134'),
(6, 'Angel Gibran', 'Loaiza Garcia', '23325061070380', '2008-08-26', 1, 'angel.loaiza23@cetis107.edu.mx', '6671451436'),
(7, 'Krisel Bettina', 'Angulo Garcia', '23325061070627', '2008-05-30', 0, 'krisel.bettina23@cetis107.edu.mx', '6675793242'),
(8, 'Ana Sofia', 'Delgado German', '23325061070323', '2008-08-20', 0, 'ana.delgado23@cetis107.edu.mx', '6677485604'),
(9, 'Rosselyn', 'Esparza Uriarte', '23325061070380228', '2008-12-20', 0, 'rosselyn.esparza23@cetis107.edu.mx', '6674093254'),
(10, 'Jonathan Horus', 'Zazueta Hernandez', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx\r\n', '6677592259'),
(11, 'Sergio Braulio', 'Martinez Felix', '23325061070386', '2008-06-11', 1, 'santiago.aispuro23@cetis107.edu.mx\r\n', '6673309322'),
(12, 'Victor Manuel', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274'),
(13, 'Frida Sofia', 'Sanches Valenzuela', '23325052240611', '2008-01-10', 0, 'frida.sanches23@cetis107.edu.mx\r\n', '6674087474');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
