-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 06:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cekresi`
--

-- --------------------------------------------------------

--
-- Table structure for table `expedisi`
--

CREATE TABLE `expedisi` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expedisi`
--

INSERT INTO `expedisi` (`id`, `kode`, `nama`) VALUES
(1, 'jne', 'JNE'),
(2, 'jnt', 'J&T'),
(3, 'pos', 'POS Indonesia'),
(4, 'sicepat', 'SICEPAT'),
(5, 'sap', 'SAP Express'),
(6, 'idx', 'IDX Express'),
(7, 'wahana', 'WAHANA'),
(8, 'rpx', 'RPX Express'),
(9, 'rex', 'REX'),
(10, 'dpex', 'DPEX'),
(11, 'tiki', 'TIKI'),
(12, 'lionparcel', 'LION PARCEL'),
(13, 'jx', 'JX Express'),
(14, 'anteraja', 'ANTERAJA'),
(15, 'shipper', 'SHIPPER');

-- --------------------------------------------------------

--
-- Table structure for table `grup`
--

CREATE TABLE `grup` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grup`
--

INSERT INTO `grup` (`id`, `nama`) VALUES
(1, 'PUPUT'),
(2, 'YENI');

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE `marketing` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketing`
--

INSERT INTO `marketing` (`id`, `nama`, `grup`) VALUES
(1, 'ADE / ANDUNG', 1),
(2, 'ALFAN GUNAWAN', 1),
(3, 'CATUR ', 1),
(4, 'IRFAN', 1),
(5, 'SYUKRON', 1),
(6, 'TEGUHSAN', 1),
(7, 'ABLAR', 1),
(8, 'AQIQI', 1),
(9, 'DANI', 1),
(10, 'MUTIARA', 1),
(11, 'SAEFULLOH', 1),
(12, 'TEGUH ARIF', 1),
(13, 'ANDRI', 1),
(14, 'BAGAS', 1),
(15, 'DARSINO', 1),
(16, 'SABIT', 1),
(17, 'SITI', 1),
(18, 'TRIWIDODO', 1),
(19, 'ARDI', 1),
(20, 'CAHYADI', 1),
(21, 'GUNAWAN', 1),
(22, 'SARMAN', 1),
(23, 'SAEFUL', 1),
(24, 'TAFID', 1),
(25, 'ABIDIN', 1),
(26, 'ADITYA', 1),
(27, 'AJAT', 1),
(28, 'AJI', 1),
(29, 'AJI MARKET', 1),
(30, 'AKMAL', 1),
(31, 'ALFAT', 1),
(32, 'ALFIN', 1),
(33, 'ANDIKA', 1),
(34, 'ANDITIA', 1),
(35, 'ANDUNG', 1),
(36, 'APIP', 1),
(37, 'APRIYANTO', 1),
(38, 'ARDHI', 1),
(39, 'ARIF', 1),
(40, 'ARIFIN', 1),
(41, 'ARYA', 1),
(42, 'ASEP', 1),
(43, 'AWANG', 1),
(44, 'BAYU', 1),
(45, 'BRIAN', 1),
(46, 'CARSONO', 1),
(47, 'CATUR', 1),
(48, 'DANU', 1),
(49, 'DEDI', 1),
(50, 'DESMAN', 1),
(51, 'DESTI', 1),
(52, 'DIAN H', 1),
(53, 'DIKA', 1),
(54, 'EKO', 1),
(55, 'EKO MARKET', 1),
(56, 'ERI. S', 1),
(57, 'FAJAR', 1),
(58, 'FATHUR', 1),
(59, 'FIRMAN', 1),
(60, 'KHARIS', 1),
(61, 'HENDRI', 1),
(62, 'HERI', 1),
(63, 'IBNU', 1),
(64, 'IJUN', 1),
(65, 'IKY', 1),
(66, 'IMAM', 1),
(67, 'ISMO', 1),
(68, 'IWAN SUBHI', 1),
(69, 'JAJA', 1),
(70, 'JHON', 1),
(71, 'LASTRI', 1),
(72, 'LATIF', 1),
(73, 'LULU', 1),
(74, 'MAFTUHIN', 1),
(75, 'MIFTHA', 1),
(76, 'MUSTOLIH', 1),
(77, 'PENDI', 1),
(78, 'PUJI', 1),
(79, 'RAJIMAN', 1),
(80, 'RIA', 1),
(81, 'RIDWAN', 1),
(82, 'RITA', 1),
(83, 'RIZIK', 1),
(84, 'ROBY', 1),
(85, 'RONI', 1),
(86, 'SAEFULOH', 1),
(87, 'SARIFUDIN', 1),
(88, 'SARMAN MARKET', 1),
(89, 'SHINTYA', 1),
(90, 'SIGIT', 1),
(91, 'SILIS', 1),
(92, 'SOFIAR', 1),
(93, 'SUHAD', 1),
(94, 'SUPRI', 1),
(95, 'TEGUH WIBOWO', 1),
(96, 'TEGUHSAN MARKET', 1),
(97, 'TRESNA', 1),
(98, 'TRI WIDODO', 1),
(99, 'TURYANTO', 1),
(100, 'TURYATMAN', 1),
(101, 'YOGA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rekap`
--

CREATE TABLE `rekap` (
  `id` int(11) NOT NULL,
  `id_trx` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `konsumen` varchar(255) NOT NULL,
  `id_marketing` int(255) NOT NULL,
  `obat` varchar(255) NOT NULL,
  `resi` varchar(255) NOT NULL,
  `id_expedisi` int(11) NOT NULL,
  `status_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `konsumen`, `id_marketing`, `obat`, `resi`, `id_expedisi`, `status_transaksi`) VALUES
(1, '2021-09-01', 'YANDRI ', 55, 'Samurago', 'JP1054227892', 2, 0),
(2, '2021-09-01', 'Adi', 76, 'gang jie ', 'JP1961141993', 2, 0),
(3, '2021-09-01', 'miftah', 42, 'SLP+', '001443378170', 4, 0),
(4, '2021-09-01', 'Asna Kamarul Arifin', 8, 'Gangjie+sm', 'JP9245598578', 2, 0),
(5, '2021-09-01', 'Magfiroh', 47, 'Hb', 'JP7067257875', 2, 0),
(6, '2021-09-01', 'Lely Lasyanti', 86, '1Cntlss, 1Mrc', '001443375591', 4, 0),
(9, '2021-09-01', 'YUNUS', 15, 'Ambejoss 2 Botol', 'JP8428140134', 2, 0),
(10, '2021-09-01', 'Pak Agus', 71, 'OKK', 'JP3002595778', 2, 0),
(11, '2021-09-01', 'Nur Elmi', 18, 'DTPR', 'JP4202077574', 2, 0),
(12, '2021-09-01', 'gigin ginanjar', 84, 'STAMIN,CNGPLS', 'JP2481308845', 2, 0),
(13, '2021-09-01', 'Jo. Sairmaly', 31, 'GJ + GALGIN ', 'JP8527802682', 2, 0),
(14, '2021-09-01', 'kinah', 70, 'gurah suara', 'JNAC-0020152810', 1, 0),
(15, '2021-09-01', 'gesbol', 44, 'MDBC', 'JNAC-0020169923', 1, 0),
(16, '2021-09-01', 'Suprihatin', 23, 'Cengplus', 'JP3309039937', 2, 0),
(17, '2021-09-01', 'Ahmad Faisal', 84, 'Cengplus', 'JP7777450307', 2, 0),
(18, '2021-09-01', 'joni trisyanto', 36, 'Cengplus', 'JP9140408960', 2, 0),
(19, '2021-09-01', 'Rinto ferdian', 7, 'Madebic ', 'JP5503170428', 2, 0),
(20, '2021-09-01', 'Mirna Bastar', 71, 'KS ,TY', 'JNAC-0020152590', 1, 0),
(21, '2021-09-01', 'Zhufy Juanditra', 31, 'OS', 'JP7165163409', 2, 0),
(22, '2021-09-01', 'Herman', 62, 'Detopat, sm ', '002739172025', 4, 0),
(23, '2021-09-01', 'M Riki Mardiansyah', 84, 'GRH', 'JP0889206128 ', 2, 0),
(24, '2021-09-01', 'Indra Budiman.', 86, 'OS', '002739246313', 4, 0),
(36, '2021-09-01', 'Sudarmanto', 66, 'OS, Kapsul BD, HB', 'JP6330373476', 2, 0),
(37, '2021-09-01', 'eva rominar', 24, 'OS, Kapsul BD, HB', 'JNAC-0020172330', 1, 0),
(38, '2021-09-01', 'Kafrawi', 100, 'OS, Kapsul BD, HB', 'JNAC-0020173376', 1, 0),
(39, '2021-09-01', 'Tatang Suparman', 28, 'CHUMARIZ', 'JP1427592219', 2, 0),
(40, '2021-09-01', 'Wahyu abdhi ', 28, 'Ceng plus', 'JP4168369442', 2, 0),
(41, '2021-09-01', 'Audilia', 55, 'Madebic oil', 'JP5980604863', 2, 0),
(42, '2021-09-01', 'Florensius Fahik Mau', 4, 'Detopar+Pipeca', 'JP1417033335', 2, 0),
(43, '2021-09-01', 'Seprianto', 67, 'GJ + GS', 'JP5012118882', 2, 0),
(44, '2021-09-01', 'Wahyu Syuhada ', 79, 'DJIE', 'JP4232132105', 2, 0),
(45, '2021-09-01', 'Didin Markasiq', 39, 'Moringa', 'JP8354254082', 2, 0),
(46, '2021-09-01', 'bakti aji', 12, 'MINYAK MAULANA', 'JP5632908876', 2, 0),
(47, '2021-09-01', 'Siti Suhayah ', 96, 'OS, SM, BD', '001443362336', 4, 0),
(48, '2021-09-01', 'Toko Mama Alfi', 66, 'OS, GLGIN', 'JP0353758565', 2, 0),
(49, '2021-09-01', 'Maimanah', 4, 'SM, GRAH', 'JP9747099421', 2, 0),
(50, '2021-09-01', 'Mansyur ', 41, 'CP', 'JP6446378989', 2, 0),
(51, '2021-09-01', 'Mada', 3, 'Enagma ', 'JP2724998724', 2, 0),
(52, '2021-09-01', 'ABUDIN', 44, 'Ceng Plus', 'JP0162149384', 2, 0),
(53, '2021-09-01', 'Awan', 97, 'Maddebic Oil', 'JP2002138164', 2, 0),
(54, '2021-09-01', 'MUHAMMAD Ali', 34, 'GJ+GS', 'JP3065509758', 2, 0),
(55, '2021-09-01', 'Eni ', 37, 'Gurah V ', 'JP9926921470', 2, 0),
(56, '2021-09-01', 'Akhmad Warsito', 16, 'CENGPLUS', 'JP2602057457', 2, 0),
(57, '2021-09-01', 'Marseh ', 88, 'CP', 'JP8340525427', 2, 0),
(58, '2021-09-01', 'Bondan Oktavilano N', 38, 'CENGPLUS', 'JP0919066977 ', 2, 0),
(59, '2021-09-01', 'Nur Fadila', 13, 'Vtma', 'JP5082003011', 2, 0),
(60, '2021-09-01', 'Heru Purdiyanto', 46, 'Gurah Suara', 'JP9095209465', 2, 0),
(61, '2021-09-01', 'fitri alfico', 88, 'GJ', 'JP9968522114', 2, 0),
(65, '2021-09-01', 'Agung Setiyo Wi Bowo ', 35, 'BD, EXT, EXC', 'JP7770902283', 2, 0),
(68, '2021-09-01', 'Yunisari', 58, 'Chmrz', 'JP7677990863', 2, 0),
(69, '2021-09-01', 'Lina', 26, 'Ambe, slw', 'JP5710582841', 2, 0),
(70, '2021-09-01', 'Vivin Yulianti', 79, 'OS.SM.BD', 'JP8685274254', 2, 0),
(71, '2021-09-01', 'Arifuddin', 92, 'VITAMA', 'JP2403947896', 2, 0),
(72, '2021-09-01', 'Bernadine', 85, 'VTMA', 'JP6915175497', 2, 0),
(73, '2021-09-01', 'Ima/Jon', 8, 'DTPR.SM', 'JP2781630634', 2, 0),
(74, '2021-09-01', 'Irawan ', 60, 'Centilos,morici', '002739116245', 4, 0),
(75, '2021-09-01', 'Shella ', 33, 'Gurah V + Tvs', 'JP1155850005', 2, 0),
(76, '2021-09-01', 'Santo', 26, 'OS', 'JP0763050426', 2, 0),
(77, '2021-09-01', 'Mochamad Choril', 101, 'Vitama ', 'JP2265182101', 2, 0),
(78, '2021-09-01', 'Jamansyah', 9, 'Ambe ,ztop ,KS, salwa', 'JP4228660471', 2, 0),
(79, '2021-09-01', ' geritz purmiasa / heri ', 97, 'OS + SM + HB', '001443377233', 4, 0),
(80, '2021-09-01', 'Jakaria ', 9, 'MDBIC', 'JP6994984328', 2, 0),
(82, '2021-09-01', 'Ricky Morang', 85, 'SDJIE', 'JP9002989855', 2, 0),
(83, '2021-09-01', 'ZULKIFLI MANGALIA', 44, 'OS', 'JP4269008076', 2, 0),
(84, '2021-09-01', 'Saharadewi ', 65, 'K-FOKSON 1', 'JP1676944040', 2, 0),
(85, '2021-09-01', 'M. Rizal ', 19, 'OS', 'JP0558881217', 2, 0),
(86, '2021-09-01', ' Alvarida Omega Nobisa', 31, 'Detopar & pepica', 'JP4717180097', 2, 0),
(87, '2021-09-01', 'Nur Rohman S', 1, 'Gang Jie, Galgin ', 'JP1119009420', 2, 0),
(88, '2021-09-01', 'Ibu Aan Hasanah', 30, 'Slp Salwa', 'JP5039775505', 2, 0),
(89, '2021-09-01', 'Sulistiani Didik', 34, 'K Fokson', 'JP3037644683', 2, 0),
(90, '2021-09-01', 'Oloan Shiombing ', 57, 'MadebiC,ampiloma', 'JP0859170727', 2, 0),
(91, '2021-09-01', 'Hanli Kondongam ', 88, '(Galgin,ganjie)', 'JP7777882194', 2, 0),
(92, '2021-09-01', 'Mahli', 27, 'KS ,TY,Gurah V.', 'JP2760971857', 2, 0),
(93, '2021-09-01', 'Dadang SM.', 3, 'Cng Pls + Stmin', 'JP2947900396', 2, 0),
(94, '2021-09-01', 'Weni Lestari', 100, '2 Temujie + 2 Habatop', '002739221497', 4, 0),
(95, '2021-09-01', 'Suhadi', 76, 'OS, BD, SM', 'JP1390335166', 2, 0),
(96, '2021-09-01', 'Yudi', 97, 'Ambejos,Salwa', 'JP7846771384', 2, 0),
(97, '2021-09-01', 'Meno', 96, 'Typogel, Zirzak', '002739185005', 4, 0),
(98, '2021-09-01', 'Zaenuddin Arifin', 59, 'salep Djie', '002739184966', 4, 0),
(99, '2021-09-01', 'Elvi Salpitri', 49, '2 centilos, 2 Morici', 'JP1974473904', 2, 0),
(100, '2021-09-01', 'Hidayat', 65, 'OS', 'JP9296564457', 2, 0),
(101, '2021-09-01', 'Ferdinand', 20, 'OS', 'JP7650045896', 2, 0),
(102, '2021-09-01', 'Erwin Hamka', 93, 'OS,BD,HB,SMBLTO,BHONG', 'JP4229855711', 2, 0),
(103, '2021-09-01', 'H. Dedi Risbaedi/Hj', 5, 'gang jie , Galgin  , hb', 'JP4575969696', 2, 0),
(104, '2021-09-01', 'Trio Ragil Wijayanto', 14, 'Gang jie', '002590897025', 4, 0),
(105, '2021-09-01', 'Fikri awal', 98, 'Gangjie, SM, Ziirzax', 'JP6707295639', 2, 0),
(106, '2021-09-01', 'Ani Kurotu Aeni', 1, 'Os , zirzak , pipeca ', 'JP1176537107', 2, 0),
(107, '2021-09-01', 'Nur Khasanah', 85, 'CENG PLUS', 'JP8602504217', 2, 0),
(108, '2021-09-01', 'Sofyan Ibrahim', 28, 'OS,BD,HB,SMBLTO,BHONG', 'JP1673953973', 2, 0),
(109, '2021-09-01', 'Ketut Sukaluih', 73, '#GJ + GS', 'JP9817509981', 2, 0),
(110, '2021-09-01', 'Mursiyem', 70, ' Galgin  + Gang Jie', 'JP6755489420', 2, 0),
(111, '2021-09-01', 'Gilang Eka Saputra', 85, 'Salep Salwa', 'JP8654477256', 2, 0),
(112, '2021-09-01', 'Dian', 86, 'Gj + Gs + Bd + Pipeca', 'JP3806760832', 2, 0),
(113, '2021-09-01', 'Brigita Natalia Poluan', 53, '4 TYPHOGELL', 'JP2111865753', 2, 0),
(114, '2021-09-01', 'Rauf', 24, 'GANG JIE + KAPSUL BD', 'JP2148368993', 2, 0),
(115, '2021-09-01', 'Robby', 74, 'k fokson', 'JP0897420130', 2, 0),
(116, '2021-09-01', 'Vino swirageR', 6, 'bio aura', 'JP8535514280', 2, 0),
(117, '2021-09-01', 'Gunarto', 25, 'Eximtas ', 'JP9628304087', 2, 0),
(118, '2021-09-01', 'Arif Yufebri Putra', 29, 'Bio Aur', 'JP2065706719', 2, 0),
(119, '2021-09-01', 'Dian Purnamasari', 100, 'GJ + GS', 'JP1295072083', 2, 0),
(120, '2021-09-01', 'Ahmad Mansyur H', 64, ' Gang Jie', 'JP2815123710', 2, 0),
(121, '2021-09-01', 'Muktiari Ika Lastenti   ', 98, 'AMBEJOSS ', '002739249730', 4, 0),
(122, '2021-09-01', 'Ria asnia ', 60, 'MYPEND + HB + RHEUMA', 'JP3747750400', 2, 0),
(123, '2021-09-01', 'Suriyani', 46, 'GURAH V', 'JP9414061842', 2, 0),
(124, '2021-09-01', 'Roeston Nawawi ', 78, 'CENTILOSS + MORICI', 'JP5388718649', 2, 0),
(125, '2021-09-01', 'Putra ', 94, 'GJ', 'JP6407924351', 2, 0),
(126, '2021-09-01', 'Jecky Chen', 44, 'OS', 'JP3332671181', 2, 0),
(127, '2021-09-01', 'Indah Wahyuni', 33, 'SMRG, HBTP, GRHV, BIO', 'JP2051302978', 2, 0),
(128, '2021-09-01', 'Ahmad', 70, 'KS,TY', 'JP2171044652', 2, 0),
(129, '2021-09-01', 'FAJRIANI', 70, 'FOKSON', 'JP1106927330', 2, 0),
(130, '2021-09-01', 'MELDASARI', 21, 'OS', 'JP3878592966', 2, 0),
(131, '2021-09-01', 'TASRIANI', 78, '2CNTLS,2MRCI', 'JP8244311782', 2, 0),
(132, '2021-09-01', 'suprianto', 43, 'OS', 'JP9225571871', 2, 0),
(133, '2021-09-01', 'Misratin', 12, 'DETOPAR + PIPECA', 'JP9236485455', 2, 0),
(134, '2021-09-01', 'Ferawati Oman', 26, 'BD,Eximtaz,Slp Exclr', 'JP8602184634', 2, 0),
(135, '2021-09-01', 'Meriam', 63, 'Ziirsak, Typhogel', 'JP1577900453', 2, 0),
(136, '2021-09-01', 'Matroji', 57, 'Salep Exclear', '001443339922', 4, 0),
(137, '2021-09-01', 'Boby Sulaeman', 25, 'FOKSON', '001443340094', 4, 0),
(138, '2021-09-01', 'Desi Risma Cahaya', 7, 'Salep Salwa', 'JP3074360157', 2, 0),
(139, '2021-09-01', 'mamah Andin', 70, 'VTPDA', 'JNAC-0020174095', 1, 0),
(140, '2021-09-01', 'nanang', 59, 'CP STMIN', 'JNAC-0020146200', 1, 0),
(141, '2021-09-01', 'andri permana', 33, 'CP', 'JNAC-0020162357', 1, 0),
(142, '2021-09-01', 'yuni', 78, 'OKK', 'JNAC-0020163130', 1, 0),
(143, '2021-09-01', 'Nurhasanah', 78, 'CP', 'JNAC-0020167141', 1, 0),
(144, '2021-09-01', 'RIAN H', 83, 'BD, EXCMTS, EXC', 'JP2258401745', 2, 0),
(145, '2021-09-02', 'Sandi Anggono', 18, '2Os ,2Hb ,2Sloto', 'JP4290129216', 2, 0),
(146, '2021-09-02', 'Fadli susanto', 23, 'Os+sm+hb', '001443387240', 4, 0),
(147, '2021-09-02', 'Andika Fitrianto', 36, 'Gangjie Ghosiah', 'JP3593200644', 2, 0),
(148, '2021-09-02', 'Mm Vajar', 100, 'K-FOKSON', 'JP0367615540', 2, 0),
(149, '2021-09-02', 'Siswarno', 86, 'CngPls ', 'JP6519713068', 2, 0),
(150, '2021-09-02', 'Anto (tukang kayu) ', 25, 'Reumhastop  , Hb', 'JP6994541838', 2, 0),
(151, '2021-09-02', 'Muhammad Fajar H', 91, 'OS', 'JP0694800245', 2, 0),
(152, '2021-09-02', 'Irmawati', 98, 'KS,Ty,MyPnd,GJ,Galgin', 'JP0131236010', 2, 0),
(153, '2021-09-02', 'Lisa ', 35, 'Sipiriluna', 'JP5329172047', 2, 0),
(154, '2021-09-02', 'August Kaya', 14, 'Gang Jie', 'JP3817290704', 2, 0),
(155, '2021-09-02', 'Hamdani', 7, 'Amb ', 'JP5313286397', 2, 0),
(156, '2021-09-02', 'Cipto sukardi ', 78, 'GalGin  + gang jie', 'JP5278966862', 2, 0),
(157, '2021-09-02', 'Metra', 75, 'STMN, CP', 'JP3871450862', 2, 0),
(158, '2021-09-02', 'Isti Qomah', 84, 'OS', 'JP3837724254', 2, 0),
(159, '2021-09-02', 'yasmin cell', 53, 'GRH-V', 'JP7273555842', 2, 0),
(160, '2021-09-02', 'Intan/Fahri ', 62, 'AMB, SLW', '001443380894', 4, 0),
(161, '2021-09-02', 'nurahman pratama ', 5, 'CNGPLS, STMIN ', '001443389607', 4, 0),
(162, '2021-09-02', 'IRWAN', 14, 'SPIRULINA,HAB3IN1 ', 'JNAC-0020216364', 1, 0),
(163, '2021-09-02', 'Bpk. Dwi Arto', 9, 'STMN, CNGPLS', '001443404188', 4, 0),
(168, '2021-09-02', 'Jatra Hari Nugroho', 2, 'OS', 'JP0707924565', 2, 0),
(169, '2021-09-02', 'HAJIZAH / MUHARAM', 44, 'Ambejoss Salwa', 'JP8628901426', 2, 0),
(170, '2021-09-02', 'Riyun ', 33, 'DETOPAR+PIPECA', 'JP0661386849', 2, 0),
(171, '2021-09-02', 'TINUS', 95, 'Vitama', '002739686631', 4, 0),
(172, '2021-09-02', 'Bambang Irawan', 38, 'GJ + GS + BD + PIPECA', 'JP6703665130', 2, 0),
(173, '2021-09-02', 'Nur Halima', 1, 'Gang jie + Galgin', 'JP1924386015', 2, 0),
(174, '2021-09-02', 'Rikhardus Abi', 91, 'Gangjie ', 'JP6445692623', 2, 0),
(175, '2021-09-02', 'Winarko (Eko)', 99, '2 Ambejos + 2  Salwa', 'JP6847766722', 2, 0),
(176, '2021-09-02', 'PauL', 26, 'Madebic oil', 'JP6355360851', 2, 0),
(177, '2021-09-02', 'Asrani', 47, '2 Enagma', 'JP0156838412', 2, 0),
(178, '2021-09-02', 'Roni', 76, 'GJ + GS', 'JP8167880295', 2, 0),
(179, '2021-09-02', 'Ahmad Munir', 84, 'AMB + ZTP + KS+ Salwa', 'JP9053869209', 2, 0),
(182, '2021-09-02', 'Maryam afkei ', 51, 'SLW. ', 'JP6488173148', 2, 0),
(184, '2021-09-02', 'Sanusi', 68, 'CP', '002739507719', 4, 0),
(185, '2021-09-02', 'Ketut Muriana  ', 92, 'MDBC', 'JP8843707706', 2, 0),
(186, '2021-09-02', 'Aryanti ', 75, 'K-FOKSON', 'JP8215072363', 2, 0),
(187, '2021-09-02', 'Bimbi ben putra', 75, 'CP', 'JP2034042341', 2, 0),
(189, '2021-09-02', 'Mzuhri bakso Nayla', 45, 'Vitama', 'JP5431194704', 2, 0),
(190, '2021-09-02', 'Edy', 4, 'PIPECA', 'JP2347616264', 2, 0),
(191, '2021-09-02', 'Hana Rosyana Mu', 14, 'BIHONGJIE', 'JP1065737429', 2, 0),
(192, '2021-09-02', 'Ahyar rosidi', 101, 'UNDIBET', 'JP0486232172', 2, 0),
(193, '2021-09-02', 'Mulyadi', 99, 'Exim,BD, exclear', 'JP1441094846', 2, 0),
(194, '2021-09-02', 'Fera', 98, 'Gangjie ghosiah', 'JP4415473789', 2, 0),
(195, '2021-09-02', 'Sutami', 17, 'Gurah Suara', '002739637535', 4, 0),
(196, '2021-09-02', 'Dwikihermawan', 13, 'Glgn, GJ', 'JP4868589111', 2, 0),
(197, '2021-09-02', 'Winda afsari', 93, 'SM, ZAI', 'JP9103274092', 2, 0),
(198, '2021-09-02', 'Nurita Kusumawati', 14, 'MORINGA.ZAI', '002739674369', 4, 0),
(199, '2021-09-02', 'juminah', 30, 'KS.TY', '002739724361', 4, 0),
(200, '2021-09-02', 'Dania iliza', 69, ' eximtas, exclear', 'JP1428227804 ', 2, 0),
(201, '2021-09-02', 'Teh Aam', 97, 'Gang jie, Ziirzax', 'JP7798779523', 2, 0),
(202, '2021-09-02', 'Riyadi', 60, 'Ambejoss + Salwa', 'JP9161181979', 2, 0),
(203, '2021-09-02', 'Rumad / Mama Lia', 30, '2 K-Fokson ', 'JP1010577521', 2, 0),
(204, '2021-09-02', 'Nur Yanto', 11, 'Eximtas +  BD +  Exclear', 'JP6385456799', 2, 0),
(205, '2021-09-02', 'Ahmad Fathurrohman', 6, 'K-Fokson', 'JP6168642149', 2, 0),
(206, '2021-09-02', 'Po Uwang ', 9, 'EXM BD EXC', 'JP4347684157', 2, 0),
(207, '2021-09-02', 'Rofiki', 40, 'OS', 'JP7035910819', 2, 0),
(208, '2021-09-02', 'Muhammad Ali', 85, '2 AMB', 'JNAC-0020207829', 1, 0),
(209, '2021-09-02', 'sayid gunadi', 98, 'AMB', 'JNAC-0020219822', 1, 0),
(212, '2021-09-02', 'Mahfudin', 19, 'OS, Kapsul BD, Habatop', 'JP5230108208', 2, 0),
(213, '2021-09-02', 'Nurjana Antareng', 98, 'GANG JIE HABATOP', 'JP8785930501', 2, 0),
(214, '2021-09-02', 'Fatkhul zainukie ', 77, 'Ambejos,Salwa', '002739620182', 4, 0),
(215, '2021-09-02', 'Dian Purnamasari', 98, 'AMB, SLWA', 'JP4589929128', 2, 0),
(216, '2021-09-02', 'Cak Nan', 63, 'AMB, SLWA', 'JP4043053878', 2, 0),
(217, '2021-09-02', 'Silva Puspitasari', 85, 'OS', 'JP6463120798', 2, 0),
(218, '2021-09-02', 'Fatma', 46, 'AMB, SLW', 'JP3598898413', 2, 0),
(219, '2021-09-02', 'Mamah Adit', 68, 'Amb, Salwa', 'JP0803833064', 2, 0),
(220, '2021-09-02', 'RACHEL PASHION ', 30, '2Dtp, 2Sm', '001443394746', 4, 0),
(221, '2021-09-02', 'ibu parudin ', 86, ' ghosiah dan centilos', '001443394857', 4, 0),
(222, '2021-09-02', 'alfandi ', 92, 'OS', '001443406330', 4, 0),
(223, '2021-09-02', 'Samidi', 89, 'VITAMA', 'JP8050546456', 2, 0),
(224, '2021-09-02', 'norman hardi', 64, 'Galgin + gang jie', 'JP0258905354', 2, 0),
(225, '2021-09-02', 'Sutrisno aji', 6, 'Gang Jie Ghosiah', 'JP7505721710', 2, 0),
(226, '2021-09-02', 'Sandi Sanjaya', 68, 'Ktls', 'JP3898879411', 2, 0),
(227, '2021-09-02', 'Samita Indah', 25, 'Gang jie', 'JP5606350301', 2, 0),
(228, '2021-09-02', 'Rafli Fahrul Paujan', 52, 'Gang Jie', '002591723812', 4, 0),
(229, '2021-09-02', 'Mukhlis', 4, 'OS', 'JP7334794799', 2, 0),
(230, '2021-09-02', 'DeDi', 16, 'Gang Jie, SM, Ziirzak', 'JP0039495565', 2, 0),
(231, '2021-09-02', 'FRANES AGUNG SYAFEI', 90, 'Os, djie ', 'JP4424214674', 2, 0),
(232, '2021-09-02', 'Rohman ', 23, 'BD, Eximtas, Exclear', 'JP4813071595', 2, 0),
(233, '2021-09-02', 'HOLIK', 45, 'AMB, SLW', 'JP9477030258', 2, 0),
(234, '2021-09-02', 'ORBANI SILARTO', 19, 'Ceng plus +Setamina', 'JP1467631764', 2, 0),
(235, '2021-09-02', 'Edy Purwanto ', 81, 'GRH', 'JP8573898183', 2, 0),
(236, '2021-09-02', 'Wydia Ar', 16, 'K-Fokson', 'JP5287028812', 2, 0),
(237, '2021-09-02', 'Jhon Sutrisna', 74, 'GJ + GS', 'JP8386765842', 2, 0),
(238, '2021-09-02', 'Zain', 59, 'Gj + Gs + BD + HB', 'JP5893039687', 2, 0),
(239, '2021-09-02', 'Ahmad', 6, 'GJ + GS', 'JP7162467394', 2, 0),
(240, '2021-09-02', 'Jhon simatupang', 37, 'gang jie', 'JP5855880912', 2, 0),
(241, '2021-09-02', 'Mega agung', 101, 'os', 'JP8137976883', 2, 0),
(242, '2021-09-02', 'Alftet Langga', 61, 'Madebic', 'JP4600264329', 2, 0),
(243, '2021-09-02', 'Sudir Man', 86, 'K-F-fokson', 'JP9712859797', 2, 0),
(244, '2021-09-02', 'muh.soleh.Erw', 10, 'Maddebic oil', '002739748002', 4, 0),
(245, '2021-09-02', 'Daniel Kirihio', 46, 'Maddebic', 'JP8694600889', 2, 0),
(246, '2021-09-02', 'Aher', 12, 'AMB,SALWA', 'JP6845241194', 2, 0),
(247, '2021-09-02', 'Rajali', 58, 'OS', 'JP4050436694', 2, 0),
(248, '2021-09-02', 'Prtu Rizki Rahman S', 82, 'OS', 'JP8285080902', 2, 0),
(249, '2021-09-02', 'Darmawansyah Putra', 52, 'OS', 'JP1321576970', 2, 0),
(250, '2021-09-02', 'Isak Yaguas M', 84, 'OS', 'JP9519063117', 2, 0),
(251, '2021-09-02', 'Adnan RemajaSantayy', 7, 'Gangjie', 'JP3613750161', 2, 0),
(252, '2021-09-02', 'Muhammad izwar', 95, 'typoghell+ziirzak', 'JP1374881189', 2, 0),
(253, '2021-09-02', 'KRYS', 63, 'MDBC', 'JNAC-0020235129', 1, 0),
(254, '2021-09-02', 'KARTONO', 28, 'OS', 'JP0441727480', 2, 0),
(255, '2021-09-02', 'Suryanto Gobay', 88, 'DTPR,SM', 'JP9022038979', 2, 0),
(259, '2021-09-02', 'Srimi Kacang', 20, 'Ziirzax + Gang Jie', 'JP8724695474', 2, 0),
(260, '2021-09-02', 'Budi', 92, 'Gang Jie', 'JP9827721092', 2, 0),
(261, '2021-09-02', 'Hariyanto', 89, 'Vitama', 'JP7763963921', 2, 0),
(262, '2021-09-02', 'Meru Salak Nuban', 58, '2 Ambe', 'JP4024727010', 2, 0),
(263, '2021-09-02', 'Bayu Dwi Saputra', 7, 'MDBC, BD', 'JP9578228365', 2, 0),
(265, '2021-09-02', ' Johansen Doli Pardosi ', 17, 'Os, slp+', 'JP8550701648', 2, 0),
(266, '2021-09-02', 'Annisa Saras Wati', 72, 'OS + Pipeca + HB', 'JP9763968733', 2, 0),
(267, '2021-09-02', 'Rafka', 34, 'Enagma Oil', 'JP3735987624', 2, 0),
(268, '2021-09-02', 'Martha Palaimau', 75, 'Pipeca + Habatop 3 In 1 ', 'JP2283762249', 2, 0),
(269, '2021-09-02', 'Endang', 94, 'Ziirzax ', 'JP1327037524', 2, 0),
(270, '2021-09-02', 'Hasniati', 76, 'yphogell + Ziirzax ', 'JP6958477014', 2, 0),
(271, '2021-09-02', 'Iman', 30, 'Stamina + Ceng Plus', 'JP4742891204', 2, 0),
(272, '2021-09-02', 'mama gibran', 68, 'CPLUS', 'JNAC-0020228146', 1, 0),
(273, '2021-09-03', 'Maryamah', 15, 'Os, zirzak ', 'JP1055816467', 2, 0),
(274, '2021-09-03', 'Hermanto S said', 67, 'OS', '002739868120', 4, 0),
(275, '2021-09-03', 'Friska tri yudena', 45, 'SMBLT, CRBMNKRMH', 'JP7173744650 ', 2, 0),
(276, '2021-09-03', 'ferdinanto nusi ', 34, 'Gangjie', 'JP9061309460', 2, 0),
(277, '2021-09-03', 'Adil abdillah, ', 88, 'gangjie', 'JP6116961629', 2, 0),
(278, '2021-09-03', 'Surya', 35, 'gang jie', 'JP6268307143', 2, 0),
(279, '2021-09-03', 'Andika', 67, 'Enagma Oil', 'JP0500124979', 2, 0),
(280, '2021-09-03', 'Bheka A (Bheka Motor)', 38, 'GJ', 'JP5716175537', 2, 0),
(281, '2021-09-03', 'Supriyadi', 101, ' K- Fokson', 'JP5484842592', 2, 0),
(282, '2021-09-03', 'JARWANTO', 86, 'Amb+KS+Zaitop+Salwa', 'JP7126268072', 2, 0),
(283, '2021-09-03', 'ULFA SUHASRI', 3, 'SLIMMING', 'JP7686551580', 2, 0),
(284, '2021-09-03', 'Zalnawati', 12, 'DETO + SM', 'JP6995103400', 2, 0),
(285, '2021-09-03', 'Elda Dahlia', 16, 'OS', 'JP0472176393', 2, 0),
(286, '2021-09-03', 'Jarni', 93, 'CP', 'JP2236707556', 2, 0),
(291, '2021-09-03', 'Heru Nur Hidayat', 97, 'Os', '001443416878', 4, 0),
(293, '2021-09-03', 'Riska', 82, 'gangji, zirzx', 'JP1136681293', 2, 0),
(294, '2021-09-03', 'Alex', 18, ' CENTILOS, MORICI', '002739981099', 4, 0),
(295, '2021-09-03', 'Rohman ', 9, 'AMB, SLW', '001443419161', 4, 0),
(296, '2021-09-03', 'Agen bus agramas', 101, 'CP', 'JP9942471984', 2, 0),
(297, '2021-09-03', 'Rudini ', 82, '2CP', 'JP0571986483', 2, 0),
(298, '2021-09-03', 'OZI PRATAMA', 35, 'CP', 'JP9415618844', 2, 0),
(299, '2021-09-03', 'Bayu Setyawan', 77, 'CP', 'JP5188110346', 2, 0),
(300, '2021-09-03', 'Unik Oktiani', 3, 'BIO AURA', 'JP7638017456', 2, 0),
(301, '2021-09-03', 'Irwan Zainudin/aryacell', 76, 'moringa, zaitop', 'JP4329817202', 2, 0),
(302, '2021-09-03', 'Tigon/Rio', 64, '3 Tyhpogell+3 Ziirzax ', 'JP2661118523', 2, 0),
(303, '2021-09-03', 'Bpk. sakri', 39, 'Ceng plus', 'JP9287773799', 2, 0),
(304, '2021-09-03', 'Ahmad Fhadil', 97, 'Gang jie, Ziirzax', 'JP3191246856', 2, 0),
(306, '2021-09-03', 'Salsabilla Putri Ayu', 97, 'chumariz', 'JP1372847331', 2, 0),
(307, '2021-09-03', 'Leni Marlina', 93, 'Centilos + Morici', 'JP5653882767', 2, 0),
(308, '2021-09-03', 'Jumi Afriani', 98, 'Enagma Oil', 'JP2988329951', 2, 0),
(309, '2021-09-03', 'Zaenal Arifin', 7, 'Centilos + Morici', 'JP4618773224', 2, 0),
(310, '2021-09-03', 'Anita', 48, 'CP ,Hb3in1 ,Stamin ,Engm', '002740023380', 4, 0),
(311, '2021-09-03', 'Anggoro agus nurcahyo', 66, 'Gangjie, ghosiah', 'JP9460819686', 2, 0),
(312, '2021-09-03', 'Petrus Trisno', 31, 'CTLS,BIO,BD,HB3IN1', 'JP1423902996', 2, 0),
(313, '2021-09-03', 'Herlina', 99, 'CENGPLUS , STAMIN', 'JP2529056406', 2, 0),
(314, '2021-09-03', 'JUNAEDI', 72, 'Detopar + Pipeca', 'JP8138340729', 2, 0),
(315, '2021-09-03', 'Marius', 75, ' K-Fokson ', 'JP7703490777', 2, 0),
(316, '2021-09-03', 'ZEZE', 24, 'MRCI,CNTLS', 'JP3735612827', 2, 0),
(317, '2021-09-03', 'Yahtalifun(b', 84, 'AMB,SLW', 'JP4717309165', 2, 0),
(318, '2021-09-03', 'WASRI / WARIAH', 34, 'Eximtas,BD,Excl', 'JP1699950815', 2, 0),
(319, '2021-09-03', 'Ibu Juwita', 25, '2 AMB,2 SALWA', 'JP8573281066', 2, 0),
(320, '2021-09-03', 'Yadi', 73, 'OKK', 'JP8426114879', 2, 0),
(321, '2021-09-03', 'Moh Soleh', 86, 'Gang jie', 'JP7321574318', 2, 0),
(322, '2021-09-03', 'Waginem Mariany', 24, 'Detopar ,pipeca, vitama', 'JP2094313185', 2, 0),
(323, '2021-09-03', 'Odihagam ', 82, 'GJ + GS', 'JP0268806573', 2, 0),
(325, '2021-09-03', 'salfiati', 65, 'DTPR.SM', 'JP7476953314', 2, 0),
(326, '2021-09-03', 'Febri nur fauzi', 2, 'Os', '001443422585', 4, 0),
(327, '2021-09-03', 'Meliapiyanti', 29, 'Salwa', '002740116280', 4, 0),
(328, '2021-09-03', 'Ivana Natsuyaki', 35, 'Slimming', 'JP5729895605', 2, 0),
(329, '2021-09-03', 'NAJWA', 94, '4 Ambejos 4 Salwa', 'JP8902235093', 2, 0),
(330, '2021-09-03', 'Berty Julian', 70, 'OS', 'JP0622207620', 2, 0),
(331, '2021-09-03', 'Yohanes Leu Reo(Hans)', 61, 'OS', 'JP4361995874', 2, 0),
(332, '2021-09-03', 'Ricky', 34, 'BIO AURA', 'JP7808913287', 2, 0),
(337, '2021-09-03', 'Turahmi', 17, 'SMRG, HBTP', 'JP3316561074', 2, 0),
(338, '2021-09-03', 'Iim Hilmiyah', 41, 'Moringa+Zaitop', '002740050738', 4, 0),
(339, '2021-09-03', 'Yohanes Prasetya', 20, 'Temujie', 'JP9154378692', 2, 0),
(340, '2021-09-03', 'M. Ali', 35, 'Ceng Plus + Enagma Oil ', 'JP9154378692', 2, 0),
(341, '2021-09-03', 'Hermansyah', 7, 'habatop+ Pipeca+ GJ', 'JP9326497620', 2, 0),
(342, '2021-09-03', 'RAHIM', 29, 'Chumariz', 'JP7800898306', 2, 0),
(343, '2021-09-03', 'Ai Dini Agnestia', 32, 'Slimming', 'JP0563818489', 2, 0),
(344, '2021-09-03', 'Moh Topan', 45, 'Enagma ', 'JP3419209767', 2, 0),
(345, '2021-09-03', 'Apriyanto', 38, 'SINGSET PLUS', 'JP2533120604', 2, 0),
(346, '2021-09-03', 'Ira rahmawati ', 41, 'HB3in1', 'JP2907112711', 2, 0),
(347, '2021-09-03', 'Ning suprianah ', 64, 'Ambejoss ', 'JP0440819965', 2, 0),
(348, '2021-09-03', 'Ikadek Supadma', 85, '4 Gj + 4 Gs + 4 BD + 4 HB', 'JP3679097105', 2, 0),
(349, '2021-09-03', 'Sri wahyuni', 63, 'CNTLS,MRCI', 'JP2130186635', 2, 0),
(350, '2021-09-03', 'Nur Mahmud', 24, 'MRNG,HBTP3IN1', 'JP2270229983', 2, 0),
(351, '2021-09-03', 'Zidan Kurniawan ', 33, 'OS', 'JP8354061745', 2, 0),
(352, '2021-09-03', 'Sadi', 88, 'Gang Jie, Galgin ', 'JP4181727114', 2, 0),
(353, '2021-09-03', 'Ayub Adironi', 16, 'OS', 'JP6119646271', 2, 0),
(354, '2021-09-03', 'Aidi Nor Mansyah', 50, 'VITAMA', 'JP6255065884', 2, 0),
(355, '2021-09-03', 'M Ikbal ', 11, 'CENG + STM ', '001443424532', 4, 0),
(356, '2021-09-03', 'An, Rika Darmansyah, ', 62, 'Gurah v', 'JP7423574773', 2, 0),
(357, '2021-09-03', 'Rohimi  ', 39, 'Ceng plus + Stamin', 'JP2795625300', 2, 0),
(358, '2021-09-03', 'Hendri Kurniawan ', 39, 'Moringa', 'JP5030173478', 2, 0),
(359, '2021-09-03', 'R. St. Bambang Soed', 52, 'Ambejoss, Salep Salwa', 'JP8358554883', 2, 0),
(360, '2021-09-03', 'Nisa Aulia ', 82, 'OS, Slp Djie', 'JP9152849124', 2, 0),
(367, '2021-09-03', 'Asri ', 22, 'SLW', 'JP5094987617', 2, 0),
(368, '2021-09-03', 'Saiful ', 19, 'FOKSON', 'JP7667660216', 2, 0),
(369, '2021-09-03', 'Amelia Puspitasari ', 39, 'CNTLS.MRCI', 'JP2706339018', 2, 0),
(370, '2021-09-03', 'Rudianto', 68, 'CPLUS', 'JP4140481276', 2, 0),
(371, '2021-09-03', 'Wuwih Utami', 101, 'Detopar', '001549754897', 4, 0),
(372, '2021-09-03', 'Sukatimin Amin', 21, 'Vitama + Zaitop', 'JP6468283708', 2, 0),
(373, '2021-09-03', 'Sriyadi', 76, '2 ambejos, 2 Salwa', '002740127473', 4, 0),
(374, '2021-09-03', 'Adri Aulia', 47, 'GLGN', 'JP5630977648', 2, 0),
(375, '2021-09-03', 'Suryani', 10, 'CP', 'JP6852382584', 2, 0),
(376, '2021-09-03', 'Puput', 11, 'CNTLSS', 'JP4650190436', 2, 0),
(377, '2021-09-03', 'Grachela Sampelan', 17, '2Dtpr', 'JP5690318093', 2, 0),
(378, '2021-09-03', 'Somuntul/Rahel J', 92, 'Morici .Centiloss', 'JP2459758578', 2, 0),
(379, '2021-09-03', 'SUNDARI', 9, 'Ambejoss Salwa 2 Paket', 'JP1306346590', 2, 0),
(380, '2021-09-03', 'MBA NADA, ', 75, 'Gurah V, Salep Djie ,Maad', 'JP4673540644 ', 2, 0),
(381, '2021-09-03', 'Ade', 27, 'Ghosiah', 'JP1615463327', 2, 0),
(382, '2021-09-03', 'H.samsuddin', 16, 'Galkin  + gang jie', 'JP1615463327', 2, 0),
(383, '2021-09-03', 'Porwadi', 25, 'Ambejoss + Salwa', '002740176508', 4, 0),
(384, '2021-09-03', 'Nana Riwayati', 59, 'OS 2x', 'JP1741996483', 2, 0),
(385, '2021-09-03', 'Wildan', 22, 'Hb', 'JP4549058938', 2, 0),
(386, '2021-09-03', 'Haji. Mul ', 61, 'Hb, bio', 'JP6318824119', 2, 0),
(387, '2021-09-03', 'Shynta ', 12, 'Amb,Salwa', 'JP7804735415', 2, 0),
(388, '2021-09-03', 'Syaiful Hidayat', 73, 'OS', 'JP7595422016', 2, 0),
(389, '2021-09-03', 'onik widiastuti', 5, 'Ambejos zaitop', 'JP5479359871', 2, 0),
(390, '2021-09-03', 'Lia (ucin)', 5, 'AMBEJOSS', 'JP0786208766', 2, 0),
(391, '2021-09-03', 'Garot Soebiantoro ', 60, 'AMBEJOSS', 'JP3730401036', 2, 0),
(392, '2021-09-03', 'Dina Marlina', 44, 'Sliming', 'JP2768089320', 2, 0),
(393, '2021-09-03', 'Achmad karyadi', 45, 'Engma', 'JP5141793334', 2, 0),
(394, '2021-09-03', 'Erna Putri ', 32, 'AMB, SLW', 'JP3314102000', 2, 0),
(395, '2021-09-03', 'Harmudi', 91, 'Galgin  + Gang Jie', 'JP5716494585', 2, 0),
(396, '2021-09-03', 'Abi Ponsel', 95, 'OS+ HB +Bd +Maulana', 'JP0246304034', 2, 0),
(406, '2021-09-03', 'Erik', 20, 'GJ + GS', 'JP5991505070', 2, 0),
(407, '2021-09-03', 'Ipung Ari Sandi', 54, 'Pipeca+BD', 'JP1171166942', 2, 0),
(408, '2021-09-03', 'Musrifah ', 8, 'BIO', 'JP2345765647', 2, 0),
(409, '2021-09-03', 'imam Suhendi', 49, 'BIO', 'JP0248432434', 2, 0),
(410, '2021-09-03', 'Sri Jumiarti', 25, 'GJ,SM,HB,MAULN', 'JP4264683679', 2, 0),
(411, '2021-09-03', 'alexa carla', 18, 'Maddebic ', '002740213083', 4, 0),
(412, '2021-09-03', 'AIM BUSYROL KARIM', 55, 'Typhogell', 'JP7190820761', 2, 0),
(413, '2021-09-03', 'Putriamelia', 80, 'Ty+ Ziirzax+Mycopend', 'JP9120405281', 2, 0),
(414, '2021-09-03', 'Herman ', 101, 'SM, Detopar ', 'JP6715848271', 2, 0),
(415, '2021-09-03', 'Ramlawati', 47, 'Gj,gurah v,salep dji', 'JP7388680684', 2, 0),
(416, '2021-09-03', 'Harir ', 81, 'fokson', 'JP6716571016', 2, 0),
(417, '2021-09-03', 'Susy Flowren', 20, 'MDBC', 'JP3120244938', 2, 0),
(418, '2021-09-03', 'Tia Restu Rahayu', 29, 'MDBC', 'JP2573651666', 2, 0),
(419, '2021-09-03', 'Iwan Raskiwan', 39, 'CTLS, MRC', 'JP5882066520', 2, 0),
(420, '2021-09-03', 'Husnaini ', 50, 'OS', 'JP3090605539', 2, 0),
(421, '2021-09-03', 'Nengsih', 91, 'OS', 'JP3338106496', 2, 0),
(422, '2021-09-03', 'Dimas Wahyu', 67, 'KS,Typo', 'JP6788063524', 2, 0),
(423, '2021-09-03', 'Ruspandi', 58, 'Ghosiah', 'JP2177331685', 2, 0),
(424, '2021-09-03', 'Achmad Syaroni', 39, 'GJ + GS', 'JP4418059376', 2, 0),
(425, '2021-09-03', 'Arnold', 4, 'GJ+GS', 'JP6302663704', 2, 0),
(426, '2021-09-03', 'Dominggus Bauk', 36, 'Detopar+Pipeca', 'JP2673087702', 2, 0),
(427, '2021-09-03', 'widiastuti tuti ', 98, 'SALEP EX', 'JP9875322155', 2, 0),
(428, '2021-09-03', 'lilis ', 42, 'GURAH V+BIO AURA', 'JP2445759636', 2, 0),
(429, '2021-09-03', 'adhelina', 77, 'MDBC', 'JNAC-0020309652', 1, 0),
(430, '2021-09-03', 'Cici', 68, 'MDBC', 'JP8657471056', 2, 0),
(431, '2021-09-03', 'Anto (tukang kayu) ', 65, '2 Botol K Fokson', 'JP3505091430', 2, 0),
(432, '2021-09-03', 'Aan Ismana ', 82, 'K Fokson', 'JP7298137971', 2, 0),
(433, '2021-09-03', 'Akbar', 4, 'Maddebic', 'JP6511477198', 2, 0),
(434, '2021-09-03', 'Desi Agustina', 20, 'Zirsak,Thypogel', 'JP2223448855', 2, 0),
(435, '2021-09-03', 'Jeine/Toto', 57, 'Amb 2 + Salwa 2', 'JP8104619982', 2, 0),
(436, '2021-09-03', 'Yanto Linggi ', 39, 'OS', 'JP7007027575', 2, 0),
(437, '2021-09-03', 'Hardianti ', 58, 'FOKSON ', 'JP7362090967', 2, 0),
(438, '2021-09-03', 'Gilang', 63, 'OS', 'JP6224740073', 2, 0),
(439, '2021-09-03', 'Tri Mulia ', 54, 'Gangjie , Gurah v', 'JP5553014270', 2, 0),
(440, '2021-09-03', 'Aldi Renaldi', 47, 'OS', 'JP6952846657', 2, 0),
(441, '2021-09-03', 'Asmah ', 66, 'Detopar', 'JP5974007178', 2, 0),
(442, '2021-09-03', 'Adhi Ngareng', 67, 'Madebbic oil + Salep Djie', 'JP9003934075', 2, 0),
(443, '2021-09-03', 'Susanto ', 47, ' GJ + GS ', 'JP9321780527', 2, 0),
(444, '2021-09-03', 'Pak Kosim(Sopir)', 53, 'VTMA', 'JP5578002063', 2, 0),
(445, '2021-09-03', 'Dedi', 97, 'GJ + GS', 'JP1970406023', 2, 0),
(446, '2021-09-03', 'Muhammat Dahri', 58, 'Detopar + Ghosiah', 'JP0611440279', 2, 0),
(447, '2021-09-03', 'Hartanto / Bagong', 13, 'Detopar + Pipeca', '002740380157', 4, 0),
(448, '2021-09-03', 'Suripno', 51, 'Gho Siah', 'JP0591109800', 2, 0),
(449, '2021-09-03', 'Arni Lawanti', 90, 'GV,Bio, bd,exmt,exc', 'JP4167498153', 2, 0),
(450, '2021-09-03', 'Deri Aldianes', 63, 'OS', 'JP4089819128', 2, 0),
(451, '2021-09-03', 'Kholishotul Hidayah ', 44, 'OS', 'JP1295828018', 2, 0),
(452, '2021-09-03', 'Anni ', 48, 'OS', 'JP6121777895', 2, 0),
(453, '2021-09-03', 'Nuriman', 8, 'AMBEJOSS', 'JP9184776482', 2, 0),
(454, '2021-09-03', 'Sandi Robiansah', 55, 'GJ + GS', 'JP8285928174', 2, 0),
(455, '2021-09-03', 'Willy Ludji ', 52, 'OS', 'JP1425116591', 2, 0),
(456, '2021-09-03', 'Nova sinaga', 42, 'Ambejoss + Zaitop + Salwa', 'JP6304808866', 2, 0),
(457, '2021-09-03', 'Nurhasan', 93, '2AMB, 2SLW', '002740344785', 4, 0),
(458, '2021-09-03', 'Erus Kuswandi', 3, 'MORINGA + ZAITOP', 'JP9438204299', 2, 0),
(459, '2021-09-03', 'Lilis Hanifah', 100, 'Salwa', 'JP6293385117', 2, 0),
(460, '2021-09-03', 'Abdurrahman', 99, 'Gangjie,Galgin', 'JP4949022284', 2, 0),
(461, '2021-09-03', 'Semi', 84, 'ZIIRZAX, TYL, MYCOPEND', 'JP1213892882', 2, 0),
(462, '2021-09-03', 'Pandu', 35, 'Ceng plus+Setamina', 'JP1470521226', 2, 0),
(463, '2021-09-03', 'Rostina', 97, 'Ziirzax + Tybhogel', 'JP4212765438', 2, 0),
(464, '2021-09-03', 'joko siswanto', 97, 'Ambejos+ Salap Salawa', 'JP2963525518', 2, 0),
(465, '2021-09-03', 'rima wahyu', 27, 'MDBC', 'JP5088262672', 2, 0),
(466, '2021-09-03', 'jeremyuntu', 74, 'BD + EXIMTAS + EXCLEAR', '002740453762', 4, 0),
(467, '2021-09-03', 'bryanto', 82, 'Detopar', 'JP0223030127', 2, 0),
(468, '2021-09-03', 'Rehan ', 42, '2 ambejoss, 2 salwa', 'JP4949738568', 2, 0),
(469, '2021-09-03', 'rislan', 13, 'Moringa + HB', 'JP0053415293', 2, 0),
(470, '2021-09-03', 'mama Tio sinaga', 37, 'DETOPAR + PIPECA', 'JP5303956681', 2, 0),
(471, '2021-09-03', 'Bpk. Darwis', 89, 'GALGIN,GANGJIE', 'JP9941085105', 2, 0),
(472, '2021-09-03', 'yoel', 3, 'OS', 'JP0915736129', 2, 0),
(473, '2021-09-03', 'Ari', 91, 'OS', 'JP7096174555', 2, 0),
(474, '2021-09-03', 'Idris', 74, 'GHOSIAH', 'JP1520455780', 2, 0),
(475, '2021-09-03', 'Beni ardinata', 13, 'gang jie ', 'JP7603368856', 2, 0),
(476, '2021-09-03', 'Sri Yuliana ', 84, 'GRH V', 'JP7548072437', 2, 0),
(477, '2021-09-03', 'dewie', 36, 'Mddbc', 'JP1101436054', 2, 0),
(478, '2021-09-03', 'Agus ', 67, 'OS ', '001443451679', 4, 0),
(479, '2021-09-03', 'Yusri kunai', 63, 'OS + Eximtas. BD. Exclear', 'JP6728506551', 2, 0),
(480, '2021-09-03', 'Alek/Toko Buah Bang Alex', 38, 'GJ + GS + BD + Habatop ', 'JP5288170717 ', 2, 0),
(481, '2021-09-03', 'Muh Amrul', 101, 'Maddebic + Anpiloma', 'JP8862761373', 2, 0),
(482, '2021-09-03', 'Rudi Pratama', 64, 'Maddebic Oil + Anpiloma', 'JP2549637639', 2, 0),
(483, '2021-09-03', 'Agus setiyawan ', 25, 'KS, TY', 'JP0690967699', 2, 0),
(484, '2021-09-03', 'Wiwin', 85, 'Bio Aura', 'JNAC-0020298595', 1, 0),
(485, '2021-09-03', 'Rahim Nopi Sukarno', 94, 'Bio Aura', 'JNAC-0020298181', 1, 0),
(486, '2021-09-03', 'Parman', 20, 'Habatop', 'JNAC-0020290109', 1, 0),
(487, '2021-09-03', 'Alfreda Papa Rato', 32, 'Moringa + Zaitop', 'JP8061994551', 2, 0),
(490, '2021-09-03', 'muslim', 13, 'CPLUS', 'JNAC-0020314561', 1, 0),
(491, '2021-09-03', 'AGUS SETIAWAN ', 42, 'CP', 'JP1754576056', 2, 0),
(492, '2021-09-03', 'Aris Zakat ', 87, 'CP', 'JP9027725216', 2, 0),
(494, '2021-09-03', 'Bachtiar  ', 12, 'CP', 'JP2345820153', 2, 0),
(495, '2021-09-03', 'Bpk Hamidi Rasid', 34, 'CP', 'JP9944799021', 2, 0),
(496, '2021-09-03', 'Murtini/sukari', 56, '2 GLGN + 2 GJ', 'JP8359382090', 2, 0),
(497, '2021-09-03', 'Rio Toko Pak Usman', 72, 'GLGN + GJ', 'JP5255805221', 2, 0),
(498, '2021-09-03', 'Fajriyansah ', 59, 'CP', 'JP1907916455', 2, 0),
(499, '2021-09-03', 'Dwiky', 90, 'BD DAN HABATOP', 'JP6602679029', 2, 0),
(500, '2021-09-03', 'Agil Murniati', 22, 'DETOPAR', 'JP6884390885', 2, 0),
(501, '2021-09-03', 'Ella novia ', 27, 'CNTILS,Hb , BD, BIO ', 'JP5249377189', 2, 0),
(502, '2021-09-03', 'Siti Styaningsih', 23, 'CP', 'JP5160015321', 2, 0),
(503, '2021-09-03', 'Kiki ', 39, 'CP', 'JP5641672802', 2, 0),
(510, '2021-09-03', 'hariyanto adi setiono', 77, 'OS', 'JP9655475203', 2, 0),
(511, '2021-09-03', 'Toko Ihsan', 74, 'Cengplus', 'JP7051347087', 2, 0),
(512, '2021-09-03', 'Siti nuraeni', 6, 'K-F-fokson', 'JP9007726324', 2, 0),
(513, '2021-09-03', 'Sri Wedhasari ', 100, 'Habatop3 in 1,Detopar', 'JP5185873421', 2, 0),
(514, '2021-09-03', 'Syarif Abdurahman', 15, 'Cengplus + Enagma Oil', 'JP1870332357', 2, 0),
(515, '2021-09-03', 'ibu barokah', 4, 'Gurah V + Spirulina ', 'JP3525315169', 2, 0),
(516, '2021-09-03', 'sudarna', 76, 'ks + Ty + Bio +  Bd', 'JP6898304794', 2, 0),
(517, '2021-09-03', 'Reslina', 25, 'Enagma Oil', 'JP5841298047', 2, 0),
(518, '2021-09-03', 'Lian Ndruru', 41, 'Chumariz ', 'JP8987984793', 2, 0),
(519, '2021-09-03', 'Budi haryanto', 4, 'Habatop 3 In 1', 'JP6223391901', 2, 0),
(520, '2021-09-03', 'eko nur cahyo', 7, 'Galgin , gang jie', 'JP3689668677', 2, 0),
(521, '2021-09-03', 'Yusran', 30, 'Chumariz 2 botol', 'JP2500971161', 2, 0),
(522, '2021-09-03', 'ISMAIL', 32, '2 AMBEJOSS+2  SALWA', '002740515676', 4, 0),
(523, '2021-09-03', 'Jex Cipete', 52, 'Vitama ', 'JP4206616313', 2, 0),
(524, '2021-09-03', 'Wiwik', 25, '2 SLW', 'JP8639133699', 2, 0),
(525, '2021-09-03', 'laimi', 26, 'STMN, CNGPLS', 'JP6635418343', 2, 0),
(526, '2021-09-03', 'ikhmania', 41, 'amb,slw', 'JNAC-0020314343', 1, 0),
(527, '2021-09-03', 'Fendi Lamato', 43, 'OS', 'JP1409475698', 2, 0),
(528, '2021-09-03', 'Elis  ', 91, ' GV', 'JP7271709370', 2, 0),
(529, '2021-09-03', 'LALU RUSLAN JAYA', 87, 'AMB,SLW', 'JP6613587830', 2, 0),
(530, '2021-09-03', 'AJAY', 68, 'OS', 'JP0868088326', 2, 0),
(531, '2021-09-03', 'AHMAD RAMDANI', 80, 'OS', 'JP4086121110', 2, 0),
(532, '2021-09-03', 'SYARIF', 53, 'OS', 'JP8938120981', 2, 0),
(533, '2021-09-03', 'H.Enang (Daging)', 65, 'GRH', 'JP2069968451', 2, 0),
(534, '2021-09-03', 'RIFKY', 27, 'OS', 'JP4241934177', 2, 0),
(535, '2021-09-03', 'asep', 97, 'Galgin KRMH', '2710182100000572', 1, 0),
(536, '2021-09-03', 'A. MUHKDA RESWAN. F', 63, 'K-FOKSON 2', 'JP8315537740', 2, 0),
(537, '2021-09-03', 'Ida Mulait ', 58, 'OS + Slp Djie', 'JP5390114564', 2, 0),
(538, '2021-09-03', 'Abay', 98, 'Slp Djie', 'JP0241694616', 2, 0),
(539, '2021-09-03', 'Agung Ramadhan', 87, 'GJ', 'JP3184449184', 2, 0),
(540, '2021-09-03', 'M. Muttaqi Al Kaab', 39, '2 AMB', 'JP9905147876', 2, 0),
(541, '2021-09-03', 'Hindun Halimah', 23, 'TYPHOGELL + ZIIRZAX', 'JP6554260944', 2, 0),
(542, '2021-09-03', 'Erus Kuswandi', 101, 'AMBEJOSS', 'JP0651380100', 2, 0),
(543, '2021-09-03', 'Nara', 78, 'Ambejoss', 'JP0126109809', 2, 0),
(544, '2021-09-03', 'NurulHuda', 10, 'Detopar, pipeca', 'JP4271714773', 2, 0),
(545, '2021-09-03', 'Andi Makkatajangi', 64, 'MDBC', 'JP9126952891', 2, 0),
(546, '2021-09-03', 'Muhlil ', 16, 'CP, STMN', 'JP7196502405', 2, 0),
(547, '2021-09-03', 'Pak Emi', 32, 'Gang Jie ', 'JP4534558724', 2, 0),
(548, '2021-09-03', 'Agus setiawan', 89, 'CP', 'JP9834415892', 2, 0),
(549, '2021-09-06', 'wahyu/bpk puryanto', 29, 'Os', '001443463301', 4, 0),
(550, '2021-09-06', 'eissani', 90, 'Ambe,salwa,gurah', 'JP9664068674', 2, 0),
(551, '2021-09-06', 'syukur alianto', 100, 'Gangjie ,Ghosiah', 'JP6509050097', 2, 0),
(552, '2021-09-06', 'samen', 56, 'Ambejos ,salwa', 'JP2539429742', 2, 0),
(553, '2021-09-06', 'Napsiah', 97, 'Ambejoss,salwa', '002740667356', 4, 0),
(554, '2021-09-06', 'Shynta', 64, 'Ambejoss,salwa', 'JP6611491167', 2, 0),
(555, '2021-09-06', 'ACENG', 54, 'Ambejoss , Salwa', '002740647355', 4, 0),
(556, '2021-09-06', 'Ahmad ', 64, 'ambejos, 2 salwa', 'JP8956461365', 2, 0),
(557, '2021-09-06', 'juni antara', 16, 'MDC,GJIe, gosiah', 'JP7901817149', 2, 0),
(558, '2021-09-06', 'Ratnasari', 3, 'Ambejoss, Zaitop', '002741087276', 4, 0),
(559, '2021-09-06', 'Eygensalemtanan', 54, 'OS,madebig,salep Djie', 'JP4999546327', 2, 0),
(560, '2021-09-06', 'Arfian hendri', 101, 'Gangjie ghosiah', 'JP5717018330', 2, 0),
(561, '2021-09-06', 'Indri', 22, 'OS,SM,BD', 'JP2432312933', 2, 0),
(562, '2021-09-06', 'Zubair', 24, 'BD + PIPECA', 'JP8433516659', 2, 0),
(563, '2021-09-06', 'RIDA RUSMANTO', 78, 'TMUJ,GLGN , HB 3IN 1', '002740863375', 4, 0),
(564, '2021-09-06', 'BPK LAMUN (MINTO', 19, 'OS', '002740863364', 4, 0),
(565, '2021-09-06', 'Niko', 25, 'OKK', 'JP3379482660', 2, 0),
(566, '2021-09-06', 'Bela Rudy', 82, 'OS ', 'JP0453301783', 2, 0),
(567, '2021-09-06', 'andrescalfinermanus', 35, 'gang jie', 'JP1880316631', 2, 0),
(568, '2021-09-06', 'Desia ', 12, 'DTPR.SM', 'JP3001930437', 2, 0),
(569, '2021-09-06', 'Evha Windha Astuti', 19, 'VITAMA', 'JP4397683490', 2, 0),
(570, '2021-09-06', 'Roby darwis', 96, 'VITAMA', 'JP1850195117', 2, 0),
(571, '2021-09-06', 'Bairan', 88, 'OS', 'JP2188610436', 2, 0),
(572, '2021-09-06', 'Melti Herman', 64, 'FOKSON', 'JP0243132625', 2, 0),
(573, '2021-09-06', 'Asniah Amir', 21, '3AMB', 'JP9555145208', 2, 0),
(574, '2021-09-06', 'erfina sari', 99, '2DTPR.2SM', 'JP0060914495', 2, 0),
(575, '2021-09-06', 'Ikhfan_motor', 66, 'AMB.SLWA', 'JP3659697896', 2, 0),
(576, '2021-09-06', 'Didik Saputro', 42, 'GJIE', 'JP6117686020', 2, 0),
(577, '2021-09-06', 'Zainab Az Zahra', 3, 'GRH', 'JP8424169475 ', 2, 0),
(578, '2021-09-06', 'I komang adi priana', 8, 'OS', 'JP6404475611', 2, 0),
(579, '2021-09-06', 'Mama Hanif', 6, 'Amb,Slw', 'JP3347966779', 2, 0),
(580, '2021-09-06', 'Muh Pujiyanto', 35, 'Amb, Slw', 'JP4676646713', 2, 0),
(581, '2021-09-06', 'Murti jaya', 96, 'Amb,Slw', 'JP0953040082', 2, 0),
(582, '2021-09-06', 'Dewi', 79, 'Slimming Herbal Kecil', 'JP9429644084', 2, 0),
(583, '2021-09-06', 'alip', 46, 'Gang Jie Ghosiah', 'JP8054569671', 2, 0),
(584, '2021-09-06', 'Harun', 74, 'OS', 'JP2827446654', 2, 0),
(585, '2021-09-06', 'Anggi Setiawan', 96, 'OS', 'JP6826427860', 2, 0),
(586, '2021-09-06', 'jelita', 94, 'Vitama', 'JP0451898542', 2, 0),
(587, '2021-09-06', 'ABD Kadir', 64, 'Detopar+pipeca', 'JP4248334348', 2, 0),
(588, '2021-09-06', 'Moh Sholeh', 85, 'Gang Jie', 'JP3280670968', 2, 0),
(589, '2021-09-06', 'Saypol', 78, 'Ambejos Salwa', 'JP2990486962', 2, 0),
(600, '2021-09-06', 'Dian Lady Diana', 39, '2 Slimming', 'JP7474369210', 2, 0),
(601, '2021-09-06', 'Suyoko', 68, 'Cengplus', 'JP3213179518', 2, 0),
(602, '2021-09-06', 'Tri Sutrisno, ', 32, 'gangjie', 'JP1535137981', 2, 0),
(603, '2021-09-06', 'Sudarmanto', 77, 'OS', 'JP3358611312', 2, 0),
(604, '2021-09-06', 'Dwi Febri / Sugiarso', 82, 'MDBC', 'JP3879408488', 2, 0),
(605, '2021-09-06', 'Apner Fainekan', 26, 'OS', 'JP8864353672', 2, 0),
(606, '2021-09-06', 'Yus rosi', 79, '3 Salep Salwa', 'JP9884794169', 2, 0),
(607, '2021-09-06', 'Nita Atau Santo', 88, 'Typhogell+Ziirzax', 'JP9493101482', 2, 0),
(608, '2021-09-06', 'Nurul kustina', 15, 'Maddebic Oil+Salep Djie', 'JP9659631539', 2, 0),
(609, '2021-09-06', 'Wahyu Wibowo', 91, 'Undibet', 'JP0843972927', 2, 0),
(610, '2021-09-06', 'Roni', 86, 'Enagma Oil', 'JP7689960003', 2, 0),
(611, '2021-09-06', 'Deny Herlambang', 2, 'Gang Jie', 'JP7664594083', 2, 0),
(612, '2021-09-06', 'Milan Umboyo', 88, 'Detopar + Pipeca', 'JP9454887556', 2, 0),
(613, '2021-09-06', 'Sri Rahayu', 45, 'Amb,kz,Zaitop+Salwa', 'JP8628838341', 2, 0),
(614, '2021-09-06', 'Widodo', 25, 'os sm bd', 'JP6198083968', 2, 0),
(615, '2021-09-06', 'Dede', 91, 'Detopar', 'JP6907782431', 2, 0),
(616, '2021-09-06', 'Sahri Servis', 53, 'Zaitop + Moringa', 'JP9403222494', 2, 0),
(617, '2021-09-06', 'Novrender Ziwalette ', 78, 'os', 'JP7746136871', 2, 0),
(618, '2021-09-06', 'Bpk Suwani', 20, 'Enagma + Cengplus', 'JP7707201455', 2, 0),
(619, '2021-09-06', 'YULIATIN', 58, 'Typhogell + Ziirzax', 'JP6296472058', 2, 0),
(620, '2021-09-06', 'Onasis ', 51, 'os', 'JP6511989307', 2, 0),
(621, '2021-09-06', 'Faiz', 55, 'Gangjie', 'JP0430866546', 2, 0),
(622, '2021-09-06', 'Kartika', 15, 'AMB, SLWA', 'JP0201270159', 2, 0),
(623, '2021-09-06', 'Turopah (Ibu Marsih', 58, 'AMB, ZAI, SLW', 'JP7195149305', 2, 0),
(624, '2021-09-06', 'Maryati', 46, 'KS + TYPO', 'JP1588577333', 2, 0),
(627, '2021-09-06', 'Riya ', 89, 'AMB', 'JP8229663481', 2, 0),
(628, '2021-09-06', 'Wahyudi Al Jelani', 31, 'AMB, SLW', 'JP1127546880', 2, 0),
(630, '2021-09-06', 'Yudhi Kurniawan ', 87, 'OS', 'JP8757683379', 2, 0),
(632, '2021-09-06', 'Diyana Nataliya', 37, 'Slimming Kecil ', 'JP8936784808', 2, 0),
(633, '2021-09-06', 'Halimah', 75, '2 Enagma Oil', 'JP2979506256', 2, 0),
(634, '2021-09-06', 'Pak Enceh', 54, 'Ziirzak + Pipeca', 'JP0407752752', 2, 0),
(635, '2021-09-06', 'Iman', 75, 'Spirulina ', 'JP0750937372', 2, 0),
(636, '2021-09-06', 'Eka Putri', 17, 'Gurah V + Tvs Crystal', 'JP5027195950', 2, 0),
(637, '2021-09-06', 'erdaleni', 10, 'VITAMA ', '002740904065', 4, 0),
(638, '2021-09-06', 'Sumanto Ibnu Prasetyo', 57, 'OS ', '001443486378', 4, 0),
(640, '2021-09-06', 'Natasya dhiya sabitah', 63, 'GURAH SUARA', 'JP6581649592', 2, 0),
(641, '2021-09-06', 'Febiferanto  ', 26, 'CP', 'JP9738002803', 2, 0),
(642, '2021-09-06', 'Amelia Indah Sari', 43, 'CP', 'JP1608775891', 2, 0),
(643, '2021-09-06', 'Jefri ', 28, 'CP', 'JP8106016353', 2, 0),
(644, '2021-09-06', 'Zulkifli ', 27, 'CP', 'JP8418187343', 2, 0),
(645, '2021-09-06', 'Irwan Ibu Imas', 82, 'CP', 'JP1931711469', 2, 0),
(646, '2021-09-06', 'Samuel Sihotang', 32, 'CP', 'JP1002714809', 2, 0),
(648, '2021-09-06', 'Junaidi', 46, '2CP', 'JP2383248430', 2, 0),
(649, '2021-09-06', 'Khusnul Khotimah', 71, 'CP', 'JP9927907449', 2, 0),
(650, '2021-09-06', 'Triafian', 88, 'CP', 'JP9615906795', 2, 0),
(651, '2021-09-06', 'Syamsina', 69, '2 SLIMMING', 'JP9967344494', 2, 0),
(652, '2021-09-06', 'Bidria', 48, 'AMB', 'JP3992602853', 2, 0),
(653, '2021-09-06', 'Sahril', 85, 'CP', 'JP4382116990', 2, 0),
(654, '2021-09-06', 'Pacecono', 12, 'KS +TYP', 'JP1053336295', 2, 0),
(655, '2021-09-06', 'Ade Setyana', 42, 'HB,CNTLOSS, BIO+  BD', 'JP0838380864', 2, 0),
(656, '2021-09-06', ' Ali mukti ', 61, 'VITAMA', '002740780373', 4, 0),
(657, '2021-09-06', 'Wiwik Widarti', 65, 'TYPHOGELL + ZIIRZAX', 'JP8356437490', 2, 0),
(658, '2021-09-06', 'Amin Nugroho ', 82, 'Madu Habatusauda', 'JP4377631296', 2, 0),
(659, '2021-09-06', 'Arum firmania', 4, 'MAULANA', 'JP2043683045', 2, 0),
(660, '2021-09-06', 'Mustingah (mama ratna),', 16, 'SALEP DJIE', 'JP4670619153', 2, 0),
(661, '2021-09-06', 'SUTA', 15, 'VITAMA', '002741265177', 4, 0),
(662, '2021-09-06', 'ASEP BRONDONG', 27, 'Ambjoss 1Pcs, Salwa 2pcs', '001563628792', 4, 0),
(663, '2021-09-06', 'supratiyanto', 9, 'OKK', '001443477158', 4, 0),
(665, '2021-09-06', 'Arloys', 76, 'Ambejoss Salwa', 'JP6410846679 ', 2, 0),
(666, '2021-09-06', 'Harison', 11, 'Maddebic Salep Djie ', 'JP6365788067 ', 2, 0),
(667, '2021-09-06', 'WARDI', 5, 'Salep Djie 2, GJ', 'JP1059005858 ', 2, 0),
(668, '2021-09-06', 'Yuniarsih', 21, 'OKK', 'JP3753995021', 2, 0),
(669, '2021-09-06', 'Sintiya Monika A', 53, 'GJ SM Ziirzax Typhogell', 'JP9127044192', 2, 0),
(670, '2021-09-06', 'Yono', 44, 'Gangjie galgin', '001563630150', 4, 0),
(671, '2021-09-06', 'Dyan Priscillia', 71, 'ENAGMA ', '002740687859', 4, 0),
(672, '2021-09-06', 'Bayu dwi saputra ', 90, 'MPK ', 'JP9615820759', 2, 0),
(673, '2021-09-06', 'Hartika putrie', 29, 'OS ', '002741098522', 4, 0),
(674, '2021-09-06', 'Rizki Khusniya Ulfa', 59, 'OS, MDBC, SDJIE', 'JP4230445914', 2, 0),
(675, '2021-09-06', 'Lusi Handayani', 20, 'AMB, SLW', 'JP0878965621', 2, 0),
(676, '2021-09-06', 'M.ARIYANTO', 17, 'MDBC', 'JP5498858980', 2, 0),
(677, '2021-09-06', 'Alhadi Putra', 88, 'OS', 'JP6230290214', 2, 0),
(678, '2021-09-06', 'Kiki Riski Ananda', 32, 'Curbamin  + Sambiloto', '002740923760', 4, 0),
(679, '2021-09-06', 'Deny Herlambang', 19, 'GJ + GS', 'JP3805675382', 2, 0),
(680, '2021-09-06', 'Abah Ditha', 92, 'Temujie + HB + Sambiloto ', 'JP4082068091', 2, 0),
(681, '2021-09-06', 'MURTOFIAH', 8, 'HB +  Ajiba + Chumariz', '002741218267', 4, 0),
(682, '2021-09-06', 'M. MUSAIRI', 13, 'KTLS', 'JP6874323703', 2, 0),
(683, '2021-09-06', 'Tari', 57, 'KS,TY', 'JP8343271880', 2, 0),
(684, '2021-09-06', 'Wandi', 4, 'SLMNG', 'JP2646060224', 2, 0),
(685, '2021-09-06', 'Jazim sakuri', 23, '1 eximtas, 1 BD, 1 exclear', 'JP6160436042', 2, 0),
(686, '2021-09-06', 'Agustinus nono', 37, '(1 eximtas, 1 BD, 1 exclear', '002741125316', 4, 0),
(687, '2021-09-06', 'Dedi irawan', 9, 'Ambjs, salwa', '002741170992', 4, 0),
(688, '2021-09-06', 'Eksan', 74, '2 GJ + 2 GS + 2 BD + 2 HB', 'JP5244322626', 2, 0),
(689, '2021-09-06', 'Frederik Mansawan', 5, 'GJ + GS + BD + HB', 'JP0082951258', 2, 0),
(690, '2021-09-06', 'Mila', 2, ' Maddebic  + Salep Djie', 'JP3026898300', 2, 0),
(691, '2021-09-06', 'Lutfi', 54, 'GJ + GS + BD + HB', 'JP2540615832', 2, 0),
(692, '2021-09-06', 'Ismanto', 1, 'GJ + GS + Maddebic +  Djie', 'JP3877834259', 2, 0),
(693, '2021-09-06', 'Samuel Seweyei', 58, 'GJ + GS + BD + HB', 'JP9800541986', 2, 0),
(694, '2021-09-06', 'Denik ulansari', 43, 'Gangjie, SM, Ziirzax', 'JP3503817343', 2, 0),
(695, '2021-09-06', 'Herdin SECURITY', 43, 'Gangjie', '002593360335', 4, 0),
(696, '2021-09-06', 'Nurhayati ', 13, '2 KS, 2 TY, SLP DJIE', 'JP9689491709', 2, 0),
(697, '2021-09-06', 'Andi bin nian', 91, 'Zaitop', 'JP6801838715', 2, 0),
(698, '2021-09-06', 'Aulia ', 26, 'Salep DJie', 'JP1112540943', 2, 0),
(699, '2021-09-06', 'Gera Tri Anjaswara', 73, 'GANG JIE', '002593427731', 4, 0),
(700, '2021-09-06', 'Muhammad Ripa ', 94, 'Ganf Jie, Kapsul BD', '002593679325', 4, 0),
(701, '2021-09-06', 'M. Yahya', 30, 'OS, SM, HABATOP', 'JP4723119214', 2, 0),
(702, '2021-09-06', 'Anna Nor Hayati', 29, 'Os zirzak ', 'JP0144345552', 2, 0),
(703, '2021-09-06', 'Risa', 70, 'Os ,maddebic, djie ', 'JP0322668253', 2, 0),
(704, '2021-09-06', 'Nica Yulita/ Susilo', 23, 'K-FOKSON 2', 'JP3947295547', 2, 0),
(705, '2021-09-06', 'Haerul ', 37, 'OS', 'JP2411252616', 2, 0),
(706, '2021-09-06', 'Bu Akbar', 25, 'Amb + Salwa', 'JP0011819979', 2, 0),
(707, '2021-09-06', 'Sadikin', 95, 'Amb + Salwa', 'JP6653026153', 2, 0),
(708, '2021-09-06', 'heri susanto', 30, 'Os', 'JP2003314135', 2, 0),
(709, '2021-09-06', 'Wawan', 93, 'Gangjie ', 'JP1216784378', 2, 0),
(710, '2021-09-06', 'Junaidi', 91, '2 Paket Galgin  , Gangjie', 'JP4983339959', 2, 0),
(711, '2021-09-06', 'Eko Haryanto', 27, 'Centiloss', 'JP5688435542', 2, 0),
(712, '2021-09-06', 'Lardin', 91, 'BD, Exsimtas, Minyak ', 'JP5839667870', 2, 0),
(713, '2021-09-06', 'Didi Rahmat', 52, 'Amb, Zaitop, Salwa', 'JP5285506688', 2, 0),
(714, '2021-09-06', 'Sulistyorini', 24, 'K-FOKSON 1', 'JP6406363505', 2, 0),
(715, '2021-09-06', ' Klinton Malau ', 11, 'OS', 'JP7671073641', 2, 0),
(716, '2021-09-06', 'Esther Lily Tuwaidan', 100, 'K-FOKSON 2', 'JP0364185322', 2, 0),
(717, '2021-09-06', 'Ibu Anita', 73, 'MORINGA+ HABATOP', 'JP1721852302', 2, 0),
(718, '2021-09-06', 'Mia Ferlin( Bilqis', 54, 'Ceng plus', 'JP7933717188', 2, 0),
(719, '2021-09-06', 'Ihcwan Pratama', 98, 'OS', '002740959707', 4, 0),
(720, '2021-09-06', 'Abyan', 62, 'K-F-fokson', 'JP3526624580', 2, 0),
(721, '2021-09-06', 'Zakaria sanjaya ', 76, 'OS ', '001443483624', 4, 0),
(722, '2021-09-06', 'Yudi Suwondo', 97, 'Salep Djie', 'JP0016635206', 2, 0),
(723, '2021-09-06', 'Hariyanto', 26, 'KUTILOS', 'JP4500167996', 2, 0),
(724, '2021-09-06', 'Nunu', 37, 'Vitama', 'JP6065163122', 2, 0),
(725, '2021-09-06', 'asep', 15, 'OS, Pipeca, Habatop', 'JNAC-0020392144', 1, 0),
(726, '2021-09-06', 'Khairani', 68, 'OS, Pipeca, Habatop', 'JP3758808540', 2, 0),
(727, '2021-09-06', 'Nurwahida', 101, 'Maddebic', 'JP9203082391', 2, 0),
(728, '2021-09-06', 'Endang Mulyana', 68, 'OKK', 'JP8671330391', 2, 0),
(729, '2021-09-06', 'Andi ', 62, 'Enagma oil', 'JP6707188125', 2, 0),
(730, '2021-09-06', 'Onasis', 59, 'Madebic+Djie+GJ+GS', 'JP1359878051', 2, 0),
(731, '2021-09-06', 'Doni', 91, '#GJ + GS', 'JP6590168635', 2, 0),
(732, '2021-09-06', 'Dwi Santoso', 100, 'Pipeca + Detopar', 'JP6770604956', 2, 0),
(733, '2021-09-06', 'Hasan Abdillah', 73, 'GJ + GS ', 'JP1958630883', 2, 0),
(734, '2021-09-06', 'Sunus', 77, 'Gj + Gs', 'JP1720904392', 2, 0),
(735, '2021-09-06', 'Ilham Saputra', 70, 'GJ + GS ', 'JP8078662307', 2, 0),
(736, '2021-09-06', 'Muhamad Fahru', 45, 'GJ + GS', 'JP1082049316', 2, 0),
(737, '2021-09-06', 'Akhmad Amrudin', 59, 'GJ + GS', 'JP1353838990', 2, 0),
(738, '2021-09-06', 'Lina', 37, 'Ambejos + Salwa', 'JP3923103233', 2, 0),
(739, '2021-09-06', 'Agnes', 39, 'Maddebic Oil ,', 'JP2074783514', 2, 0),
(740, '2021-09-06', 'Hj Onya / H agus', 81, 'k fokson', 'JP0357586363', 2, 0),
(741, '2021-09-06', 'Sania Desliani', 48, 'sliming ', 'JP4081776804', 2, 0),
(742, '2021-09-06', 'Angga Christian inaray', 74, 'gangji, zirzx', 'JP0641744481', 2, 0),
(743, '2021-09-06', 'Jln.A.yani ', 99, 'smblto, hbtp 3in1', 'JP0911372870', 2, 0),
(744, '2021-09-06', 'ERYN RAMBU', 50, 'sliming ', 'JP3315010358', 2, 0),
(745, '2021-09-06', 'Ana Andriana', 41, 'CRBMIN,HB, CNTL ,SMBLTO', 'JP4662958707', 2, 0),
(746, '2021-09-06', 'Rifa Edison', 19, 'K-Fokson', 'JP5946135530', 2, 0),
(747, '2021-09-06', 'Dayat', 47, '2 CP + 2 GOLDEN BEE', 'JP2964725260', 2, 0),
(748, '2021-09-06', 'Chaerul Umam', 94, 'CENG PLUS + ENAGMA OIL', 'JP5985841145', 2, 0),
(749, '2021-09-06', ' Jessica Malikidini', 85, 'Madebic ', 'JP3317544179', 2, 0),
(750, '2021-09-06', 'Boby ', 10, 'OS', 'JP9090668844', 2, 0),
(751, '2021-09-06', 'Elpansyah', 45, 'AMB', 'JNAC-0020332194', 1, 0),
(752, '2021-09-06', 'Feri', 16, 'HABATOP', 'JP8886607971', 2, 0),
(753, '2021-09-06', 'Yanthi', 8, 'Ziirzax + Gang Jie', 'JP2187436183', 2, 0),
(754, '2021-09-06', 'Nivi Dede H', 4, 'HABATOP ', 'JP3364918078', 2, 0),
(755, '2021-09-06', 'Rahim Nopi Sukarno', 92, 'Bio Aura', 'JNAC-0020293654', 1, 0),
(756, '2021-09-06', 'Matroji', 62, 'Salep Exclear', '001443488328', 4, 0),
(757, '2021-09-06', 'Muslim', 14, 'Ceng Plus + Stamin', '001443500015', 4, 0),
(758, '2021-09-06', 'M.Rizal/ ijang', 5, 'EXT, BD, EX', 'JP3477706297', 2, 0),
(759, '2021-09-06', 'Supri Yanto ', 40, 'OS', 'JP5546583056', 2, 0),
(760, '2021-09-06', 'Ridwansyah', 12, 'Exm-bd-exclr', 'JP1767281839', 2, 0);
INSERT INTO `transaksi` (`id`, `tanggal`, `konsumen`, `id_marketing`, `obat`, `resi`, `id_expedisi`, `status_transaksi`) VALUES
(761, '2021-09-06', 'Kemas M Hatta', 68, 'Amb-zait-ks-slw', 'JP8580972121', 2, 0),
(762, '2021-09-06', 'Antonia Resari', 57, 'Maddebic ', 'JNAC-0020395899', 1, 0),
(763, '2021-09-06', 'bustami', 6, 'HBTOPBSR', '002741137249', 4, 0),
(764, '2021-09-06', 'Nurul Qomariya', 56, 'KS', 'JP3545646079', 2, 0),
(765, '2021-09-06', 'Sila', 94, 'STMN, CNGPLS', 'JP3011641575', 2, 0),
(766, '2021-09-06', 'ELFIADI', 23, 'CPLUS', 'JNAC-0020392322', 1, 0),
(768, '2021-09-06', 'reja', 28, 'CPLUS', 'JNAC-0020391954', 1, 0),
(769, '2021-09-06', 'Aditya aprilianto p', 20, '2 OS', 'JP7351015264', 2, 0),
(770, '2021-09-06', 'Gusrira Yanti', 84, 'AMB, SLW', 'JP7725312975', 2, 0),
(771, '2021-09-06', 'Dimas Adi Saputro', 97, 'OS', 'JP3853374469', 2, 0),
(772, '2021-09-06', 'Ridho Abdillah', 17, 'HBTP BESAR', 'JP9140474976', 2, 0),
(773, '2021-09-06', 'Sri Wahyuni', 41, 'CNTLS,MRCI', 'JNAC-0020393815', 1, 0),
(774, '2021-09-06', 'ARI FARIYANTO', 97, 'AMB,SLW', 'JNAC-0020387339', 1, 0),
(775, '2021-09-06', 'Annisa Liz Indriati', 21, 'EXIMTAS,EXCL', 'JP5946897825', 2, 0),
(776, '2021-09-06', 'TINUS NAFANIA', 46, '2AMB,2SLW', 'JP8701411070', 2, 0),
(777, '2021-09-06', 'ROHAYATI', 3, 'AMB,SLW', 'JP4605500303', 2, 0),
(778, '2021-09-06', 'TOBBA', 16, 'DTPR,SM', 'JP8153172682', 2, 0),
(779, '2021-09-06', 'Diki Chandra', 30, 'OS', 'JNAC-0020398359', 1, 0),
(780, '2021-09-06', 'HERNAH', 97, 'AMB,SLW', 'JP0398408100', 2, 0),
(781, '2021-09-06', 'NUROCHIM', 1, 'AMB', 'JP5711713374', 2, 0),
(782, '2021-09-06', 'An. Ilham', 66, 'Os', '002741199582', 4, 0),
(783, '2021-09-06', 'YAYU HANIFAH', 18, 'SMG,hB,Maulana', 'JP8904054711', 2, 0),
(784, '2021-09-06', 'fathorrahman', 82, 'Gang jie', 'JP6713784415', 2, 0),
(785, '2021-09-06', 'nung ank jaro sukri', 17, 'CPLUS', 'JNAC-0020391982', 1, 0),
(786, '2021-09-06', 'Liya', 70, 'AMB, ZAI, KS, SLW', '002741102394', 4, 0),
(797, '2021-09-06', 'Ahmad Wahyudi', 33, 'CP', 'JP6984950115', 2, 0),
(798, '2021-09-06', 'Hasrul', 5, 'OS', 'JP7738427354', 2, 0),
(799, '2021-09-06', 'Made Widana', 30, 'Amb, Salwa', 'JP1479543761', 2, 0),
(800, '2021-09-07', 'Windy Ari ', 7, 'OS', 'JP0561837293', 2, 0),
(801, '2021-09-07', 'hendro', 89, 'VTMA', 'JNAC-0020447674', 1, 0),
(802, '2021-09-07', 'irvan', 10, 'CPLUS', 'JNAC-0020442023', 1, 0),
(803, '2021-09-07', 'Pratama Rendy', 96, 'OS madebbic oil salep djie ', 'JP1285530420', 2, 0),
(804, '2021-09-07', 'Marjito', 64, 'Zirzak ', 'JP1749838778', 2, 0),
(805, '2021-09-07', 'Sarun/sartika', 49, 'Galgin Karomah', 'JP2250760495', 2, 0),
(806, '2021-09-07', 'Karsono ', 95, 'GJIE,HTOP,SM , MAULANA', 'JP9020317618', 2, 0),
(807, '2021-09-07', 'Zahra', 62, 'Gangjie,SM,MADDIC,SLP +', 'JP9936505398', 2, 0),
(808, '2021-09-07', 'Nandi', 79, 'gang jie ', 'JP3912306876', 2, 0),
(809, '2021-09-07', 'Ajat', 61, 'Os', 'JP0966749712', 2, 0),
(810, '2021-09-07', 'Abaikan Hia', 70, 'VITAMA', 'JP8340223201', 2, 0),
(811, '2021-09-07', 'Adies Ananda ', 4, 'Bio aura', 'JP6478905109', 2, 0),
(812, '2021-09-07', 'Evi Manik', 64, 'zIIRZAX + GANG JIE', 'JP5043810096', 2, 0),
(813, '2021-09-07', 'Muhammad Hasan W', 3, 'AMBEJOSS ', 'JP2500787334', 2, 0),
(814, '2021-09-07', 'Yulia', 41, 'Salep Djie', 'JP6066629676', 2, 0),
(815, '2021-09-07', 'Salwa', 45, 'MPK', 'JP0060612562', 2, 0),
(816, '2021-09-07', 'Salman', 92, 'Vitama', 'JP6416576091', 2, 0),
(817, '2021-09-07', 'Srimulyani', 91, 'Bio Aura', 'JP3720076020', 2, 0),
(818, '2021-09-07', 'Deo Mukriadi', 69, 'OS', 'JP6942145768', 2, 0),
(819, '2021-09-07', 'Mas Al ', 23, 'OS', 'JP0711031396', 2, 0),
(820, '2021-09-07', 'Anton Bambang', 50, 'CNTLS,MRCI', 'JP5359205611', 2, 0),
(821, '2021-09-07', 'ROFIK', 44, 'AMB,SLW', 'JP0493622534', 2, 0),
(822, '2021-09-07', 'Wahyu rizki a', 12, 'OS', 'JP1075779088', 2, 0),
(823, '2021-09-07', 'ELY MARIANI', 24, 'OS', 'JP3233242551', 2, 0),
(824, '2021-09-07', 'KODRI WINARNO', 2, 'EXIMTAS,BD,EXCL(BONUS)', 'JP8199625111', 2, 0),
(825, '2021-09-07', 'Nyoman darmika', 93, 'EXIMTAS,BD,EXCL(BONUS)', 'JP8302706725', 2, 0),
(826, '2021-09-07', 'AJI WAHYONO', 79, 'OS', 'JP1405479917', 2, 0),
(827, '2021-09-07', 'Ibu Efi', 60, 'Galgin  + gang jie', 'JP1118551138', 2, 0),
(828, '2021-09-07', 'IBU LINA', 32, 'Ceng Plus + Enagma Oil', 'JP1430008743', 2, 0),
(829, '2021-09-07', 'FB. Indira Tri P', 83, 'GJ+Galgin karomah#', 'JP5412621849', 2, 0),
(830, '2021-09-07', 'Riska Handayani ', 93, 'Ambejoz+Ziirzak+Zaitop', 'JP1747974988', 2, 0),
(831, '2021-09-07', 'Efrinda STT', 17, 'Ambejoz+Zaitop+Salwa', 'JP7824184486', 2, 0),
(832, '2021-09-07', 'Jaenal Yuhana', 80, 'Gang Jie  + Ghosiah', 'JP7657304079', 2, 0),
(833, '2021-09-07', 'Joni ', 55, 'Detopar', 'JP3399894170', 2, 0),
(834, '2021-09-07', 'Asep Supriadi', 4, 'Detopar+Pipeca', 'JP9943940031', 2, 0),
(835, '2021-09-07', 'Joseph Julian P', 71, 'GJ + GS', 'JP3501966915', 2, 0),
(836, '2021-09-07', 'Ustadz Khottob', 1, '2 AMB,2 KS,2 Ztp,2 SLWA', 'JP7591292152', 2, 0),
(837, '2021-09-07', 'Erlina ', 86, 'HBTP JUMBO', 'JP0242834597', 2, 0),
(838, '2021-09-07', 'Mariatin masli', 40, 'SLW', 'JP4456160711', 2, 0),
(839, '2021-09-07', 'Setia Bintang', 76, 'AMB, SLW', 'JP9422811826', 2, 0),
(840, '2021-09-07', 'Gunawan nasram', 68, 'AMB, SLW', 'JP4696761677', 2, 0),
(841, '2021-09-07', 'Muhammad Wasidi', 17, 'Amb, Salwa', 'JP9368300186', 2, 0),
(842, '2021-09-07', 'Reno', 76, 'Enagma Oil ', 'JP8271494976', 2, 0),
(843, '2021-09-07', 'Kastomy/Jonly', 78, 'Chumariz ', 'JP6027293835', 2, 0),
(844, '2021-09-07', 'Dody Hartanto', 96, '2 Ziirzax + 2 Typhogell', 'JP9159637901', 2, 0),
(845, '2021-09-07', 'EKO JUNIANTO', 69, 'Ziirzax + Pipeca', 'JP6555678907', 2, 0),
(846, '2021-09-07', 'Tobat Sihombing', 31, 'GJ + GS', 'JP5255752742', 2, 0),
(847, '2021-09-07', 'I KADEK ARIDANA', 74, 'Samurago,habatop3in1', 'JP7948676312', 2, 0),
(848, '2021-09-07', 'ROHMAN HERMAWAN,', 69, 'CHUMARIZ', 'JP6981305227 ', 2, 0),
(849, '2021-09-07', 'amar patih', 34, 'GANG JIE', 'JP4760442473 ', 2, 0),
(850, '2021-09-07', 'Sarno', 36, 'OS', 'JP2819268027', 2, 0),
(851, '2021-09-07', 'Samsuri', 95, 'KS + TYPO', 'JP8213770709', 2, 0),
(852, '2021-09-07', 'Titin Suhartini', 86, 'Vitama', 'JP1441813929', 2, 0),
(853, '2021-09-07', 'Timu', 42, 'OS, Kapsul BD, Habatop', 'JP6579305660', 2, 0),
(854, '2021-09-07', 'Warkana, Ruminih', 53, 'OS, SM, BD, MADE, SLP+', 'JP8895523332', 2, 0),
(855, '2021-09-07', 'Arvel Patahul Ichsan', 36, 'Ziirzax + Pipeca', 'JP3506585822', 2, 0),
(856, '2021-09-07', 'Ilham', 79, 'Ambejoss + Salwa', 'JP4591913548', 2, 0),
(857, '2021-09-07', 'Zulkipli', 13, 'Gangjie ', 'JP8436580697 ', 2, 0),
(858, '2021-09-07', 'Ade Apriyani', 27, '1 Typhogell + 2 Zirzax', 'JP5428602250', 2, 0),
(859, '2021-09-07', 'Sudarno', 100, 'Gj + Gs', 'JP7738343565', 2, 0),
(860, '2021-09-07', 'Dila Dian', 61, ' K-Fokson ', 'JP2877568145', 2, 0),
(861, '2021-09-07', 'Imanuel Sianipar ', 77, 'GJ & GS', 'JP9599742083', 2, 0),
(862, '2021-09-07', 'Fatim', 48, 'GJ+ GS', 'JP0538207762', 2, 0),
(863, '2021-09-07', 'Mughiroh', 38, 'STMN,CP+,CNTLS,MRCI', 'JP7320267711', 2, 0),
(864, '2021-09-07', 'OLFA diya azfar', 32, 'sukdjie', 'JP6298607894', 2, 0),
(865, '2021-09-07', 'Bambank', 46, 'BD', 'JP5125443093', 2, 0),
(866, '2021-09-07', 'Arif suprapto', 63, 'AMB, SLW', 'JP4479976427', 2, 0),
(867, '2021-09-07', 'Ilham ', 82, 'MDBIC', 'JP6503406620', 2, 0),
(868, '2021-09-07', 'Oktavi ika c', 62, 'AMB.SLWA', 'JP1566939029', 2, 0),
(869, '2021-09-07', 'Saul ', 29, 'VTMA', 'JP8699765081', 2, 0),
(870, '2021-09-07', 'Winda Tianse', 64, 'OS', 'JP4669384895', 2, 0),
(871, '2021-09-07', 'Nur Pranita', 99, 'DTPR.SM', 'JP1294651415', 2, 0),
(872, '2021-09-07', 'Jazilah ', 55, 'DTPR.SM', 'JP7196264022', 2, 0),
(873, '2021-09-07', 'Yohanes', 19, 'OS', 'JP7565100747', 2, 0),
(874, '2021-09-07', 'Catur ', 73, 'CENTILOS,MORICI', 'JP7845586581', 2, 0),
(875, '2021-09-07', 'Nurul', 39, 'Amb,Ztp,KS, Salwa', 'JP3664269890', 2, 0),
(876, '2021-09-07', 'Yani ', 12, 'VTMA 2', 'JP4465310917', 2, 0),
(877, '2021-09-07', 'YOGI PRATAMA SM', 55, 'VTMA', 'JP3367167415', 2, 0),
(878, '2021-09-07', 'willy apriyani ', 70, 'CP', 'JP8259692821', 2, 0),
(879, '2021-09-07', 'Andi febrianto', 101, 'CP', 'JP3717536704', 2, 0),
(880, '2021-09-07', 'dewi ', 74, 'CP+Engma+Gurah V', 'JP3332943679', 2, 0),
(881, '2021-09-07', 'Dini Oktavia', 101, 'GJ', 'JP9748442768', 2, 0),
(882, '2021-09-07', 'Alan Guba', 84, 'CP', 'JP0725609209', 2, 0),
(883, '2021-09-07', 'Osdi saputra', 58, 'CP', 'JP8684401746', 2, 0),
(884, '2021-09-07', 'Rizky Maulana Fadhilah', 92, 'CP', 'JP3564630169', 2, 0),
(885, '2021-09-07', 'Dedek Anjar  ', 52, 'BIO AURA', 'JP8848826475', 2, 0),
(886, '2021-09-07', 'Anisa/bpk sulkin ', 12, 'KFOKSON', 'JP5319025855', 2, 0),
(887, '2021-09-07', 'Anggita Farid ', 73, 'CP', 'JP5671139457', 2, 0),
(888, '2021-09-07', 'SintaDakotalot', 48, 'AMB', 'JP2912912305', 2, 0),
(889, '2021-09-07', 'parjiyanto', 51, '4 centilos 4 morici', 'JP8611289420', 2, 0),
(890, '2021-09-07', 'Bilal pani arya a', 23, 'Centiloss+Morici', 'JP0890615627', 2, 0),
(891, '2021-09-07', 'Edi Priyono ', 6, 'Cengplus+stamin', 'JP5223396290', 2, 0),
(892, '2021-09-07', ' Tio Manullang', 20, 'Moringa+Zaitop+HB', 'JP9900975791', 2, 0),
(893, '2021-09-07', 'Muhamad Candra M', 96, 'Gang jie', 'JP0652742443', 2, 0),
(894, '2021-09-07', 'Jokoriyanto', 86, 'BD, EXMTS, SLP EXC', 'JP8517327540', 2, 0),
(895, '2021-09-07', 'Java elektronik', 85, 'Os', 'JP1139682597', 2, 0),
(896, '2021-09-07', 'Misyono', 12, 'Os', 'JP9944397436', 2, 0),
(897, '2021-09-07', ' La Sampe  ', 65, '4 zirzax, 4 typo', 'JP1108391141', 2, 0),
(898, '2021-09-07', 'Nasikin ', 8, 'DTPR, SM', 'JP4114241130', 2, 0),
(899, '2021-09-07', 'AlifPutraPratama ', 16, 'GJ', 'JP7923107498', 2, 0),
(900, '2021-09-07', 'Riki motor ', 66, 'DTPR, SM', 'JP6717631368', 2, 0),
(901, '2021-09-07', 'I Made Darma', 50, 'GJ + GS + BD + PIPECA', 'JP3838570370', 2, 0),
(902, '2021-09-07', 'Nurwahid', 40, 'OS, cengplus, stamina', 'JP6212999081', 2, 0),
(903, '2021-09-07', 'Endah', 28, 'SLIMING BESAR', 'JP2699175948', 2, 0),
(904, '2021-09-07', 'Samsia darime', 8, 'Zirsax & typogell', 'JP7936088313', 2, 0),
(905, '2021-09-07', 'Erwan Martianto', 55, 'Vitama', 'JP7069884183', 2, 0),
(906, '2021-09-07', 'Titi Yanti ', 67, 'BD, Exsimtas,  Maulana', 'JP8968313730', 2, 0),
(907, '2021-09-07', 'Rian Munandar', 17, 'OS', 'JP7995582310', 2, 0),
(908, '2021-09-07', 'Hasnah', 98, 'Chumariz 2 + Pipeca 2', 'JP2936665566', 2, 0),
(909, '2021-09-07', 'Tomi', 14, 'OS', 'JP8211806683', 2, 0),
(910, '2021-09-07', 'Syamsulbahri', 39, 'Chumariz + Pipeca', 'JP5220856413', 2, 0),
(911, '2021-09-07', 'Amy ACC ', 97, 'Ambejoss+salwa', 'JP5887135184', 2, 0),
(912, '2021-09-07', 'Agus Saputra', 5, 'Chumariz', '001443518479', 4, 0),
(913, '2021-09-07', 'Rizki ', 101, 'OS ', '001443526500', 4, 0),
(914, '2021-09-07', 'Memet   ', 99, 'OS, SM, BD', '001443517838', 4, 0),
(915, '2021-09-07', 'Ibu Mubayinah', 81, 'VITAMA', '002741550090', 4, 0),
(916, '2021-09-07', 'Aria Marta', 89, 'Os', '002741489278', 4, 0),
(917, '2021-09-07', 'Yayan Sopyan', 91, 'Ambjs, zaitop, slwa', '002741465735', 4, 0),
(918, '2021-09-07', 'Lailatul Ilmiah', 66, 'DETOPAR + PIPECA', '002741674477', 4, 0),
(919, '2021-09-07', 'M Ridha Alfathir', 32, '2 GJ + 2 GS', '002741631063', 4, 0),
(920, '2021-09-07', 'Fitri Handayani', 53, 'SALEP SALWA', '002741490454', 4, 0),
(921, '2021-09-07', 'Ahmad Toyib', 56, 'GJ + GS', '002741639222', 4, 0),
(922, '2021-09-07', 'Pak Suli', 92, 'Temujie + Habatop', '002741587428', 4, 0),
(923, '2021-09-07', 'Pak Kasmir', 86, 'Curbamin+Sambiloto ', '002741486755', 4, 0),
(924, '2021-09-07', 'Hery', 78, 'GJ + GS', '002741609624', 4, 0),
(925, '2021-09-07', 'Abdullah', 50, 'Detopat + Pipeca', '002741492275', 4, 0),
(926, '2021-09-07', 'Adit', 18, 'OS, ENGMA', '002741364431', 4, 0),
(927, '2021-09-07', 'SUTA', 11, 'Gangdjie', '002741539855', 4, 0),
(928, '2021-09-07', 'Dian Hamdani', 50, 'Detopar, Pipeca', '002741547420', 4, 0),
(929, '2021-09-07', 'sahrul', 56, 'Ambejos, Salwa', '002741445427', 4, 0),
(930, '2021-09-07', 'sutrisno ', 91, 'salep exclear', '002740954966', 4, 0),
(931, '2021-09-07', ' andy muslimin', 15, 'Os', '002741276211', 4, 0),
(932, '2021-09-07', 'MUSLIADI RUMAKUR', 42, 'GJ + GS +  BD + PIPECA', '002741247570', 4, 0),
(933, '2021-09-07', 'JENIKE MALO', 76, 'AMB + ZTP + KS + SLWA', '002741387625', 4, 0),
(934, '2021-09-07', 'dony setyawan  ', 15, 'GJ', '001443515856', 4, 0),
(935, '2021-09-07', 'suhendri/armin ', 46, 'BD + EXMT + SLP EX ', '001443503211', 4, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `trx_selesai`
-- (See below for the actual view)
--
CREATE TABLE `trx_selesai` (
`id` int(11)
,`tanggal` date
,`tanggal_sampai` datetime
,`konsumen` varchar(255)
,`marketing` varchar(255)
,`obat` varchar(255)
,`awb` varchar(255)
,`courier` varchar(50)
,`keterangan` varchar(255)
,`group` varchar(150)
,`status` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Admin', 'admin@a.com', '$2y$10$y0/BZqJOcUIwzH2rHkcfueE.mrf3qARED/VuGfk/Qxm5T0VJwOY6K');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_trx`
-- (See below for the actual view)
--
CREATE TABLE `view_trx` (
`id` int(11)
,`tanggal` date
,`konsumen` varchar(255)
,`marketing` varchar(255)
,`obat` varchar(255)
,`awb` varchar(255)
,`courier` varchar(50)
,`status_transaksi` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `trx_selesai`
--
DROP TABLE IF EXISTS `trx_selesai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trx_selesai`  AS  select `transaksi`.`id` AS `id`,`transaksi`.`tanggal` AS `tanggal`,`rekap`.`tanggal` AS `tanggal_sampai`,`transaksi`.`konsumen` AS `konsumen`,`marketing`.`nama` AS `marketing`,`transaksi`.`obat` AS `obat`,`transaksi`.`resi` AS `awb`,`expedisi`.`kode` AS `courier`,`rekap`.`keterangan` AS `keterangan`,`grup`.`nama` AS `group`,`rekap`.`status` AS `status` from ((((`transaksi` join `expedisi` on(`transaksi`.`id_expedisi` = `expedisi`.`id`)) join `marketing` on(`transaksi`.`id_marketing` = `marketing`.`id`)) join `rekap` on(`rekap`.`id_trx` = `transaksi`.`id`)) join `grup` on(`marketing`.`grup` = `grup`.`id`)) where `transaksi`.`status_transaksi` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `view_trx`
--
DROP TABLE IF EXISTS `view_trx`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_trx`  AS  select `transaksi`.`id` AS `id`,`transaksi`.`tanggal` AS `tanggal`,`transaksi`.`konsumen` AS `konsumen`,`marketing`.`nama` AS `marketing`,`transaksi`.`obat` AS `obat`,`transaksi`.`resi` AS `awb`,`expedisi`.`kode` AS `courier`,`transaksi`.`status_transaksi` AS `status_transaksi` from ((`transaksi` join `expedisi` on(`transaksi`.`id_expedisi` = `expedisi`.`id`)) join `marketing` on(`transaksi`.`id_marketing` = `marketing`.`id`)) where `transaksi`.`status_transaksi` = 0 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expedisi`
--
ALTER TABLE `expedisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekap`
--
ALTER TABLE `rekap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expedisi`
--
ALTER TABLE `expedisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `grup`
--
ALTER TABLE `grup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `rekap`
--
ALTER TABLE `rekap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=954;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
