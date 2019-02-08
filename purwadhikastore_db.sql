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


-- Dumping database structure for purwadhikastore
CREATE DATABASE IF NOT EXISTS `purwadhikastore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `purwadhikastore`;

-- Dumping structure for table purwadhikastore.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) DEFAULT '0',
  `idCategory` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.cart: ~0 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.category: ~3 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`) VALUES
	(1, 'Event'),
	(2, 'Workshop'),
	(6, 'Bootcamp');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.location
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.location: ~2 rows (approximately)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `city`, `address`) VALUES
	(1, 'BSD', 'Jl. BSD Green Office Park, GOP 9 - G Floor, BSD City, Tangerang Banten 15345'),
	(2, 'Jakarta', 'Sinarmas MSIG Tower 40th Floor Sudirman - Jakarta Selatan');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.log: ~87 rows (approximately)
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `username`, `role`, `desc`, `datetime`) VALUES
	(1, 'admin', 'ADMIN', 'Edit category: Testttasdasd', '2019-01-30 20:01:10'),
	(3, 'admin', 'ADMIN', 'Add location: asdasd', '2019-01-30 20:01:11'),
	(4, 'admin', 'ADMIN', 'Delete location: asdasd', '2019-01-30 20:01:48'),
	(5, 'admin', 'ADMIN', 'Edit product: JC. Web & Mobile Developer', '2019-01-30 22:01:24'),
	(6, 'admin', 'ADMIN', 'Edit product: JC. Web & Mobile Developer', '2019-01-30 22:01:11'),
	(7, 'admin', 'ADMIN', 'Login', '2019-01-31 15:01:04'),
	(8, 'admin', 'ADMIN', 'Edit product: JC. Web & Mobile Developer', '2019-01-31 15:01:46'),
	(9, 'admin', 'ADMIN', 'Edit product: JC. Web & Mobile Developer', '2019-01-31 18:01:11'),
	(10, 'admin', 'ADMIN', 'Add product: test', '2019-01-31 20:01:04'),
	(11, 'admin', 'ADMIN', 'Add product: test', '2019-01-31 20:01:47'),
	(12, 'admin', 'ADMIN', 'Add product: test', '2019-01-31 21:01:00'),
	(13, 'admin', 'ADMIN', 'Add product: test', '2019-01-31 21:01:83'),
	(14, 'admin', 'ADMIN', 'Add product: test', '2019-01-31 21:01:15'),
	(15, 'admin', 'ADMIN', 'Add product: test', '2019-01-31 21:01:58'),
	(16, 'admin', 'ADMIN', 'Delete product: test', '2019-01-31 21:01:38'),
	(17, 'admin', 'ADMIN', 'Delete product: test', '2019-01-31 21:01:65'),
	(18, 'admin', 'ADMIN', 'Delete product: test', '2019-01-31 21:01:48'),
	(19, 'admin', 'ADMIN', 'Delete product: test', '2019-01-31 21:01:57'),
	(20, 'admin', 'ADMIN', 'Delete product: test', '2019-01-31 21:01:94'),
	(21, 'admin', 'ADMIN', 'Delete product: test', '2019-01-31 21:01:74'),
	(22, 'admin', 'ADMIN', 'Add product: testt', '2019-01-31 21:01:06'),
	(23, 'admin', 'ADMIN', 'Delete product: testt', '2019-01-31 21:01:65'),
	(24, 'admin', 'ADMIN', 'Delete category: Job', '2019-01-31 21:01:37'),
	(25, 'admin', 'ADMIN', 'Add location: test', '2019-01-31 21:01:21'),
	(26, 'admin', 'ADMIN', 'Edit location: testx', '2019-01-31 21:01:65'),
	(27, 'admin', 'ADMIN', 'Delete location: testx', '2019-01-31 21:01:84'),
	(28, 'admin', 'ADMIN', 'Logout', '2019-01-31 21:01:84'),
	(29, 'admin', 'ADMIN', 'Login', '2019-01-31 21:01:98'),
	(30, 'admin', 'ADMIN', 'Add user: angel', '2019-01-31 21:01:96'),
	(31, 'admin', 'ADMIN', 'Add user: member', '2019-01-31 21:01:93'),
	(32, 'admin', 'ADMIN', 'Logout', '2019-01-31 21:01:76'),
	(33, 'angel', 'MEMBER', 'Login', '2019-01-31 21:01:41'),
	(34, 'angel', 'MEMBER', 'Logout', '2019-01-31 21:01:56'),
	(35, 'admin', 'ADMIN', 'Login', '2019-01-31 21:01:98'),
	(36, 'admin', 'ADMIN', 'Edit user: angel', '2019-01-31 21:01:61'),
	(37, 'admin', 'ADMIN', 'Logout', '2019-01-31 21:01:27'),
	(38, 'angel', 'PRODUCER', 'Login', '2019-01-31 21:01:74'),
	(39, 'admin', 'ADMIN', 'Login', '2019-02-02 18:02:23'),
	(40, 'admin', 'ADMIN', 'Edit product: JC. Web & Mobile Developer', '2019-02-02 19:02:89'),
	(41, 'admin', 'ADMIN', 'Edit product: Web & Mobile Developer', '2019-02-02 19:02:05'),
	(42, 'admin', 'ADMIN', 'Edit product: Web & Mobile Development', '2019-02-02 19:02:96'),
	(43, 'admin', 'ADMIN', 'Edit product: Web & Mobile Development', '2019-02-02 19:02:93'),
	(44, 'admin', 'ADMIN', 'Login', '2019-02-05 09:02:91'),
	(45, 'admin', 'ADMIN', 'Login', '2019-02-05 10:02:95'),
	(46, 'admin', 'ADMIN', 'Logout', '2019-02-05 13:02:33'),
	(47, 'admin', 'ADMIN', 'Login', '2019-02-06 21:02:15'),
	(48, 'admin', 'ADMIN', 'Edit user: tile', '2019-02-06 21:02:90'),
	(49, 'admin', 'ADMIN', 'Logout', '2019-02-06 22:02:47'),
	(50, 'admin', NULL, 'Logout', '2019-02-06 22:02:13'),
	(51, 'admin', NULL, 'Logout', '2019-02-06 22:02:54'),
	(52, 'test', 'MEMBER', 'Register', '2019-02-06 22:02:08'),
	(53, 'test', NULL, 'Logout', '2019-02-06 22:02:32'),
	(54, 'admin', 'ADMIN', 'Login', '2019-02-06 22:02:44'),
	(55, 'admin', 'ADMIN', 'Edit user: adminx', '2019-02-06 22:02:80'),
	(56, 'admin', 'ADMIN', 'Edit user: admin', '2019-02-06 22:02:77'),
	(57, 'admin', 'ADMIN', 'Add user: test', '2019-02-06 22:02:89'),
	(58, 'admin', 'ADMIN', 'Delete user: test', '2019-02-06 22:02:37'),
	(59, 'admin', 'ADMIN', 'Logout', '2019-02-06 22:02:48'),
	(60, 'test', 'MEMBER', 'Register', '2019-02-06 22:02:72'),
	(61, 'test', 'MEMBER', 'Logout', '2019-02-06 22:02:12'),
	(62, 'admin', 'ADMIN', 'Login', '2019-02-06 22:02:14'),
	(63, 'admin', 'ADMIN', 'Logout', '2019-02-06 22:02:57'),
	(64, 'test', 'MEMBER', 'Login', '2019-02-06 22:02:11'),
	(65, 'test', 'MEMBER', 'Logout', '2019-02-06 22:02:83'),
	(66, 'admin', 'ADMIN', 'Login', '2019-02-06 22:02:89'),
	(67, 'admin', 'ADMIN', 'Edit user: test', '2019-02-06 22:02:54'),
	(68, 'admin', 'ADMIN', 'Edit user: test', '2019-02-06 22:02:62'),
	(69, 'admin', 'ADMIN', 'Logout', '2019-02-06 22:02:28'),
	(70, 'test', 'MEMBER', 'Login', '2019-02-06 22:02:65'),
	(71, 'test', 'MEMBER', 'Logout', '2019-02-06 22:02:95'),
	(72, 'admin', 'ADMIN', 'Login', '2019-02-06 23:02:78'),
	(73, 'admin', 'ADMIN', 'Logout', '2019-02-06 23:02:44'),
	(74, 'admin', 'ADMIN', 'Login', '2019-02-07 20:02:32'),
	(75, 'admin', 'ADMIN', 'Edit category: Event', '2019-02-07 20:02:73'),
	(76, 'admin', 'ADMIN', 'Edit category: Workshop', '2019-02-07 20:02:67'),
	(77, 'admin', 'ADMIN', 'Add category: Bootcamp', '2019-02-07 20:02:07'),
	(78, 'admin', 'ADMIN', 'Edit product: Soc. Med. Content Strategies to Grow Your Audience', '2019-02-07 21:02:98'),
	(79, 'admin', 'ADMIN', 'Edit product: Soc. Med. Content Strategies to Grow Your Audience', '2019-02-07 21:02:73'),
	(80, 'admin', 'ADMIN', 'Add product: Instagram Ads for your Online Business', '2019-02-07 21:02:53'),
	(81, 'admin', 'ADMIN', 'Add product: Digital Marketing Bootcamp', '2019-02-07 21:02:24'),
	(82, 'admin', 'ADMIN', 'Add product: How to build your brand in social media', '2019-02-07 21:02:26'),
	(83, 'admin', 'ADMIN', 'Add product: SEO 101 : Intro to Search Engine Optimization', '2019-02-07 22:02:30'),
	(84, 'admin', 'ADMIN', 'Add product: Introduction to UX (User Experience) Research', '2019-02-07 22:02:62'),
	(85, 'admin', 'ADMIN', 'Edit product: SEO 101 : Intro to Search Engine Optimization', '2019-02-07 22:02:91'),
	(86, 'admin', 'ADMIN', 'Edit product: SEO 101 : Intro to Search Engine Optimization', '2019-02-07 23:02:91'),
	(87, 'admin', 'ADMIN', 'Login', '2019-02-08 06:02:87'),
	(88, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:35'),
	(89, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:06'),
	(90, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:56'),
	(91, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:64'),
	(92, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:77'),
	(93, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:24'),
	(94, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:57'),
	(95, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:85'),
	(96, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:15'),
	(97, 'admin', 'ADMIN', 'Edit product: SEO 101 : Intro to Search Engine Optimization', '2019-02-08 06:02:51'),
	(98, 'admin', 'ADMIN', 'Edit product: Introduction to UX (User Experience) Research', '2019-02-08 06:02:08'),
	(99, 'admin', 'ADMIN', 'Logout', '2019-02-08 06:02:61'),
	(100, 'member', 'MEMBER', 'Register', '2019-02-08 06:02:25'),
	(101, 'member', 'MEMBER', 'Logout', '2019-02-08 07:02:67'),
	(102, 'member', 'MEMBER', 'Login', '2019-02-08 07:02:07');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.products
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
  `days` varchar(50) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.products: ~6 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `idCategory`, `idLocation`, `item`, `price`, `img`, `startDate`, `endDate`, `startTime`, `endTime`, `desc`, `days`, `creator`, `createdBy`) VALUES
	(10, 2, 1, 'Soc. Med. Content Strategies to Grow Your Audience', 500000, '/img/products/PRD1549550081716.png', '2019-02-12', '2019-02-12', '18:00', '22:00', '<h3><strong>Tentang Event</strong></h3>\n<p>Media social menjadi sebuah alat menarik yang dilirik oleh banyak brand untuk menjangkau pasar lebih luas. Pada saat ini persaingan penjualan brand di social media sudah cukup bersaing. Sangat penting membangun followers yang loyal pada social media marketing brand Anda.</p>\n<p>Audiens perlu mengenal brand Anda dengan baik, hingga akhirnya menjadi follower yang loyal. Follower loyal tentunya penting untuk keberlangsungan penjualan brand. Pada workshop ini Anda akan mempelajari bagaimana membangun strategi konten media social yang menarik sehingga dapat meningkatkan penjualan brand Anda melalui social media marketing.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mengetahui dasar-dasar content social media yang baik</li>\n<li>Mengetahui strategi membangun konten media social yang dapat meningkatkan followers</li>\n<li>Mengetahui strategi membangung konten media social yang dapat meningkatkan engagement dengan audiences</li>\n<li>Mengetahui strategi memilih influencer yang tepat untuk meningkatkan brand</li>\n<li>Mengetahui strategi bagaimana cara menjadi top of mind brand bagi target audience</li>\n<li>Mengetahui kebutuhan target audience</li>\n<li>Mengetahui behavior target audience</li>\n<li>Mengetahui cara mengevaluasi sebuah strategi media social yang efektif</li>\n</ol>', 'Tuesday', 'ADMIN', 'admin'),
	(11, 2, 1, 'Instagram Ads for your Online Business', 650000, '/img/products/PRD1549550515511.png', '2019-02-13', '2019-02-13', '19:00', '22:00', '<h3><strong>Tentang Workshop</strong></h3>\n<p>Perkembangan bisnis online sekarang ini sudah semakin berkembang dan media sosial menjadi salah satu channel terbesar dalam bisnis online. Media sosialpun menjadi tempat pemasaran yang tepat untuk memenangkan pasar.</p>\n<p>​Salah satu alat iklan menggunakan media sosial adalah Instagram Ads, dengan lebih dari 500 juta pengguna aktif di seluruh dunia, mengiklankan bisnis Anda di Instagram adalah keputusan yang tepat.</p>\n<p>​Namun, apakah Anda belum siap untuk berinvestasi di Instagram Ads? Apakah Anda belum terbiasa menggunakan Instagram Ads? Jika Anda adalah orangnya, workshop ini tepat untuk Anda!</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mempelajari bagaimana menggunakan Instagram for business dan memulai iklan.</li>\n<li>Mempelajari bagaimana membuat campaign Instagram Ads yang terstruktur</li>\n<li>Mempelajari bagaimana menjangkau audiens yang tepat</li>\n<li>Mempelajari bagaimana mengukur budget yang tepat</li>\n<li>Mempelajari bagaimana mengukur keberhasilan atau keefektifan sebuah campaign</li>\n</ol>', 'Wednesday', 'ADMIN', 'admin'),
	(12, 6, 2, 'Digital Marketing Bootcamp', 2500000, '/img/products/PRD1549550682214.png', '2019-02-17', '2019-02-18', '10:00', '17:00', '<h3><strong>Tentang Bootcamp</strong></h3>\n<p>Dunia digital bergerak dengan sangat cepat. Setiap industri telah dipengaruhi oleh kemajuan dunia digital. Ini benar karena munculnya internet dan media sosial, yang telah mengubah cara bisnis berkomunikasi dengan klien potensial dan yang sudah ada.</p>\n<p>Apa itu Digital Marketing? Bagaimana digital marketing dapat membantu Anda mengembangkan bisnis Anda? Pada bootcamp ini Anda akan diperkenalkan tentang apa itu digital marketing, bagaimana cara kerjanya, dengan praktek langsung sehingga Anda dapat menerapkannya untuk bisnis Anda dan membawa lebih banyak customer pada bisnis Anda.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mempelajari apa yang dimaksud dengan digital marketing dan keuntungan<br />penerapan digital marketing</li>\n<li>Bagaimana cara kerja digital marketing</li>\n<li>Mengidentifikasi trik, funnel dan konsep digital marketing serta teknik untuk<br />membawa customer membeli produk Anda</li>\n<li>Menyusun dan menerapkan paling sedikit 5 kata kunci terbaik yang dapat<br />diterapkan di dalam content marketing</li>\n<li>Mengetahui beberapa jargon didalam digital marketing (CPC, CPM, CPI, CTR, Direct Type in, Lead Magnet)</li>\n<li>Membahas sebuah contoh study case dan jenis KPI yang digunakan</li>\n<li>Mengetahui semua social media platform yang dapat digunakan</li>\n<li>Mempelajari masing-masing ciri setiap jenis social media</li>\n<li>Perbedaan cara penjualan di social media, google dan marketplace</li>\n<li>Membuat content social media yang baik dan menarik untuk meningkatkan penjualan</li>\n<li>Memahami tipe consumer di Indonesia</li>\n</ol>', 'Sunday,Monday', 'ADMIN', 'admin'),
	(13, 2, 1, 'How to build your brand in social media', 500000, '/img/products/PRD1549550803254.png', '2019-02-19', '2019-02-19', '18:00', '22:00', '<h3><strong>Tentang Event</strong></h3>\n<p>Media sosial berkembang begitu pesat dan hampir semua orang menggunakan situs-situs jejaring sosial atau media sosial ini. Pesatnya pertumbuhan ini menjadi suatu optimisme bagi para pelaku pemasar internet atau biasa dikenal dengan istilah internet marketers, bahwa media sosial kini bukan hanya situs internet semata, namun lebih dari pada itu. Media sosial saat ini sudah menjadi ruang publik. Media sosial telah menjadi salah satu strategi digital marketing yang sangat ampuh.</p>\n<p><br />Setelah mengikuti workshop ini, peserta akan mendapatkan pembelajaran mengapa pemasaran media sosial adalah suatu keharusan, anda diharapkan memiliki pengetahuan bagaimana membangun brand di media sosial dan mengetahui bagaimana meningkatkan penjualan dengan menggunakan media sosial.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Memahami mengapa pemasaran media sosial adalah suatu keharusan</li>\n<li>Mempelajari bagaimana cara membangun brand anda di media sosial</li>\n<li>Mempelajari apa KPI anda di media sosial</li>\n<li>Mempelajari bagaimana membuat konten yang menarik</li>\n<li>Mempelajari bagaimana cara meningkatkan penjualan dengan menggunakan media sosial</li>\n<li>Mempelajari bagaimana cara mendukung campaign utama brand anda di media sosial</li>\n<li>Mempelajari bagaimana memonitor, mengukur, dan mengevaluasi hasil</li>\n<li>Mempelajari bagaimana mengelola media sosial perusahaan Anda dalam 1 jam</li>\n</ol>', 'Sunday,Monday,Tuesday', 'ADMIN', 'admin'),
	(14, 2, 2, 'SEO 101 : Intro to Search Engine Optimization', 500000, '/img/products/PRD1549556625631.png', '2019-02-27', '2019-02-27', '19:00', '22:00', '<h3><span style="background-color: #ff9900;"><strong>Tentang Workshop</strong></span></h3>\n<p>Apakah Anda pemilik website atau blog yang membutuhkan banyak pengunjung atau pengguna jangka panjang? Pada workshop ini Anda akan mempelajari cara kerja SEO. SEO (Search Engine Optimization) merupakan suatu teknik yang digunakan untuk menempatkan website pada posisi SERP (search engine result page) yang strategis, sesuai dengan keyword yang ditargetkan.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Memahami kata kunci produk atau layanan apa yang sebenarnya sering dicari oleh customer saat ini</li>\n<li>Mempelajari teknik SEO yaitu cara agar website bisa berada di halaman 1 pencarian Google, meliputi : Optimasi Internal (Onpage), Optimasi Eksternal(Offpage / Backlink)</li>\n<li>Memahami bagaimana membuat kualitas content yang unik dan berbeda</li>\n<li>Memahami bagaimana mengukur kesuksean suatu teknik SEO</li>\n</ol>', 'Wednesday', 'ADMIN', 'admin'),
	(15, 2, 1, 'Introduction to UX (User Experience) Research', 650000, '/img/products/PRD1549581287560.png', '2019-03-03', '2019-03-03', '10:00', '15:00', '<h3><strong>Tentang Workshop</strong></h3>\n<p>Tahukah Anda dibalik kenyamanan dan kemudahan berbelanja di sebuah e-commerce, mencari informasi di sebuah website, atau menggunakan aplikasi mobile ada team User Experience Design yang bekerja keras untuk membuat pengalaman Anda sebagai user menyenangkan? Dan tahukah Anda proses memiliki UX Design yang baik semua dimulai dari proses research terlebih dahulu. UX Researcher yang melakukan pengumpulan informasi untuk mengetahui dan mempelajari sikap, tingkah laku, emosi dan kebutuhan para users (pengguna). Pada workshop ini Anda akan mempelajari peran seorang UX Research, mulai dari memilih metode penelitian yang tepat, cara melakukan riset yang benar secara langsung kepada users Anda, hingga cara menganalisa hasil penelitian (research) tersebut.</p>\n<p>&nbsp;</p>\n<p><strong>Apa saja yang akan dipelajari pada workshop ini?</strong></p>\n<ol>\n<li>Mempelajari peran seorang UX Research (what, why, how, when)</li>\n<li>Mempelajari nilai-nilai yang terkandung didalam UX Research seperti konsep produk konsep desain dan development</li>\n<li>Mengetahui cara memilih metode penelitian yang tepat untuk meneliti user Anda</li>\n<li>Memahami setiap proses dalam UX Research, mulai dari perencanaan hingga cara menganalisa</li>\n<li>Praktek langsung memulai user research untuk aplikasi Anda!</li>\n</ol>', 'Sunday,Monday', 'ADMIN', 'admin');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.trx
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.trx: ~0 rows (approximately)
DELETE FROM `trx`;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
INSERT INTO `trx` (`id`, `invoice`, `username`, `totalPrice`, `totalQty`, `bankName`, `accNumber`, `receipt`, `trxDateTime`, `status`) VALUES
	(28, 'INV/admin/2019/1/8/64433', 'admin', 1000000, 2, 'BCA', '4731175599', '/img/receipts/TRX1549583073331.jpg', '2019-02-08 06:02:31', 'Unconfirmed'),
	(29, 'INV/member/2019/1/8/65812', 'member', 1650000, 3, 'MANDIRI', '164000017790', '/img/receipts/TRX1549583892657.png', '2019-02-08 06:02:64', 'Unconfirmed');
/*!40000 ALTER TABLE `trx` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.trxdetails
CREATE TABLE IF NOT EXISTS `trxdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTrx` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.trxdetails: ~0 rows (approximately)
DELETE FROM `trxdetails`;
/*!40000 ALTER TABLE `trxdetails` DISABLE KEYS */;
INSERT INTO `trxdetails` (`id`, `idTrx`, `idProduct`) VALUES
	(10, 28, 14),
	(11, 29, 14),
	(12, 29, 13),
	(13, 29, 11);
/*!40000 ALTER TABLE `trxdetails` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `role`) VALUES
	(7, 'admin', '089417bd9abf11f94d96638f0d4eacb338d8568c09bb45a45461c46850e41bcd', 'Admin', 'gammarinaldi@yahoo.com', '081991090777', 'ADMIN'),
	(18, 'test', 'd8402bd365a34b4d34729c3fa420818b2913de85533ae9e8b22434bef7ac7bba', 'Test', 'test@gmail.com', '081991090777', 'MEMBER'),
	(19, 'member', '3d49624cdde771b00e23a3d0754c5e650e34bccc1586dfbced1700a9ae8d4b5b', 'This is Member', 'member@gmail.com', '081991090777', 'MEMBER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.wishlist: ~0 rows (approximately)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`id`, `idProduct`, `idCategory`, `username`) VALUES
	(18, 14, 2, 'admin'),
	(19, 12, 6, 'admin'),
	(20, 14, 2, 'member'),
	(21, 13, 2, 'member');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
