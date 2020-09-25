-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2020 a las 04:43:00
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projectcake`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `slug`, `body`, `published`, `created`, `modified`) VALUES
(1, 1, 'First Post', 'first-post', 'This is the first post.', 1, '2020-09-15 13:43:59', '2020-09-15 13:43:59'),
(3, 1, 'second article', 'thirty-article', 'second article', 1, '2020-09-15 22:20:51', '2020-09-24 20:35:11'),
(11, 1, 'article 33', 'article-33', 'article 33', 2, '2020-09-17 23:47:52', '2020-09-24 20:35:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles_tags`
--

INSERT INTO `articles_tags` (`article_id`, `tag_id`) VALUES
(1, 1),
(3, 2),
(11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `maker` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `email`, `password`, `created`, `modified`, `product`, `maker`) VALUES
(1, 'cakephp@example.com', '$2y$10$pU.9/YnRb0FAISYdhIlL0OUfsJLncjAjQc4DeWW0Y5fOg/gBZ4Dli', '2020-09-22 14:27:10', '2020-09-22 19:45:07', 'one plus 8 pro', 'one plus'),
(2, 'kita@gmail.com', '$2y$10$5pMIPB8sfzZQkljvfUQUT.WMHyio31pRRdyKuK/RVAmABAkVqLHYy', '2020-09-22 19:44:43', '2020-09-22 19:44:43', 'samsumg galaxy s10', 'samsung'),
(3, 'ab@gmail.com', '$2y$10$2thlD9OQTIOag.Scx3GJp.dfLMhyJGVa0VVI2h2rpwCW9JOekhvhm', '2020-09-22 19:56:47', '2020-09-22 19:56:47', 'xcxcxcxc', 'xcxcxcxcxc'),
(4, 'oox@gmail.com', '$2y$10$dpyU5LqGCBxPGVTWAJNMz.iSvUrDMrUT4qlLVLa/9RvZ1pddnL91m', '2020-09-22 20:06:15', '2020-09-22 21:24:52', 'ewrweryy', 'werwerwer'),
(5, '1@net.com', '$2y$10$jEXI7DiUVGC.kqbKAtgLjO304ht3NHhwwZTk6ByGesT0l6LxyOxay', '2020-09-22 20:20:27', '2020-09-22 20:20:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `title`, `created`, `modified`) VALUES
(1, 'etiquet 1', '2020-09-17 23:25:20', '2020-09-17 23:25:20'),
(2, 'etiquet 2', '2020-09-17 23:25:57', '2020-09-17 23:25:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `product` varchar(100) NOT NULL,
  `maker` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`, `product`, `maker`, `price`, `category`, `description`) VALUES
(1, 'cakephp@example.com', '$2y$10$ts41iwc4y.zI5aFu9A8wuOAIaWc1Q5JkmZcwUh/QznSsUCoVNmRCy', '2020-09-15 13:43:59', '2020-09-25 02:39:01', 'motorola one hyper', 'motorola', '769,000', '2', 'Tamaño de la pantalla: 6.5 pulgadasCámara posterior: 64MP + 8MP (video wide) + ToF(8x8)Cámara frontal: 32 MPX + Cámara POP UPMemoria interna: 128GBNúcleos del procesador: Octa Core'),
(2, 'jaider@gmail.com', '$2y$10$UxITWN/SGtmOPxXDfTkJuOrFhPiO6md/CuvAjK96sAkf0jdvipRei', '2020-09-17 20:16:42', '2020-09-25 01:46:32', 'samsung galaxy A71', 'samsung', '1,799,900', '1', 'Tamaño de la pantalla: 6.7 pulgadasCámara posterior: 64.0 MP + 12.0 MP + 5.0 MP + 5.0 MPCámara frontal: 32MPMemoria interna: 128GBNúcleos del procesador: Octa Core'),
(3, 'celes@gmail.com', '$2y$10$sxwlG9e.auagM60d06YjhueHGX1j0nDtl/2gDeN3K0a9c.evtHeGS', '2020-09-17 22:32:12', '2020-09-17 22:32:12', 'Huawei P40 lite Negro\r\n\r\n', 'Huawei', '1,076,900', '1', 'Tamaño de la pantalla	6.4 pulgadas\r\nCámara frontal	16MP\r\nMemoria interna	128GB\r\nBatería	4200 mAh\r\nNúcleos del procesador	Octa Core\r\nCarga rápida	Sí\r\nFlash frontal	No\r\nMarca y modelo del procesador	Kir'),
(4, 'user@gmail.com', '$2y$10$lvg1N7uNk2sB88VT7XCpOOrec9CkGoac5MHE/13Ied4KAQzbCtyK2', '2020-09-20 23:07:26', '2020-09-20 23:07:26', 'iPhone SE', 'Apple', '2,199,900', '2', 'Tamaño de la pantalla: 4.7 pulgadas\r\nCámara posterior: 12 MP\r\nCámara frontal: 7MP\r\nMemoria interna: 64GB\r\nCarga rápida: Sí'),
(5, 'pru@gmail.com', '$2y$10$YTHD3up35WeY/Xu8fBS7ZefrNfeHJoK3x.felAJs8zYHRKBgJVBN6', '2020-09-21 20:06:38', '2020-09-21 20:06:38', 'iPhone XR', 'apple', '3,229,000', '1', 'Tamaño de la pantalla: 6.1 pulgadas\r\nCámara posterior: 12MP\r\nCámara frontal: 7MP\r\nMemoria interna: 64GB\r\nMarca y modelo del procesador: Apple A12 Bionic'),
(9, 'mromerop@misena.edu.co', '$2y$10$c0c4vbyBBHaoPLH0l.krq.NE4rP0.ftdexxGbDGXXFBpi/b5C6VC.', '2020-09-23 17:11:49', '2020-09-23 17:11:49', 'Oculus go', 'Facebook Technologies width Qualcomm and Xiaomi. ', '1,395,000', '1', 'montan una única pantalla LCD de 5,5 pulgadas con una resolución de 2560 x 1440 píxeles (1280 x 1440 por cada ojo) y una densidad de 538 píxeles por pulgadas.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_key` (`user_id`);

--
-- Indices de la tabla `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `tag_key` (`tag_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `article_key` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tag_key` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
