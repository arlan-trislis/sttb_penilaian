-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 04:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sttb_penilaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tgl` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(100) NOT NULL,
  `divisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `divisi`) VALUES
(1, 'IT'),
(3, 'Marketing'),
(4, 'Security'),
(6, 'Keuangan'),
(7, 'Akutansi');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `jabatan`) VALUES
(2, 'Kepala Divisi'),
(3, 'Wakil Ketua 2'),
(4, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(100) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `tgl` varchar(15) DEFAULT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` int(100) NOT NULL,
  `masuk` date NOT NULL DEFAULT current_timestamp(),
  `pendidikan` text NOT NULL,
  `jabatan` int(100) NOT NULL,
  `divisi` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `kode`, `nama`, `nik`, `email`, `ttl`, `tgl`, `alamat`, `telp`, `masuk`, `pendidikan`, `jabatan`, `divisi`) VALUES
(39, '20.96.001', 'Silvia Indrayani', 33280, 'silvia@gmail.com', 'Tegal', '1996-05-14', 'Bandung', 2147483647, '2020-06-30', '0', 2, 6),
(45, '20.97.002', 'Silvia', 33280, 'silviaindrayani109@gmail.com', 'Tegal', '1997-04-04', 'Bandung', 2147483647, '2020-07-24', '0', 4, 6),
(46, '20.97.003', 'arlan', 99, 'arlan@gmail.com', 'tegal', '1997-01-01', 'tegal', 99, '2020-09-21', '0', 3, 6),
(47, '20.07.004', 'rian', 999, 'rian@gmail.com', 'tegal', '2007-01-01', 'tegal', 999, '2020-09-21', '0', 4, 6),
(48, '20.95.005', 'Ariandi', 2147483647, 'ariandi@gmail.com', 'Tegal', '1995-01-21', 'Banjaranyar', 2147483647, '2020-09-21', '0', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Kedisiplinan'),
(2, 'Kerjasama'),
(3, 'Prestasi Kerja'),
(4, 'Tanggung Jawab'),
(5, 'Ketaatan'),
(6, 'Kejujuran'),
(7, 'Kerjasama'),
(8, 'Prakarsa'),
(9, 'Kepemimpinan');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(25) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `nilai` int(20) NOT NULL,
  `bulan` varchar(30) NOT NULL,
  `divisi` int(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_detail`
--

CREATE TABLE `nilai_detail` (
  `id` int(100) NOT NULL,
  `penilai` varchar(25) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `nilai` int(10) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_detail`
--

INSERT INTO `nilai_detail` (`id`, `penilai`, `kode`, `kategori`, `nilai`, `bulan`, `status`) VALUES
(162, 'Silvia Indrayani', '20.97.002', 'Kedisiplinan', 76, 'Juli 2020', NULL),
(163, 'Silvia Indrayani', '20.97.002', 'Kerjasama', 78, 'Juli 2020', NULL),
(164, 'Silvia Indrayani', '20.97.002', 'Prestasi Kerja', 67, 'Juli 2020', NULL),
(165, 'Silvia Indrayani', '20.97.002', 'Tanggung Jawab', 89, 'Juli 2020', NULL),
(166, 'Silvia Indrayani', '20.97.002', 'Ketaatan', 90, 'Juli 2020', NULL),
(167, 'Silvia Indrayani', '20.97.002', 'Kejujuran', 76, 'Juli 2020', NULL),
(168, 'Silvia Indrayani', '20.97.002', 'Kerjasama', 80, 'Juli 2020', NULL),
(169, 'Silvia Indrayani', '20.97.002', 'Prakarsa', 76, 'Juli 2020', NULL),
(170, 'Silvia Indrayani', '20.97.002', 'Kepemimpinan', 80, 'Juli 2020', NULL),
(171, 'Silvia', '20.97.002', 'Kedisiplinan', 70, 'September 2020', NULL),
(172, 'Silvia', '20.97.002', 'Kerjasama', 76, 'September 2020', NULL),
(173, 'Silvia', '20.97.002', 'Prestasi Kerja', 76, 'September 2020', NULL),
(174, 'Silvia', '20.97.002', 'Tanggung Jawab', 65, 'September 2020', NULL),
(175, 'Silvia', '20.97.002', 'Ketaatan', 89, 'September 2020', NULL),
(176, 'Silvia', '20.97.002', 'Kejujuran', 68, 'September 2020', NULL),
(177, 'Silvia', '20.97.002', 'Kerjasama', 50, 'September 2020', NULL),
(178, 'Silvia', '20.97.002', 'Prakarsa', 90, 'September 2020', NULL),
(179, 'Silvia', '20.97.002', 'Kepemimpinan', 87, 'September 2020', NULL),
(180, 'Silvia Indrayani', '20.07.004', 'Kedisiplinan', 89, 'September 2020', NULL),
(181, 'Silvia Indrayani', '20.07.004', 'Kerjasama', 88, 'September 2020', NULL),
(182, 'Silvia Indrayani', '20.07.004', 'Prestasi Kerja', 77, 'September 2020', NULL),
(183, 'Silvia Indrayani', '20.07.004', 'Tanggung Jawab', 66, 'September 2020', NULL),
(184, 'Silvia Indrayani', '20.07.004', 'Ketaatan', 66, 'September 2020', NULL),
(185, 'Silvia Indrayani', '20.07.004', 'Kejujuran', 80, 'September 2020', NULL),
(186, 'Silvia Indrayani', '20.07.004', 'Kerjasama', 77, 'September 2020', NULL),
(187, 'Silvia Indrayani', '20.07.004', 'Prakarsa', 78, 'September 2020', NULL),
(188, 'Silvia Indrayani', '20.07.004', 'Kepemimpinan', 76, 'September 2020', NULL),
(189, 'Silvia Indrayani', '20.95.005', 'Kedisiplinan', 90, 'September 2020', NULL),
(190, 'Silvia Indrayani', '20.95.005', 'Kerjasama', 88, 'September 2020', NULL),
(191, 'Silvia Indrayani', '20.95.005', 'Prestasi Kerja', 78, 'September 2020', NULL),
(192, 'Silvia Indrayani', '20.95.005', 'Tanggung Jawab', 87, 'September 2020', NULL),
(193, 'Silvia Indrayani', '20.95.005', 'Ketaatan', 88, 'September 2020', NULL),
(194, 'Silvia Indrayani', '20.95.005', 'Kejujuran', 77, 'September 2020', NULL),
(195, 'Silvia Indrayani', '20.95.005', 'Kerjasama', 76, 'September 2020', NULL),
(196, 'Silvia Indrayani', '20.95.005', 'Prakarsa', 67, 'September 2020', NULL),
(197, 'Silvia Indrayani', '20.95.005', 'Kepemimpinan', 79, 'September 2020', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(6) NOT NULL,
  `pendidikan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `pendidikan`) VALUES
(1, 'S3'),
(2, 'S2'),
(3, 'S1'),
(4, 'D4'),
(5, 'D3'),
(6, 'D2'),
(7, 'D1'),
(8, 'SMA'),
(9, 'SMK');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id` int(10) NOT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `kelebihan` text DEFAULT NULL,
  `kekurangan` text DEFAULT NULL,
  `pelatihan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id`, `kode`, `bulan`, `kelebihan`, `kekurangan`, `pelatihan`) VALUES
(3, '20.97.002', 'Juli 2020', 'Sangat teliti dalam pekerjaan', 'Tingkatkan lagi jiwa kompetitif', '-'),
(4, '20.97.002', 'September 2020', 'AAAAA', 'BBBBB', 'CCCCCC'),
(5, '20.07.004', 'September 2020', 'aa', 'bb', 'cc'),
(6, '20.95.005', 'September 2020', 'Sangat disiplin dalam pekerjaan', 'Tingkatkan lagi prakarsa', '-');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `email` text CHARACTER SET latin1 DEFAULT NULL,
  `image` text CHARACTER SET latin1 DEFAULT NULL,
  `password` text CHARACTER SET latin1 DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `divisi` int(10) DEFAULT NULL,
  `name` text CHARACTER SET latin1 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createdDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `kode`, `email`, `image`, `password`, `level`, `divisi`, `name`, `status`, `createdDate`) VALUES
(36, 'AD20061701', 'admin@gmail.com', 'default2.jpg', '$2y$10$w0DtpEUiUqjdjZ71DOAGqO3StM.SsCf79mhXRYpBxeJTe2t3u0r0u', 1, 0, 'Silvia', 1, 1592388446),
(84, '20.96.001', 'silvia@gmail.com', 'default.jpg', '$2y$10$NwMBe.NfXO9MPnPwhZBXm.Zlj456K0QKuwLRmKibv4xh3z6Q7P0QG', 2, 6, 'Silvia Indrayani', 1, 1593511799),
(90, '20.97.002', 'silviaindrayani109@gmail.com', 'default.jpg', '$2y$10$b.dL9TO0ceU.OzjiunRLB.AtN/iykzpXlA2cEzLKx5A3qGuON50g2', 4, 6, 'Silvia', 1, 1595604841),
(91, '20.97.003', 'arlan@gmail.com', 'default.jpg', '$2y$10$oDDPllo6g5pAeO6F1572qeDqvOWUrAY8qyA83DELo6pDxrLgtnRvS', 3, 6, 'arlan', 1, 1600703235),
(92, '20.07.004', 'rian@gmail.com', 'default.jpg', '$2y$10$lBIasdWYUWKbOJiY1wPhCujmCXp8XeCjGrNHwim3KoJ23HH4QX0my', 4, 6, 'rian', 1, 1600703294),
(93, '20.95.005', 'ariandi@gmail.com', 'default.jpg', '$2y$10$Dl9bHBQhkSppUoNzrif6tujzDez23DOJUfP.570h9ppXxlXxeQ9K2', 4, 6, 'Ariandi', 1, 1600704177);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `level`, `menu_id`) VALUES
(1, 1, 1),
(10, 1, 3),
(12, 1, 2),
(13, 1, 7),
(14, 1, 8),
(15, 1, 9),
(17, 1, 11),
(18, 1, 10),
(19, 2, 11),
(20, 1, 12),
(21, 1, 13),
(26, 2, 15),
(27, 4, 14),
(28, 2, 2),
(29, 4, 2),
(30, 3, 13),
(32, 3, 12),
(33, 2, 12),
(34, 2, 13),
(35, 3, 2),
(37, 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(12, 'Karyawan'),
(13, 'Penilaian'),
(14, 'Pegawai'),
(15, 'Kepala Divisi');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Kepala Divisi'),
(3, 'Wakil Ketua 2'),
(4, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `icon` text NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 0, 'Nanda', '', '', 0),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(9, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(15, 11, 'Data Nasabah', 'nasabah', 'fas fa-fw fa-book', 1),
(16, 7, 'Menabung', 'transaksi/tabung', 'fas fa-fw fa-book', 1),
(17, 10, 'Kategori', 'kategori', 'fas fa-fw fa-book', 1),
(19, 9, 'Laporan Tabung', 'laporan/tabung', 'fas fa-fw fa-book', 1),
(20, 7, 'Ambil', 'transaksi/ambil', 'fas fa-fw fa-book', 1),
(21, 9, 'Laporan Ambil', 'laporan/ambil', 'fas fa-fw fa-book', 1),
(24, 1, 'Data', 'admin/data', 'fas fa-fw fa-book', 1),
(25, 7, 'Jual', 'transaksi/jual', 'fas fa-fw fa-book', 1),
(27, 9, 'Laporan Jual', 'laporan/jual', 'fas fa-fw fa-book', 1),
(28, 13, 'Penilaian', 'penilaian', 'fas fa-fw fa fa-paper-plane', 1),
(31, 12, 'Karyawan', 'karyawan', 'fas fa-fw fa-address-card', 1),
(32, 12, 'Jabatan', 'jabatan', 'fas fa-fw fa-bookmark', 1),
(33, 12, 'Divisi', 'divisi', 'fas fa-fw fa-briefcase', 1),
(37, 15, 'Dashboard', 'kepaladivisi', 'fas fa-fw fa-tachometer-alt', 1),
(38, 15, 'Pegawai', 'kepaladivisi/pegawai', 'fas fa-fw fa-address-card', 1),
(39, 15, 'Penilaian', 'kepaladivisi/penilaian', 'fas fa-fw fa fa-paper-plane', 1),
(40, 15, 'Data Nilai', 'kepaladivisi/data', 'fas fa-fw fa-book', 1),
(41, 13, 'Kategori Penilaian', 'penilaian/kategori', 'fas fa-fw fa-book', 1),
(46, 14, 'Dashboard', 'pegawai', 'fas fa-fw fa-tachometer-alt', 1),
(50, 14, 'Overview', 'pegawai/overview', 'fas fa-fw fa-chart-area', 1),
(51, 14, 'Nilai', 'pegawai/nilai', 'fas fa-fw fa-book', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_detail`
--
ALTER TABLE `nilai_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nilai_detail`
--
ALTER TABLE `nilai_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai_detail`
--
ALTER TABLE `nilai_detail`
  ADD CONSTRAINT `nilai_detail_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `karyawan` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
