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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.cart: ~1 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `idProduct`, `idCategory`, `username`, `qty`) VALUES
	(64, 32, 8, 'elma', 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table ems.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.category: ~5 rows (approximately)
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.location: ~8 rows (approximately)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `city`) VALUES
	(9, 'Jakarta'),
	(10, 'Bandung'),
	(11, 'Tangerang'),
	(13, 'Jogjakarta'),
	(14, 'Surabaya'),
	(16, 'Malang'),
	(18, 'Denpasar'),
	(19, 'Jepara');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table ems.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.log: ~46 rows (approximately)
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `username`, `role`, `desc`, `datetime`) VALUES
	(458, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 16:02:79'),
	(459, 'angel', 'PRODUCER', 'Login', '24/Feb/2019 16:02:51'),
	(460, 'angel', 'PRODUCER', 'Add category: Training', '24/Feb/2019 16:02:97'),
	(461, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 17:02:25'),
	(462, 'admin', 'ADMIN', 'Login', '24/Feb/2019 17:02:69'),
	(463, 'admin', 'ADMIN', 'Edit product: Blockchain Cryptocurrency Talks & Networking 2018', '24/Feb/2019 17:02:10'),
	(464, 'admin', 'ADMIN', 'Purchase Confirmation', '24/Feb/2019 17:02:71'),
	(465, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 17:02:07'),
	(466, 'zelda', 'PRODUCER', 'Login', '24/Feb/2019 17:02:59'),
	(467, 'zelda', 'PRODUCER', 'Add product: Lailatul Coding @Bandung', '24/Feb/2019 21:02:72'),
	(468, 'zelda', 'PRODUCER', 'Add product: Seminar Nasional Artificial Intelligence Amikom', '24/Feb/2019 21:02:35'),
	(469, 'zelda', 'PRODUCER', 'Add product: ROCKET Vol. I - Smart People for Smart City', '24/Feb/2019 21:02:57'),
	(470, 'zelda', 'PRODUCER', 'Add product: Let’s have a date with IDEC and Wesley Harjono', '24/Feb/2019 21:02:16'),
	(471, 'zelda', 'PRODUCER', 'Add product: Mikrotik Training Surabaya', '24/Feb/2019 22:02:27'),
	(472, 'zelda', 'PRODUCER', 'Logout', '24/Feb/2019 22:02:35'),
	(473, 'angel', 'PRODUCER', 'Login', '24/Feb/2019 22:02:83'),
	(474, 'angel', 'PRODUCER', 'Add product: Kopi Darat Python ID Jogja', '24/Feb/2019 22:02:82'),
	(475, 'angel', 'PRODUCER', 'Add product: Meetup Google Developer Group Yogyakarta', '24/Feb/2019 22:02:46'),
	(476, 'angel', 'PRODUCER', 'Delete product: Kopi Darat Python ID Jogja', '24/Feb/2019 22:02:97'),
	(477, 'angel', 'PRODUCER', 'Logout', '24/Feb/2019 22:02:35'),
	(478, 'admin', 'ADMIN', 'Login', '24/Feb/2019 22:02:61'),
	(479, 'admin', 'ADMIN', 'Delete product: Data Science Weekend (DSW) 2019', '24/Feb/2019 22:02:54'),
	(480, 'admin', 'ADMIN', 'Add location: Malang', '24/Feb/2019 22:02:11'),
	(481, 'admin', 'ADMIN', 'Add location: Malang', '24/Feb/2019 22:02:11'),
	(482, 'admin', 'ADMIN', 'Delete location: Malang', '24/Feb/2019 22:02:68'),
	(483, 'admin', 'ADMIN', 'Add product: UX MEETUP & SECRET BOX', '24/Feb/2019 22:02:93'),
	(484, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 22:02:20'),
	(485, 'member', 'MEMBER', 'Login', '24/Feb/2019 22:02:51'),
	(486, 'member', 'MEMBER', 'Logout', '24/Feb/2019 22:02:61'),
	(487, 'angel', 'PRODUCER', 'Login', '24/Feb/2019 22:02:40'),
	(488, 'angel', 'PRODUCER', 'Add location: Denpasar', '24/Feb/2019 22:02:68'),
	(489, 'angel', 'PRODUCER', 'Add product: Harness the Power of IoT to Develop Smart Technology', '24/Feb/2019 23:02:74'),
	(490, 'angel', 'PRODUCER', 'Add location: Jepara', '24/Feb/2019 23:02:37'),
	(491, 'angel', 'PRODUCER', 'Add product: Wireless Security And Ethical Hacking', '24/Feb/2019 23:02:21'),
	(492, 'angel', 'PRODUCER', 'Edit product: Wireless Security And Ethical Hacking', '24/Feb/2019 23:02:62'),
	(493, 'angel', 'PRODUCER', 'Logout', '24/Feb/2019 23:02:91'),
	(494, 'admin', 'ADMIN', 'Login', '24/Feb/2019 23:02:35'),
	(495, 'admin', 'ADMIN', 'Edit user: admin', '24/Feb/2019 23:02:90'),
	(496, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 23:02:65'),
	(497, 'member', 'MEMBER', 'Login', '24/Feb/2019 23:02:16'),
	(498, 'member', 'MEMBER', 'Logout', '24/Feb/2019 23:02:54'),
	(499, 'raisa', 'MEMBER', 'Register', '24/Feb/2019 23:02:05'),
	(500, 'elma', 'MEMBER', 'Register', '24/Feb/2019 23:02:56'),
	(501, 'elma', 'MEMBER', 'Logout', '24/Feb/2019 23:02:57'),
	(502, 'admin', 'ADMIN', 'Login', '24/Feb/2019 23:02:40'),
	(503, 'admin', 'ADMIN', 'Logout', '24/Feb/2019 23:02:91');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Dumping structure for table ems.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCategory` int(11) DEFAULT '0',
  `idLocation` int(11) DEFAULT '0',
  `address` text,
  `item` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.products: ~11 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `idCategory`, `idLocation`, `address`, `item`, `price`, `img`, `startDate`, `endDate`, `startTime`, `endTime`, `desc`, `days`, `creator`, `createdBy`) VALUES
	(24, 1, 14, 'DILo Surabaya, Jalan Ketintang No. 156 Ketintang Gayungan', 'ROCKET Vol. I - Smart People for Smart City', 50000, '/img/products/PRD1551020020544.jpg', '2019-03-17', '2019-03-17', '08:00', '15:00', '<p>ROCKET Vol. I mempersembahkan SEMINAR NASIONAL yang mengusung tema spesial &ldquo;Smart People for Smart City&rdquo;</p>\n<p>Siapa sih yang bakal jadi pembicaranya?</p>\n<ul>\n<li>Tri Rismaharini (Walikota Surabaya)</li>\n<li>Erick Karya (CEO Matakota)</li>\n<li>Chandra Ramazeta (CEO Indevia Studio)</li>\n<li>Ardianto Tanadjaja (Project Officer Gapura Digital)</li>\n<li>Firza Prima (Akademisi dan Praktisi IT)</li>\n</ul>\n<p>Event spesial ini akan diadakan pada : <br />Minggu, 18 Maret 2018<br />08.00 &ndash; 15.00<br />DILo Surabaya, Jalan Ketintang No. 156 Ketintang Gayungan, Surabaya</p>\n<p>Apa aja yang bakal kamu dapatkan?</p>\n<ul>\n<li>Seminar Kit</li>\n<li>Goodie Bag</li>\n<li>Snack</li>\n<li>Makan Siang</li>\n<li>Sertifikat</li>\n</ul>\n<p>Yuk jadi saksi perkembangan Smart City di kotamu<br />Kalau bukan sekarang, kapan lagi?<br />Kalau bukan kamu, siapa lagi?</p>', 'Sunday', 'PRODUCER', 'zelda'),
	(26, 1, 13, 'Grand Ballroom Sahid Jaya Hotel & Convention, Babarsari', 'Blockchain Cryptocurrency Talks & Networking 2018', 1000000, '/img/products/PRD1550998932116.jpg', '2018-12-07', '2018-12-07', '19:00', '22:00', '<p>BCTN 1.0 - AKAR - Blockchain Cryptocurrency Talks &amp; Networking 2018. International Blockchain Conference pertama yang hadir di Jogja<br /><br />BCTN 1.0 akan menghadirkan pakar dan pelaku bisnis berbasis blockchain dari Indonesia dan Luar Negeri di Jogjakarta<br />yang akan berbagi tentang ilmu mereka&nbsp;<br />Apa yang bisa anda dapatkan dari event ini:<span class="text_exposed_show"><br /><br />1. Ilmu yang keren dan bermanfaat dari para pembicara nasional dan internasional&nbsp;<br />2. Kesempatan untuk berkenalan dengan tech enthusiast di kota Jogja&nbsp;<br />3. Kesempatan untuk berjejaring dengan para tokoh di dunia blockchain dan berkolaborasi bersama mereka<br />4. Menikmati pengalaman menikmati International Conference di hotel bintang 4 Jogja&nbsp;</span></p>', 'Friday', 'ADMIN', 'admin'),
	(28, 1, 10, 'Lo.Ka.Si Coffee & Space Jl. Ir. H. Juanda 92, Kota Bandung', 'Lailatul Coding @Bandung', 150000, '/img/products/PRD1551019523689.jpg', '2019-05-25', '2019-05-26', '19:00', '22:00', '<p>Di malam&nbsp;<a href="http://teknoevent.com/dSwRt">Lailatul Coding</a>&nbsp;programmer atau developer dan project owner atau startup bekerja sama untuk menyelesaikan berbagai proyek IT dalam 1 malam dan hasilnya akan disumbangkan untuk kegiatan amal.</p>\n<p>Malam Lailatul Coding hadir sebagai salah satu cara bagi para pelaku industri kreatif untuk bisa beramal dengan cara yang kreatif. Selain dapat berpartisipasi dalam bentuk uang, para peserta juga dapat menyumbangkan ide, gagasan, serta skill yang dimilikinya melalui barisan code.</p>\n<p>Keuntungan yang diperoleh dari kegiatan ini akan disalurkan oleh badan penerima amal yang dipilih ketika acara usai sesuai kesepakatan bersama.</p>\n<p><strong>Developer / Designer</strong><br />Nantinya akan memilih proyek yang ingin dikerjakan, dan mengerjakannya dalam 1 malam bersama dengan tim</p>\n<p><strong>Project Owner</strong><br />Pihak yang mengajukan proyek web/app kepada tim developer yang tertarik untuk mengerjakannya. Proyek yang diajukan dapat berubah website pribadi, e-commerce, atau mobile apps</p>\n<p><strong>Donation</strong><br />Pihak-pihak yang ingin turut memberi kontribusi dengan menyumbangkan donasi seikhlasnya, untuk kemudian disalurkan kepada yang membutuhkan</p>', 'Saturday,Sunday', 'PRODUCER', 'zelda'),
	(29, 1, 13, 'Ruang Cinema Universitas AMIKOM Yogyakarta', 'Seminar Nasional Artificial Intelligence Amikom', 100000, '/img/products/PRD1551019658332.jpg', '2019-06-05', '2019-06-05', '08:00', '11:00', '<p>Seminar Nasional 2018 Artificial Intelligence dengan tema &ldquo;Mengoptimalkan Kecerdasan Buatan dalam Bidang Digital Creative pada Era Teknologi Informasi&rdquo;<br /><br />Tidak lupa untuk menghadirkan pemateri-pemateri yang hebat berpengelaman dan berkompeten di bidangnya</p>\n<p>Pemateri 1:</p>\n<p>Pak Beno Kunto Pradekso, M.Sc (CEO PT.Solusi 247)</p>\n<p>Pemateri 2:</p>\n<p>Bu Dessi Puji Lestari, Ph.D (Lektor Institut Teknologi Bandung)</p>\n<p>Moderator:</p>\n<p>Satya Abdul H. B., S.Kom (Hubungan Masyarakat Universitas AMIKOM Yogyakarta)</p>', 'Saturday,Sunday,Wednesday', 'PRODUCER', 'zelda'),
	(30, 1, 9, 'BINUS Anggrek, Kemanggisan, Jakarta Barat', 'Startup to Standout', 50000, '/img/products/PRD1550997767342.jpg', '2018-05-09', '2018-05-09', '17:00', '19:00', '<p>Hadirlah BNCC International Conference yang bertemakan "Startup to Standout" dimana kita akan membahas bagaimana cara membangun startup dan mensukseskan Startup tersebut bersama dengan CEO &amp; Founder Kinerja BISA, Stephanus Titus, CEO Ducatus Global PTE LTD, Ronny Tome, dan Founder MD Rendeur, Renee Tan.&nbsp;<br /><br />Acara ini akan diadakan pada:<br />Hari / Tanggal: Rabu, 9 Mei 2018<br />Waktu: 17.20 - 19.00<br />Tempat: Ruang 400 Kampus Anggrek<br /><br />Benefits:<br />- SAT Points (International)<br />- E-Certificate<br />- Merchandise<br /><br />Jadi tunggu apa lagi? Ayo daftarkan diri kalian untuk mengikuti event ini! Jangan sampai ketinggalan karena slot event ini terbatas loh.</p>', 'Wednesday', 'ADMIN', 'admin'),
	(31, 1, 9, 'Hongkong Cafe, Menteng', 'Let’s have a date with IDEC and Wesley Harjono', 500000, '/img/products/PRD1551020226148.jpg', '2019-03-17', '2019-03-17', '18:30', '21:00', '<p>Let&rsquo;s have a date with IDEC and Wesley Harjono, CEO of Plug and Play Indonesia.</p>\n<p>His role has give him plenty of knowledge about common mistakes that startup founders make. Join us and broaden your mind about:</p>\n<p>1. How to run a startup</p>\n<p>2. How to get funding.</p>\n<p>3. Pitching</p>', 'Sunday', 'PRODUCER', 'zelda'),
	(32, 8, 14, 'Klampis Jaya 29E, Surabaya 60117', 'Mikrotik Training Surabaya', 1000000, '/img/products/PRD1551020434256.jpg', '2019-03-06', '2019-03-07', '09:00', '17:00', '<p><strong>BASIC ROUTER COMPLETED</strong></p>\n<p>Introduction to Mikrotik + Router Configuration + DHCP + Bandwidth Management + PPPoE &amp; Client + Firewall, VPN dll.&nbsp;</p>\n<p><strong>WIRELESS HOTSPOT USER MANAGER </strong></p>\n<p>&nbsp;Introduction to Mikrotik + Router Configuration + Wireless (AP, Client, WDS, Bridge) + Hotspot + IP Binding, Walled Garden + User Manager, dll.</p>\n<p><strong>FASILITAS PESERTA</strong></p>\n<p>Certificate of Attendance + Modul Training Mikrotik + Mikrotik Router System + Polo Shirt + Lunch &amp; Breaks + Experienced Mentors.</p>', 'Sunday,Wednesday,Thursday', 'PRODUCER', 'zelda'),
	(34, 1, 13, 'EDS Building – Universitas Gadjah Mada Jalan Asem Kranji Blok K-7, Sekip, Sleman', 'Meetup Google Developer Group Yogyakarta', 80000, '/img/products/PRD1551020876446.jpg', '2019-02-26', '2019-02-26', '18:00', '21:00', '<p>Meetup Google Developer Group Yogyakarta.</p>\n<p>Join us on a discussion about Google technologies! In this meetup, we will disscuss about How Tech Reshapes Education. Learn how to maximize the potential of technology in improving the quality of education.</p>\n<p>There will be 3 session with some awesome speakers, which are:</p>\n<p>&ndash; Topari (Google Educator Group Yogyakarta Lead)</p>\n<p>&ndash; Dr. Budhi S. Wibowo (Industrial Engineering Lecturer UGM)</p>\n<p>&ndash; Randy Arba Pahlevi (Co-founder Ramein.id &amp; Facilitator Indonesia Android Kejar)</p>', 'Sunday,Tuesday', 'PRODUCER', 'angel'),
	(35, 1, 16, 'DILo Malang  Jl. Basuki Rahmat 7-9', 'UX MEETUP & SECRET BOX', 65000, '/img/products/PRD1551022681898.jpg', '2019-02-27', '2019-02-27', '19:00', '22:00', '<p>Hi Guys, Jumpa kembali di UX Meetup ke 12 dan sekaligus 1st Anniversary, nah di meetup kali ini kita ambil tema, &ldquo;UX MEETUP &amp; SECRET BOX&rdquo; hmm apa ya kira-kira yang akan dibahas di secret box tersebut apakah dari estetikanya atau malah isinya yang dibahas, penasaran kan. yuk ikutan meetup ke 12.</p>\n<p>Jangan lupa ajak temen kamu ya, ajak sebanyak-banyaknya karena teman kamu kan sayang kalau terlewatkan, kita kupas tuntas apa isi dari secretbox itu Fasilitas : <br />&ndash; Snack khas DILo <br />&ndash; Ilmu Bermanfaat <br />&ndash; Full WiFi <br />&ndash; Full AC</p>', 'Wednesday', 'ADMIN', 'admin'),
	(301, 1, 18, 'Hotel Oranjje, Jl. Hayam Wuruk No. 302 Panjer, Denpasar Selatan', 'Harness the Power of IoT to Develop Smart Technology', 80000, '/img/products/PRD1551024200724.jpg', '2019-03-24', '2019-02-24', '09:30', '11:30', '<p>Daftar &amp; ikuti Seminar Nasional Teknologi Informasi 2018 &ldquo;Harness the Power of IoT to Develop Smart Technology&rdquo; .</p>\n<p>With our Special Speakers :</p>\n<ul>\n<li>Norman Sasono (Co-Founder &amp; CTO at Bizzy.co.id)</li>\n<li>Sofian Hadiwijaya (Intel Innovator Program for IoT Al &amp; Advisor Nodeflux.io) . &ldquo;SPECIAL IOT DEMONSTRATION&rdquo; .</li>\n</ul>\n<p>And Special Performance by : Acoustic Band ( Rumput Liar ) .</p>', 'Sunday', 'PRODUCER', 'angel'),
	(302, 1, 19, 'Gedung Haji Unisnu Jepara Alamat: Jln. Taman Siswa (Pekeng) Tahunan Jepara 59427', 'Wireless Security And Ethical Hacking', 110000, '/img/products/PRD1551024859190.jpg', '2019-03-16', '2019-03-16', '08:30', '11:30', '<p>WORKSHOP Teknologi dengan tema &ldquo;Wireless Security And Ethical Hacking&rdquo;</p>\n<p>Nah, networking di dunia teknologi sendiri tentu sangatlah luas. Kira-kira dari kalian sudah tau atau belum bagaimana sih caranya mengamankan wireless yang baik ? Juga tidak kalah penting dari itu, bagaimana sih etika dalam hacking ? Apa jangan-jangan belum pernah tau sama sekali ? Penasaran ya kan ? kita semua pasti pengen bisa mengamankan jaringan wireless kita, dirumah misalnya.</p>\n<p>Mau tau jawabannya ? Yukk, buruan gabung dan mulai belajar bersama kami @hmpsif.unisnu</p>\n<p>Fasilitas: Ilmu, Sertifikat, Seminar Kit, Makan, Snack dan Souvenir</p>', 'Saturday', 'PRODUCER', 'angel');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.trx: ~4 rows (approximately)
DELETE FROM `trx`;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
INSERT INTO `trx` (`id`, `invoice`, `username`, `totalPrice`, `totalQty`, `bankName`, `accNumber`, `receipt`, `trxDateTime`, `status`) VALUES
	(35, 'INV/admin/2019/1/24/173112', 'admin', 1000000, 1, 'BCA', '4731175599', '/img/receipts/TRX1551004272130.jpg', '24/Feb/2019 17:02:11', 'Confirmed'),
	(36, 'INV/member/2019/1/24/225420', 'member', 320000, 4, 'MANDIRI', '16400001991770', '/img/receipts/TRX1551023660910.jpg', '24/Feb/2019 22:02:89', 'Unconfirmed'),
	(37, 'INV/member/2019/1/24/225646', 'member', 100000, 2, 'MANDIRI', '1640000177990', '/img/receipts/TRX1551023806676.jpg', '24/Feb/2019 22:02:66', 'Unconfirmed'),
	(38, 'INV/member/2019/1/24/225751', 'member', 200000, 3, 'BCA', '4731175599', '/img/receipts/TRX1551023871864.jpg', '24/Feb/2019 22:02:85', 'Unconfirmed');
/*!40000 ALTER TABLE `trx` ENABLE KEYS */;

-- Dumping structure for table ems.trxdetails
CREATE TABLE IF NOT EXISTS `trxdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTrx` int(11) DEFAULT '0',
  `idProduct` int(11) DEFAULT '0',
  `qty` int(11) DEFAULT '0',
  `barcode` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.trxdetails: ~5 rows (approximately)
DELETE FROM `trxdetails`;
/*!40000 ALTER TABLE `trxdetails` DISABLE KEYS */;
INSERT INTO `trxdetails` (`id`, `idTrx`, `idProduct`, `qty`, `barcode`) VALUES
	(20, 35, 26, 1, '73112'),
	(21, 36, 34, 4, '0'),
	(22, 37, 24, 2, '0'),
	(23, 38, 30, 2, '0'),
	(24, 38, 29, 1, '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.users: ~6 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `role`, `status`) VALUES
	(7, 'admin', '089417bd9abf11f94d96638f0d4eacb338d8568c09bb45a45461c46850e41bcd', 'Admin', 'gammarinaldi@gmail.com', '081991090777', 'ADMIN', 'Verified'),
	(19, 'member', '3d49624cdde771b00e23a3d0754c5e650e34bccc1586dfbced1700a9ae8d4b5b', 'First Member', 'member@gmail.com', '081991090777', 'MEMBER', 'Verified'),
	(45, 'angel', '56202ac1a1be7de35f98bfa9835b3a51db18cc8fa62e425f33621fb9f13f196f', 'Angel', 'gammarinaldi@gmail.com', '081991090777', 'PRODUCER', 'Verified'),
	(46, 'raisa', '5c5a5361d3506a4f18d4c47a73da241668d41e3233626e8aafa3fdb2e4a50cea', 'Raisa Anggraini', 'gammarinaldi@gmail.com', '02103901874', 'MEMBER', 'Verified'),
	(50, 'zelda', '5c5a5361d3506a4f18d4c47a73da241668d41e3233626e8aafa3fdb2e4a50cea', 'Zelda Zaelani', 'gammarinaldi@gmail.com', '02359913100', 'PRODUCER', 'Verified'),
	(51, 'elma', '5c5a5361d3506a4f18d4c47a73da241668d41e3233626e8aafa3fdb2e4a50cea', 'Elma Ulya Nurdiyanti', 'gammarinaldi@gmail.com', '03818440884', 'MEMBER', 'Verified');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table ems.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ems.wishlist: ~9 rows (approximately)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`id`, `idProduct`, `idCategory`, `username`) VALUES
	(43, 25, 1, 'angel'),
	(45, 26, 1, 'admin'),
	(46, 35, 1, 'admin'),
	(47, 34, 1, 'member'),
	(48, 30, 1, 'member'),
	(49, 29, 1, 'member'),
	(50, 301, 1, 'angel'),
	(51, 35, 1, 'angel'),
	(52, 32, 8, 'elma');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
