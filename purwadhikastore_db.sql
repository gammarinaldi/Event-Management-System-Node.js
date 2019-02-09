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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.log: ~103 rows (approximately)
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `username`, `role`, `desc`, `datetime`) VALUES
	(132, 'admin', 'ADMIN', 'Logout', '09/Feb/2019 23:02:14'),
	(133, 'admin', 'ADMIN', 'Login', '09/Feb/2019 23:02:89'),
	(134, 'admin', 'ADMIN', 'Edit user: buday', '09/Feb/2019 23:02:09'),
	(135, 'admin', 'ADMIN', 'Edit user: buday', '09/Feb/2019 23:02:88'),
	(136, 'admin', 'ADMIN', 'Edit user: arrum', '09/Feb/2019 23:02:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.products: ~6 rows (approximately)
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
	(18, 1, 2, 'Meet Women in Data Science', 125000, '/img/products/PRD1549718369089.png', '2019-02-14', '2019-02-14', '19:00', '21:00', '<h1 class="font_0"><strong>Tentang Event</strong></h1>\n<p>Banyaknya jumlah data yang dihasilkan oleh manusia dan perangkat terus mendorong perkembangan teknologi yang dapat mewadahi kebutuhan untuk mengatur dan memproses informasi yang terus bertambah. Data science atau ilmu data pun semakin marak digunakan di berbagai industri untuk mewadahi kebutuhan tersebut. Kini, data science menjadi tool yang sangat berharga bagi industri untuk mentransformasi data menjadi informasi penting.</p>\n<p>Transformasi digital yang suskes tentunya tidak akan mungkin terjadi tanpa kolaborasi yang baik antara manusia dan mesin. Oleh karena itu, selain faktor-faktor pendorong tadi, Industry 4.0 juga membutuhkan sentuhan manusia yang ahli dalam mengolah dan menangani data.</p>\n<p>Untuk melakukan hal tersebut, industri membutuhkan data scientist. Kini, data scientist memainkan peranan yang sangat penting untuk memahami bagaimana hal bekerja dalam sebuah perusahaan. Pada event ini akan membahas lebih dalam tentang Data Science langsung dari narasumber ahli yang sudah menangani Data perusahaan besar. Narasumber akan membagikan pengalaman dan pengetahuan mereka tentang teknologi apa saja yang digunakan di Data Science, peluang karir untuk programmer Data Science dan bagaimana penerapan Data Science dalam sebuah Startup.</p>\n<p><strong>Apa saja yang akan dipelajari :</strong></p>\n<ol>\n<li>Mengetahui apa itu Data Science</li>\n<li>Mengetahui apa saja teknologi yang ada di dalam Data Science</li>\n<li>Mengetahui asal mula mengapa narasumber terjun di dunia Data Science</li>\n<li>Mengetahui teknologi Data Science apa yang sedang digunakan di tempat bekerja narasumber</li>\n<li>Mengetahui peluang karir Data Scientist</li>\n<li>Mengetahui manfaat dari penerapan Data Science dalam sebuah startup</li>\n<li>Mengetahui saat yang tepat untuk startup menggunakan Data Science</li>\n<li>Mengetahui seberapa penting penerapan Data science dalam startup</li>\n<li>Mengetahui kasus nyata tentang suatu startup yang berhasil dalam bisnis setelah menerapkan Data Science</li>\n</ol>', 'Thursday', 'PRODUCER', 'angel');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.trx: ~2 rows (approximately)
DELETE FROM `trx`;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
INSERT INTO `trx` (`id`, `invoice`, `username`, `totalPrice`, `totalQty`, `bankName`, `accNumber`, `receipt`, `trxDateTime`, `status`) VALUES
	(28, 'INV/admin/2019/1/8/64433', 'admin', 1000000, 2, 'BCA', '4731175599', '/img/receipts/TRX1549583073331.jpg', '08/02/2019 06:02:31', 'Unconfirmed'),
	(29, 'INV/member/2019/1/8/65812', 'member', 1650000, 3, 'MANDIRI', '164000017790', '/img/receipts/TRX1549583892657.png', '08/02/2019 06:42:31', 'Unconfirmed'),
	(33, 'INV/member/2019/1/9/221839', 'member', 2725000, 3, 'CIMB NIAGA', ' 504-010-2789', '/img/receipts/TRX1549725519414.jpg', '09/Feb/2019 22:02:39', 'Unconfirmed');
/*!40000 ALTER TABLE `trx` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.trxdetails
CREATE TABLE IF NOT EXISTS `trxdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTrx` int(11) DEFAULT '0',
  `idProduct` int(11) DEFAULT '0',
  `qty` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.trxdetails: ~4 rows (approximately)
DELETE FROM `trxdetails`;
/*!40000 ALTER TABLE `trxdetails` DISABLE KEYS */;
INSERT INTO `trxdetails` (`id`, `idTrx`, `idProduct`, `qty`) VALUES
	(10, 28, 14, 2),
	(11, 29, 14, 1),
	(12, 29, 13, 1),
	(13, 29, 11, 1),
	(15, 33, 18, 1),
	(16, 33, 17, 1),
	(17, 33, 16, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.users: ~4 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `role`) VALUES
	(7, 'admin', '089417bd9abf11f94d96638f0d4eacb338d8568c09bb45a45461c46850e41bcd', 'Admin', 'gammarinaldi@yahoo.com', '081991090777', 'ADMIN'),
	(18, 'arrum', 'arrum', 'Arrum', 'arrum@gmail.com', '081991090777', 'MEMBER'),
	(19, 'member', '3d49624cdde771b00e23a3d0754c5e650e34bccc1586dfbced1700a9ae8d4b5b', 'This is Member', 'member@gmail.com', '081991090777', 'MEMBER'),
	(20, 'angel', '56202ac1a1be7de35f98bfa9835b3a51db18cc8fa62e425f33621fb9f13f196f', 'Angel', 'angel@gmail.com', '081991090777', 'PRODUCER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table purwadhikastore.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table purwadhikastore.wishlist: ~4 rows (approximately)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`id`, `idProduct`, `idCategory`, `username`) VALUES
	(19, 12, 6, 'admin'),
	(26, 18, 1, 'member'),
	(27, 17, 1, 'member'),
	(28, 16, 2, 'member'),
	(29, 14, 2, 'admin'),
	(30, 16, 2, 'admin');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
