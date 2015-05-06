-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2015 at 01:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `famtree`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
`ID_AKUN` int(11) NOT NULL,
  `ID_PRIVILAGE` int(11) DEFAULT NULL,
  `ID_ORANG` varchar(16) DEFAULT NULL,
  `USERNAME` varchar(8) DEFAULT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL,
  `STATUS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biografi`
--

CREATE TABLE IF NOT EXISTS `biografi` (
`ID_BIOGRAFI` int(11) NOT NULL,
  `TGL_EVENT` date NOT NULL,
  `FOTO_EVENT` varchar(500) DEFAULT NULL,
  `DESKRIPSI` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
`ID_KOTA` int(11) NOT NULL,
  `ID_PROVINSI` int(11) DEFAULT NULL,
  `NAMA_KOTA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`ID_LOG` int(11) NOT NULL,
  `ID_ORANG` varchar(16) DEFAULT NULL,
  `TGL_LOG` date DEFAULT NULL,
  `AKTIVITAS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memiliki`
--

CREATE TABLE IF NOT EXISTS `memiliki` (
  `ID_ORANG` varchar(16) NOT NULL,
  `ID_BIOGRAFI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mempunyai`
--

CREATE TABLE IF NOT EXISTS `mempunyai` (
  `ID_ORANG` varchar(16) NOT NULL,
  `ID_PENDIDIKAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE IF NOT EXISTS `orang` (
  `ID_ORANG` varchar(16) NOT NULL,
  `ID_KOTA` int(11) DEFAULT NULL,
  `NIK` varchar(16) DEFAULT NULL,
  `NAMA_LENGKAP` varchar(100) NOT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `KOTA_LAHIR` varchar(50) NOT NULL,
  `NEGARA_LAHIR` varchar(50) NOT NULL,
  `GOL_DARAH` varchar(2) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) NOT NULL,
  `ALAMAT` varchar(100) NOT NULL,
  `NO_TELP` varchar(15) DEFAULT NULL,
  `PENDIDIKAN` varchar(50) DEFAULT NULL,
  `STATUS_KEPENDUDUKAN` varchar(50) NOT NULL,
  `KEWARGANEGARAAN` varchar(50) NOT NULL,
  `STATUS_PERKAWINAN` varchar(30) NOT NULL,
  `TGL_PERKAWINAN` date DEFAULT NULL,
  `ANAK_KE` varchar(2) NOT NULL,
  `STATUS_KEHIDUPAN` char(1) NOT NULL,
  `NOMOR_PASSPORT` varchar(20) DEFAULT NULL,
  `FOTO` varchar(500) DEFAULT NULL,
  `TGL_DIMASUKKAN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`ID_ORANG`, `ID_KOTA`, `NIK`, `NAMA_LENGKAP`, `TGL_LAHIR`, `KOTA_LAHIR`, `NEGARA_LAHIR`, `GOL_DARAH`, `JENIS_KELAMIN`, `ALAMAT`, `NO_TELP`, `PENDIDIKAN`, `STATUS_KEPENDUDUKAN`, `KEWARGANEGARAAN`, `STATUS_PERKAWINAN`, `TGL_PERKAWINAN`, `ANAK_KE`, `STATUS_KEHIDUPAN`, `NOMOR_PASSPORT`, `FOTO`, `TGL_DIMASUKKAN`) VALUES
('000000100001', NULL, NULL, 'H Abdullah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:33:49'),
('000000200002', NULL, NULL, 'Hj. Siti Marijam', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:33:49'),
('100001210003', NULL, NULL, 'Siti Napsijah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:37:56'),
('100002120005', NULL, NULL, 'H. Abd. Kadir', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:38:41'),
('100002210004', NULL, NULL, 'Hj. Siti Zaenab', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:38:09'),
('100003110006', NULL, NULL, 'H. Ibrahim', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:41:14'),
('100003220007', NULL, NULL, 'Hj. Chalimah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:41:14'),
('100003220008', NULL, NULL, 'Wisye Chasiati', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:42:58'),
('100004110009', NULL, NULL, 'H. A. Manan', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:44:19'),
('100004220010', NULL, NULL, 'Patemah H.', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:44:19'),
('100004220011', NULL, NULL, 'Dewi Rahmah H', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:45:38'),
('100004220012', NULL, NULL, 'Fatemah H.', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:45:38'),
('100004220013', NULL, NULL, 'Asmah H.', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:46:21'),
('100005110014', NULL, NULL, 'H. M. Dahlan', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:49:29'),
('100005220015', NULL, NULL, 'H. Chodidjah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:49:29'),
('100006120017', NULL, NULL, 'K. H. Rais', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:51:11'),
('100006210016', NULL, NULL, 'Hj. Siti Fatimah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:51:11'),
('100007120019', NULL, NULL, 'H. Usman', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:52:36'),
('100007210018', NULL, NULL, 'H. St. Chadidjah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:52:36'),
('210201120021', NULL, NULL, 'H. Narzuki', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:54:58'),
('210201210020', NULL, NULL, 'Moenawaroh', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:55:26'),
('210202120023', NULL, NULL, 'Ismail', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:56:52'),
('210202210022', NULL, NULL, 'Musarofah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:57:32'),
('210203110024', NULL, NULL, 'Talkah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:59:08'),
('210203220025', NULL, NULL, 'Asparilina', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 08:59:08'),
('210204110026', NULL, NULL, 'Abdul Manap', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:03:48'),
('210204220027', NULL, NULL, 'Asmu''ah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:03:48'),
('210205110028', NULL, NULL, 'Abdul Kohar', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:06:22'),
('210206110029', NULL, NULL, 'Zawawi', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:06:39'),
('210207110030', NULL, NULL, 'Basuni', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:07:59'),
('210208120032', NULL, NULL, 'Abbas Rachman', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:09:25'),
('210208210031', NULL, NULL, 'Siti Fatchah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:09:25'),
('210209110033', NULL, NULL, 'Mochamad Zoun', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:11:30'),
('210210120035', NULL, NULL, 'H. A. Latief', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:12:30'),
('210210210034', NULL, NULL, 'Dewi Racmawati', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:12:30'),
('210211210036', NULL, NULL, 'Asia', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:13:09'),
('210212120038', NULL, NULL, 'Adnan', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:45:26'),
('210212210037', NULL, NULL, 'Siti Fatimah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:47:35'),
('210213110039', NULL, NULL, 'Mochamad Djaelan', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:14:14'),
('210213220040', NULL, NULL, 'Sijamah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:14:14'),
('210214110041', NULL, NULL, 'Mochamad Taufik', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 09:16:32'),
('320201110042', NULL, NULL, 'Djawahir', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 10:40:27'),
('320202120044', NULL, NULL, 'Sidik Martowardojo', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 10:42:01'),
('320202210043', NULL, NULL, 'Dewi Asijah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 10:41:45'),
('320203210045', NULL, NULL, 'Hindun', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 10:44:21'),
('320204210046', NULL, NULL, 'Siti Zahroh', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 10:45:49'),
('320204210047', NULL, NULL, 'Askan Ali', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-04 10:45:49'),
('320801110048', NULL, NULL, 'Ali Toha', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:22:38'),
('320801220049', NULL, NULL, 'Azizah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:22:38'),
('320802120051', NULL, NULL, 'H. Bariah Ali', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:26:58'),
('320802210050', NULL, NULL, 'Hj. Mafidi', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:26:58'),
('320803110052', NULL, NULL, 'H. Zawawi', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:29:03'),
('320803220053', NULL, NULL, 'Hj. Aisjah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:29:03'),
('320804120055', NULL, NULL, 'M. Ali', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:30:44'),
('320804210054', NULL, NULL, 'Rohmah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:30:44'),
('320805110056', NULL, NULL, 'Machfud', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:32:52'),
('320806110057', NULL, NULL, 'Jusuf', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:36:36'),
('320807110058', NULL, NULL, 'Abd Kohar', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:37:47'),
('320807220059', NULL, NULL, 'Rochana', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:37:47'),
('320808120061', NULL, NULL, 'Abu Bakar', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:39:01'),
('320808210060', NULL, NULL, 'Hindun', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:39:01'),
('321001120063', NULL, NULL, 'M. Jusuf', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:40:18'),
('321001210062', NULL, NULL, 'Siti Chodijah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:40:18'),
('321201210064', NULL, NULL, 'Djulaecha', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:43:52'),
('321202110065', NULL, NULL, 'Basuni', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:51:04'),
('321202220066', NULL, NULL, 'Zulaicha', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:51:04'),
('321301210067', NULL, NULL, 'Nikmah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:52:39'),
('321302120068', NULL, NULL, 'M. Machin', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:56:13'),
('321302220069', NULL, NULL, 'Majenah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:56:13'),
('321303110070', NULL, NULL, 'Ircham', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:58:24'),
('321303220071', NULL, NULL, 'A. Sulichah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 13:58:24'),
('321304120073', NULL, NULL, 'Kedap', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:14:06'),
('321304210072', NULL, NULL, 'Siti Maryam', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:14:06'),
('321305120075', NULL, NULL, 'Ismail', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:22:55'),
('321305210074', NULL, NULL, 'Atika', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:22:55'),
('321306120077', NULL, NULL, 'M. Yusuf', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:25:41'),
('321306210076', NULL, NULL, 'Ruchayah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:25:41'),
('321307120079', NULL, NULL, 'Didik S', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:29:31'),
('321307210078', NULL, NULL, 'Mulyasaroh', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:29:31'),
('321308210080', NULL, NULL, 'Siti Aminah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:31:37'),
('321309110081', NULL, NULL, 'Hidayat', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:31:37'),
('321310110082', NULL, NULL, 'Sobirin', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:33:44'),
('321310220083', NULL, NULL, 'Hermin S', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:34:19'),
('321311120085', NULL, NULL, 'Sugeng H', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:35:40'),
('321311210084', NULL, NULL, 'Latifah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:35:40'),
('430101120117', NULL, NULL, 'H. Janji', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:40:15'),
('430101210116', NULL, NULL, 'H. Fatimah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:40:15'),
('430102210118', NULL, NULL, 'Sri Jamila', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:43:16'),
('430103210119', NULL, NULL, 'Tri Irianti', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:43:16'),
('430104110120', NULL, NULL, 'Ismail', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:45:18'),
('430105210121', NULL, NULL, 'Siti Rahayu', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:45:18'),
('430106110122', NULL, NULL, 'M. Mujahir', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:46:02'),
('430107110123', NULL, NULL, 'Ainur Rofiq', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:46:02'),
('430201110124', NULL, NULL, 'M. Faiz', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:47:51'),
('430201120087', NULL, NULL, 'Johni Arifin', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:43:54'),
('430201210086', NULL, NULL, 'Nikmah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:43:54'),
('430201220125', NULL, NULL, 'Titik', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:47:51'),
('430202120089', NULL, NULL, 'Oesman Aly', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:45:45'),
('430202210088', NULL, NULL, 'Cholifah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-07 14:45:45'),
('430202210126', NULL, NULL, 'Rusdiana', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:48:13'),
('430203120091', NULL, NULL, 'Basuni', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:09:11'),
('430203210090', NULL, NULL, 'Zulaichan', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:09:11'),
('430204120093', NULL, NULL, 'Abi Sudjai', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:11:21'),
('430204210092', NULL, NULL, 'Chotuah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:11:21'),
('43020511094', NULL, NULL, 'Mansur', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:12:28'),
('430205220095', NULL, NULL, 'Kuspiana', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:12:28'),
('43020611096', NULL, NULL, 'Affandi', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:13:08'),
('430207120098', NULL, NULL, 'Rudi S', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:16:42'),
('430207210097', NULL, NULL, 'Hindun E', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:16:42'),
('430208110099', NULL, NULL, 'Arifin', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:17:27'),
('430208220100', NULL, NULL, 'July', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:17:27'),
('430301210127', NULL, NULL, 'R. Rosmala', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:51:28'),
('430302110129', NULL, NULL, 'Zulfian A', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:57:03'),
('430302120128', NULL, NULL, 'A. Zani', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:51:28'),
('430303110131', NULL, NULL, 'Abdul Ro''uf', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:58:42'),
('430303220130', NULL, NULL, 'Eka Mamiri', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:57:03'),
('430304120133', NULL, NULL, 'Sony Bambang', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:01:36'),
('430304210132', NULL, NULL, 'Anik', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:01:36'),
('430305210134', NULL, NULL, 'Intan', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:04:05'),
('430306120135', NULL, NULL, 'Heri', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:04:05'),
('430306210136', NULL, NULL, 'Lusiana', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:07:58'),
('430307110137', NULL, NULL, 'Elvis', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:07:58'),
('430308210138', NULL, NULL, 'Dian', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:09:45'),
('430309210139', NULL, NULL, 'Mutiah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:09:45'),
('430401110101', NULL, NULL, 'M. Taufiq', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:18:17'),
('430401120141', NULL, NULL, 'Sugeng', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:10:56'),
('430401210140', NULL, NULL, 'Nadiyfah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:10:56'),
('430401220102', NULL, NULL, 'Silvia', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:18:17'),
('430402110103', NULL, NULL, 'Abd Rahman', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:22:40'),
('430402110142', NULL, NULL, 'Acmad Ali', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:18:11'),
('430402210143', NULL, NULL, 'Nur Fitri', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:18:11'),
('430403120105', NULL, NULL, 'Subakti', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:23:54'),
('430403210104', NULL, NULL, 'Rochayah', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:23:54'),
('430404110106', NULL, NULL, 'Sujono', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:28:19'),
('430404110144', NULL, NULL, 'Ibrahim Ali', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:59:17'),
('430405110145', NULL, NULL, 'Abd Azis', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 09:59:17'),
('430405210107', NULL, NULL, 'Afifa', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:29:08'),
('430406110108', NULL, NULL, 'M. Rajab', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:29:08'),
('430407120110', NULL, NULL, 'M. Munif', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:29:52'),
('430407210109', NULL, NULL, 'Nuarini', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:29:52'),
('430408110111', NULL, NULL, 'Syafril', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:31:22'),
('430409210112', NULL, NULL, 'Arsyad', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:31:22'),
('430410210113', NULL, NULL, 'Rosmala Dewi', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:33:13'),
('430411110114', NULL, NULL, 'Agus Alfian', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:33:13'),
('430412110115', NULL, NULL, 'Andri', NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, '2015-04-08 08:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `privilage`
--

CREATE TABLE IF NOT EXISTS `privilage` (
`ID_PRIVILAGE` int(11) NOT NULL,
  `JENIS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
`ID_PROVINSI` int(11) NOT NULL,
  `NAMA_PROVINSI` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE IF NOT EXISTS `relasi` (
`ID_RELASI` int(11) NOT NULL,
  `ID_ORANG` varchar(16) DEFAULT NULL,
  `ID_ORTU` varchar(16) DEFAULT NULL,
  `ID_PASANGAN` varchar(16) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`ID_RELASI`, `ID_ORANG`, `ID_ORTU`, `ID_PASANGAN`) VALUES
(1, '000000100001', NULL, '000000200002'),
(2, '100002210004', '000000100001', '100002120005'),
(3, '100003110006', '000000100001', '100003220007'),
(4, '100003110006', '000000100001', '100003220008'),
(5, '100004110009', '000000100001', '100004220010'),
(6, '100004110009', '000000100001', '100004220011'),
(7, '100004110009', '000000100001', '100004220012'),
(8, '100004110009', '000000100001', '100004220013'),
(9, '100005110014', '000000100001', '100005220015'),
(10, '100006210016', '000000100001', '100006120017'),
(11, '100007210018', '000000100001', '100007120019'),
(12, '210201210020', '100002120005', '210201120021'),
(13, '210202210022', '100002120005', '210202120023'),
(14, '210203110024', '100002120005', '210203220025'),
(15, '210204110026', '100002120005', '210204220027'),
(16, '210205110028', '100002120005', NULL),
(17, '210206110029', '100002120005', NULL),
(18, '210207110030', '100002120005', NULL),
(19, '210208210031', '100002120005', '210208120032'),
(20, '210209110033', '100002120005', NULL),
(21, '210210210034', '100002120005', '210210120035'),
(22, '210211210036', '100002120005', NULL),
(23, '210213110039', '100002120005', '210213220040'),
(24, '210214110041', '100002120005', NULL),
(25, '320201110042', '210202120023', NULL),
(26, '320202210043', '210202120023', '320202120044'),
(27, '320203210045', '210202120023', NULL),
(28, '320203210045', '210202120023', '320204210047'),
(29, '320801110048', '210208120032', '320801220049'),
(30, '320802210050', '210208120032', '320802120051'),
(31, '320803110052', '210208120032', '320803220053'),
(32, '320804210054', '210208120032', '320804120055'),
(33, '320805110056', '210208120032', NULL),
(34, '320806110057', '210208120032', NULL),
(35, '320807110058', '210208120032', '320807220059'),
(36, '320808210060', '210208120032', '320808120061'),
(37, '321001210062', '210210120035', '321001120063'),
(38, '210212210037', '100002120005', '210212120038'),
(39, '321201210064', '210212120038', NULL),
(40, '321202110065', '210212120038', '321202220066'),
(41, '321301210067', '210213110039', NULL),
(42, '321302120068', '210213110039', '321302220069'),
(43, '321303110070', '210213110039', '321303220071'),
(44, '321304210072', '210213110039', '321304120073'),
(45, '321305210074', '210213110039', '321305120075'),
(46, '321306210076', '210213110039', '321306120077'),
(47, '321307210078', '210213110039', '321307120079'),
(48, '321308210080', '210213110039', NULL),
(49, '321309110081', '210213110039', NULL),
(50, '321310110082', '210213110039', '321310220083'),
(51, '321311210084', '210213110039', '321311120085'),
(52, '430201210086', '320202120044', '430201120087'),
(53, '430202210088', '320202120044', '430202120089'),
(54, '430203210090', '320202120044', '430203120091');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pendidikan`
--

CREATE TABLE IF NOT EXISTS `riwayat_pendidikan` (
`ID_PENDIDIKAN` int(11) NOT NULL,
  `JENJANG` varchar(100) NOT NULL,
  `JURUSAN` varchar(100) DEFAULT NULL,
  `KOTA` varchar(100) NOT NULL,
  `NEGARA` varchar(100) NOT NULL,
  `GELAR` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
 ADD PRIMARY KEY (`ID_AKUN`), ADD KEY `FK_RELATIONSHIP_8` (`ID_ORANG`), ADD KEY `FK_RELATIONSHIP_9` (`ID_PRIVILAGE`);

--
-- Indexes for table `biografi`
--
ALTER TABLE `biografi`
 ADD PRIMARY KEY (`ID_BIOGRAFI`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`ID_KOTA`), ADD KEY `FK_RELATIONSHIP_3` (`ID_PROVINSI`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`ID_LOG`), ADD KEY `FK_RELATIONSHIP_7` (`ID_ORANG`);

--
-- Indexes for table `memiliki`
--
ALTER TABLE `memiliki`
 ADD PRIMARY KEY (`ID_ORANG`,`ID_BIOGRAFI`), ADD KEY `FK_MEMILIKI2` (`ID_BIOGRAFI`);

--
-- Indexes for table `mempunyai`
--
ALTER TABLE `mempunyai`
 ADD PRIMARY KEY (`ID_ORANG`,`ID_PENDIDIKAN`), ADD KEY `FK_MEMPUNYAI2` (`ID_PENDIDIKAN`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
 ADD PRIMARY KEY (`ID_ORANG`), ADD KEY `FK_RELATIONSHIP_4` (`ID_KOTA`);

--
-- Indexes for table `privilage`
--
ALTER TABLE `privilage`
 ADD PRIMARY KEY (`ID_PRIVILAGE`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`ID_PROVINSI`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
 ADD PRIMARY KEY (`ID_RELASI`), ADD KEY `FK_RELATIONSHIP_1` (`ID_PASANGAN`), ADD KEY `FK_RELATIONSHIP_10` (`ID_ORANG`), ADD KEY `FK_RELATIONSHIP_11` (`ID_ORTU`);

--
-- Indexes for table `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
 ADD PRIMARY KEY (`ID_PENDIDIKAN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
MODIFY `ID_AKUN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `biografi`
--
ALTER TABLE `biografi`
MODIFY `ID_BIOGRAFI` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
MODIFY `ID_KOTA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `ID_LOG` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privilage`
--
ALTER TABLE `privilage`
MODIFY `ID_PRIVILAGE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
MODIFY `ID_PROVINSI` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `relasi`
--
ALTER TABLE `relasi`
MODIFY `ID_RELASI` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
MODIFY `ID_PENDIDIKAN` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`ID_ORANG`) REFERENCES `orang` (`ID_ORANG`),
ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_PRIVILAGE`) REFERENCES `privilage` (`ID_PRIVILAGE`);

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_PROVINSI`) REFERENCES `provinsi` (`ID_PROVINSI`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_ORANG`) REFERENCES `orang` (`ID_ORANG`);

--
-- Constraints for table `memiliki`
--
ALTER TABLE `memiliki`
ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_ORANG`) REFERENCES `orang` (`ID_ORANG`),
ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`ID_BIOGRAFI`) REFERENCES `biografi` (`ID_BIOGRAFI`);

--
-- Constraints for table `mempunyai`
--
ALTER TABLE `mempunyai`
ADD CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`ID_ORANG`) REFERENCES `orang` (`ID_ORANG`),
ADD CONSTRAINT `FK_MEMPUNYAI2` FOREIGN KEY (`ID_PENDIDIKAN`) REFERENCES `riwayat_pendidikan` (`ID_PENDIDIKAN`);

--
-- Constraints for table `orang`
--
ALTER TABLE `orang`
ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_KOTA`) REFERENCES `kota` (`ID_KOTA`);

--
-- Constraints for table `relasi`
--
ALTER TABLE `relasi`
ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_PASANGAN`) REFERENCES `orang` (`ID_ORANG`),
ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`ID_ORANG`) REFERENCES `orang` (`ID_ORANG`),
ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`ID_ORTU`) REFERENCES `orang` (`ID_ORANG`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
