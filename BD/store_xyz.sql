-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
<<<<<<< HEAD
-- Servidor: localhost
-- Tiempo de generación: 22-04-2021 a las 00:07:40
-- Versión del servidor: 10.3.27-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.27-1~deb10u1
=======
-- Host: localhost
-- Generation Time: Apr 15, 2021 at 08:06 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9
>>>>>>> 36d9cba681ab4110c3a20c63ca4be804da8c4483

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorias`
--

<<<<<<< HEAD
INSERT INTO `categorias` (`id_categoria`, `categoria`, `imagen_categoria`) VALUES
(1, 'pez', ''),
(2, 'Marisco', ''),
(3, 'cerdo', ''),
(4, 'carne', ''),
(5, 'embutido', ''),
(6, 'lacteos', ''),
(7, 'electronicos', ''),
(8, 'Plásticos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `stock` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limite_productos`
--

CREATE TABLE `limite_productos` (
  `id_limite` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `limite` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_productos` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `descripcion` text CHARACTER SET armscii8 DEFAULT NULL,
  `precio_compra` decimal(8,2) DEFAULT NULL,
  `precio_venta` decimal(8,2) DEFAULT NULL,
  `unidad_medida` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_productos`, `descripcion`, `precio_compra`, `precio_venta`, `unidad_medida`, `imagen`) VALUES
(1, 'Leche', 'Leche de vaca', '2.00', '3.00', '2 kilos', 'leche.png'),
(2, 'juego', 'juego del valle', '0.25', '0.50', 'libros', 'jugo.png');
=======
INSERT INTO `categorias` (`id_categorias`, `categoria`, `imagen_cate`) VALUES
(1, 'Res', 'res.png'),
(2, 'Res', 'imagen_res.png\r\n'),
(3, 'Pollo', 'imagen_pollo.png\r\n'),
(4, 'Zapato', 'imagen_zapato.png'),
(5, 'Leche', 'leche-png'),
(6, 'Galletas', 'galletas.png'),
(7, 'Electrodomesticos', 'hola.png');
>>>>>>> 36d9cba681ab4110c3a20c63ca4be804da8c4483

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `passw` text DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `token` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `email`, `passw`, `tipo`, `estado`, `token`) VALUES
<<<<<<< HEAD
(1, 'jose', '', '$2y$10$emlcoj2jbw5pRIe7xWBhBO7Mh64JtjS6hl0bOYN1uqD4LUuYRWuG2', 1, 1, NULL);
=======
(1, 'jose', 'josedeodanes99@gmail.com', '$2y$10$5iD58PjfJp2uIZVmnfgnaOETK1Y.Sv5ZKo9JXDX.brCwPnPqCMwWi', 1, 1, ''),
(3, 'dfg', 'josedeodanes99@gmail.com', '$2y$10$nNoGseo.ndurgiK8PgS95eCSZ86kvlnqUy8Gfk4XtS8luc/vc8fse', 1, NULL, NULL);
>>>>>>> 36d9cba681ab4110c3a20c63ca4be804da8c4483

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id_inventario`),
  ADD UNIQUE KEY `id_producto` (`id_producto`),
  ADD UNIQUE KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `limite_productos`
--
ALTER TABLE `limite_productos`
  ADD PRIMARY KEY (`id_limite`),
  ADD UNIQUE KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
<<<<<<< HEAD
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `limite_productos`
--
ALTER TABLE `limite_productos`
  MODIFY `id_limite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
=======
  MODIFY `id_categorias` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
>>>>>>> 36d9cba681ab4110c3a20c63ca4be804da8c4483

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
<<<<<<< HEAD
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `limite_productos`
--
ALTER TABLE `limite_productos`
  ADD CONSTRAINT `producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;
=======
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
>>>>>>> 36d9cba681ab4110c3a20c63ca4be804da8c4483
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
