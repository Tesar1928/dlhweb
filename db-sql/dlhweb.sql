-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 11:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlhweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Masyarakat Terkoneksi Sapa Warga', 'masyarakat-terkoneksi-sapa-warga', '<p>Penanganan dan Pengelolaan Sampah</p>\r\n', 'Zoom Metting', 'admin', 'wq.jpg', '2022-12-07', '2022-12-07', '2012-08-20', '20:00 s/d selesai', 99, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2018 berlangsung Dramatis', 'konser-kantata-barock-2018-berlangsung-dramatis', '<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\"> </div>\r\n', 'konser.png', 'N', 43, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Asunt in anim uis aute irure dolor in reprehenderit', 'asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit', '<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n', 'maxresdefault.jpg', 'N', 13, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah belanja puas di Pasar Asemka', 'murah-meriah-belanja-puas-di-pasar-asemka', '<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n', 'Murah-Meriah.jpg', 'N', 64, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga mendapatkan rekor muri', 'karpet-raksasa-dari-bunga-mendapatkan-rekor-muri', '<p>Belgia sedang memperingati peristiwa tahunan \"La Fete De La Fleur\" atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n', 'karpet.jpg', 'N', 120, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(51, 'Jalan-jalan bersama pemenang quiz online swarakalibata', 'jalanjalan-bersama-pemenang-quiz-online-swarakalibata', '<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n', 'quiz.jpg', 'N', 1, '2018-04-21', '22:55:11', 'Sabtu', 'admin'),
(53, 'galery', 'galery', '', 'Ec5FmGYXYAYuDlN1.jpg', 'Y', 5, '2022-12-07', '01:35:52', 'Rabu', 'admin'),
(54, 'Keg. Uptd', 'keg-uptd', '', 'Ec5FmGYXYAYuDlN.jpg', 'Y', 3, '2022-12-07', '01:40:50', 'Rabu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'toska');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(693, 44, 'admin', 'Kota Bekasi miliki destinasi wisata Danau Kramba Preto', '', '', 'kota-bekasi-miliki-destinasi-wisata-danau-kramba-preto', 'Y', 'Y', 'Y', '<p><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">KOTA BEKASI (ANTARA) - Pelaksana tugas Wali Kota Bekasi Tri Adhianto meresmikan destinasi wisata baru bernama Danau Kramba Preto yang berlokasi di Kelurahan Bojong Menteng, Kecamatan Rawalumbu, Kota Bekasi, Jawa Barat.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Danau Kramba Preto merupakan objek wisata yang diinisiasi dan dikembangkan oleh warga setempat, dibantu sejumlah komunitas peduli lingkungan dengan memanfaatkan Situ Rawa Gede serta mengubahnya menjadi tujuan wisata elok untuk dikunjungi.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">\"Saya apresiasi betul buat warga Bojong Menteng, khususnya Bang Haji Ujat dan kawan-kawan telah sukses memanfaatkan danau menjadi objek wisata yang sekarang diberi nama Wisata Danau Kramba Preto yang sangat estetik,\" katanya di Bekasi, Senin.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Pemerintah Kota Bekasi mendukung segala upaya masyarakat dalam memajukan daerah dengan mengembangkan potensi wilayah menjadi destinasi wisata yang diyakini mampu menggerakkan roda perekonomian masyarakat khususnya warga setempat.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Sebagai bentuk dukungan pemerintah daerah, Tri berjanji memberikan bantuan berupa perbaikan akses jalan masuk menuju objek wisata serta bantuan tanaman untuk penghijauan di area tersebut.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">\"Nanti saya menugaskan Disparbud dan DBMSDA untuk bersinergi melakukan penghijauan dan perbaikan akses masuk yang tampak kumuh dan rusak berikut pembenahan drainase agar pengunjung merasa lebih nyaman,\" ucapnya.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Tokoh masyarakat sekaligus penggagas Danau Kramba Preto Ujat mengungkapkan sedikit sejarah asal muasal pemberian nama danau yang dikelola dan menjadi tanggung jawabnya itu.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">\"Saya memberi nama Danau Kramba Preto ini ada sejarahnya, preto singkatan dari preman tobat, dulu saya preman tapi alhamdulillah sudah lama bertobat dan siap mengabdikan diri kepada Allah, lingkungan, dan masyarakat,\" ucapnya.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Ujat juga menyampaikan terima kasih kepada Pemerintah Kota Bekasi atas dukungan yang diberikan terhadap kreativitas masyarakat, khususnya warga Bojong Menteng. \"Semoga sinergi ini dapat terus ditingkatkan dan semoga lokasi ini mampu menjadi objek wisata unggulan yang banyak dikunjungi wisatawan,\" katanya.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Peresmian objek wisata Danau Kramba Preto Rawalumbu Kota Bekasi ditandai dengan penandatanganan prasasti oleh Pelaksana tugas Wali Kota Bekasi Tri Adhianto bersama penggagas, Ujat.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Sebelumnya Gubernur Jawa Barat Ridwan Kamil mengatakan bahwa kawasan Sungai Kalimalang di Kota Bekasi kini bisa menjadi ruang interaksi sosial dan tujuan wisata warga.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">\"Dulu Kalimalang hanya sekadar dilirik sambil lewat, sekarang bisa dinikmati, khususnya sore sampai malam hari. Ini tempat istirahat atau ngabuburit,\" katanya saat meresmikan penataan kawasan Sungai Kalimalang pada Rabu.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Menurut dia, warga bisa menggunakan sisi utara dan selatan Kalimalang yang sudah ditata sebagai ruang interaksi sosial dan tempat berwisata.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Gubernur mengatakan bahwa pemerintah provinsi berkomitmen melanjutkan tahapan penataan Kalimalang, yang dimulai tahun 2019 dan sempat dihentikan pada 2020 karena pandemi COVID-19.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Penataan Kalimalang, menurut dia, akan dilanjutkan setelah pengerjaan proyek pembangunan Jalan Tol Bekasi-Cawang-Kampung Melayu (Becakayu) beres.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">\"Akan dilanjutkan nanti tahap 2, 3, 4 seiring tol Becakayu beres. Karena kalau dibangun sekarang takutnya nanti terbongkar dan rusak lagi,\" katanya.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Ia mengatakan bahwa penataan Kalimalang tahap satu juga akan disempurnakan.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">\"Nanti semuanya dicicil ke arah timur, termasuk urusan (penanganan) pencemaran, kekumuhan... Lalu ditanami pohon supaya lebih teduh,\" katanya.</span><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><br style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\"><span style=\"color: rgb(85, 85, 85); font-family: Roboto, Arial, sans-serif; font-size: 17px;\">Selain itu, menurut dia, pada akhir tahun 2022 akan dibangun jembatan penghubung sisi utara dan selatan Kalimalang agar warga tidak harus memutar untuk menikmati kedua sisi sungai.</span><br></p>\r\n', '', 'Senin', '2019-07-15', '10:38:00', 'des.jpg', 0, 'uptd,internasional,wisata,olahraga', 'Y'),
(695, 61, 'admin', 'Diskominfostandi Sambut Tim Validasi Lapangan IGA 2022 Di Command Center Kota Bekasi', '', '', 'diskominfostandi-sambut-tim-validasi-lapangan-iga-2022-di-command-center-kota-bekasi', 'Y', 'Y', 'Y', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pemerintah Kota Bekasi menerima kunjungan tim dari Kementerian Dalam Negeri Republik Indonesia untuk melakukan validasi lapangan Inovation Government Award 2022 di Command Center Kota Bekasi. Selasa, (06/12/2022).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Hadir pula di Command Center, Kepala Bappelitbangda Kota Bekasi Dinar Faisal Badar, Tim TWUP4 Haris, Kepala Bidang e-Government Diskominfostandi Kota Bekasi Arwani, juga hadir secara virtual Kepala Dinas Kependudukan dan Catatan Sipil, M. Taufiq serta Direktur RSUD CAM, dr. Kusnanto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam kesempatan kali ini, Kepala Bidang e-Government menyampaikan profil Command Center Pemerintah Kota Bekasi sebagai salah satu bentuk inovasi dari Pemerintah Kota Bekasi. \"Selamat datang kami ucapkan kepada tim juri Innovation Government Award 2022 di Command Center yang merupakan salah satu bentuk inovasi dari Pemerintah Kota Bekasi sebagai pusat komando, koordinasi dan informasi Pimpinan Daerah terhadap kondisi tertentu yang memiliki fasilitas dan ruang yang representatif.\" Ungkapnya.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Setelah acara penyambutan sekaligus membuka validasi lapangan tim juri dari Kemendagri di Command Center, tim melanjutkan perjalanan sekaligus penilaian lapangan secara fisik dan mengunjungi langsung ke RSUD CAM dan Disdukcapil, serta meninjau pusat pelayanan publik di MPP Kota Bekasi. (IF-PIP).</span><br></p>', '', 'Rabu', '2022-12-07', '01:44:26', 'er31.jpg', 0, 'terkini', 'Y'),
(696, 63, 'admin', 'DISAMBUT SISWA DENGAN KEMERIAHAN PLT WALI KOTA BEKASI BERI SEMANGAT DAN MATERI WAWASAN KEBANGSAAN', '', '', 'disambut-siswa-dengan-kemeriahan-plt-wali-kota-bekasi-beri-semangat-dan-materi-wawasan-kebangsaan', 'Y', 'Y', 'Y', '<p><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">KOTA BEKASI - Kamis, 1 Desember 2022</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Kunjungan Plt Wali Kota Bekasi Tri Adhianto ke Sekolah SMA Negeri 2 Kota Bekasi Kecamatan Bekasi Selatan Kelurahan Kayu Ringin untuk memberikan Wawasan Kebangsaan kepada Siswa/i agar menjadikan pelajar yang mempunyai nilai sosial tinggi. Kamis,(1/12/22).</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam kunjungan sekolah, Tri disambut dengan Yel-yel selamat pagi yang membuka semangat dalam menerima materi kepada siswa/i SMAN 2. materi wawasan kebangsaan untuk agar bisa mengetahui ataupun tambahan pelajaran dalam mengenai berkehidupan kebangsaan yang mempunyai nilai norma etika yang positif.</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Diselang Materi Wawasan Kebangsaan Plt Wali Kota Bekasi Tri Adhianto juga memberikan pelajaran mengenai kesiap siagaan Bencana yang diberikan langsung oleh Kelala Badan Penanggulangan Bencana Kota Bekasi Enung yang nantinya memberikan contoh dan arahan dalam menghadapi bencana.</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Plt Wali Kota Bekasi Tri Adhianto menyampaikan bahwa dalam acara sosialisasi wawasan kebangsaan ini adalah menumbuhkan rasa jiwa yang tinggi juga menjadikan pelajar yang kreatif, inovativ juga mempunyai motivasi terbaru dalam mewujudkan  suatu yang terbaru.</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Dalam kunjungan ke sekolah hari ini saya terus menyampaikan dan menghimbau untuk memberikan motivasi bagi para pelajar, motivasi yang diberikan merupakan arahan dalam mencegah para siswa/i untuk bergaul yang baik, berteman dengan teman yang membahas hal yang positif.” Ucap Tri.</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tri Adhianto orang nomor satu di Kota Bekasi terus berikan materi yang bersifat menumbuhkan rasa semangat dalam belajar juga berkehidupan yang positif. Tri juga menegaskan untuk para siswa/i agar menjauhkan hal-hal yang tidak baik bagi pelajar, menjauhi pergaulan bebas yang nantinya bersifat kerugian terhadap diri sendiri.</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Pantaskan diri kita untuk bersahabat dengan teman yang menuju arah kesuksesan juga berprilaku dengan baik, hari ini ialah mempunyai satu motivasi yang diberikan siswa yang bernama joshua dengan mempunyai mental yang kuat dalam meraih cita-citanya sebagai polisi yang siap melayani dan mengayomi masyarakat.” Ungkapnya.</span><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"background-color: rgb(252, 252, 252); outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: rgb(252, 252, 252); color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">(ST/Humas)</span><br></p>', '', 'Rabu', '2022-12-07', '01:53:45', 'plt1.jpg', 0, 'terkini,uptd', 'Y'),
(697, 2, 'admin', 'Selamat kepada Tim Sepak Bola Putra Kota Bekasi, telah meraih medali Emas pada ajang Porprov Jabar X', '', '', 'selamat-kepada-tim-sepak-bola-putra-kota-bekasi-telah-meraih-medali-emas-pada-ajang-porprov-jabar-x', 'Y', 'Y', 'Y', '<p><span style=\"color: rgb(38, 38, 38);\">Selamat kepada Tim Sepak Bola Putra Kota Bekasi, telah meraih medali Emas pada ajang Porprov Jabar XIV 2022.</span><br></p>', '', 'Rabu', '2022-12-07', '02:01:00', 'caboor.jpg', 0, 'olahraga', 'Y'),
(698, 61, 'admin', 'PLT. WALI KOTA MELAKUKAN PEMBINAAN DAN RAMAH TAMAH DENGAN PETUGAS KEBERSIHAN LINGKUNGAN HIDUP', '', '', 'plt-wali-kota-melakukan-pembinaan-dan-ramah-tamah-dengan-petugas-kebersihan-lingkungan-hidup', 'Y', 'Y', 'Y', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sebanyak seribu tujuh ratus petugas kebersihan dari Dinas Lingkungkan Hidup terdiri dari 18 Uptd dikumpulkan untuk dilakukan pembinaan dalam rangka memberikan apresiasi dan motivasi yang dilakukan di Gedung Graha Bintang Kelurahan Cimuning, Rabu (02/11).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tampak hadir PLT. Wali Kota Bekasi Tri Adhianto, Kepala Dinas Lingkungan Hidup Yudianto, Sekcam Mustikajaya, Kabid LH, Kepala Uptd LH se-Kota Bekasi, dan segenap petugas kebersihan Lingkungan Hidup.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Yudianto selaku Kepala Dinas Lingkungan Hidup menyampaikan sebagai Kepala Dinas yang baru, menyatakan siap mendedikasikan diri untuk kemajuan Kota Bekasi, Khususnya Dinas Lingkungan Hidup, dan berharap Kepala UPTD dan segenap petugas LH untuk dapat menerima kehadirannya dan siap untuk bersinergi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Saya sebagai Kepala Dinas LH yang baru, berharap bisa diterima, mari sama-sama bersinergi, saya menyatakan siap mendedikasikan diri saya untuk kemajuan Kota Bekasi khususnya Kemajuan dan kesejahteraan Dinas Lingkungan Hidup,\" pungkas Yudianto Kadis LH Kota Bekasi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tri Adhianto selaku PLT. Wali Kota Bekasi juga berkesempatan memberikan sambutan kepada peserta yang hadir, awal sambutan dimulai dengan memberikan apresiasi Dua Unit Sepeda diberikan kepada Pak Saimi dan Pak Tarwoto yang sudah mengabdikan diri selama 30 tahun pada Pemerintahan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Sebelumnya saya mau apresiasi kepada pak saimi dan pak tarwoto selaku petugas kebersihan dari Uptd yang sudah mendedikasikan diri untuk Kota Bekasi selama 30 tahun, sudah  bekerja untuk Bekasi sejak Kota Bekasi masih menjadi kabupaten,\" Pungkas Tri Adhianto,</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam sambutan Tri juga menyampaikan, para petugas LH juga berhak untuk meningkatkan kualitas taraf kehidupan, yaitu dengan melanjutkan pendidikan meski hanya dengan sekolah paket, selain wawasan bertambah, dengan melanjutkan pendidikan kualitas SDM pun akan meningkat.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Saya berharap usai pembinaan dari sini, kita punya mind set baru, semangat baru, motivasi untuk jadi lebih baik, Bekerja menjadi lebih rajin dari sebelumnya, dan untuk rekan-rekan yang belum melanjutkan sekolah, silahkan berkoordinasi dengan kepala uptd untuk bisa melanjutkan sekolah, selain wawasan kita bertambah, mutu kualitas kita pun meningkat, dan ini untuk hidup yang lebih baik,\" Pungkas Tri Adhianto.</span><br></p>', '', 'Rabu', '2022-12-07', '02:03:28', 'pl.jpg', 0, 'terkini,uptd', 'Y'),
(699, 31, 'admin', 'Pentingnya olahraga untuk menjaga kesehatan tubuh kita', '', '', 'pentingnya-olahraga-untuk-menjaga-kesehatan-tubuh-kita', 'Y', 'Y', 'Y', '<p><span segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38);\">Tahu tidak kalau berolahraga setiap hari ini penting loh. Meskipun padatnya kesibukan, olahraga/aktivitas fisik ringan tetap harus dilakukan untuk menjaga kesehatan agar tubuh fit dan kebugar.</span><br segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38);\"><span segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38);\">yuk sama-sama simak infografis diatas mengenai pentingnya olahraga untuk kesehatan tubuh.</span><br segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38);\"><span segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38);\">Sehat Selalu</span><br></p>', '', 'Rabu', '2022-12-07', '02:06:16', 'sh.jpg', 1, 'terkini,uptd,kesehatan', 'Y'),
(700, 62, 'admin', 'Lakukan Uji Laboratorium, Dinas LH Kota Bekasi Temukan Sumber Pencemaran Kali Bekasi', '', '', 'lakukan-uji-laboratorium-dinas-lh-kota-bekasi-temukan-sumber-pencemaran-kali-bekasi', 'Y', 'Y', 'Y', '<p><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">Jajaran Bidang Penaatan dan Peningkatan Kapasitas, Bidang PPKLH dan UPTB Lab pada Dinas Lingkungan Hidup Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">, melakukan pengecekan dan pengambilan sampling diperbatasan yang merupakan kali lintas wilayah Kabupaten Bogor dan Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">, Senin (20/07/20). Berdasarkan pengamatan lapangan oleh Tim Dinas Lingkungan Hidup Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">, pencemaran sudah terjadi pada hulu kali Cileungsi yang berada di Kabupaten Bogor. \"Kali tersebut dapat terlihat dari warna hitam pada air, berbuih dan berbau,\" kata Kasubag Publikasi Humas Setda Pemerintah Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">, Muklis, Selasa (21/7/2020). Muklis menambahkan, menurut warga setempat Hal ini sering terjadi pada musim kemarau, karena pada saat kemarau debit air menurun, pencemaran limbahpun dapat terlihat dengan jelas. </span><span style=\"line-height: 1.5; font-weight: 600; color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">Baca juga:</span><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> </span><a href=\"https://bekasikinian.com/bekasi/info-terbaru-warga-bekasi-bisa-manfaatkan-promo-tarif-murah-untuk-tambah-daya-listrik/\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Info Terbaru! Warga Bekasi Bisa Manfaatkan Promo Tarif Murah untuk Tambah Daya Listrik</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> \"Maka dari itu, pencemaran limbahpun dapat terlihat dengan jelas di kali tersebut,\" ujarnya. Oleh karena itu, tim Dinas Lingkungan Hidup Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> mengambil sampel air di beberapa titik lokasi diantaranya di Jembatan Kota Wisata Kabupaten Bogor, Perumahan Limus Nunggal Kabupaten Bogor, Jalan Pangkalan 6 tapal batas antara kabupaten Bogor dan Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">, Bendung Kali </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">/Jembatan Hasibuan. Menindaklanjuti perihal tersebut, Pemerintah Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> akan menyampaikan surat pengaduan yang ditujukan kepada Gubernur Jawa Barat dan ditembuskan kepada Kepala Dinas Lingkungan Hidup Provinsi Jawa Barat serta Bupati Bogor. \"Pemerintah Kota </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> berharap dengan adanya tindakan dari dinas terkait mengenai normalisasi kali </span><a href=\"https://www.bekasikinian.com/tag/Bekasi\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Bekasi</a><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> dapat diproses untuk ditindak lanjuti oleh Pemerintah Provinsi Jawa Barat,\" tambahnya. </span><span style=\"line-height: 1.5; font-weight: 600; color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\">Baca juga:</span><span style=\"color: rgb(20, 20, 43); font-family: Poppins, sans-serif;\"> </span><a href=\"https://bekasikinian.com/bekasi/menjadi-sekolah-percontohan-smpn-2-bekasi-batal-kbm-tatap-muka-hari-ini/\" style=\"color: rgb(216, 44, 102); background-color: rgb(255, 255, 255); vertical-align: top; outline: 0px; transition: all 0.2s ease 0s; position: relative; font-family: Poppins, sans-serif;\">Menjadi Sekolah Percontohan, SMPN 2 Bekasi Batal KBM Tatap Muka Hari Ini</a><br></p>', '', 'Rabu', '2022-12-07', '02:08:56', 'lab.jpg', 0, 'laboratorium,terkini,uptd', 'Y'),
(701, 63, 'admin', 'GIAT BERSIH SAMPAH SUNGAI DAN PEMBUATAN TAMAN', '', '', 'giat-bersih-sampah-sungai-dan-pembuatan-taman', 'Y', 'Y', 'Y', '<h1 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"font-family: \"Source Sans Pro\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; color: rgb(0, 0, 0);\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\">Dinas Lingkungan Hidup Kota Bekasi melalui Bidang Pengendalian Pencemaran Kerusakan Lingkungan Hidup dan Penegakan Hukum (PPKLHPH) melaksanakan aksi \"GIAT BERSIH SAMPAH SUNGAI DAN PEMBUATAN TAMAN\" sempadan kali bekasi.</span></font></h1><h1 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"font-family: \"Source Sans Pro\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; color: rgb(0, 0, 0);\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\">pada aksi ini turut dihadiri oleh ketua RT 001 dan RW 007 perumahan Delta Pekayon dan jajaran @uptd_kebersihan_bekasiselatan para Pasukan Katak Orange serta pegawai Ipal Bersama.</span></font></h1><h1 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"font-family: \"Source Sans Pro\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; color: rgb(0, 0, 0);\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\">Kegiatan tersebut dilaksanakan di perumahan Delta Pekayon Kecamatan Bekasi Selatan, lokasi tersebut merupakan posko rumah perahu bagi tim pasukan katak orange Dinas Lingkungan Hidup Kota Bekasi.</span></font></h1><h1 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"font-family: \"Source Sans Pro\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; color: rgb(0, 0, 0);\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\">Giat aksi ini atas kerjasama @waste4change dengan Pemerintah Kota Bekasi melalui Dinas Lingkungan Hidup Kota Bekasi, giat tersebut merupakan salah satu program pembersihan sampah sungai Bekasi berbasis teknologi perahu pembersih sampah sungai atau SeeHamster.</span></font></h1><h1 source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" text-align:=\"\" -webkit-center;\"=\"\" style=\"font-family: \"Source Sans Pro\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; color: rgb(0, 0, 0);\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\">Tidak hanya itu diakhir kegiatan Kepala Bidang PPKLHPH, Helfiana Sudirman pada kegiatan aksi bersih sampah ini memberikan secara simbolis berupa pohon hias kepada ketua RT 001 RW 007 dan Ketua Pasukan Katak Orange, yang bertujuan dan memberikan keindahan pada sempadan kali bekasi, dan pada hasil giat K3 ini sampah terkumpul sebanyak 365 Kilo gram.</span></font></h1>', '', 'Rabu', '2022-12-07', '04:36:56', 'g.jpg', 0, 'terkini,uptd', 'Y'),
(702, 63, 'admin', 'Skuad dari tim pengibar bendera merah putih HUT RI KE 77', '', '', 'skuad-dari-tim-pengibar-bendera-merah-putih-hut-ri-ke-77', 'Y', 'Y', 'Y', '<p><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Skuad dari tim pengibar bendera merah putih, Sekretaris Dinas Lingkungan hidup kota Bekasi, Zeno Bachtiar, S.Si., M. Si bertindak sebagai Komandan upacara peringatan HUT RI ke-77 pada hari ini Rabu, 17 Agustus 2022 bertempat di Plaza Kantor Wali Kota Bekasi.</span><br style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Adapun yg bertindak sebagai Inspektur Upacara Sekretaris Daerah Kota Bekasi Dr. Hj. Reni Hendrawati M.M dan dihadiri jajaran aparatur pegawai yang mengikuti upacara kenaikan bendera Merah Putih pada puncak HUT RI ke-77 tahun.</span><br style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Dengan semangat kemerdekaan ke - 77 siap mewujudkan Kota Bekasi yang lebih KEREN.</span><br></p>', '', 'Rabu', '2022-12-07', '04:38:58', 'gi.jpg', 0, 'ppklh,laboratorium,terkini,uptd', 'Y'),
(703, 34, 'admin', 'Gebyar HUT RI ke-77 WAYANG KULIT', '', '', 'gebyar-hut-ri-ke77-wayang-kulit', 'Y', 'Y', 'Y', '<p><span style=\"font-weight: bolder; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Saksikan Gebyar HUT RI ke-77 WAYANG KULIT yang diselenggarakan oleh Pemerintah Kota Bekasi dengan Lakon Wahyu Cakraningrat, Ki Aufa Handaru sebagai Dalang Remaja.</span><br style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"font-weight: bolder; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Wayang Kulit akan diselenggarakan pada Sabtu, 20 Agustus 2022 bertempat di Halaman Kantor Wali Kota Bekasi pada pukul 20.00 WIB hingga selesai.</span><br></p>', '', 'Rabu', '2022-12-07', '04:41:04', 's.jpg', 0, 'terkini,uptd,hiburan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(35, 'LAKIP DINAS LINGKUNGAN HIDUP KOTA BEKASI', '', '2022-12-07', 0),
(36, 'RENSTRA DINAS LINGKUNGAN HIDUP KOTA BEKASI', 'RENSTRA_compressed_(7).pdf', '2022-12-07', 0),
(37, 'RENJA DINAS LINGKUNGAN HIDUP KOTA BEKASI', 'RENJA_(5).pdf', '2022-12-07', 0),
(38, 'IKU DINAS LINGKUNGAN HIDUP', 'IKU_(11).pdf', '2022-12-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', ''),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', ''),
(261, 53, 'admin', 'cabor', 'cabor', '', 'cabor.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami ', 'tentang-kami-', '<p><br></p><p>Melalui Dinas Lingkungan Hidup Kota Bekasi berupaya untuk menciptakan lingkungan yang aman, bersih, sehat nyaman dan modern untuk mewujudkan Bekasi Maju, Sejahtera dan Ihsan.<br></p>', '2014-04-07', '20140331-gedung-baru-pemkot-bekasi.jpg', 'admin', 65, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p>Tunggul.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tunggul.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n', '2014-04-07', '', 'admin', 26, '13:32:28', 'Senin'),
(52, 'visi & misi', 'visi--misi', '', '2022-12-07', 'Visi_Dan_Misi_LH1.jpg', 'admin', 0, '01:19:29', 'Rabu'),
(53, 'Struktur Organisasi', 'struktur-organisasi', '', '2022-12-07', 'Struktur_11zon1.jpg', 'admin', 0, '01:20:03', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`, `lampiran`) VALUES
(39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-23', '21:56:12', 'Y', ''),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y', ''),
(36, 'Lusi Rahmawati', 'robby.prihandaya@gmail.com', 'xvgxcvxc', 'gbvibviubuibiub', '2014-07-02', '00:00:00', 'Y', ''),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y', ''),
(40, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-25', '09:54:45', 'Y', ''),
(41, 'Robby Prihandaya', 'todaynews.co.id@gmail.coms', '::1', 'asdasdasd', '2018-05-04', '19:33:01', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'DINAS LINGKUNGAN HIDUP KOTA BEKASI', 'opd.dlh@bekasikota.go.id', 'https://dlh.bekasikota.go.id/', 'https://web.facebook.com/DinasLingkunganHidupKotaBekasi?_rdc=1&_rdr, \r\nhttps://twitter.com/dlh_kotabekasi, \r\nhttps://www.instagram.com/dlh_kotabekasi/, \r\nhttps://youtu.be/o_W-DN3y4Cg', '', '', 'Melalui Dinas Lingkungan Hidup Kota Bekasi berupaya untuk menciptakan lingkungan yang aman, bersih, sehat nyaman dan modern untuk mewujudkan Bekasi Maju, Sejahtera dan Ihsan.', 'kota bekasi,dinaslh,dinas lingkungan hidup,nyaman,bersih,seputar berita,portal berita,laboratorium', 'favicon1.ico', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.2076185265464!2d106.99153091545234!3d-6.23634196280809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698c3cba79b51f%3A0x16951cc2b56b1894!2sDinas%20Lingkungan%20Hidup%20Kota%20Bekasi!5e0!3m2!1sen!2sid!4v1669104030290!5m2!1sen!2sid\" ');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`, `posisi`) VALUES
(1, 'Iklan Home No 1', 'admin', '', '', 'tytt1_(2)4.png', '2022-12-07', 'home'),
(2, 'Iklan Home No 2', 'admin', '', '', 'tytt1_(2)3.png', '2022-12-07', 'home'),
(3, 'Iklan Home No 3', 'admin', '', '', 'tytt1_(2)2.png', '2022-12-07', 'home'),
(4, 'Iklan Detail Berita', 'admin', '', '', '12qw2.jpg', '2022-12-07', 'berita_detail'),
(5, 'Iklan Detail Video', 'admin', '', '', 'tytt1_(2)5.png', '2022-12-07', 'detail_video'),
(6, 'Iklan Detail Berita Foto', 'admin', '', '', 'tytt1_(2)1.png', '2022-12-07', 'berita_foto'),
(7, 'Iklan Halaman Download', 'admin', '', '', 'tytt1_(2).png', '2022-12-07', 'hal_download'),
(8, 'Iklan detail agenda', 'admin', '', '', 'tytt1_(1).png', '2022-12-07', 'detail_agenda'),
(9, 'Iklan halaman statis', 'admin', 'http://phpmu.com', '', '', '2019-11-18', 'hal_statis'),
(35, 'Iklan 2', 'admin', 'https://danta.bekasikota.go.id/User/ViewOrganization/dpmptsp', '', 'dantaa.jpg', '2022-12-07', 'home_tengah'),
(36, 'Iklan 3', 'admin', 'http://ppid.bekasikota.go.id/', '', 'ppidq1.jpg', '2022-12-07', 'home_tengah'),
(37, 'Iklan 4', 'admin', 'https://jdih.bekasikota.go.id/', '', 'jd11.jpg', '2022-12-07', 'home_tengah'),
(38, 'iklan 5', 'admin', 'https://www.bekasikota.go.id/', '', 'bks.jpg', '2022-12-07', 'home_bawah'),
(39, 'iklan 6', 'admin', 'https://diskominfo.bekasikota.go.id/', '', 'DISKOM.jpg', '2022-12-07', 'home_bawah'),
(40, 'iklan 7', 'admin', 'https://twitter.com/humasbekasikota', '', 'hm.jpg', '2022-12-07', 'home_bawah');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t'),
(9, 'ewe', 'admin', '******'),
(10, 'colmek', 'admin', '****');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(19, 'Teknologi', '', 'teknologi', 'Y', 2, ''),
(2, 'Olahraga', '', 'olahraga', 'Y', 4, ''),
(21, 'Ekonomi', 'admin', 'ekonomi', 'N', 0, ''),
(22, 'Politik', 'admin', 'politik', 'N', 0, ''),
(23, 'Hiburan', '', 'hiburan', 'Y', 3, ''),
(31, 'Kesehatan ', '', 'kesehatan-', 'Y', 5, ''),
(36, 'Komunitas', 'admin', 'komunitas', 'N', 12, ''),
(34, 'Seni & Budaya', 'admin', 'seni--budaya', 'Y', 9, ''),
(37, 'Sekitar Kita', '', 'sekitar-kita', 'N', 0, ''),
(39, 'Internasional', 'admin', 'internasional', 'N', 0, 'XgATaL.jpg'),
(40, 'Kuliner', 'admin', 'kuliner', 'Y', 8, ''),
(41, 'Metropolitan', 'admin', 'metropolitan', 'N', 0, ''),
(42, 'Dunia Islam', 'admin', 'dunia-islam', 'N', 0, ''),
(44, 'Wisata', 'admin', 'wisata', 'N', 11, ''),
(46, 'Daerah', 'admin', 'daerah', 'N', 0, ''),
(47, 'Gaya Hidup', 'admin', 'gaya-hidup', 'N', 0, ''),
(48, 'Hukum', 'admin', 'hukum', 'N', 0, ''),
(52, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 'N', 0, ''),
(53, 'Tokoh', 'admin', 'tokoh', 'N', 0, ''),
(54, 'Tutorial', 'admin', 'tutorial', 'N', 0, ''),
(61, 'terkini', 'admin', 'terkini', 'Y', 0, ''),
(62, 'laboratoriun', 'admin', 'laboratoriun', 'Y', 7, ''),
(63, 'Uptd', 'admin', 'uptd', 'Y', 1, ''),
(64, 'PPKLH', 'admin', 'ppklh', 'Y', 6, ''),
(65, 'Nasional', 'admin', 'nasional', 'Y', 10, ''),
(66, 'Infografis', 'admin', 'infografis', 'Y', 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'robby.prihandaya@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, '555.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(113, 0, 'Tentang Kami', 'halaman/detail/tentang-kami-', 'Ya', 'Top', 1),
(112, 149, 'Nasional', '#', 'Ya', 'Bottom', 9),
(116, 0, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 2),
(119, 0, 'Index Berita', 'berita/indeks_berita', 'Ya', 'Bottom', 23),
(149, 0, 'Berita', '#', 'Ya', 'Bottom', 3),
(185, 0, 'Forum', 'konsultasi', 'Ya', 'Bottom', 28),
(186, 0, 'Login', 'login', 'Ya', 'Bottom', 30),
(187, 0, 'Agenda', 'agenda', 'Ya', 'Bottom', 27),
(181, 0, 'Download', 'download', 'Ya', 'Bottom', 24),
(182, 0, 'Video', 'playlist', 'Ya', 'Bottom', 25),
(183, 0, 'Gallery', 'albums', 'Ya', 'Bottom', 26),
(184, 0, 'Register', 'kontributor', 'Ya', 'Bottom', 29),
(170, 0, 'Profil', '#', 'Ya', 'Bottom', 14),
(171, 170, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Bottom', 15),
(172, 170, 'Visi & Misi', 'halaman/detail/visi--misi', 'Ya', 'Bottom', 16),
(173, 170, 'Tupoksi', '#', 'Ya', 'Bottom', 17),
(188, 170, 'struktur jabatan', '', 'Ya', 'Bottom', 18),
(189, 0, 'PPID', 'http://ppid.bekasikota.go.id/login', 'Ya', 'Bottom', 19),
(190, 189, 'informasi berkala', 'http://ppid.bekasikota.go.id/front/dokumen?category=1&area=pemda&search=&type=&opr=1094', 'Ya', 'Bottom', 21),
(191, 189, 'informasi serta merta', 'http://ppid.bekasikota.go.id/front/dokumen?category=2&area=pemda&search=&type=&opr=1094', 'Ya', 'Bottom', 20),
(192, 189, 'permohonan informasi', 'http://ppid.bekasikota.go.id/login', 'Ya', 'Bottom', 22),
(193, 149, 'Terkini', 'kategori/detail/terkini', 'Ya', 'Bottom', 4),
(194, 149, 'Uptd', 'kategori/detail/uptd', 'Ya', 'Bottom', 5),
(195, 149, 'Seni & Budaya', 'kategori/detail/seni--budaya', 'Ya', 'Bottom', 7),
(196, 149, 'Laboratorium', 'kategori/detail/laboratoriun', 'Ya', 'Bottom', 6);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Melalui Dinas Lingkungan Hidup Kota Bekasi berupaya untuk menciptakan lingkungan yang aman, bersih, sehat nyaman dan modern untuk mewujudkan Bekasi Maju, Sejahtera dan Ihsan.</p><p style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"></p><p class=\"ion-ios-telephone\" style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;&nbsp;Phone:&nbsp;<span class=\"bold\">1500-444</span></p><p class=\"ion-ios-email\" style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;&nbsp;Email:&nbsp;<span class=\"bold\"><span id=\"cloakb1f003cd9a1b9e323e7e5519d9d7101d\"><a href=\"mailto:opd.dlh@bekasikota.go.id\" style=\"color: rgb(237, 20, 91); transition: color 400ms ease 0s, background-color 400ms ease 0s;\">opd.dlh@bekasikota.go.id</a></span></span></p><p style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"></p><p class=\"ion-ios-location\" style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">&nbsp;&nbsp;Alamat Kami<br>Jl. Jendral Ahmad Yani No. 1 Gd Perkantoran Lt 4, Bekasi</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Kiri - Iklan Sidebar', 'admin', '', '', 'IUI1.jpg', '2022-12-07'),
(2, 'Kanan - Iklan Sidebar', 'admin', '', '', 'IUI.jpg', '2022-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(56, 'galery', 'admin', 'galery', 'dasa3.png', 'Y'),
(57, 'Laboratorium', 'admin', 'laboratorium', 'dasa2.png', 'Y'),
(61, 'DLH', 'admin', 'dlh', 'dasa.png', 'Y'),
(60, 'Keg. Uptd', 'admin', 'keg-uptd', 'dasa1.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(38, 'Siapakah Pemenang Piala Dunia ', 'Pertanyaan', 'admin', 0, 'Y'),
(39, 'Portugal', 'Jawaban', 'admin', 0, 'Y'),
(40, 'Brasil', 'Jawaban', 'admin', 0, 'Y'),
(41, 'Inggris', 'Jawaban', 'admin', 0, 'Y'),
(42, 'Prancis', 'Jawaban', 'admin', 0, 'Y'),
(43, 'Kroasia', 'Jawaban', 'admin', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(4, 'Tema            :	Penanganan dan Pengelolaan Sampah\r\nTanggal	:	07 Des 2022 s/d 07 Des 2022\r\nTempat	:', '2015-04-17', 'wq.jpg', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('::1', '2022-12-07', 172, '1670366092');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(41, 'Bola', '', 'bola', 21),
(55, 'UPTD', 'admin', 'uptd', 0),
(56, 'TERKINI', 'admin', 'terkini', 0),
(57, 'LABORATORIUM', 'admin', 'laboratorium', 0),
(58, 'PPKLH', 'admin', 'ppklh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'Swarakalibata Magazine Template', 'admin', 'Robby Prihandaya', 'phpmu-magazine', 'Y'),
(24, 'Swarakalibata Personal Template', 'admin', 'Robby Prihandaya', 'phpmu-standar', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'c961410da7097785df60cff668d2f782090e84501c644fb85e3a06db106164f06e106aa1f4e1c72c4e72bfcbdef953aafee3d354bbee0079930cce712cbf3dd8', 'admin', 'opd.dlh@bekasikota.go.id', '0000', 'istockphoto-1171024757-170667a_(1).jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('dewi', '82712d6185313c5cab37780e6aa1bb571b2283efa92fd7153a28bbb3e34b0489dcc5a943ae7f61c5380184fea2ee750c40718a1601d9e7748427a767bdc3f64b', 'Dewiiit Safitri', 'dewi.safitri@gmail.com', '081267778899', '', 'kontributor', 'N', 'ed1d859c50262701d92e5cbf39652792-20170120090507'),
('arsen', 'dac396a174a4a2aa2526bf23c05f0adbe6139f53047c273fd65e1fb813a05ce42a82d8e9b997972937a87238702dab4e981b184083d5d83b6542f79f29f8bde0', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', '081267773333', '', 'kontributor', 'N', 'f76ad5ee772ac196cbc09824e24859ee');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT '1',
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(164, 61, 'admin', 'PROKLIM DLH KOTA BEKASI', 'proklim-dlh-kota-bekasi', '', '', '', 'https://youtu.be/zmXONb8nD3E', 44, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 61, 'admin', 'ADAPTASI MITIGASI PROKLIM KOTA BEKASI', 'adaptasi-mitigasi-proklim-kota-bekasi', '<p><br></p>\r\n', '', '', 'https://youtu.be/TqQkn7sqaZw', 24, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Profil UPTD Laboratorium Lingkungan Dinas Lingkungan Hidup Kota Bekasi', 'profil-uptd-laboratorium-lingkungan-dinas-lingkungan-hidup-kota-bekasi', '<p><br></p>\r\n', '', '', 'https://youtu.be/otECsk6uZ3A', 124, 'Minggu', '2014-08-17', '16:51:04', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
