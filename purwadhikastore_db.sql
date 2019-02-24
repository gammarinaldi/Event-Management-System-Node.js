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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.cart: ~4 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table ems.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.category: ~3 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`) VALUES
	(1, 'Event'),
	(2, 'Workshop'),
	(6, 'Bootcamp'),
	(7, 'Competition'),
	(8, 'Training');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table ems.location
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.location: ~2 rows (approximately)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `city`) VALUES
	(9, 'Jakarta'),
	(10, 'Bandung'),
	(11, 'Tangerang'),
	(13, 'Jogjakarta'),
	(14, 'Surabaya');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table ems.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.log: ~188 rows (approximately)
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `username`, `role`, `desc`, `datetime`) VALUES
	(458, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 16:02:79'),
	(459, 'angel', 'PRODUCER', 'Login', '24/Feb/2019 16:02:51'),
	(460, 'angel', 'PRODUCER', 'Add category: Training', '24/Feb/2019 16:02:97');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Dumping structure for table ems.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCategory` int(11) DEFAULT '0',
  `idLocation` int(11) DEFAULT '0',
  `address` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.products: ~10 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `idCategory`, `idLocation`, `address`, `item`, `price`, `img`, `startDate`, `endDate`, `startTime`, `endTime`, `desc`, `days`, `creator`, `createdBy`) VALUES
	(24, 1, 9, 'BINUS Anggrek, Kemanggisan, Jakarta Barat', 'Startup to Standout', 50000, '/img/products/PRD1550997767342.jpg', '2018-05-09', '2018-05-09', '17:00', '19:00', '<p>Hadirlah BNCC International Conference yang bertemakan "Startup to Standout" dimana kita akan membahas bagaimana cara membangun startup dan mensukseskan Startup tersebut bersama dengan CEO &amp; Founder Kinerja BISA, Stephanus Titus, CEO Ducatus Global PTE LTD, Ronny Tome, dan Founder MD Rendeur, Renee Tan.&nbsp;<br /><br />Acara ini akan diadakan pada:<br />Hari / Tanggal: Rabu, 9 Mei 2018<br />Waktu: 17.20 - 19.00<br />Tempat: Ruang 400 Kampus Anggrek<br /><br />Benefits:<br />- SAT Points (International)<br />- E-Certificate<br />- Merchandise<br /><br />Jadi tunggu apa lagi? Ayo daftarkan diri kalian untuk mengikuti event ini! Jangan sampai ketinggalan karena slot event ini terbatas loh.</p>', 'Wednesday', 'ADMIN', 'admin'),
	(25, 1, 11, 'Universitas Multimedia Nusantara, Gading Serpong', 'Data Science Weekend (DSW) 2019', 20000, '/img/products/PRD1550998606788.jpg', '2019-04-27', '2019-04-29', '15:00', '17:00', '<p>Hi teman-teman, DSI kembali lagi dengan the larget community-driven data science gathering in Indonesia: Data Science Weekend (DSW) 2018: Fast Forward, Foresee the Tech Evolution to Come!<br /><br />DSW 2018 akan membawa topik mengenai masa depan dari teknologi data di dunia dan di Indonesia. Para speaker keren dari berbagai industri dan bidang seperti Go-Jek, Niometrics, Home Credit Indonesia, Google, AWS&nbsp;<span class="text_exposed_show">hingga Kantor Staf Presiden akan berkumpul dan membagi insights dan pengalama mereka untuk mendorong dampak di masyarakat melalui data.&nbsp;<br /><br />Terdengar menarik bukan? Tidak perlu galau dan bingung, langsung grab your ticket dan datang ke DSW 2018 pada tanggal 27 - 29 April 2018 di Universitas Multimedia Nusantara, Gading Serpong, Banten!&nbsp;</span></p>', 'Sunday,Saturday', 'ADMIN', 'admin'),
	(26, 1, 13, 'Grand Ballroom Sahid Jaya Hotel & Convention , Babarsari', 'Blockchain Cryptocurrency Talks & Networking 2018', 1000000, '/img/products/PRD1550998932116.jpg', '2018-12-07', '2018-12-07', '19:00', '22:00', '<p>BCTN 1.0 - AKAR - Blockchain Cryptocurrency Talks &amp; Networking 2018. International Blockchain Conference pertama yang hadir di Jogja<br /><br />BCTN 1.0 akan menghadirkan pakar dan pelaku bisnis berbasis blockchain dari Indonesia dan Luar Negeri di Jogjakarta<br />yang akan berbagi tentang ilmu mereka&nbsp;<br />Apa yang bisa anda dapatkan dari event ini:<span class="text_exposed_show"><br /><br />1. Ilmu yang keren dan bermanfaat dari para pembicara nasional dan internasional&nbsp;<br />2. Kesempatan untuk berkenalan dengan tech enthusiast di kota Jogja&nbsp;<br />3. Kesempatan untuk berjejaring dengan para tokoh di dunia blockchain dan berkolaborasi bersama mereka<br />4. Menikmati pengalaman menikmati International Conference di hotel bintang 4 Jogja&nbsp;</span></p>', 'Friday', 'ADMIN', 'admin');
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

-- Dumping data for table ems.trx: ~3 rows (approximately)
DELETE FROM `trx`;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.users: ~5 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `role`, `status`) VALUES
	(7, 'admin', '089417bd9abf11f94d96638f0d4eacb338d8568c09bb45a45461c46850e41bcd', 'Admin', 'gammarinaldi@yahoo.com', '081991090777', 'ADMIN', 'Verified'),
	(19, 'member', '3d49624cdde771b00e23a3d0754c5e650e34bccc1586dfbced1700a9ae8d4b5b', 'First Member', 'member@gmail.com', '081991090777', 'MEMBER', 'Verified'),
	(45, 'angel', '56202ac1a1be7de35f98bfa9835b3a51db18cc8fa62e425f33621fb9f13f196f', 'Angel', 'gammarinaldi@gmail.com', '081991090777', 'PRODUCER', 'Verified'),
	(46, 'raisa', '5c5a5361d3506a4f18d4c47a73da241668d41e3233626e8aafa3fdb2e4a50cea', 'Raisa Anggraini', 'gammarinaldi@gmail.com', '02103901874', 'MEMBER', 'Verified'),
	(50, 'zelda', '5c5a5361d3506a4f18d4c47a73da241668d41e3233626e8aafa3fdb2e4a50cea', 'Zelda Zaelani', 'gammarinaldi@gmail.com', '02359913100', 'PRODUCER', 'Verified');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table ems.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.wishlist: ~10 rows (approximately)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`id`, `idProduct`, `idCategory`, `username`) VALUES
	(43, 25, 1, 'angel');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
