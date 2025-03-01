-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2025 a las 01:22:15
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
(1, 'Rubi Esmeralda', 'Zepeda Garcia', '23325061070514', '2007-09-29', 0, 'rubi.zepeda23@cetis107.edu.mx', '6673940804'),
(3, 'Sergio Braulio', 'Martinez Felix', '23325061070438', '2008-08-14', 1, 'sergio.martinez23@cetis107.edu.mx', '6673940809'),
(4, 'Jonathan Horus ', 'Zazueta Hernandez', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6673940877'),
(5, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-14', 1, 'bayron.estrada23@cetis107.edu.mx', '6673940866'),
(7, 'Santiago ', 'Lopez Aispuro', '23325061070375', '2008-08-10', 1, 'santiago.lopez23@cetis107.edu.mx', '6673940811'),
(8, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-08-11', 1, 'paolo.valdez23@cetis107.edu.mx', '6673940555'),
(9, 'Luis Angel ', 'Moya Preciado', '23325061070393', '2008-08-12', 1, 'luis.moya23@cetis107.edu.mx', '6673940820');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'La Reforma de la Educación Media Superior se orienta a la construcción de un Sistema Nacional de Bachillerato, con los propósitos de conformar\r\nuna identidad propia de este nivel educativo y lograr un perfil común del egresado en todos los subsistemas y modalidades que lo constituyenintegrarse a un '),
(2, 'Electronica', 'la formación de Técnicos en Electrónica es relevante porque contribuye en la capacitación y superación\r\nprofesional de los estudiantes y les permite tener mejores expectativas de vida al poder insertarse en un sector laboral '),
(3, 'Ofimatica', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos\r\n'),
(4, 'Construccion', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos\r\n'),
(5, 'Contabilidad', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Fecha de Nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`Id`, `Nombre`, `Correo`, `Genero`, `Fecha de Nacimiento`) VALUES
(1, 'Francisco Jose Ronchin Gonzales', 'Francisco.rochin@cetis107.edu.mx', 0, '1966-06-06'),
(2, 'Liliana Juarez Espinoza', 'Liliana.Juarez@cetis107.edu.mx', 1, '1989-08-18'),
(3, 'Maria Teresa Sepulveda Lopez', 'Maria.sepulveda@cetis107.edu.mx', 1, '1982-04-29'),
(4, 'Fernanda Dominguez Serrano', 'Fernanda.Dominguez@cetis107.edu.mx', 1, '1981-03-07'),
(5, 'Pedro Noe Gastelum Rocha', 'Pedro.Gastelum666@cetis107.edu.mx', 0, '1987-02-01'),
(6, 'Papik Heriberto Milan Paredes', 'Papik.Milan@cetis107.edu.mx', 0, '1982-07-06'),
(7, 'Evangelina Lopez Aispuro', 'Evangelina.Lopez@cetis107.edu.mx', 1, '1987-12-27'),
(8, 'Veronica Guadalupe Payan Quiñonez', 'Veronica.payan@cetis107.edu.mx', 1, '1985-06-25'),
(9, 'Jose Kevin Valdez Perez', 'jose.rochin@cetis107.edu.mx', 0, '1986-07-10'),
(10, 'Enoc Fernando Guitierrez Zapata', 'Enoc.Fernando@cetis107.edu.mx', 0, '1980-12-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `Nombre`, `Semestre`) VALUES
(1, 'Bd Relacionales', 4),
(2, 'Bd No Relacionales', 4),
(3, 'Conciencia Historica', 4),
(4, 'Ciencias Sociales', 4),
(5, 'Tutoria', 4),
(6, 'Recursos Socioemocionales', 4),
(7, 'Ingles', 4),
(8, 'Reaccion Quimica', 4),
(9, 'Matematicas', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
