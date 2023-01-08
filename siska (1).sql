-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 01:43 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siska`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE IF NOT EXISTS `dosens` (
  `NIP` int(12) NOT NULL,
  `id` varchar(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `matkul` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` varchar(11) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `jam` varchar(40) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `sks` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_mk`, `jam`, `nama_kelas`, `sks`, `semester`) VALUES
('63b0266f834', 'dddd', '09:00 s/d 10:00', 'daaas', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE IF NOT EXISTS `jurusans` (
  `id` varchar(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(12) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE IF NOT EXISTS `kuliah` (
  `id` varchar(11) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `id` varchar(12) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `nama_mk`, `sks`, `semester`) VALUES
('63b02615c823', 'dddd', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` varchar(20) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `NIM` int(12) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telepon` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `nama_mahasiswa`, `NIM`, `tanggal_lahir`, `jurusan`, `alamat`, `email`, `no_telepon`) VALUES
('63ad6c76c7df1', 'dede', 22222, '2022-02-02', 'imi', 'pemuteran', 'adm3@gmail.com', 2147483647),
('63b02f29293a0', 'darmayasa', 11111, '2022-12-23', '333', 'klunhkukf', 'jjk@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama`, `username`, `password`) VALUES
('63b02b2fba92', 'i gede darmayasa', 'marariver', 'QQQ'),
('63b02d13adbd', 'gede darmayasa', 'gede', '101010\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
