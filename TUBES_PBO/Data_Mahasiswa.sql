-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 02:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `username` char(25) NOT NULL,
  `password` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`) VALUES
('baak', '123'),
('seleksi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk_mhs` varchar(10) NOT NULL,
  `almt_rmh` varchar(50) NOT NULL,
  `perguruan_tinggi` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `ipk` float NOT NULL,
  `prestasi` varchar(60) NOT NULL,
  `no_hp_mhs` varchar(15) NOT NULL,
  `pekerjaan_ortu` varchar(50) NOT NULL,
  `penghasilan_rata` int(11) NOT NULL,
  `jumlah_tanggungan` int(11) NOT NULL,
  `no_hp_ortu` varchar(15) NOT NULL,
  `nama_lkp_bank` varchar(30) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`nim`, `nama`, `jk_mhs`, `almt_rmh`, `perguruan_tinggi`, `prodi`, `semester`, `angkatan`, `ipk`, `prestasi`, `no_hp_mhs`, `pekerjaan_ortu`, `penghasilan_rata`, `jumlah_tanggungan`, `no_hp_ortu`, `nama_lkp_bank`, `no_rek`, `status`) VALUES
('118140040', 'Mawar', 'WANITA', 'Bandar Lampung', 'Institut Teknologi Sumatra', 'Informatika', 4, 2018, 3.6, 'Juara Nasional Animasi', '89899000099', 'Wiraswasta', 3000000, 2, '89588998899', 'Bank Negara Indonesia', '8899889988', 'LULUS'),
('118140041', 'Mira', 'WANITA', 'Bandung', 'Institut Teknologi Sumatra', 'Informatika', 4, 2018, 3.6, 'Juara Nasioanal Game', '89988998899', 'Wiraswasta', 3000000, 1, '89899889988', 'Bank Central Asia', '9898998984', 'TIDAK LULUS'),
('118140043', 'Riko Riki', 'PRIA', 'Jakarta', 'Institut Teknologi Sumatra', 'Informatika', 4, 2018, 3.6, 'Juara Nasional Karate', '88998899889', 'Wirausaha', 3000000, 2, '8998899889', 'Bank Negara Indonesia', '9887878766', 'TIDAK LULUS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
