-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 04, 2023 at 01:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_invenas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(4) NOT NULL,
  `id_ruangan` int(4) NOT NULL,
  `kd_inventaris` varchar(30) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `ukuran` varchar(15) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `satuan` enum('buah','unit') NOT NULL,
  `tahun` int(5) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `id_ruangan`, `kd_inventaris`, `nm_barang`, `merk`, `ukuran`, `jumlah`, `satuan`, `tahun`, `kondisi`, `created_at`, `updated_at`) VALUES
(16, 1, 'HUK/GSD/22/OT/0001-0003', 'Staff Office Table', 'OLYMPIC', '-', 3, 'buah', 2022, '100%', '2023-10-28 02:35:01', '2023-10-28 02:35:01'),
(17, 1, 'HUK/GSD/22/OT/0001', 'Staff Office Table', 'INFORMA', '-', 1, 'buah', 2022, '100%', '2023-10-28 02:36:47', '2023-10-28 02:36:47'),
(18, 1, 'HUK/GSD/13/OT/0001', 'Staff Office Table', 'WOOD', '-', 1, 'buah', 2013, '90%', '2023-10-28 02:37:54', '2023-10-28 02:37:54'),
(22, 2, 'HUK/GSD/16/RD/0001', 'Lecturer Table', 'Informa', 'Besar', 21, 'unit', 2015, '100%', '2023-11-03 13:53:42', '2023-11-03 13:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id_pengguna`, `nama`, `username`, `password`, `role_id`) VALUES
(7, 'Putri', 'habibah', '123456', 2),
(8, 'dendin', 'admin', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruang_office`
--

CREATE TABLE `tbl_ruang_office` (
  `id_ruang_office` int(4) NOT NULL,
  `nm_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ruang_office`
--

INSERT INTO `tbl_ruang_office` (`id_ruang_office`, `nm_ruangan`) VALUES
(1, 'GSD'),
(2, 'BAAK'),
(3, 'MARKETING'),
(4, 'CSDL'),
(5, 'MANAJEMEN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tbl_ruang_office`
--
ALTER TABLE `tbl_ruang_office`
  ADD PRIMARY KEY (`id_ruang_office`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_ruang_office`
--
ALTER TABLE `tbl_ruang_office`
  MODIFY `id_ruang_office` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
