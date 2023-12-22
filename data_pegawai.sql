-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 08:23 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pekerjaan`
--

CREATE TABLE `riwayat_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(500) NOT NULL,
  `posisi` varchar(500) NOT NULL,
  `pendapatan` varchar(500) NOT NULL,
  `tahun` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_pekerjaan`
--

INSERT INTO `riwayat_pekerjaan` (`id_pekerjaan`, `nama_perusahaan`, `posisi`, `pendapatan`, `tahun`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pelatihan`
--

CREATE TABLE `riwayat_pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `nama_pelatihan` varchar(500) NOT NULL,
  `sertifikat` varchar(500) NOT NULL,
  `tahun` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pendidikan`
--

CREATE TABLE `riwayat_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `jenjang_pendidikan` varchar(500) NOT NULL,
  `nama_institusi` varchar(500) NOT NULL,
  `jurusan` varchar(500) NOT NULL,
  `tahun_lulus` varchar(10) NOT NULL,
  `ipk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_pendidikan`
--

INSERT INTO `riwayat_pendidikan` (`id_pendidikan`, `jenjang_pendidikan`, `nama_institusi`, `jurusan`, `tahun_lulus`, `ipk`) VALUES
(1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(500) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `status_kawin` varchar(50) NOT NULL,
  `j_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `alamat_ktp` varchar(500) NOT NULL,
  `alamat_tinggal` varchar(500) NOT NULL,
  `gol_darah` varchar(50) NOT NULL,
  `posisi_lamaran` varchar(500) NOT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `nomor_darurat` bigint(20) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `kesediaan` varchar(10) NOT NULL,
  `penghasilan` varchar(500) NOT NULL,
  `email` text NOT NULL,
  `pass` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `no_ktp`, `status_kawin`, `j_kelamin`, `agama`, `alamat_ktp`, `alamat_tinggal`, `gol_darah`, `posisi_lamaran`, `no_tlp`, `nomor_darurat`, `skill`, `kesediaan`, `penghasilan`, `email`, `pass`, `date`, `status`) VALUES
(3, 'habibi', 'tangerang', '2023-12-04', '3666666666', 'belum kawin', 'Laki-Laki', 'islam', 'BPA', 'BPA', 'b', 'programmer ', 888888, 2222222, 'coding', 'ya', '5000000', 'ahmadaulia@gmail.com', '12345', '0000-00-00', 'tidak aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `riwayat_pekerjaan`
--
ALTER TABLE `riwayat_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `riwayat_pelatihan`
--
ALTER TABLE `riwayat_pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- Indexes for table `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `riwayat_pekerjaan`
--
ALTER TABLE `riwayat_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `riwayat_pelatihan`
--
ALTER TABLE `riwayat_pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
