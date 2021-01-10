-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jan 10, 2021 at 07:31 AM
-- Server version: 5.6.50
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idPenulis` int(11) NOT NULL,
  `namaPenulis` varchar(200) NOT NULL,
  `isiBerita` longtext NOT NULL,
  `tanggalTerbit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--
INSERT INTO `berita`(`idPenulis`, `namaPenulis`, `isiBerita`, `tanggalTerbit`) VALUES (1,'hizrawan dwi oka','Suatu sore yang terik pada pertengahan Februari 2019, sejumlah remaja naik ke atas kapal layar motor Sinar Keluarga yang bersandar di Pelabuhan Sunda Kelapa, Jakarta Utara. Sesampainya di anjong (segitiga penyeimbang) yang berada di bagian depan kapal, mereka bergantian melompat. Byur, byur, prakk suara tubuh bertemu dengan air laut, susul menyusul. Sementara buruh bongkar muat di sebelahnya terus bekerja, mengangkut muatan, memindahkan barang dari truk ke kapal.','2020-01-01');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` char(255) NOT NULL,
  `password` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'mitulsrv', 'ed06a01e200d9cef8ace0779664d4152');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idPenulis`);
COMMIT;
--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
