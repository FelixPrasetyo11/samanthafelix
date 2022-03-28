-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 11:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_samantha`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `nama_fasilitas` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`id_fasilitas`, `nama_fasilitas`, `ket`) VALUES
(1, 'Restaurant', '10 AM-10 PM'),
(2, 'Swiming', '08 AM-04 PM'),
(3, 'Spa', '07 AM-09 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_multi`
--

CREATE TABLE `tb_multi` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_multi`
--

INSERT INTO `tb_multi` (`id_petugas`, `username`, `password`, `level`) VALUES
(1, 'admin01', 'c1237cc9cf2bff121e2e3ee5d4f08404', 'admin'),
(2, 'admin02', 'c1237cc9cf2bff121e2e3ee5d4f08404', 'admin'),
(3, 'admin03', 'c1237cc9cf2bff121e2e3ee5d4f08404', 'admin'),
(4, 'resepsionis1', 'f90299ab072e15ade64dabb62fa06f77', 'resepsionis'),
(5, 'resepsionis2', 'f90299ab072e15ade64dabb62fa06f77', 'resepsionis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `kd_bayar` char(6) NOT NULL,
  `kd_reservasi` char(6) NOT NULL,
  `bukti_bayar` varchar(11) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `nama_rekening` varchar(20) NOT NULL,
  `nomor_rekening` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`kd_bayar`, `kd_reservasi`, `bukti_bayar`, `tanggal_bayar`, `nama_rekening`, `nomor_rekening`) VALUES
('1', '1', '-', '2022-03-25', 'Wida', '56453467'),
('2', '2', '-', '2022-03-25', 'Delia', '528678765'),
('3', '3', '-', '2022-03-25', 'Rizky', '12342345');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservasi`
--

CREATE TABLE `tb_reservasi` (
  `kd_reservasi` char(6) NOT NULL,
  `id_user` char(6) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `jml_kamar` int(11) NOT NULL,
  `jml_hari` int(11) NOT NULL,
  `id_kamar` int(5) NOT NULL,
  `tgl_dipesan` date NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_reservasi`
--

INSERT INTO `tb_reservasi` (`kd_reservasi`, `id_user`, `check_in`, `check_out`, `jml_kamar`, `jml_hari`, `id_kamar`, `tgl_dipesan`, `total`, `status`) VALUES
('1', '7', '2022-03-27', '2022-03-28', 1, 1, 1, '2022-03-25', 500000, '1'),
('2', '10', '2022-03-26', '2022-03-28', 1, 2, 2, '2022-03-25', 2000000, '1'),
('3', '8', '2022-03-29', '2022-03-30', 1, 1, 3, '2022-03-25', 1500000, '1'),
('RSV001', 'TM001', '2022-03-29', '2022-03-30', 1, 1, 1, '2022-03-27', 500000, ''),
('RSV002', '12', '2022-03-30', '2022-03-31', 1, 1, 1, '2022-03-27', 500000, ''),
('RSV003', '12', '2022-03-30', '2022-03-31', 1, 1, 1, '2022-03-27', 500000, ''),
('RSV004', '12', '2022-03-29', '2022-03-30', 1, 1, 1, '2022-03-27', 500000, ''),
('RSV005', '12', '2022-03-29', '2022-03-30', 1, 1, 1, '2022-03-27', 500000, ''),
('RSV006', '12', '2022-03-29', '2022-03-30', 1, 1, 1, '2022-03-27', 500000, ''),
('RSV007', '12', '2022-03-30', '2022-03-31', 1, 1, 1, '2022-03-27', 500000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tamu`
--

CREATE TABLE `tb_tamu` (
  `id_user` char(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `password` varchar(225) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tamu`
--

INSERT INTO `tb_tamu` (`id_user`, `username`, `email`, `no_telp`, `password`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`) VALUES
('10', 'delia', 'delia@gmail.com', '089712456287', '7ace2eff2b5abbe449b7494225cf6045', 'Galanggang', 'Jawa Barat', 'Bandung Barat', 'Batujajar'),
('12', 'felix', 'felixprasetyo@gmail.com', '089658885348', 'af77e8b657a2443ce2dea5ee34e590c8', 'pangauban', 'Jawa Barat', 'Bandung Barat', 'Batujajar'),
('7', 'wida', 'wida@gmail.com', '083912345678', 'ef166dec84c00c61b084419afca3bb57', 'Cianjur', 'Jawa Barat', 'Bandung Barat', 'Batujajar'),
('8', 'Rizky', 'rizky@gmail.com', '089612341234', '3f8afa119a51363baea7cfc88bc22783', 'Sukasari', 'Jawa Barat', 'Bandung', 'Cihampelas'),
('9', 'radit', 'radit@gmail.com', '089712345123', 'ee0b921d3549ca76c2200013017fd43e', 'bandung', 'Jawa Barat', 'Bandung Barat', 'Batujajar'),
('TM001', 'lulu', 'luluadilah@gmail.com', '0895352367400', '6585782230e10de7d23fed098b58f8df', 'citapen', 'Jawa Barat', 'Bandung Barat', 'Batujajar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipekamar`
--

CREATE TABLE `tb_tipekamar` (
  `id_kamar` int(5) NOT NULL,
  `tipe_kamar` varchar(50) NOT NULL,
  `jumlah_kamar` int(3) NOT NULL,
  `harga_kamar` int(20) NOT NULL,
  `Fasilitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tipekamar`
--

INSERT INTO `tb_tipekamar` (`id_kamar`, `tipe_kamar`, `jumlah_kamar`, `harga_kamar`, `Fasilitas`) VALUES
(1, 'Standard Room', 9, 500000, 'AC, Bathtub, LED TV 32inch'),
(2, 'Deluxe Room', 6, 1000000, 'AC, Bathtub, Sofa, LED TV 45 inch'),
(3, 'Suite Room', 3, 1500000, 'AC, Bathtub, Sofa, Gym, Private Swimming Pool, LED TV 45inch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `tb_multi`
--
ALTER TABLE `tb_multi`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`kd_bayar`),
  ADD KEY `kd_reservasi` (`kd_reservasi`);

--
-- Indexes for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  ADD PRIMARY KEY (`kd_reservasi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `tb_tamu`
--
ALTER TABLE `tb_tamu`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_tipekamar`
--
ALTER TABLE `tb_tipekamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_multi`
--
ALTER TABLE `tb_multi`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_tipekamar`
--
ALTER TABLE `tb_tipekamar`
  MODIFY `id_kamar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `tb_pembayaran_ibfk_1` FOREIGN KEY (`kd_reservasi`) REFERENCES `tb_reservasi` (`kd_reservasi`);

--
-- Constraints for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  ADD CONSTRAINT `tb_reservasi_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_tamu` (`id_user`),
  ADD CONSTRAINT `tb_reservasi_ibfk_4` FOREIGN KEY (`id_kamar`) REFERENCES `tb_tipekamar` (`id_kamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
