-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Dec 11, 2022 at 02:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wad_modul4_fitrina`
--

-- --------------------------------------------------------

--
-- Table structure for table `showroom_fitrina_table`
--

CREATE TABLE `showroom_fitrina_table` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(255) NOT NULL,
  `pemilik_mobil` varchar(255) NOT NULL,
  `merk_mobil` varchar(255) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_mobil` varchar(255) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_fitrina`
--

CREATE TABLE `user_fitrina` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_fitrina`
--

INSERT INTO `user_fitrina` (`id`, `nama`, `email`, `password`, `no_hp`) VALUES
(7, 'F', 'asdfmustada@gmail.com', '', ''),
(8, 'Fitrina', 'asdfmustada@gmail.com', '081268844866', '123'),
(10, 'Fitrina', 'asdfmustada@gmail.com', '08121345132', '123'),
(13, 'Fitrina', 'asdfmustada@gmail.com', '08121345132', '123'),
(14, 'Fitrina', 'asdfmustada@gmail.com', '081268844866', '123'),
(15, 'Fitrina', 'asdfmustada@gmail.com', '081268844866', '123'),
(16, 'lala', 'abc@gmail.com', '009009', '123'),
(17, 'Fitrina', 'asdfmustada@gmail.com', '081268844866', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `showroom_fitrina_table`
--
ALTER TABLE `showroom_fitrina_table`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `user_fitrina`
--
ALTER TABLE `user_fitrina`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `showroom_fitrina_table`
--
ALTER TABLE `showroom_fitrina_table`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_fitrina`
--
ALTER TABLE `user_fitrina`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
