-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2025 a las 02:25:24
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Kanye West', 'Kanye West es un rapero, productor discográfico, diseñador de moda y empresario estadounidense.​'),
(2, 'Taylor Swift', 'Taylor Alison Swift es una cantante, compositora, productora discográfica, directora, actriz y empresaria estadounidense. '),
(3, 'New Jeans', 'NewJeans, también conocidas actualmente como NJZ, es un grupo femenino surcoreano formado en 2022 por ADOR, agencia subsidiaria de HYBE Corporation.'),
(4, 'Skrillex', 'Sonny John Moore, conocido por su nombre artístico Skrillex, es un DJ, cantante, remezclador y productor discográfico estadounidense.'),
(5, 'Frank Sinatra', 'Francis Albert Sinatra, conocido popularmente como Frank Sinatra, fue un cantante y actor estadounidense. '),
(6, 'Beyonce', 'Beyoncé Giselle Knowles-Carter, ​ es una cantante, compositora, productora, bailarina, actriz, directora, diseñadora y empresaria estadounidense. '),
(7, 'The Beatles', 'Los Beatles, fue una banda británica de rock formada en Liverpool durante los años 1960. '),
(8, 'Bad Bunny', 'Benito Antonio Martínez Ocasio, es un cantante, compositor, productor discográfico y luchador puertorriqueño.​');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'I Wonder', 1, '00:04:03', '2007-09-11', 0, 'Graduation.jpg'),
(2, 'CARNIVAL', 1, '00:04:03', '2024-02-15', 0, 'vultures1.jpg'),
(3, 'Runaway', 1, '00:09:08', '2010-10-04', 0, 'Runaway.jpg'),
(4, 'Niggas in Paris', 1, '00:03:39', '2011-09-13', 0, 'niggasinparis.jpg'),
(5, 'Heartless', 2, '00:03:21', '2008-11-05', 0, 'Heartless.jpg'),
(6, 'Gold Digger', 1, '00:03:28', '2005-08-02', 0, 'lateregritation.jpg'),
(7, 'Cruel Summer', 2, '00:02:58', '2019-06-20', 0, 'lover.png'),
(8, 'Shake It Off', 2, '00:04:01', '2014-08-18', 0, '1989.png'),
(9, 'Love Story', 2, '00:03:57', '2008-09-12', 0, 'Fearless.png'),
(10, 'Fortnight', 1, '00:03:48', '2024-04-19', 0, 'TTPD.png'),
(11, 'Look What You Made Me Do', 2, '00:03:31', '2017-08-24', 0, 'reputation.jpg'),
(12, 'I Knew You Were Trouble', 2, '00:03:39', '2012-12-13', 0, 'red.jpg'),
(13, 'How Sweet', 6, '00:03:39', '2024-05-24', 0, 'howsweet.jpg'),
(14, 'Supernatural', 6, '00:03:11', '2024-06-21', 0, 'supernatural.jpg'),
(15, 'Super Shy', 6, '00:02:34', '2023-07-07', 0, 'getup.jpg'),
(16, 'OMG', 6, '00:03:32', '2023-01-03', 0, 'omg.jpg'),
(17, 'Hype Boy', 6, '00:02:59', '2022-07-23', 1, 'newjeans.jpg'),
(18, 'GODS', 6, '00:03:41', '2023-10-04', 0, 'gods.jpg'),
(19, 'Halo', 7, '00:04:21', '2009-01-20', 0, 'halo.jpg'),
(20, 'Love On Top', 7, '00:04:28', '2011-09-12', 0, '4.jpg'),
(21, 'Crazy In Love', 7, '00:03:56', '2003-05-14', 0, 'Crazyinlove.jpg'),
(22, 'Formation', 7, '00:03:26', '2016-02-06', 0, 'Lemonade.jpg'),
(23, 'Partition', 7, '00:05:19', '2014-02-25', 0, 'Beyonce.jpg'),
(24, 'BREAK MY SOUL', 2, '00:04:38', '2022-06-20', 0, 'Reinassance.jpg'),
(25, 'Bangarang', 3, '00:03:35', '2011-12-24', 0, 'Bangarang.jpg'),
(26, 'Make It Bun Dem', 3, '00:03:35', '2012-05-01', 0, 'MakeItBunDem.jpg'),
(27, 'Purple Lamborghini\r\n', 3, '00:03:35', '2016-07-22', 0, 'Purplelamborghini.jpg\r\n'),
(28, 'First of the Year (Equinox)', 3, '00:04:22', '2011-06-07', 0, 'FirstoftheYear.jpg'),
(29, 'Would You Ever', 3, '00:03:54', '2017-07-26', 0, 'Wouldyouever.jpg'),
(30, 'Scary Monsters and Nice Sprites', 3, '00:04:03', '2010-10-22', 0, 'Scarymonstersandnicesprites.jpg'),
(31, 'Fly Me To The Moon (In Other Words)', 4, '00:02:14', '1954-04-01', 0, 'flymetothemoon.jpg'),
(32, 'Let It Snow! Let It Snow! Let It Snow!', 4, '00:02:36', '1950-01-01', 0, 'letitsnow.jpg'),
(33, 'Somethin\' Stupid', 4, '00:02:37', '1967-04-19', 0, 'Somethin\' Stupid'),
(34, 'That\'s Life ', 4, '00:03:08', '1966-11-18', 0, 'Thatslife.jpg'),
(35, 'Strangers In The Night', 4, '00:02:35', '1966-05-01', 0, 'strangersinthenight.jpg'),
(36, 'The Way You Look Tonight\r\n', 4, '00:03:35', '1964-05-05', 0, 'TheWayYouLookTonight.JPG'),
(37, 'MONACO', 8, '00:04:26', '2023-10-13', 0, 'monaco.jpg'),
(38, 'Me porto bonito\r\n', 8, '00:02:58', '2022-06-20', 0, 'Veranosinti.jpg'),
(39, 'un x100to', 8, '00:03:14', '2023-04-17', 0, 'unx100to.jpg\r\n'),
(40, 'DÁKITI', 8, '00:03:25', '2020-10-30', 0, 'Dakiti.jpg'),
(41, 'Amorfoda', 8, '00:02:33', '2018-02-14', 0, 'Amorfoda.jpg'),
(42, 'Yonaguni', 8, '00:03:26', '2021-06-04', 0, 'Yonaguni.jpg'),
(43, 'Here Comes the Sun', 5, '00:03:06', '1969-09-26', 0, 'AbbeyRoad.jpg'),
(44, 'Let It Be\r\n', 5, '00:03:50', '1970-03-06', 0, 'Letitbe.jpg'),
(45, 'Hey Jude', 5, '00:07:11', '1968-08-26', 0, 'HeyJude.jpg'),
(46, 'Come Together\r\n', 5, '00:04:19', '1969-10-06', 0, 'AbbeyRoad.jpg'),
(47, 'Help!', 5, '00:03:39', '1969-09-26', 0, 'abbeyroas.jpg'),
(48, 'Dont Let Me Down', 5, '00:04:28', '1969-10-06', 0, 'abbeyroas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Rap'),
(2, 'Pop'),
(3, 'EDM'),
(4, 'Jazz'),
(5, 'Rock'),
(6, 'Kpop'),
(7, 'R&B'),
(8, 'Reggeaton');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Gratis', 0),
(2, 'Individual', 129),
(3, 'Estudiantes', 69),
(4, 'Duo', 169),
(5, 'Familiar', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcancion` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Nico08', 'nico08@gmail.com', 2),
(2, 'Tocinito08', 'tocinito08@gmail.com', 4),
(3, 'b23', 'bayron23@gmail.com', 4),
(4, 'D13g0', 'd2356437@gmail.com', 1),
(5, 'Luis Angel Moja Apreciado', 'Angelma@gmail.com', 3),
(6, 'Ana08', 'asdg@gmail.com', 5),
(7, 'beti08', 'kribet@gmail.com', 5),
(8, 'Tina08', 'Rosstina@gmail.com', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
