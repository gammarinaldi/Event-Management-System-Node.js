-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.14 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ems
CREATE DATABASE IF NOT EXISTS `ems` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `ems`;

-- Dumping structure for table ems.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) DEFAULT '0',
  `idCategory` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.cart: ~3 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `idProduct`, `idCategory`, `username`, `qty`) VALUES
	(52, 23, 1, 'admin', 1),
	(53, 18, 1, 'admin', 3),
	(54, 17, 1, 'admin', 1),
	(55, 23, 7, 'raisa', 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table ems.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.category: ~4 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`) VALUES
	(1, 'Event'),
	(2, 'Workshop'),
	(6, 'Bootcamp'),
	(7, 'Competition');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table ems.location
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.location: ~2 rows (approximately)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `city`, `address`) VALUES
	(1, 'BSD', 'Jl. BSD Green Office Park, GOP 9 - G Floor, BSD City, Tangerang Banten 15345'),
	(2, 'Jakarta', 'Sinarmas MSIG Tower 40th Floor Sudirman - Jakarta Selatan');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table ems.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.log: ~44 rows (approximately)
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `username`, `role`, `desc`, `datetime`) VALUES
	(203, 'admin', 'ADMIN', 'Login', '21/Feb/2019 00:02:47'),
	(204, 'admin', 'ADMIN', 'Logout', '21/Feb/2019 00:02:22'),
	(205, 'admin', 'ADMIN', 'Logout', '21/Feb/2019 00:02:22'),
	(206, 'member', 'MEMBER', 'Login', '21/Feb/2019 01:02:09'),
	(207, 'member', 'MEMBER', 'Logout', '21/Feb/2019 01:02:95'),
	(208, 'member', 'MEMBER', 'Login', '21/Feb/2019 01:02:09'),
	(209, 'admin', 'ADMIN', 'Login', '22/Feb/2019 10:02:80'),
	(210, 'admin', 'ADMIN', 'Add product: Test', '22/Feb/2019 18:02:42'),
	(211, 'admin', 'ADMIN', 'Edit product: Test', '22/Feb/2019 18:02:04'),
	(212, 'admin', 'ADMIN', 'Add product: Test', '22/Feb/2019 18:02:59'),
	(213, 'admin', 'ADMIN', 'Delete product: Test', '22/Feb/2019 18:02:11'),
	(214, 'admin', 'ADMIN', 'Add product: Test', '22/Feb/2019 18:02:66'),
	(215, 'admin', 'ADMIN', 'Delete product: Test', '22/Feb/2019 18:02:39'),
	(216, 'admin', 'ADMIN', 'Add product: Test', '22/Feb/2019 18:02:93'),
	(217, 'admin', 'ADMIN', 'Logout', '22/Feb/2019 18:02:55'),
	(219, 'member', 'MEMBER', 'Login', '22/Feb/2019 18:02:50'),
	(220, 'member', 'MEMBER', 'Logout', '22/Feb/2019 18:02:61'),
	(221, 'member', 'MEMBER', 'Login', '22/Feb/2019 19:02:34'),
	(222, 'member', 'MEMBER', 'Logout', '22/Feb/2019 19:02:30'),
	(223, 'member', 'MEMBER', 'Login', '22/Feb/2019 19:02:52'),
	(224, 'member', 'MEMBER', 'Logout', '22/Feb/2019 19:02:65'),
	(226, 'angel', 'PRODUCER', 'Login', '22/Feb/2019 19:02:98'),
	(227, 'angel', 'PRODUCER', 'Logout', '22/Feb/2019 19:02:96'),
	(228, 'admin', 'ADMIN', 'Login', '22/Feb/2019 19:02:96'),
	(229, 'admin', 'ADMIN', 'Purchase Confirmation', '22/Feb/2019 19:02:94'),
	(230, 'admin', 'ADMIN', 'Add product: Lomba Puisi 2019', '22/Feb/2019 22:02:69'),
	(231, 'admin', 'ADMIN', 'Edit product: [GRATIS] Lomba Puisi 2019', '22/Feb/2019 22:02:70'),
	(232, 'admin', 'ADMIN', 'Logout', '22/Feb/2019 22:02:72'),
	(235, 'admin', 'ADMIN', 'Logout', '22/Feb/2019 23:02:37'),
	(254, 'admin', 'ADMIN', 'Login', '23/Feb/2019 07:02:47'),
	(255, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 07:02:62'),
	(256, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 07:02:29'),
	(257, 'angel', 'PRODUCER', 'Logout', '23/Feb/2019 07:02:70'),
	(258, 'admin', 'ADMIN', 'Login', '23/Feb/2019 07:02:48'),
	(259, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 10:02:82'),
	(260, 'admin', 'ADMIN', 'Login', '23/Feb/2019 10:02:48'),
	(261, 'admin', 'ADMIN', 'Edit product: Lomba Puisi 2019', '23/Feb/2019 16:02:61'),
	(262, 'admin', 'ADMIN', 'Delete user: nigga', '23/Feb/2019 18:02:11'),
	(263, 'admin', 'ADMIN', 'Add category: Competition', '23/Feb/2019 18:02:53'),
	(264, 'admin', 'ADMIN', 'Edit product: Lomba Puisi 2019', '23/Feb/2019 19:02:28'),
	(265, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:71'),
	(266, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:26'),
	(267, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:93'),
	(268, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:90'),
	(269, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:24'),
	(272, 'citra', 'MEMBER', 'Register', '23/Feb/2019 19:02:51'),
	(273, 'citra', 'MEMBER', 'Logout', '23/Feb/2019 19:02:29'),
	(274, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:14'),
	(275, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:50'),
	(276, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:74'),
	(277, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:73'),
	(278, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 19:02:85'),
	(279, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:76'),
	(280, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:51'),
	(281, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 19:02:33'),
	(282, 'member', 'MEMBER', 'Login', '23/Feb/2019 19:02:55'),
	(283, 'member', 'MEMBER', 'Logout', '23/Feb/2019 19:02:01'),
	(284, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:20'),
	(285, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 19:02:83'),
	(286, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 19:02:52'),
	(287, 'admin', 'ADMIN', 'Login', '23/Feb/2019 19:02:90'),
	(288, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:54'),
	(289, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:22'),
	(290, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:18'),
	(291, 'member', 'MEMBER', 'Login', '23/Feb/2019 20:02:88'),
	(292, 'member', 'MEMBER', 'Logout', '23/Feb/2019 20:02:86'),
	(293, 'member', 'MEMBER', 'Login', '23/Feb/2019 20:02:88'),
	(294, 'member', 'MEMBER', 'Logout', '23/Feb/2019 20:02:93'),
	(295, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:25'),
	(296, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:05'),
	(297, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:84'),
	(298, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:24'),
	(299, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:95'),
	(300, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:50'),
	(301, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:46'),
	(302, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:46'),
	(303, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:68'),
	(304, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:26'),
	(305, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:69'),
	(306, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:46'),
	(307, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:28'),
	(308, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:68'),
	(309, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:37'),
	(310, 'member', 'MEMBER', 'Login', '23/Feb/2019 20:02:73'),
	(311, 'member', 'MEMBER', 'Logout', '23/Feb/2019 20:02:34'),
	(312, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:92'),
	(313, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:50'),
	(314, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:82'),
	(315, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:46'),
	(316, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:38'),
	(317, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:28'),
	(318, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:50'),
	(319, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:76'),
	(320, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:66'),
	(321, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:58'),
	(322, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:21'),
	(323, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:68'),
	(324, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:69'),
	(325, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:38'),
	(326, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:58'),
	(327, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:90'),
	(328, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:11'),
	(329, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:84'),
	(330, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:23'),
	(331, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:07'),
	(332, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:35'),
	(333, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:40'),
	(334, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:52'),
	(335, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:80'),
	(336, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:05'),
	(337, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:39'),
	(338, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:71'),
	(339, 'admin', 'ADMIN', 'Edit user: angel', '23/Feb/2019 20:02:22'),
	(340, 'admin', 'ADMIN', 'Edit user: citra', '23/Feb/2019 20:02:05'),
	(341, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:92'),
	(342, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:24'),
	(343, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:14'),
	(344, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:42'),
	(345, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:68'),
	(346, 'angel', 'MEMBER', 'Register', '23/Feb/2019 20:02:29'),
	(347, 'angel', 'MEMBER', 'Logout', '23/Feb/2019 20:02:38'),
	(348, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:07'),
	(349, 'admin', 'ADMIN', 'Edit user: angel', '23/Feb/2019 20:02:32'),
	(350, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:84'),
	(351, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:61'),
	(352, 'admin', 'ADMIN', 'Edit user: angel', '23/Feb/2019 20:02:18'),
	(353, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:76'),
	(354, 'angel', 'ADMIN', 'Login', '23/Feb/2019 20:02:66'),
	(355, 'angel', 'ADMIN', 'Logout', '23/Feb/2019 20:02:08'),
	(356, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:22'),
	(357, 'admin', 'ADMIN', 'Edit user: angel', '23/Feb/2019 20:02:64'),
	(358, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:08'),
	(359, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:85'),
	(360, 'angel', 'PRODUCER', 'Logout', '23/Feb/2019 20:02:91'),
	(361, 'admin', 'ADMIN', 'Login', '23/Feb/2019 20:02:65'),
	(362, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 20:02:28'),
	(363, 'angel', 'PRODUCER', 'Login', '23/Feb/2019 20:02:64'),
	(364, 'angel', 'PRODUCER', 'Logout', '23/Feb/2019 20:02:82'),
	(365, 'member', 'MEMBER', 'Login', '23/Feb/2019 20:02:25'),
	(366, 'member', 'MEMBER', 'Logout', '23/Feb/2019 20:02:80'),
	(367, 'raisa', 'MEMBER', 'Register', '23/Feb/2019 20:02:11'),
	(368, 'raisa', 'MEMBER', 'Logout', '23/Feb/2019 21:02:86'),
	(369, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:55'),
	(370, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:64'),
	(371, 'raisa', 'MEMBER', 'Login', '23/Feb/2019 21:02:78'),
	(372, 'raisa', 'MEMBER', 'Logout', '23/Feb/2019 21:02:35'),
	(373, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:28'),
	(374, 'admin', 'ADMIN', 'Edit user: member', '23/Feb/2019 21:02:53'),
	(375, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:00'),
	(376, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:35'),
	(377, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:73'),
	(378, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:59'),
	(379, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:82'),
	(380, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:91'),
	(381, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:00'),
	(382, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:19'),
	(383, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:57'),
	(384, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:15'),
	(385, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:53'),
	(386, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:61'),
	(387, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:75'),
	(388, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:73'),
	(389, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:95'),
	(390, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:16'),
	(391, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:82'),
	(392, 'admin', 'ADMIN', 'Login', '23/Feb/2019 21:02:07'),
	(393, 'admin', 'ADMIN', 'Logout', '23/Feb/2019 21:02:45');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Dumping structure for table ems.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCategory` int(11) DEFAULT '0',
  `idLocation` int(11) DEFAULT '0',
  `item` varchar(50) DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `img` varchar(300) DEFAULT NULL,
  `startDate` varchar(50) DEFAULT NULL,
  `endDate` varchar(50) DEFAULT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `desc` text,
  `days` varchar(100) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.products: ~10 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `idCategory`, `idLocation`, `item`, `price`, `img`, `startDate`, `endDate`, `startTime`, `endTime`, `desc`, `days`, `creator`, `createdBy`) VALUES
	(10, 2, 1, 'Soc. Med. Content Strategies to Grow Your Audience', 500000, '/img/products/PRD1549550081716.png', '2019-02-12', '2019-02-12', '18:00', '22:00', '<h3><strong>Tentang Event</strong></h3>\n<p>Media social menjadi sebuah alat menarik yang dilirik oleh banyak brand untuk menjangkau pasar lebih luas. Pada saat ini persaingan penjualan brand di social media sudah cukup bersaing. Sangat penting membangun followers yang loyal pada social media marketing brand Anda.</p>\n<p>Audiens perlu mengenal brand Anda dengan baik, hingga akhirnya menjadi follower yang loyal. Follower loyal tentunya penting untuk keberlangsungan penjualan brand. Pada workshop ini Anda akan mempelajari bagaimana membangun strategi konten media social yang menarik sehingga dapat meningkatkan penjualan brand Anda melalui social media marketing.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mengetahui dasar-dasar content social media yang baik</li>\n<li>Mengetahui strategi membangun konten media social yang dapat meningkatkan followers</li>\n<li>Mengetahui strategi membangung konten media social yang dapat meningkatkan engagement dengan audiences</li>\n<li>Mengetahui strategi memilih influencer yang tepat untuk meningkatkan brand</li>\n<li>Mengetahui strategi bagaimana cara menjadi top of mind brand bagi target audience</li>\n<li>Mengetahui kebutuhan target audience</li>\n<li>Mengetahui behavior target audience</li>\n<li>Mengetahui cara mengevaluasi sebuah strategi media social yang efektif</li>\n</ol>', 'Tuesday', 'ADMIN', 'admin'),
	(11, 2, 1, 'Instagram Ads for your Online Business', 650000, '/img/products/PRD1549550515511.png', '2019-02-13', '2019-02-13', '19:00', '22:00', '<h3><strong>Tentang Workshop</strong></h3>\n<p>Perkembangan bisnis online sekarang ini sudah semakin berkembang dan media sosial menjadi salah satu channel terbesar dalam bisnis online. Media sosialpun menjadi tempat pemasaran yang tepat untuk memenangkan pasar.</p>\n<p>​Salah satu alat iklan menggunakan media sosial adalah Instagram Ads, dengan lebih dari 500 juta pengguna aktif di seluruh dunia, mengiklankan bisnis Anda di Instagram adalah keputusan yang tepat.</p>\n<p>​Namun, apakah Anda belum siap untuk berinvestasi di Instagram Ads? Apakah Anda belum terbiasa menggunakan Instagram Ads? Jika Anda adalah orangnya, workshop ini tepat untuk Anda!</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mempelajari bagaimana menggunakan Instagram for business dan memulai iklan.</li>\n<li>Mempelajari bagaimana membuat campaign Instagram Ads yang terstruktur</li>\n<li>Mempelajari bagaimana menjangkau audiens yang tepat</li>\n<li>Mempelajari bagaimana mengukur budget yang tepat</li>\n<li>Mempelajari bagaimana mengukur keberhasilan atau keefektifan sebuah campaign</li>\n</ol>', 'Wednesday', 'ADMIN', 'admin'),
	(12, 6, 2, 'Digital Marketing Bootcamp', 2500000, '/img/products/PRD1549550682214.png', '2019-02-17', '2019-02-18', '10:00', '17:00', '<h3><strong>Tentang Bootcamp</strong></h3>\n<p>Dunia digital bergerak dengan sangat cepat. Setiap industri telah dipengaruhi oleh kemajuan dunia digital. Ini benar karena munculnya internet dan media sosial, yang telah mengubah cara bisnis berkomunikasi dengan klien potensial dan yang sudah ada.</p>\n<p>Apa itu Digital Marketing? Bagaimana digital marketing dapat membantu Anda mengembangkan bisnis Anda? Pada bootcamp ini Anda akan diperkenalkan tentang apa itu digital marketing, bagaimana cara kerjanya, dengan praktek langsung sehingga Anda dapat menerapkannya untuk bisnis Anda dan membawa lebih banyak customer pada bisnis Anda.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mempelajari apa yang dimaksud dengan digital marketing dan keuntungan<br />penerapan digital marketing</li>\n<li>Bagaimana cara kerja digital marketing</li>\n<li>Mengidentifikasi trik, funnel dan konsep digital marketing serta teknik untuk<br />membawa customer membeli produk Anda</li>\n<li>Menyusun dan menerapkan paling sedikit 5 kata kunci terbaik yang dapat<br />diterapkan di dalam content marketing</li>\n<li>Mengetahui beberapa jargon didalam digital marketing (CPC, CPM, CPI, CTR, Direct Type in, Lead Magnet)</li>\n<li>Membahas sebuah contoh study case dan jenis KPI yang digunakan</li>\n<li>Mengetahui semua social media platform yang dapat digunakan</li>\n<li>Mempelajari masing-masing ciri setiap jenis social media</li>\n<li>Perbedaan cara penjualan di social media, google dan marketplace</li>\n<li>Membuat content social media yang baik dan menarik untuk meningkatkan penjualan</li>\n<li>Memahami tipe consumer di Indonesia</li>\n</ol>', 'Sunday,Monday', 'ADMIN', 'admin'),
	(13, 2, 1, 'How to build your brand in social media', 500000, '/img/products/PRD1549550803254.png', '2019-02-19', '2019-02-19', '18:00', '22:00', '<h3><strong>Tentang Event</strong></h3>\n<p>Media sosial berkembang begitu pesat dan hampir semua orang menggunakan situs-situs jejaring sosial atau media sosial ini. Pesatnya pertumbuhan ini menjadi suatu optimisme bagi para pelaku pemasar internet atau biasa dikenal dengan istilah internet marketers, bahwa media sosial kini bukan hanya situs internet semata, namun lebih dari pada itu. Media sosial saat ini sudah menjadi ruang publik. Media sosial telah menjadi salah satu strategi digital marketing yang sangat ampuh.</p>\n<p><br />Setelah mengikuti workshop ini, peserta akan mendapatkan pembelajaran mengapa pemasaran media sosial adalah suatu keharusan, anda diharapkan memiliki pengetahuan bagaimana membangun brand di media sosial dan mengetahui bagaimana meningkatkan penjualan dengan menggunakan media sosial.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Memahami mengapa pemasaran media sosial adalah suatu keharusan</li>\n<li>Mempelajari bagaimana cara membangun brand anda di media sosial</li>\n<li>Mempelajari apa KPI anda di media sosial</li>\n<li>Mempelajari bagaimana membuat konten yang menarik</li>\n<li>Mempelajari bagaimana cara meningkatkan penjualan dengan menggunakan media sosial</li>\n<li>Mempelajari bagaimana cara mendukung campaign utama brand anda di media sosial</li>\n<li>Mempelajari bagaimana memonitor, mengukur, dan mengevaluasi hasil</li>\n<li>Mempelajari bagaimana mengelola media sosial perusahaan Anda dalam 1 jam</li>\n</ol>', 'Sunday,Monday,Tuesday', 'ADMIN', 'admin'),
	(14, 2, 2, 'SEO 101 : Intro to Search Engine Optimization', 500000, '/img/products/PRD1549556625631.png', '2019-02-27', '2019-02-27', '19:00', '22:00', '<h3><span style="background-color: #ff9900;"><strong>Tentang Workshop</strong></span></h3>\n<p>Apakah Anda pemilik website atau blog yang membutuhkan banyak pengunjung atau pengguna jangka panjang? Pada workshop ini Anda akan mempelajari cara kerja SEO. SEO (Search Engine Optimization) merupakan suatu teknik yang digunakan untuk menempatkan website pada posisi SERP (search engine result page) yang strategis, sesuai dengan keyword yang ditargetkan.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Memahami kata kunci produk atau layanan apa yang sebenarnya sering dicari oleh customer saat ini</li>\n<li>Mempelajari teknik SEO yaitu cara agar website bisa berada di halaman 1 pencarian Google, meliputi : Optimasi Internal (Onpage), Optimasi Eksternal(Offpage / Backlink)</li>\n<li>Memahami bagaimana membuat kualitas content yang unik dan berbeda</li>\n<li>Memahami bagaimana mengukur kesuksean suatu teknik SEO</li>\n</ol>', 'Wednesday', 'ADMIN', 'admin'),
	(15, 2, 1, 'Introduction to UX (User Experience) Research', 650000, '/img/products/PRD1549712866897.png', '2019-03-03', '2019-03-03', '10:00', '15:00', '<h3><strong>Tentang Workshop</strong></h3>\n<p>Tahukah Anda dibalik kenyamanan dan kemudahan berbelanja di sebuah e-commerce, mencari informasi di sebuah website, atau menggunakan aplikasi mobile ada team User Experience Design yang bekerja keras untuk membuat pengalaman Anda sebagai user menyenangkan? Dan tahukah Anda proses memiliki UX Design yang baik semua dimulai dari proses research terlebih dahulu. UX Researcher yang melakukan pengumpulan informasi untuk mengetahui dan mempelajari sikap, tingkah laku, emosi dan kebutuhan para users (pengguna). Pada workshop ini Anda akan mempelajari peran seorang UX Research, mulai dari memilih metode penelitian yang tepat, cara melakukan riset yang benar secara langsung kepada users Anda, hingga cara menganalisa hasil penelitian (research) tersebut.</p>\n<p>&nbsp;</p>\n<p><strong>Apa saja yang akan dipelajari pada workshop ini?</strong></p>\n<ol>\n<li>Mempelajari peran seorang UX Research (what, why, how, when)</li>\n<li>Mempelajari nilai-nilai yang terkandung didalam UX Research seperti konsep produk konsep desain dan development</li>\n<li>Mengetahui cara memilih metode penelitian yang tepat untuk meneliti user Anda</li>\n<li>Memahami setiap proses dalam UX Research, mulai dari perencanaan hingga cara menganalisa</li>\n<li>Praktek langsung memulai user research untuk aplikasi Anda!</li>\n</ol>', 'Sunday,Monday', 'ADMIN', 'admin'),
	(16, 2, 2, 'Social Media Advertising Masterclass', 2500000, '/img/products/PRD1549712820784.png', '2019-03-10', '2019-03-11', '10:00', '17:00', '<div id="comp-jqn902ov" class="txtNew" data-packed="false" data-min-height="27">\n<h1 class="font_0"><strong>Tentang Bootcamp</strong></h1>\n</div>\n<div id="comp-jqn90386" class="txtNew" data-packed="false" data-min-height="161">\n<p class="font_8">Iklan berbayar saat ini merupakan salah satu marketing platform yang paling efektif dan terukur. Dengan menggunakan Instagram dan facebook ads, Anda dapat mengetahui dengan pasti budget yang Anda keluarkan setiap harinya serta dapat meraih market yang tepat sasaran.</p>\n<p class="font_8">Namun seringkali banyak digital marketeer yang melakukan berbagai kesalahan dalam pemanfaatan iklan media social yang berbayar (Instagram dan Facebook) hingga menimbulkan kerugian (out of budget tetapi target penjualan belum tercapai).</p>\n<p class="font_8">Pada bootcamp ini, Anda akan mempelajari secara mendalam tentang strategi iklan Media sosial berbayar (berfokus pada Instagram dan Facebook). Mempelajari strategi, penggunaan budget yang efektif, cara memperhitungkan ROI secara cermat agar tidak merugi, hingga menciptakan sebuah content ads yang bernilai, sehingga Anda mendapatkan target market yang tepat</p>\n</div>\n<section id="comp-jqn90398" class="strc1" data-responsive="true">\n<div id="comp-jqn90398inlineContent" class="strc1inlineContent">\n<div id="comp-jqn903a9" class="mc1" data-content-width="980" data-is-mesh="true">\n<div id="comp-jqn903a9container" class="mc1container">\n<div id="comp-jqn903a9inlineContentParent" class="mc1inlineContentParent">\n<div id="comp-jqn903a9inlineContent" class="mc1inlineContent">\n<div id="comp-jqn903a9inlineContent-gridWrapper" data-mesh-internal="true">\n<div id="comp-jqn903a9inlineContent-gridContainer" data-mesh-internal="true">\n<div id="comp-jqn903an" class="txtNew" data-packed="false" data-min-height="17">\n<h1 class="font_0"><strong>Siapa saja yang dapat mengikuti kelas bootcamp ini :</strong></h1>\n</div>\n<div id="comp-jqn903bm" class="txtNew" data-packed="false" data-min-height="17">\n<ol class="color_14 font_8">\n<li>\n<p class="font_8"><span class="color_14">Level intermediate &ndash; advanced</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Memiliki pengalaman di bidang social media advertising</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Memiliki pengalaman di bidang paid advertising</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Memiliki pengalaman di bidang digital agency</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Digital Marketing (Middle level)</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Social Media Manager</span></p>\n</li>\n</ol>\n</div>\n<div id="comp-jqn98rlf" class="txtNew" data-packed="false" data-min-height="17">\n<h1 class="font_0"><strong>Apa saja yang akan dipelajari pada bootcamp ini :</strong></h1>\n</div>\n<div id="comp-jqn98rlc" class="txtNew" data-packed="false" data-min-height="17">\n<p class="font_8"><span class="color_14">UNIT 1 : INSTAGRAM ADVERTISING MASTER CLASS</span></p>\n</div>\n<div id="comp-jqn9ithp" class="txtNew" data-packed="false" data-min-height="17">\n<ul class="font_8">\n<li>\n<p class="font_8">Memahami secara benar siapa pelanggan Anda dan bagaimana menjangkau mereka melalui media sosial platform Instagram</p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Mempelajari cara menghitung metrics dan analytics dari hasil iklan Instagram Anda</span></p>\n</li>\n<li>\n<p class="font_8">Cara menghitung keuntungan yang didapat dari penggunaan iklan Instagram</p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Mempelajari budget iklan di Instagram yang efektif</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Mempelajari cara memperhitungkan ROI secara cermat agar tidak merugi</span></p>\n</li>\n<li>\n<p class="font_8"><span class="color_14">Bagaimana cara mengembangkan dan menyampaikan content yang menarik sehingga dapat mengkonversi followers menjadi buyers dan menjadikan buyers tersebut menjadi loyal customer</span></p>\n</li>\n</ul>\n</div>\n<div id="comp-jqn9ns6n" class="txtNew" data-packed="false" data-min-height="17">\n<p class="font_8"><span class="color_14">UNIT 2 : FACEBOOK ADVERTISING MASTER CLASS</span></p>\n</div>\n<div id="comp-jqn9k200" class="txtNew" data-packed="false" data-min-height="17">\n<ul class="font_8">\n<li>\n<p class="font_8">Anda akan belajar mengenai feature-feature yang diperlukan dalam pembuatan iklan di Facebook seperti tipe Ads, outcome yang ingin didapat dari pemasangan iklan tersebut, dan hal lainnya</p>\n</li>\n<li>\n<p class="font_8">Belajar bagaimana menggunakan Facebook Pixel. (Facebook Pixel adalah sebuah kode yang dapat ditaruh di website Anda untuk retargeting dalam beriklan di Facebook. Dari kode ini Anda akan mengetahui behavior pengunjung website Anda)</p>\n</li>\n<li>\n<p class="font_8">Mengetahui bagaimana menggunakan budget iklan di Facebook yang efektif</p>\n</li>\n<li>\n<p class="font_8">Menciptakan content yang menarik seperti video Ads yang valuable (showering the people with value)</p>\n</li>\n<li>\n<p class="font_8">Dari menciptakan content yang menarik Anda akan dapat melakukan segmentasi target customer (interest dan very interest)</p>\n</li>\n<li>\n<p class="font_8">Study Case &amp; Discussion!</p>\n</li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', 'Sunday,Monday', 'PRODUCER', 'angel'),
	(17, 1, 1, 'Mastering Content Marketing', 100000, '/img/products/PRD1549718253802.png', '2019-02-07', '2019-02-07', '19:00', '21:00', '<div id="comp-jr1rxfgo" class="txtNew" data-packed="false" data-min-height="27">\n<h1 class="font_0"><strong>Tentang Event</strong></h1>\n</div>\n<p>Content marketing adalah strategi pemasaran dimana kita merencanakan, membuat, dan mendistribusikan konten yang mampu menarik audiens yang tepat sasaran, kemudian mendorong mereka menjadi customer. Apakah Anda sudah rutin mengisi konten di platform digital Brand Anda namun masih tidak mendapatkan konversi signifikan terhadap penjualan Brand Anda?</p>\n<p>Pada event ini akan membahas bagaimana membangun strategi content marketing yang efektif untuk menaikan penjualan. Anda akan belajar langsung dari para ahli content marketing yang sudah berpengalaman menangani media sosial brand besar.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mengetahui content marketing fundamental: seperti apa content yang baik untuk customer dan cara mengorganisir content marketing campaign</li>\n<li>Mengetahui bagaimana cara memproduksi content marketing yang efektif untuk sebuah brand</li>\n<li>Mengetahui cara meningkatkan traffic yang relevan kepada content yang sudah didistribusikan</li>\n<li>Mengetahui trend content marketing di 2019</li>\n<li>Mengetahui studi kasus sebuah brand yang sukses dalam content marketing</li>\n<li>Mengetahui cara mengevaluasi content marketing yang meningkatkan sales</li>\n</ol>', 'Thursday', 'PRODUCER', 'angel'),
	(18, 1, 2, 'Meet Women in Data Science', 125000, '/img/products/PRD1549718369089.png', '2019-02-14', '2019-02-14', '19:00', '21:00', '<h1 class="font_0"><strong>Tentang Event</strong></h1>\n<p>Banyaknya jumlah data yang dihasilkan oleh manusia dan perangkat terus mendorong perkembangan teknologi yang dapat mewadahi kebutuhan untuk mengatur dan memproses informasi yang terus bertambah. Data science atau ilmu data pun semakin marak digunakan di berbagai industri untuk mewadahi kebutuhan tersebut. Kini, data science menjadi tool yang sangat berharga bagi industri untuk mentransformasi data menjadi informasi penting.</p>\n<p>Transformasi digital yang suskes tentunya tidak akan mungkin terjadi tanpa kolaborasi yang baik antara manusia dan mesin. Oleh karena itu, selain faktor-faktor pendorong tadi, Industry 4.0 juga membutuhkan sentuhan manusia yang ahli dalam mengolah dan menangani data.</p>\n<p>Untuk melakukan hal tersebut, industri membutuhkan data scientist. Kini, data scientist memainkan peranan yang sangat penting untuk memahami bagaimana hal bekerja dalam sebuah perusahaan. Pada event ini akan membahas lebih dalam tentang Data Science langsung dari narasumber ahli yang sudah menangani Data perusahaan besar. Narasumber akan membagikan pengalaman dan pengetahuan mereka tentang teknologi apa saja yang digunakan di Data Science, peluang karir untuk programmer Data Science dan bagaimana penerapan Data Science dalam sebuah Startup.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mengetahui apa itu Data Science</li>\n<li>Mengetahui apa saja teknologi yang ada di dalam Data Science</li>\n<li>Mengetahui asal mula mengapa narasumber terjun di dunia Data Science</li>\n<li>Mengetahui teknologi Data Science apa yang sedang digunakan di tempat bekerja narasumber</li>\n<li>Mengetahui peluang karir Data Scientist</li>\n<li>Mengetahui manfaat dari penerapan Data Science dalam sebuah startup</li>\n<li>Mengetahui saat yang tepat untuk startup menggunakan Data Science</li>\n<li>Mengetahui seberapa penting penerapan Data science dalam startup</li>\n<li>Mengetahui kasus nyata tentang suatu startup yang berhasil dalam bisnis setelah menerapkan Data Science</li>\n</ol>', 'Thursday', 'PRODUCER', 'angel'),
	(23, 7, 2, 'Lomba Puisi 2019', 50000, '/img/products/PRD1550850009666.png', '2019-02-15', '2019-07-10', '09:00', '17:00', '<div id="post15812732497145653192"><strong>Syarat dan Ketentuan&nbsp;Lomba Puisi Nasional Nasional 2019</strong></div>\n<div class="googlepublisherads">&nbsp;</div>\n<div id="post25812732497145653192">\n<ul>\n<li>Peserta yang bisa mendaftar dalam lomba ini adalah umum</li>\n<li>Umum yang dimaksud berusia maksimal usia 24 tahun</li>\n<li>Artinya dalam kompetisi ini juga terbuka untuk para mahasiswa aktif yang menempuh pendidikan D3/D4/S1 perguruan tinggi di Indonesia, dibuktikan dengan Kartu Tanda Mahasiswa, selain juga juga pelajar atau siswa Se-Derajat di Indonesia, dibuktikan dengan Kartu Tanda Pelajar.</li>\n<li>Peserta yang bisa mendaftar dalam lomba ini merupakan perseorangan atau individu.</li>\n<li>Peserta boleh mengirimkan lebih dari 1 karya puisi dengan melalui e-mail yang sama.</li>\n<li>Tulisan menggunakan PUEBI (Pedoman Umum Ejaan Bahasa Indonesia) dan tidak mengandung unsur SARA.</li>\n<li>Puisi yang diikutsertakan dalam lomba bersifat orisinil.</li>\n<li>Puisi belum pernah menang dalam lomba manapun, bukan saduran, bukan terjemahan, bukan plagiat dari karya yang telah ada sebelumnya.</li>\n<li>Jika terdapat indikasi pelanggaran pada puisi akan kami diskualifikasi secara langsung dinyatakan gugur serta tidak akan mendapatkan fasilitas apapun dari panitia.</li>\n<li>Indonesia Literacy Event berhak memperbanyak dan mempubilkasikan karya pemenang dengan tetap mencantumkan nama penulis tanpa perlu mendapat izin dari penulis puisi tersebut, serta tidak memberikan kompensasi berupa materi/uang kepada pemilik karya.</li>\n<li>Setiap peserta dalam lomba ini wajib mengisi formulir pendaftaran secara online</li>\n<li>Formulir pendaftaran online tersebut bisa kalian dapatkan&nbsp;<a href="http://bit.ly/DaftarLPN2019" rel="nofollow">disini</a>&nbsp;panduannya juga bisa kalian dapatkan&nbsp;<a href="http://bit.ly/PanduanLombaPuisiNasional2019" rel="nofollow">dimari</a></li>\n<li>Keputusan dewan juri dalam lomba ini tidak bisa dianggu gugat</li>\n<li>Baca juga ya jadwal lomba-lomba lainnya di tahun 2019&nbsp;<a href="https://www.informasilomba.com/2019/01/lomba-2019.html">disini</a></li>\n</ul>\n<div><strong>Timeline&nbsp;Lomba Puisi Nasional Nasional 2019</strong></div>\n<br />\n<div>\n<ul>\n<li>15 Februari &ndash; 15 Maret 2019 : Pendaftaran, pembayaran, pengiriman berkas, posting poster di Instagram dan konfirmasi gelombang I</li>\n<li>15 Maret &ndash; 15 April 2019 : Pendaftaran, pembayaran, posting poster di instagram, pengiriman berkas, dan konfirmasi gelombang II</li>\n<li>15 April &ndash; 15 Mei 2019 : Pendaftaran, pembayaran, posting poster di instagram, pengiriman berkas, dan Konfirmasi Gelombang III</li>\n<li>20 Juni 2019 : Pengumuman 100 finalis lomba puisi nasional.</li>\n<li>21-28 Juni 2019 : Pengiriman video baca puisi 100 finalis ke email panitia lomba.</li>\n<li>30 Juni 2019 - 5 Juli 2019 : Posting 100 video finalis lomba puisi nasional di instagram untuk pemilihan juara favorit.</li>\n<li>10 Juli 2019 : Pengumuman pemenang</li>\n<li>(Tentatif) Juli 2019 : Keberangkatan pemenang, pengiriman hadiah, serta pengiriman e-sertifikat ke peserta.</li>\n<li>Juara 1 : Trip to Malaysia, Thailand, dan Singapura (<em>All Include</em>) + Uang Tunai Rp 1.000.000 + Sertifikat Pemenang</li>\n</ul>\n</div>\n<ul>\n<li>Juara 2 : Uang Tunai Rp 1.000.000 + E-Sertifikat Pemenang</li>\n<li>Juara 3 : Uang Tunai Rp 750.000 + E-Sertifikat Pemenang</li>\n<li>Juara Favorit : Uang Tunai Rp 500.000 + E-Sertifikat juara favorit</li>\n<li>100 Finalis : E-Sertifikat 100 Besar Grandfinalis Lomba Puisi Nasional Indonesia Literacy Event 2019.</li>\n<li>Semua Peserta mendapatkan: E-Sertifikat Nasional, dan E-Calendar Exclusive 2019.</li>\n</ul>\n</div>', 'Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', 'ADMIN', 'admin');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table ems.trx
CREATE TABLE IF NOT EXISTS `trx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `totalPrice` float DEFAULT '0',
  `totalQty` int(11) DEFAULT '0',
  `bankName` varchar(50) DEFAULT NULL,
  `accNumber` varchar(50) DEFAULT NULL,
  `receipt` varchar(50) DEFAULT NULL,
  `trxDateTime` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice` (`invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.trx: ~4 rows (approximately)
DELETE FROM `trx`;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
INSERT INTO `trx` (`id`, `invoice`, `username`, `totalPrice`, `totalQty`, `bankName`, `accNumber`, `receipt`, `trxDateTime`, `status`) VALUES
	(28, 'INV/admin/2019/1/8/64433', 'admin', 1000000, 2, 'BCA', '4731175599', '/img/receipts/TRX1549583073331.jpg', '08/02/2019 06:02:31', 'Confirmed'),
	(29, 'INV/member/2019/1/8/65812', 'member', 1650000, 3, 'MANDIRI', '164000017790', '/img/receipts/TRX1549583892657.png', '08/02/2019 06:42:31', 'Unconfirmed'),
	(33, 'INV/member/2019/1/9/221839', 'member', 2725000, 3, 'CIMB NIAGA', '504-010-2789', '/img/receipts/TRX1549725519414.jpg', '09/Feb/2019 22:02:39', 'Confirmed'),
	(34, 'INV/admin/2019/1/23/163437', 'admin', 1550000, 4, 'BNI', '123-456-78910', '/img/receipts/TRX1550914477459.jpg', '23/Feb/2019 16:02:44', 'Unconfirmed');
/*!40000 ALTER TABLE `trx` ENABLE KEYS */;

-- Dumping structure for table ems.trxdetails
CREATE TABLE IF NOT EXISTS `trxdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTrx` int(11) DEFAULT '0',
  `idProduct` int(11) DEFAULT '0',
  `qty` int(11) DEFAULT '0',
  `barcode` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.trxdetails: ~9 rows (approximately)
DELETE FROM `trxdetails`;
/*!40000 ALTER TABLE `trxdetails` DISABLE KEYS */;
INSERT INTO `trxdetails` (`id`, `idTrx`, `idProduct`, `qty`, `barcode`) VALUES
	(10, 28, 14, 2, '64433'),
	(11, 29, 14, 1, '0'),
	(12, 29, 13, 1, '0'),
	(13, 29, 11, 1, '0'),
	(15, 33, 18, 1, '21839'),
	(16, 33, 17, 1, '21839'),
	(17, 33, 16, 1, '21839'),
	(18, 34, 18, 2, '0'),
	(19, 34, 11, 2, '0');
/*!40000 ALTER TABLE `trxdetails` ENABLE KEYS */;

-- Dumping structure for table ems.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.users: ~5 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `role`, `status`) VALUES
	(7, 'admin', '089417bd9abf11f94d96638f0d4eacb338d8568c09bb45a45461c46850e41bcd', 'Admin', 'gammarinaldi@yahoo.com', '081991090777', 'ADMIN', 'Verified'),
	(19, 'member', '3d49624cdde771b00e23a3d0754c5e650e34bccc1586dfbced1700a9ae8d4b5b', 'First Member', 'member@gmail.com', '081991090777', 'MEMBER', 'Verified'),
	(45, 'angel', '56202ac1a1be7de35f98bfa9835b3a51db18cc8fa62e425f33621fb9f13f196f', 'Angel', 'gammarinaldi@gmail.com', '081991090777', 'PRODUCER', 'Verified'),
	(46, 'raisa', '5c5a5361d3506a4f18d4c47a73da241668d41e3233626e8aafa3fdb2e4a50cea', 'Raisa Anggraini', 'gammarinaldi@gmail.com', '02103901874', 'MEMBER', 'Verified');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table ems.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.wishlist: ~10 rows (approximately)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`id`, `idProduct`, `idCategory`, `username`) VALUES
	(26, 18, 1, 'member'),
	(28, 16, 2, 'member'),
	(30, 16, 2, 'admin'),
	(31, 18, 1, 'admin'),
	(32, 17, 1, 'member'),
	(33, 18, 1, 'angel'),
	(34, 17, 1, 'angel'),
	(35, 12, 6, 'member'),
	(38, 23, 1, 'admin'),
	(41, 23, 7, 'raisa');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
