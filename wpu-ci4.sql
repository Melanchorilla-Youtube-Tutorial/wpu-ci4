-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2021 at 09:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu-ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto Season 1', 'naruto-season-1', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, '2021-11-05 11:11:06'),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL),
(4, 'Eye shield 21', 'eye-shield-21', 'Sandhika Galih', 'Penerbit', '1636128805_13aa5baa7a16be520326.jpg', '2021-11-04 05:49:55', '2021-11-05 11:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-11-06-004207', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1636159717, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Luthfi Nababan', 'Ds. Diponegoro No. 355, Cirebon 71737, Maluku', '2006-07-25 22:32:53', '2021-11-05 22:49:39'),
(2, 'Novi Namaga', 'Ds. Yos Sudarso No. 951, Cimahi 41212, Kaltara', '1982-04-02 19:02:03', '2021-11-05 22:49:39'),
(3, 'Kiandra Rahimah', 'Ki. Jend. A. Yani No. 646, Kendari 97770, Sulteng', '2019-03-08 17:38:55', '2021-11-05 22:49:40'),
(4, 'Eka Anggraini M.M.', 'Dk. Sutami No. 663, Bitung 84155, Bengkulu', '2014-12-10 00:44:38', '2021-11-05 22:49:40'),
(5, 'Ade Rahmawati', 'Kpg. Dewi Sartika No. 771, Tegal 60693, Bali', '2018-10-28 02:57:51', '2021-11-05 22:49:40'),
(6, 'Bakti Omar Januar', 'Kpg. Raya Setiabudhi No. 921, Mataram 42799, Sumsel', '2007-01-27 22:50:07', '2021-11-05 22:49:40'),
(7, 'Ayu Dian Kuswandari', 'Kpg. Pelajar Pejuang 45 No. 773, Parepare 34874, Sultra', '2007-11-28 08:23:41', '2021-11-05 22:49:40'),
(8, 'Puti Suryatmi S.E.I', 'Gg. Bambon No. 162, Tanjung Pinang 63452, NTT', '2007-11-27 13:28:01', '2021-11-05 22:49:40'),
(9, 'Wulan Uyainah S.Gz', 'Jr. Baya Kali Bungur No. 419, Tual 25692, Sultra', '1999-01-22 17:12:06', '2021-11-05 22:49:40'),
(10, 'Bella Padmasari M.M.', 'Gg. Bayan No. 887, Malang 37730, Lampung', '1972-07-30 22:11:59', '2021-11-05 22:49:40'),
(11, 'Sabar Adriansyah', 'Psr. Ujung No. 712, Gunungsitoli 82102, Maluku', '1983-06-10 09:19:59', '2021-11-05 22:49:40'),
(12, 'Hilda Fujiati', 'Ds. Casablanca No. 722, Palangka Raya 40333, NTT', '2004-02-24 00:16:42', '2021-11-05 22:49:40'),
(13, 'Opan Mahfud Hidayanto', 'Gg. Sugiono No. 49, Banjarmasin 96638, Bengkulu', '1970-03-27 06:08:03', '2021-11-05 22:49:40'),
(14, 'Halima Winda Palastri S.T.', 'Psr. Kusmanto No. 889, Padangpanjang 33903, Maluku', '1973-04-16 19:44:34', '2021-11-05 22:49:40'),
(15, 'Cemplunk Pangestu', 'Gg. Karel S. Tubun No. 943, Jayapura 79081, Sumbar', '1970-04-28 02:58:47', '2021-11-05 22:49:40'),
(16, 'Dalima Hassanah M.Pd', 'Jln. Veteran No. 764, Mataram 10835, Sulbar', '2003-09-15 14:36:07', '2021-11-05 22:49:41'),
(17, 'Rina Agustina', 'Ki. Gedebage Selatan No. 403, Administrasi Jakarta Timur 25786, DKI', '2009-08-23 14:19:29', '2021-11-05 22:49:41'),
(18, 'Edi Prasetya', 'Ki. Bak Air No. 408, Parepare 77678, Kaltim', '1976-06-02 05:35:29', '2021-11-05 22:49:41'),
(19, 'Lulut Tampubolon', 'Gg. B.Agam Dlm No. 18, Tomohon 45217, Jabar', '2001-07-30 08:51:09', '2021-11-05 22:49:41'),
(20, 'Cakrabirawa Damanik', 'Gg. Bambon No. 489, Bitung 10913, NTT', '2015-01-28 04:45:24', '2021-11-05 22:49:41'),
(21, 'Prayitna Wacana', 'Jln. Bayam No. 28, Batam 47253, Aceh', '1980-06-08 19:46:35', '2021-11-05 22:49:41'),
(22, 'Kasusra Narpati', 'Kpg. Bawal No. 25, Cimahi 99624, Kepri', '1985-04-15 16:57:23', '2021-11-05 22:49:41'),
(23, 'Pardi Atma Sihotang S.Pt', 'Gg. Untung Suropati No. 982, Medan 26035, Kepri', '2005-11-12 15:21:19', '2021-11-05 22:49:41'),
(24, 'Cawisono Lega Budiyanto', 'Jln. Haji No. 697, Denpasar 30379, DKI', '1986-08-05 02:55:55', '2021-11-05 22:49:41'),
(25, 'Bagiya Raihan Dabukke S.Psi', 'Ds. Jaksa No. 179, Cimahi 73545, Kepri', '1979-12-26 01:39:38', '2021-11-05 22:49:41'),
(26, 'Prasetyo Sirait', 'Gg. Bayam No. 990, Kediri 31624, DIY', '1993-09-16 07:32:41', '2021-11-05 22:49:41'),
(27, 'Ghaliyati Hasna Yuniar S.H.', 'Ki. Baya Kali Bungur No. 843, Magelang 66258, Kepri', '1996-07-09 16:13:44', '2021-11-05 22:49:41'),
(28, 'Gandewa Dongoran', 'Jln. Achmad Yani No. 703, Pariaman 63227, Sumbar', '1975-08-11 13:19:37', '2021-11-05 22:49:41'),
(29, 'Yono Sitorus M.M.', 'Ds. Baranang Siang Indah No. 146, Cirebon 53496, Sumut', '2012-03-02 20:22:13', '2021-11-05 22:49:41'),
(30, 'Uchita Nuraini', 'Kpg. Imam Bonjol No. 43, Padangpanjang 53379, Sumbar', '1999-04-21 23:36:55', '2021-11-05 22:49:41'),
(31, 'Gantar Nugroho S.Gz', 'Ki. Wahidin No. 689, Langsa 22042, Gorontalo', '2013-03-15 06:57:37', '2021-11-05 22:49:41'),
(32, 'Bagiya Candrakanta Pranowo', 'Psr. Ciwastra No. 986, Pagar Alam 15189, Sumsel', '2009-07-18 20:24:23', '2021-11-05 22:49:41'),
(33, 'Titi Astuti', 'Jln. W.R. Supratman No. 727, Probolinggo 24511, Kalteng', '2002-06-11 09:43:03', '2021-11-05 22:49:41'),
(34, 'Jamil Rosman Hakim', 'Psr. Tambak No. 156, Banjar 63009, Aceh', '1980-06-09 23:52:32', '2021-11-05 22:49:41'),
(35, 'Ellis Rahimah S.E.I', 'Jr. Cokroaminoto No. 519, Palopo 41516, Sulbar', '2007-05-24 16:27:39', '2021-11-05 22:49:42'),
(36, 'Kiandra Kamaria Astuti S.Psi', 'Psr. Ciwastra No. 361, Surakarta 74747, Kepri', '1988-03-18 02:13:34', '2021-11-05 22:49:42'),
(37, 'Praba Marbun', 'Jr. Baja Raya No. 928, Bengkulu 62501, Banten', '1983-12-06 15:41:10', '2021-11-05 22:49:42'),
(38, 'Vinsen Gading Sihombing', 'Gg. Barasak No. 244, Tebing Tinggi 23358, Papua', '2011-12-27 20:43:18', '2021-11-05 22:49:42'),
(39, 'Maida Lidya Astuti', 'Jln. Jend. Sudirman No. 448, Palopo 45962, Lampung', '1990-07-08 04:08:46', '2021-11-05 22:49:42'),
(40, 'Panca Haryanto', 'Dk. Baik No. 368, Tasikmalaya 25534, DIY', '2005-01-09 09:36:25', '2021-11-05 22:49:42'),
(41, 'Yance Uyainah', 'Jln. Cut Nyak Dien No. 498, Bontang 48649, Sulbar', '2020-12-03 21:05:27', '2021-11-05 22:49:42'),
(42, 'Emong Maryadi', 'Jr. Baja No. 203, Padangpanjang 38505, Kalbar', '2018-04-03 10:26:13', '2021-11-05 22:49:42'),
(43, 'Hendra Kala Suwarno', 'Kpg. Jakarta No. 792, Palembang 76087, Gorontalo', '1977-08-10 12:31:13', '2021-11-05 22:49:42'),
(44, 'Ikhsan Cemplunk Siregar', 'Psr. Nanas No. 725, Ambon 74989, Riau', '1976-12-26 22:12:40', '2021-11-05 22:49:42'),
(45, 'Radika Situmorang S.Gz', 'Jln. Bak Air No. 244, Palangka Raya 36360, Kalbar', '2018-10-03 20:50:15', '2021-11-05 22:49:42'),
(46, 'Warsa Prayoga Simanjuntak', 'Jr. Kalimantan No. 450, Tidore Kepulauan 20726, Bengkulu', '1984-12-04 08:45:44', '2021-11-05 22:49:42'),
(47, 'Karen Safitri', 'Jr. Kalimantan No. 798, Administrasi Jakarta Utara 59315, Jatim', '1996-10-30 20:16:57', '2021-11-05 22:49:42'),
(48, 'Baktianto Januar', 'Jr. Sampangan No. 429, Subulussalam 27764, Kalteng', '1975-06-30 02:50:36', '2021-11-05 22:49:42'),
(49, 'Luwes Nugraha Adriansyah M.TI.', 'Dk. Krakatau No. 268, Tanjungbalai 29738, Banten', '1983-07-05 16:44:09', '2021-11-05 22:49:42'),
(50, 'Yuliana Hasna Lailasari', 'Dk. Baiduri No. 412, Subulussalam 54778, Kepri', '1981-07-10 08:51:25', '2021-11-05 22:49:42'),
(51, 'Raisa Anita Astuti', 'Ki. Ahmad Dahlan No. 337, Padangsidempuan 13239, Sulteng', '2019-10-09 01:30:43', '2021-11-05 22:49:42'),
(52, 'Irma Widiastuti', 'Psr. Rajawali Barat No. 691, Pekanbaru 20259, Babel', '2004-06-28 11:19:17', '2021-11-05 22:49:42'),
(53, 'Hana Dina Utami S.E.I', 'Ki. Moch. Yamin No. 48, Subulussalam 97772, Sultra', '1986-02-11 19:22:04', '2021-11-05 22:49:42'),
(54, 'Karma Haryanto S.Ked', 'Kpg. Setia Budi No. 420, Sibolga 27565, Gorontalo', '1990-05-10 18:08:27', '2021-11-05 22:49:43'),
(55, 'Elisa Handayani', 'Ds. Ronggowarsito No. 525, Banda Aceh 56304, Kalsel', '1991-01-27 19:10:57', '2021-11-05 22:49:43'),
(56, 'Irwan Pratama', 'Gg. Bak Mandi No. 905, Tomohon 61136, DIY', '2016-09-20 02:07:30', '2021-11-05 22:49:43'),
(57, 'Diah Mardhiyah', 'Dk. Sudirman No. 870, Pontianak 13497, Kepri', '1979-02-12 03:24:58', '2021-11-05 22:49:43'),
(58, 'Zulfa Hasanah', 'Dk. Sutami No. 472, Solok 27972, Pabar', '1972-04-26 00:24:14', '2021-11-05 22:49:43'),
(59, 'Jelita Mandasari', 'Jln. Katamso No. 139, Pangkal Pinang 17942, Jabar', '1985-10-28 17:14:38', '2021-11-05 22:49:43'),
(60, 'Winda Puspa Uyainah S.H.', 'Gg. Baranang No. 916, Administrasi Jakarta Utara 78203, Sumbar', '1988-02-11 18:39:25', '2021-11-05 22:49:43'),
(61, 'Zamira Latika Handayani S.Ked', 'Jr. PHH. Mustofa No. 314, Sukabumi 13269, Sulsel', '1983-08-20 04:52:23', '2021-11-05 22:49:43'),
(62, 'Farhunnisa Humaira Puspita M.Farm', 'Psr. Muwardi No. 436, Cirebon 92444, Pabar', '2004-11-09 10:30:15', '2021-11-05 22:49:43'),
(63, 'Mila Susanti', 'Gg. Ki Hajar Dewantara No. 683, Tangerang 89942, Sultra', '2019-12-10 09:37:17', '2021-11-05 22:49:43'),
(64, 'Warta Pranawa Rajasa S.Psi', 'Ds. Labu No. 346, Makassar 34818, Banten', '2012-01-06 21:44:18', '2021-11-05 22:49:43'),
(65, 'Ade Lestari', 'Psr. Hang No. 751, Tual 98135, Riau', '2017-01-25 22:34:05', '2021-11-05 22:49:43'),
(66, 'Jaya Gantar Hidayat S.T.', 'Jln. Raden Saleh No. 697, Pangkal Pinang 52431, Jambi', '1995-11-29 17:47:21', '2021-11-05 22:49:43'),
(67, 'Restu Michelle Riyanti', 'Ds. Wahidin No. 600, Mojokerto 11237, Pabar', '2006-07-09 20:39:39', '2021-11-05 22:49:43'),
(68, 'Gabriella Susanti', 'Dk. Sampangan No. 126, Bengkulu 40131, Kalbar', '1982-03-10 15:54:01', '2021-11-05 22:49:43'),
(69, 'Irma Suartini', 'Kpg. Astana Anyar No. 267, Mataram 42743, Jabar', '2006-07-21 19:09:27', '2021-11-05 22:49:43'),
(70, 'Tina Anggraini', 'Jln. Perintis Kemerdekaan No. 265, Kupang 97987, Kaltim', '2017-01-27 15:20:45', '2021-11-05 22:49:44'),
(71, 'Purwadi Baktianto Saragih S.E.', 'Psr. Baiduri No. 615, Sabang 79778, NTT', '1991-08-03 13:40:34', '2021-11-05 22:49:44'),
(72, 'Hamima Anggraini S.Gz', 'Dk. Monginsidi No. 809, Kotamobagu 57259, Kalbar', '1999-12-17 10:00:26', '2021-11-05 22:49:44'),
(73, 'Wardi Ardianto M.Farm', 'Jr. Jakarta No. 346, Singkawang 42659, Bali', '1991-09-20 09:48:53', '2021-11-05 22:49:44'),
(74, 'Yoga Kuswoyo', 'Ds. Basuki No. 862, Bengkulu 36780, Kaltim', '1998-02-20 01:15:47', '2021-11-05 22:49:44'),
(75, 'Paulin Juli Rahayu', 'Ki. Gatot Subroto No. 20, Depok 99747, Gorontalo', '2005-09-19 18:26:56', '2021-11-05 22:49:44'),
(76, 'Prayitna Anggriawan', 'Jr. Casablanca No. 245, Bima 13505, Banten', '1973-04-02 20:30:00', '2021-11-05 22:49:44'),
(77, 'Kajen Prabowo', 'Psr. Mulyadi No. 84, Tual 90023, Kepri', '1980-03-13 10:01:50', '2021-11-05 22:49:44'),
(78, 'Cici Tantri Riyanti M.Ak', 'Ki. Bara No. 59, Tangerang Selatan 99484, Sumut', '1990-08-22 03:58:00', '2021-11-05 22:49:44'),
(79, 'Pranata Tri Hutapea', 'Dk. Otto No. 714, Tangerang 33523, Aceh', '2020-10-28 21:27:39', '2021-11-05 22:49:44'),
(80, 'Ana Pratiwi S.Farm', 'Ki. Rajawali Barat No. 593, Parepare 93971, Lampung', '2001-03-10 18:11:28', '2021-11-05 22:49:44'),
(81, 'Opan Dasa Tamba M.Farm', 'Dk. Supomo No. 520, Medan 55179, Sumsel', '2003-09-22 03:58:41', '2021-11-05 22:49:44'),
(82, 'Wisnu Warji Prasetya', 'Psr. Sampangan No. 443, Pariaman 58601, Kalbar', '2002-08-26 09:14:10', '2021-11-05 22:49:44'),
(83, 'Yance Diah Susanti M.Pd', 'Ki. Samanhudi No. 669, Banjarbaru 24894, Kaltim', '2013-12-02 07:59:45', '2021-11-05 22:49:44'),
(84, 'Keisha Lestari', 'Ki. Elang No. 742, Tebing Tinggi 43092, Jatim', '1976-11-19 03:52:00', '2021-11-05 22:49:44'),
(85, 'Kartika Aryani S.Ked', 'Kpg. Orang No. 413, Pekanbaru 56717, Sulsel', '1991-01-09 05:36:09', '2021-11-05 22:49:44'),
(86, 'Cagak Gunarto', 'Jln. Wahid Hasyim No. 485, Pekanbaru 65587, Jateng', '1990-08-04 21:09:34', '2021-11-05 22:49:45'),
(87, 'Cawuk Mansur', 'Ki. Basket No. 516, Binjai 40635, Banten', '1992-10-01 08:42:43', '2021-11-05 22:49:45'),
(88, 'Karya Nashiruddin', 'Jr. Baya Kali Bungur No. 683, Bandar Lampung 56403, Riau', '2016-11-24 14:46:08', '2021-11-05 22:49:45'),
(89, 'Unjani Winarsih', 'Dk. Arifin No. 956, Palangka Raya 51499, Jambi', '1990-06-24 06:06:22', '2021-11-05 22:49:45'),
(90, 'Limar Pradipta', 'Ds. Katamso No. 614, Tomohon 97686, Kaltara', '2018-11-10 06:25:48', '2021-11-05 22:49:45'),
(91, 'Warji Capa Prasetyo S.I.Kom', 'Kpg. Rajawali Barat No. 550, Samarinda 97321, Jambi', '1987-10-26 00:49:39', '2021-11-05 22:49:45'),
(92, 'Yulia Jamalia Astuti S.Sos', 'Ki. Agus Salim No. 875, Padang 57688, Banten', '1998-09-06 15:52:01', '2021-11-05 22:49:45'),
(93, 'Abyasa Narji Irawan M.Pd', 'Jln. Tambun No. 811, Tangerang 51439, Jambi', '1998-03-01 16:41:11', '2021-11-05 22:49:45'),
(94, 'Okta Eman Hutapea M.M.', 'Ki. Sugiyopranoto No. 479, Lhokseumawe 88270, Sulut', '1978-06-15 06:35:35', '2021-11-05 22:49:45'),
(95, 'Among Maryadi S.Pt', 'Psr. Lada No. 823, Bontang 76530, Jateng', '2006-05-19 17:33:04', '2021-11-05 22:49:45'),
(96, 'Jamalia Widiastuti', 'Jln. Laksamana No. 249, Balikpapan 90327, Kalteng', '1976-11-07 02:12:10', '2021-11-05 22:49:45'),
(97, 'Putri Yuniar M.M.', 'Jr. Cemara No. 781, Singkawang 62434, DIY', '1994-03-27 10:35:14', '2021-11-05 22:49:45'),
(98, 'Ian Irsad Lazuardi', 'Ki. Padang No. 107, Balikpapan 83635, Sumut', '1986-05-10 07:24:41', '2021-11-05 22:49:45'),
(99, 'Kamaria Samiah Padmasari', 'Gg. Pelajar Pejuang 45 No. 520, Gorontalo 25002, Gorontalo', '2013-08-09 19:56:05', '2021-11-05 22:49:45'),
(100, 'Pardi Wibisono', 'Dk. Radio No. 541, Banjar 32726, Riau', '1989-10-14 03:22:00', '2021-11-05 22:49:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
