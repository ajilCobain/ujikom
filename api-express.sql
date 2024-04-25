-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 01:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-express`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `gambar`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-VANS-FFSSBVAS5-VAS000EYEBWW-Black.jpg', '2024-04-23 03:37:37', '2024-04-23 10:15:49'),
(3, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 04:54:01', '2024-04-23 10:14:52'),
(4, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 04:54:02', '2024-04-23 09:30:21'),
(5, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 04:54:02', '2024-04-23 09:30:23'),
(6, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 04:54:03', '2024-04-23 04:54:03'),
(7, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 05:01:31', '2024-04-23 05:01:31'),
(8, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 05:01:40', '2024-04-23 05:01:40'),
(9, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 05:01:54', '2024-04-23 05:01:54'),
(10, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 05:02:03', '2024-04-23 05:02:03'),
(18, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 09:02:09', '2024-04-23 09:02:09'),
(19, 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', '2024-04-23 09:02:15', '2024-04-23 09:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontaks`
--

INSERT INTO `kontaks` (`id`, `email`, `nama`, `pesan`, `createdAt`, `updatedAt`) VALUES
(2, 'admin@gmail.com', 'nazril', 'wwwkkkk', '2024-04-22 02:18:06', '2024-04-22 02:18:06'),
(4, 'nazril@gmail.com', 'ipal', 'wkwkwkwkwk hahaha', '2024-04-23 02:33:45', '2024-04-23 02:33:45'),
(5, 'palkon@gmail.com', 'palkntol', 'ival kaya babi', '2024-04-23 03:04:17', '2024-04-23 03:04:17'),
(6, 'jawa@gmail.com', 'jawa ajh', 'no jawa no party', '2024-04-23 04:44:04', '2024-04-23 04:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `size_chart` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `nama_produk`, `description`, `gambar`, `harga`, `size_chart`, `stok`, `createdAt`, `updatedAt`) VALUES
(3, 'Hot Wheels™ Speedway Hat - Navy', 'cotton combad', 'https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-VANS-FFSSBVAS5-VAS000EYEBWW-Black.jpg', 'Rp.370.000', 'L', 12, '2024-04-22 09:03:29', '2024-04-23 07:43:19'),
(14, 'VARSITY CHAMP Hot Wheels™ series - Black', '2222', 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', 'Rp.350.000', 'S', 2, '2024-04-22 11:19:04', '2024-04-23 06:37:07'),
(15, 'RIOTMFG WJ - Cream', 'qqqq', 'https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-VANS-FFSSBVAS5-VAS000EYEBWW-Black.jpg', 'Rp.350.000', 'M', 50, '2024-04-23 05:36:27', '2024-04-23 06:37:47'),
(16, 'SK8 LOGO COLLAGE TEES - BLACK', 'a', 'https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-VANS-FFSSBVAS5-VAS000EYEBWW-Black.jpg', 'Rp.370.000', 'L', 100, '2024-04-23 05:41:13', '2024-04-23 06:38:12'),
(17, 'VARSITY CHAMP Hot Wheels™ series - Black', 'vvvv', 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', 'Rp.350.000', 'M', 3, '2024-04-23 06:49:59', '2024-04-23 06:49:59'),
(18, 'Hot Wheels™ Speedway Hat - Navy', 'qqqq', 'https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-VANS-FFSSBVAS5-VAS000EYEBWW-Black.jpg', 'Rp.370.000', 'M', 5, '2024-04-23 07:01:26', '2024-04-23 07:45:13'),
(19, 'VARSITY CHAMP Hot Wheels™ series - Black', 'wwww', 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', 'Rp.370.000', 'S', 1, '2024-04-23 07:02:34', '2024-04-23 07:02:34'),
(20, 'VARSITY CHAMP Hot Wheels™ series - Black', 'sss', 'https://rawtyperiot.co/cdn/shop/products/GRILIAFIGURE_1.jpg?v=1674639164', 'Rp.350.000', 'L', 2, '2024-04-23 07:04:10', '2024-04-23 07:45:19'),
(21, 'nike', 'sssss', 'https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-VANS-FFSSBVAS5-VAS000EYEBWW-Black.jpg', 'Rp.390.000', 'L', 20, '2024-04-23 10:30:34', '2024-04-23 10:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240130072210-create-user.js'),
('20240216005438-create-kategori.js'),
('20240217045611-create-kategori.js'),
('20240228133856-create-produk.js'),
('20240229034221-create-galeri.js'),
('20240229034530-create-kontak.js'),
('20240401065849-create-stok.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'admin Project', 'admin@gmail.com', '$2a$10$.KwVgovDmelHSY4W2afjoOoi2rsBDlamkRw3miZW7PKPQWLeo8Kwm', 'admin', '2024-04-01 07:05:40', '2024-04-01 07:05:40'),
(2, 'member Project', 'member@gmail.com', '$2a$10$.KwVgovDmelHSY4W2afjoOoi2rsBDlamkRw3miZW7PKPQWLeo8Kwm', 'member', '2024-04-01 07:05:40', '2024-04-01 07:05:40'),
(3, 'nazril', 'nazrililham@gmail.com', '$2a$10$YHI4IqurL21.FZiSqUnLgengcuFi3cLN.j0MOMh/QMQUOjhnMdn/m', 'admin', '2024-04-22 02:25:08', '2024-04-22 02:25:08'),
(4, 'nazril ilham aldino', 'nazrililhamAL@gmail.com', '$2a$10$rM/bb.x5qO30nwcsIvpIkO3wI3P5MjVC9FQSp6yS5k25MrxGMnbjO', 'admin', '2024-04-22 05:53:38', '2024-04-22 09:22:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
