-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2020 at 05:08 PM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id` int(11) NOT NULL,
  `nama_ekstrakurikuler` varchar(255) NOT NULL,
  `kode_ekstrakurikuler` varchar(120) NOT NULL,
  `pembimbing` varchar(255) NOT NULL,
  `jadwal` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id`, `nama_ekstrakurikuler`, `kode_ekstrakurikuler`, `pembimbing`, `jadwal`) VALUES
(7, 'Ikatan Pemudi Nahdlatul Ulama', 'IPNU', 'Muhammad Rifqi Fauzi', 'Setiap hari Senin Pukul 14.24 - 15.10'),
(8, 'PRAMUKA', 'PRAMUKA', 'RIZAL FATHUR RAHMAN', 'Setiap hari Sabtu Pukul 14.00 - 15.00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'WALI_KELAS_XII', 'WALI KELAS XII SMK MA\'ARIF NU 1 AJIBARANG'),
(3, 'WKS4', 'WKS4 OK'),
(4, 'WKS3', ''),
(5, 'Siswa', 'Siswa SMK MA\'ARIF NU 1 AJIBARANG'),
(6, 'Guru', 'Guru SMK MA\'ARIF NU 1 AJIBARANG'),
(7, 'WALI_KELAS_X', 'WALI KELAS X SMK MA\'ARIF NU 1 AJIBARANG'),
(8, 'WALI_KELAS_XI', 'WALI KELAS XI SMK MA\'ARIF NU 1 AJIBARANG'),
(10, 'Pembina_Ekskul', 'Pembina Ekskul SMK MA\'ARIF NU 1 AJIBARANG'),
(11, 'Kajur', 'Kepala Jurusan'),
(13, 'Produktif', 'Guru Produktif SMK MA\'ARIF NU 1 AJIBARANG'),
(14, 'NA', 'Normatif Adaptif'),
(15, 'BK', 'Guru BK SMK MA\'ARIF NU 1 AJIBARANG'),
(16, 'members', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `kode_mapel` varchar(50) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama_guru`, `kode_mapel`, `kelas`, `role`) VALUES
(6, '122134242314', 'Admin istrator', 'Biologi', 'X RPL', 'NA'),
(8, '1344622131', 'Muhammad Rifqi Fauzi', 'KJD', 'X TKJ', 'Produktif');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` varchar(6) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `kajur` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `nama_jurusan`, `kajur`) VALUES
('RPL', 'Teknik Komputer dan Jaringan', 'Admin istrator'),
('TAV', 'Teknik Audio Video', 'KAJUR TAV'),
('TBSM', 'Teknik Bisnis dan Sepeda Motor', 'KAJUR TBSM'),
('TKJ', 'Teknik Komputer dan Jaringan', 'Muhammad Rifqi Fauzi'),
('TKRO', 'Teknik Kendaraan RIngan Otomotif', 'RIZAL RAHMAN');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `tingkat` varchar(3) NOT NULL,
  `jurusan` varchar(15) NOT NULL,
  `tag` varchar(2) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `tingkat`, `jurusan`, `tag`, `kelas`) VALUES
(1, 'X', 'RPL', 'A', 'X RPL A'),
(2, 'X', 'RPL', 'B', 'X RPL B'),
(3, 'X', 'TKJ', 'C', 'X TKJ C'),
(4, 'XI', 'RPL', 'A', 'XI RPL A'),
(5, 'X', 'TBSM', 'A', 'X TBSM A'),
(6, 'XI', 'TBSM', 'A', 'XI TBSM C');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page`
--

CREATE TABLE `landing_page` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `is_tampil` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landing_page`
--

INSERT INTO `landing_page` (`id`, `judul`, `keterangan`, `is_tampil`) VALUES
(3, 'Selamat Datang Di  SMK MAARIF NU 1 AJIBARANG', 'lorem200', 1),
(5, 'Judul Informasi', '<blockquote class=\"blockquote\"><p>asdadas</p></blockquote><h3 style=\"text-align: justify; \"><b><u style=\"background-color: rgb(255, 255, 0);\"><br></u></b></h3><table class=\"table table-bordered\"><tbody><tr><td>mo</td><td>nam</td><td>afsd</td><td>dfsfsd</td><td>sdfsdf</td></tr><tr><td>dfsdfdsf</td><td>sdfsfs</td><td>fsdfsdfds</td><td>sdfsd</td><td>sdfdsf</td></tr><tr><td>dsfsdf</td><td>sdfsd</td><td>sdfsdf</td><td>sdfd</td><td>sdfsdf</td></tr><tr><td>sdfsdfs</td><td>dsfsdf</td><td>sdfds</td><td>sdfsdf</td><td>dsfsdf</td></tr></tbody></table><ol><li style=\"text-align: justify;\"><b><u style=\"background-color: rgb(255, 255, 0);\">sfdf</u></b></li><li style=\"text-align: justify;\"><b><u style=\"background-color: rgb(255, 255, 0);\">dsad</u></b></li><li style=\"text-align: justify;\"><b><u style=\"background-color: rgb(255, 255, 0);\">d</u></b></li><li style=\"text-align: justify;\"><b><u style=\"background-color: rgb(255, 255, 0);\">asd</u></b></li><li style=\"text-align: justify;\"><b><u style=\"background-color: rgb(255, 255, 0);\">sa</u></b></li><li style=\"text-align: justify;\"><b><u style=\"background-color: rgb(255, 255, 0);\">sadasd</u></b></li></ol><p style=\"text-align: justify;\"><br></p><ul><li style=\"text-align: center;\"><b><u style=\"background-color: rgb(255, 255, 0);\">dsadsadedsadsaddaasd</u></b></li><li style=\"text-align: center;\"><b><u style=\"background-color: rgb(255, 255, 0);\">sadd</u></b></li><li style=\"text-align: center;\"><b><u style=\"background-color: rgb(255, 255, 0);\">ad</u></b></li><li style=\"text-align: center;\"><b><u style=\"background-color: rgb(255, 255, 0);\">as</u></b></li><li style=\"text-align: center;\"><b><u style=\"background-color: rgb(255, 255, 0);\">d</u></b></li></ul><p><br></p>', 1),
(6, 'Pembiayaan Seklah', '<p>Hahahaha</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(11, '::1', 'rizal@gmail.com', 1606651811);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel` varchar(30) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kode_jurusan` varchar(6) NOT NULL,
  `kode_kelas` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kode_mapel`, `nama_mapel`, `kode_jurusan`, `kode_kelas`) VALUES
('Biologi', 'IPA', 'TKRO', 'X'),
('KJD', 'Komputer dan Jaringan Dasar', 'TKJ', 'X'),
('MTK X', 'Matematika', 'RPL', 'X');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  `icon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `url`, `icon`) VALUES
(1, 'Home', '', '<i class=\"material-icons nav__icon\">home</i>'),
(2, 'Kesiswaan', 'frontend/informasi/kesiswaan', '<i class=\"material-icons nav__icon\">dashboard</i>'),
(9, 'Struktur', 'frontend/informasi/struktur', '<i class=\"material-icons nav__icon\">leaderboard</i>'),
(10, 'Ekstrakurikuler', 'frontend/informasi/ekstrakurikuler', '<i class=\"material-icons nav__icon\">rule</i>'),
(14, 'Profil', 'frontend/siswa/', '<i class=\"material-icons nav__icon\">person</i>');

-- --------------------------------------------------------

--
-- Table structure for table `orangtua`
--

CREATE TABLE `orangtua` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `is_wali` int(1) NOT NULL,
  `nis` int(7) NOT NULL,
  `foto` text DEFAULT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orangtua`
--

INSERT INTO `orangtua` (`id`, `nama`, `telepon`, `alamat`, `is_wali`, `nis`, `foto`, `pekerjaan`) VALUES
(5, 'Ahmad SObari', '7318923712983', 'kalsdajsjdl', 0, 1810867, NULL, 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `profil_kesiswaan`
--

CREATE TABLE `profil_kesiswaan` (
  `id` int(11) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_kesiswaan`
--

INSERT INTO `profil_kesiswaan` (`id`, `judul`, `url`, `keterangan`, `gambar`) VALUES
(1, 'Struktur Organisasi', 'kesiswaan', '                        <p><b>Profil Kesiswaan</b></p>                    ', '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_tgl_lahir` varchar(150) NOT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kelas` varchar(8) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `foto_siswa` text NOT NULL,
  `lulus` int(1) NOT NULL,
  `point` int(3) NOT NULL,
  `telepon_siswa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nisn`, `nama_siswa`, `tempat_tgl_lahir`, `jenis_kelamin`, `agama`, `kelas`, `alamat_siswa`, `foto_siswa`, `lulus`, `point`, `telepon_siswa`) VALUES
('1810867', '5645645646545', 'Ayu Kusumaningrum', 'Banyumas, 13 Mei 2003', 2, 'ISLAM', 'X TKJ C', 'kjdasjdklaldskjjl', 'Tdt7X4Gq.jpg', 0, 100, '7812738718273');

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`id`, `judul`, `url`, `keterangan`, `gambar`) VALUES
(1, 'Struktur Organisasi', 'strukturOrganisasi', 'lorem', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$ANMk6nxXtwdstNFV99z87.TPbe/D99V8QfZusSv/3hIjwuy8jWpC.', 'admin@admin.com', NULL, '', NULL, NULL, NULL, '695f26fdcbc7f6639b3a0ba297f980c919a2bf2f', '$2y$10$9gwT7dOZax4tp..VQwLhk.b5SUMyKd2UQpdy8iABjyc8kCUh1Z71K', 1268889823, 1606724563, 1, 'Admin', 'istrator', NULL, NULL),
(3, '::1', NULL, '$2y$10$GZmsBoLH9fgq9Y5c35pXmOj8BPvWDMzrYl6MyXXEF.wuXrNRfL4bu', 'p@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1603258118, NULL, 1, 'p', 'p', NULL, NULL),
(8, '::1', NULL, '$2y$10$1U.9su.yyN/liortSHehGuEbjTGKciyR4EL/TDIpGzS5vGi1iCD8m', 'rizal@gmail.com', NULL, NULL, NULL, NULL, NULL, 'e80f0d2119b9144c8020088fa7a4b111cd4e1333', '$2y$10$XLgudVO9ptz5P1hR1nsDbu9PImyGCe6FLY4UxbLGrVlikWjsclF0C', 1605591814, 1606562053, 1, 'RIZAL', 'FATHUR RAHMAN', NULL, NULL),
(9, '::1', NULL, '$2y$10$yqYMGPjbvbVIUvNq/UBJF.yjsdQviZThU1ow5OmSY4gg7et5bGS.2', 'rifqi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1605592082, NULL, 1, 'Muhammad Rifqi', 'Fauzi', NULL, NULL),
(10, '::1', NULL, '$2y$10$gtbT9IxMcXUWX8ZCXnPsVuUjYdZiZljtnxgYqUkTuvpKwDp5hRw9q', 'kajurtsm@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1606094118, NULL, 0, 'KAJUR', 'TBSM', NULL, NULL),
(11, '::1', NULL, '$2y$10$OZnGZuk4xB5EhEUMLfDnDONMg4/zYe/NNdDpyc7pV1zTl1LIedpU2', 'kajurtav@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1606094195, NULL, 0, 'KAJUR', 'TAV', NULL, NULL),
(13, '::1', NULL, '$2y$10$/gR6/g7iwLqz.Tyl7WL7redcqbGVeu2gAzL154SNhBLfIwOLQFZDG', 'solih@gmail.com', NULL, NULL, NULL, NULL, NULL, '0e1fb50914bd435844b7a98a28d5fe6a80581399', '$2y$10$EBSiofkQToSzZZRpoQbiQeJpPTMZcs2VKbSzwzTOxdkZ3gwxs8l1G', 1606099852, 1606560582, 1, 'SOLIH INDRA', 'RAMDANI', NULL, NULL),
(14, '::1', NULL, '$2y$10$uMA6Ysse1bVqhDq3RBsqBOt8HEXlikDkuT4Fj0RRWh0NeSTcUO6eG', 'felix@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1606100069, NULL, 1, 'Felix', 'Irwanti', NULL, NULL),
(15, '::1', NULL, '$2y$10$JivlTcKNlD389pwRv5pK0.3u99KzdJxxhMzoVJZdtIjbSLc2CH0Wy', 'ayu@gmail.com', NULL, NULL, NULL, NULL, NULL, '2a8017188ab14de723ec17f43094a62cb043dc19', '$2y$10$2x4kwon5.mRF/MnaEZJILuAsN4eOLZbWrxOIMWgBwvQUlNFM1st8m', 1606627784, 1606725201, 1, 'Ayu', 'Kusumaningrum', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(29, 1, 1),
(30, 1, 3),
(31, 1, 6),
(32, 1, 11),
(49, 3, 2),
(50, 3, 6),
(51, 3, 11),
(52, 3, 14),
(105, 8, 10),
(106, 8, 16),
(85, 9, 6),
(86, 9, 10),
(87, 9, 11),
(88, 9, 13),
(89, 9, 16),
(91, 10, 11),
(92, 10, 16),
(94, 11, 11),
(95, 11, 16),
(100, 13, 5),
(101, 13, 16),
(103, 14, 5),
(104, 14, 16),
(108, 15, 5),
(109, 15, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kelas` (`kelas`);

--
-- Indexes for table `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_kesiswaan`
--
ALTER TABLE `profil_kesiswaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orangtua`
--
ALTER TABLE `orangtua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profil_kesiswaan`
--
ALTER TABLE `profil_kesiswaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
