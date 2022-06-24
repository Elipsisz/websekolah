-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2021 pada 06.09
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_sekolah`
--

CREATE TABLE `info_sekolah` (
  `Id` int(11) NOT NULL,
  `Nama_sekolah` varchar(100) NOT NULL,
  `NPSN` char(10) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Alamat` varchar(1000) NOT NULL,
  `Akreditasi` varchar(10) NOT NULL,
  `Status_BOS` varchar(50) NOT NULL,
  `Jurusan` varchar(1000) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `info_sekolah`
--

INSERT INTO `info_sekolah` (`Id`, `Nama_sekolah`, `NPSN`, `Status`, `Alamat`, `Akreditasi`, `Status_BOS`, `Jurusan`, `latitude`, `longitude`) VALUES
(1, 'SMAN 1 PEMALANG', '20324238', 'Negeri', 'Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah. Telp: 0284 321437', 'A', 'Bersedia Menerima', 'IPA, IPS, IBB', -6.9064953, 109.3811092),
(2, 'SMAN 3 PEMALANG', '20324211', 'Negeri', 'Jl. Mochtar No.2, Kebondalem, Kec. Pemalang, Kabupaten Pemalang, Jawa Tengah 52312', 'A', 'Bersedia Menerima', 'IPA, IPS, IBB\r\n', -6.8907755, 109.379912),
(3, 'SMAS HASYIM ASY ARI', '20324393', 'Swasta', 'JL. LETJEND DI PANJAITAN NO.32, Bojongbata, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -6.9165957, 109.3817362),
(4, 'SMAS MUHAMMADIYAH 1 PEMALANG\r\n', '20324392', 'Swasta', 'JL. MARKISA NO. 1, Kebondalem, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA,IPS', -6.894152749, 109.369361235466),
(5, 'SMAS MUHAMMADIYAH 2 PEMALANG', '20324391', 'Swasta', 'JL. DR. CIPTO MANGUNKUSUMO NO. 8, Bojongbata, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -6.902985235263, 109.384750189649),
(6, 'SMAS PANGUDI LUHUR SANTO LUKAS PEMALANG', '20324221', 'Swasta', 'JL. PEMUDA NO. 28 PEMALANG, Mulyoharjo, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -6.89511274132259, 109.387987435503),
(7, 'SMAN 2 PEMALANG', '20324212', 'Negeri', 'JL. JEND. SUDIRMAN NO. 14 RT.01/03 Taman- Pemalang, Wanarejan Utara, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS, IBB', -6.8922061, 109.4027034),
(8, 'SMAS NU TAMAN', '20324388', 'Swasta', 'Jalan Raya Gondang Desa Gondang, Gondang, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'IPA,IPS', -6.86184478414844, 109.419804635518),
(9, 'SMAS PGRI 1 TAMAN', '20324387', 'Swasta', ' JL. DR. WAHIDIN SUDIROHUSODO, Banjardawa, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA,IPS', -6.90893008146353, 109.405005135509),
(10, 'SMAN 1 PETARUKAN', '20324215', 'Negeri', 'JL. DESA SIRANGKANG PETARUKAN, Sirangkang, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA,IPS', -6.90567213899365, 109.480273277815),
(11, 'SMAS DIPONEGORO PETARUKAN', '20324394', 'Swasta', 'JL. PEMUDA PETARUKAN, Petarukan, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -6.8963687366815, 109.45808836433),
(12, 'SMAN 1 COMAL', '20324218', 'Negeri', 'JL. JEND. ACHMAD YANI NO. 77 Comal, Purwoharjo, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS, IBB', -6.90121139118508, 109.533384006682),
(13, 'SMAS MUHAMMADIYAH 3 COMAL', '20324390', 'Swasta', 'Jl. Jend. Sudirman No. 12, Purwoharjo, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -6.89725548334533, 109.530784562461),
(14, 'SMAS PGRI 2 COMAL', '20324370', 'Swasta', 'JL. RAYA SIDOREJO, Purwoharjo, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -6.89815538595028, 109.535979277837),
(15, 'SMAN 1 BELIK', '20324210', 'Negeri', 'JL. RAYA DESA GUNUNGTIGA-BELIK, Gunungtiga, Kec. Belik, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA,IPS', -7.1869648546071, 109.35814616432),
(16, 'SMAS MUHAMMADIYAH 4 BELIK', '20324389', 'Swasta', 'JL. KH. AHMAD DAHLAN NO. 50B BELIK, Belik, Kec. Belik, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'IPA,IPS', -7.18833216618825, 109.331292077873),
(17, 'SMAN 1 RANDUDONGKAL\r\n', '20324214', 'Negeri', 'JL. LAPANGAN OLAH RAGA, RANDUDONGKAL, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS, IBB', -7.09942100407811, 109.319476935549),
(18, 'SMAS PGRI 3 RANDUDONGKAL', '20324304', 'Swasta', 'JL. LAPANGAN OLAHRAGA RANDUDONGKAL, Randudongkal, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS', -6.98864967896771, 110.435214864369),
(19, 'SMAN 1 ULUJAMI', '20324213', 'Negeri', 'JL. AKASIA NO. 07, Pamutih, Kec. Ulujami, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA,IPS', -6.86670551094088, 109.543905306708),
(20, 'SMAN 1 BANTARBOLANG', '20324219', 'Negeri', 'JL. KALI RUYUNG BANTARBOLANG, Bantarbolang, Kec. Bantarbolang, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS', -7.03640233583172, 109.385621077867),
(21, 'SMAN 1 BODEH', '20340640', 'Negeri', 'JL. DESA BABAKAN - BODEH - PEMALANG, BABAKAN, Kec. Bodeh, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS', -6.99259143031528, 109.49304567785),
(22, 'SMAN 1 MOGA', '20324217', 'Negeri', 'JL. CAMPING SIGHT BANYUMUDAL, Banyumudal, Kec. Moga, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'IPA, IPS, IBB', -7.13233900221743, 109.244205435536),
(23, 'SMA AL FUDLOLA MOGA', '20324395', 'Swasta', 'JL. RAYA MOGA NO 99 - MOGA - PEMALANG, Moga, Kec. Moga, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'IPA, IPS', -7.11930148470727, 109.245449793215),
(24, 'SMKN 1 PEMALANG', '20324238', 'Negeri', 'JL. GATOT SUBROTO NO. 31 KAB. PEMALANG, Bojongbata, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Bisnis Daring dan Pemasaran,Otomatisasi dan Tata Kelola Perkantoran,Teknik dan Bisnis Sepeda Motor,Teknik Kendaraan Ringan Otomotif', -6.90758183946381, 109.382144477854),
(25, 'SMK ADIAS Pemalang', '69907348', 'Swasta', 'Jalan Sindoro Nomor 39, Mulyoharjo, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Komputer dan Jaringan', -6.901848, 109.3857613),
(26, 'SMK BHAKTI PERTIWI', '69888726', 'Swasta', 'JL. A. YANI SELATAN NO.48 PEMALANG, Bojongbata, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Otomatisasi dan Tata Kelola Perkantoran, Rekayasa Perangkat Lunak, Teknik Kendaraan Ringan Otomotif ', -6.9123683389433, 109.382815735505),
(27, 'SMKS AL MANAAR MUHAMMADIYAH PEMALANG', '20354021', 'Swasta', 'JL. MARKISA NOMOR 2 KEBONDALEM PEMALANG, Kebondalem, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Farmasi Klinis dan Komunitas, Teknik Kendaraan Ringan Otomotif', -6.89409949245275, 109.369350506674),
(28, 'SMKS AMANAH HUSADA', '69727628', 'Swasta', 'JL. DI. Panjaitan KM.4 Sewaka - Pemalang, Sewaka, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Asisten Keperawatan, Farmasi Klinis dan Komunitas', -6.93556954771395, 109.387232406683),
(29, 'SMKS BIMA PEMALANG', '20324209', 'Swasta', 'JL. MANDALA II/45 KAB. PEMALANG, Mulyoharjo, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Komputer dan Jaringan', -6.89287998453329, 109.387428722002),
(30, 'SMKS ISLAM PEMALANG', '20324229', 'Swasta', 'JL. YOS SUDARSO NO.3 PEMALANG, Pelutan, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Teknik Audio Video, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan', -6.87866479356936, 109.380954164329),
(31, 'SMKS MUHAMMADIYAH 1 PEMALANG', '20324225', 'Swasta', 'JL. DR. CIPTO MANGUNKUSUMO 8 PEMALANG, Bojongbata, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Bisnis Daring dan Pemasaran, Otomatisasi dan Tata Kelola Perkantoran, Teknik Komputer dan Jaringan', -6.90349733215208, 109.38508725082),
(32, 'SMKS TEXMACO PEMALANG', '20324233', 'Swasta', 'JL. PEMUDA NO.36 A KEL. MULYOHARJO KAB. PEMALANG, Mulyoharjo, Kec. Pemalang, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Tata Busana, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif,Teknik Komputer dan Jaringan, Teknik Pembuatan Kain, Teknik Penyempurnaan Tekstil', -6.90036829102179, 109.387699777843),
(33, 'SMK PERINTIS TAMAN', '69888838', 'swasta', 'JL. KALIJATI SOKAWANGI, Sokawangi, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga', -6.93053319470746, 109.433624737344),
(34, 'SMKS PARIWISATA LIBERTY PEMALANG', '20340680', 'Swasta', 'Jl. D.I Panjaitan KM.3, Komplek Kampus STIT, Paduraksa, Pemalang., Beji, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Perhotelan', -6.93236879363292, 109.388105535503),
(35, 'SMKS PGRI 1 TAMAN', '20324208', 'Swasta', 'JL. ABDUL WAHID HASYIM NO4 TAMAN KAB. PEMALANG, Wanarejan Selatan, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Desain Pemodelan dan Informasi Bangunan, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Mekanik Industri, Teknik Pemesinan, Teknik Pengelasan', -6.89440633619509, 109.395813135504),
(36, 'SMKS PGRI 2 TAMAN', '20324236', 'Swasta', 'JL. DR. WAHIDIN SUDIROHUSODO TAMAN KAB. PEMALANG, Kaligelang, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Multimedia, Otomatisasi dan Tata Kelola Perkantoran, Rekayasa Perangkat Lunak, Teknik Komputer dan Jaringan', -6.90892603793481, 109.404258679666),
(37, 'SMKS SATYA PRAJA 3 TAMAN', '20360131', 'Swasta', 'Jl. Dr. Wahidin Sudirohusodo, No. 1, Kaligelang, Kec. Taman, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif', -6.90625988616616, 109.394228093163),
(38, 'SMK NEGERI 1 PETARUKAN', '20340638', 'Negeri', 'JALAN RAYA PETARUKAN PEGUNDAN KM 3, PEGUNDAN, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Otomatisasi dan Tata Kelola Perkantoran, Tata Boga, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan, Teknik Mekanik Industri', -6.87130078936242, 109.470185035495),
(39, 'SMK NU PETARUKAN', '69888722', 'Swasta', 'JL. RADEN SALEH NO 73 PETARUKAN, Petarukan, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Teknik dan Bisnis Sepeda Motor', -6.87316120508628, 109.444851591357),
(40, 'SMKS AL MUAWANAH', '69775693', 'Swasta', 'Jl Proklamasi No. 1, Kendaldoyong, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -6.84970114228707, 109.488492849019),
(41, 'SMKS BARUNA PUTRA PETARUKAN', '20324230', 'Swasta', 'JL. PEMUDA NO.46 PETARUKAN, Petarukan, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Nautika Kapal Niaga, Teknika Kapal Niaga', -6.89647330869112, 109.45795789136),
(42, 'SMKS ISLAM AL KHOIRIYAH PETARUKAN', '20324231', 'Swasta', 'JL RAYA DESA KLAREYAN KAB. PEMALANG, Klareyan, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Pemesinan', -6.85260185637101, 109.468452364376),
(43, 'SMKS KESEHATAN MEDIKA FARMA PETARUKAN', '20362557', 'Swasta', 'PEMUDA NO. 46 PETARUKAN, Petarukan, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Asisten Keperawatan, Farmasi Klinis dan Komunitas', -6.89641701834329, 109.457650406694),
(44, 'SMKS MUHAMMADIYAH 5 PETARUKAN', '20340639', 'Swasta', 'JL.RAYA KENDAL SARI, Kendalsari, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -6.93770552015443, 109.464601120199),
(45, 'SMKS SATYA PRAJA 1 PETARUKAN', '20324207', 'Swasta', 'JL. RAYA ISER PETARUKAN, Iser, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Multimedia, Teknik Komputer dan Jaringan', -6.89700671363601, 109.46909790669),
(46, 'SMKS SATYA PRAJA 2 PETARUKAN', '20324206', 'Swasta', 'JL. RAYA ISER PETARUKAN, Iser, Kec. Petarukan, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan', -6.89757466020271, 109.469381035546),
(47, 'SMKS ISLAM NUSANTARA COMAL', '20324224', 'Swasta', 'JL. RAYA SIDOREJO COMAL Km. 3, Sidorejo, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Farmasi Klinis dan Komunitas, Perbankan Syariah, Teknik Komputer dan Jaringan', -6.89714796246956, 109.54055182205),
(48, 'SMKS MUHAMMADIYAH 6 COMAL', '69727639', 'Swasta', 'JL JEND SUDIRMAN NO 12 COMAL 52363, PURWOHARJO, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Kendaraan Ringan Otomotif', -6.8969145136281, 109.529914264371),
(49, 'SMKS NUSANTARA 1 COMAL', '20324226', 'Swasta', 'JL. RAYA SIDOREJO COMAL KAB. PEMALANG, SIDOREJO, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Teknik Audio Video, Teknik dan Bisnis Sepeda Motor, Teknik Elektronika Industri, Teknik Instalasi Tenaga Listrik, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan, Teknik Pemesinan, Teknik Pengelasan', -6.8951236132272, 109.542836235541),
(50, 'SMKS TUNAS KARYA COMAL', '20324232', 'Swasta', 'JL. RAYA SIDOREJO RT.7 RW.7 COMAL KAB. PEMALANG, Purwoharjo, Kec. Comal, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan', -6.89812291152855, 109.537242106701),
(51, 'SMK AL FALAH BELIK', '69916776', 'Swasta', 'Dukuh Situmpeng RT 06 RW 04, Badak, Kec. Belik, Kab. Pemalang Prov. Jawa Tengah', '-', 'belum terverifikasi', 'belum terverifikasi', -7.1649806179766, 109.354248253471),
(52, 'SMKS MUHAMMADIYAH BELIK', '20324228', 'Swasta', 'JL. KH.AHMAD DAHLAN NO.50 B, Belik, Kec. Belik, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan', -7.18722300401255, 109.332358045538),
(53, 'SMKS NU 01 BELIK', '69773554', 'Swasta', 'Jl. Randudongkal - Belik Km.4 , Sikasur, Kec. Belik, Kab. Pemalang Prov. Jawa Tengah\r\n', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -7.11272739178404, 109.311608364379),
(54, 'SMKN 1 RANDUDONGKAL', '69727629', 'Negeri', 'JL RAYA PEMALANG - RANDUDONGKAL KM. 26, Semingkir, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Agribisnis Pengolahan Hasil Pertanian, Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan, Teknik Pemesinan', -7.09923087672398, 109.356576377847),
(55, 'SMKS ISLAM RANDUDONGKAL', '20362290', 'Swasta', 'JL. KAUMAN NO. 09, Randudongkal, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Multimedia, Perbankan Syariah, Teknik dan Bisnis Sepeda Motor, Teknik Komputer dan Jaringan', -7.09840659710564, 109.324141335546),
(56, 'SMKS MUHAMMADIYAH 7', '69756182', 'Swasta', 'JL LAPANGAN OLAHRAGA NO 60 RANDUDONGKAL, RANDUDONGKAL, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -7.18810371066824, 112.194645022047),
(57, 'SMKS PGRI 3 RANDUDONGKAL', '20324235', 'Swasta', 'JL. KI HAJAR DEWANTORO RANDUDONGKAL KAB. PEMALANG, Randudongkal, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Multimedia, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan ', -7.09459088326318, 109.329513249033),
(58, 'SMKS TIO MEJAGONG', '69727640', 'Swasta', 'JL RANDUDONGKAL - MEJAGONG KM 3 NO 3, Mejagong, Kec. Randudongkal, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -7.10047276463923, 109.295606664384),
(59, 'SMK ISLAM TERPADU ROUDHOTUL MUBTADIIN\r\n', '69888923', 'Swasta', 'JL. KH HASYIM ASYARI KAUMAN PESANTREN RT 01/03, Pesantren, Kec. Ulujami, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -6.84087235414798, 109.504171006703),
(60, 'SMK MERDEKA ULUJAMI', '69888835', 'Swasta', 'Jl. Desa Ambowetan RT 1 / RW 1 Kec. Ulujami Kab. Pemalang, Ambowetan, Kec. Ulujami, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Komputer dan Jaringan', -6.88391201979484, 109.55476087786),
(61, 'SMKS MUHAMMADIYAH ULUJAMI', '20324239', 'Swasta', 'JL. RAYA ROWOSARI ULUJAMI KAB. PEMALANG, Rowosari, Kec. Ulujami, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Kendaraan Ringan Otomotif', -6.88546045971024, 109.559952233692),
(62, 'SMKN 1 AMPELGADING', '20324227', 'Negeri', 'JL. RAYA UJUNGGEDE (PANTURA), Km. 15, UJUNGGEDE, Kec. Ampelgading, Kab. Pemalang Prov. Jawa Tengah', 'A', 'Bersedia Menerima', 'Desain Pemodelan dan Informasi Bangunan, Tata Busana, Teknik Audio Video, Teknik Elektronika Industri, Teknik Instalasi Tenaga Listrik, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan, Teknik Pemesinan, Teknik Pengelasan', -6.90144265909678, 109.505904022023),
(63, 'SMK PGRI 4 AMPELGADING', '69888732', 'Swasta', 'JL. RAYA SIDOREJO AMPELGADING, Ampelgading, Kec. Ampelgading, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Teknik Kendaraan Ringan Otomotif', -6.89438626686504, 109.460955277876),
(64, 'SMKS AL ISLAH PLUS AMPELGADING', '20362103', 'Swasta', 'Jl. Raya Jatirejo Km 2, Kebagusan, Kec. Ampelgading, Kab. Pemalang Prov. Jawa, Kebagusan, Kec. Ampelgading, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik Kendaraan Ringan Otomotif', -6.88302961368549, 109.519217206709),
(65, 'SMKS NUSA MANDIRI', '69727642', 'Swasta', 'Jln. Comal Baru Desa Ujunggede Kecamatan Ampelgading Kabupaten Pemalang, Ujunggede, Kec. Ampelgading, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor, Teknik Komputer dan Jaringan', -6.90403321514207, 109.513854806703),
(66, 'SMK MUHAMMADIYAH WATUKUMPUL', '69888836', 'Swasta', 'JL. RAYA WATUKUMPUL CIKADU, Watukumpul, Kec. Watukumpul, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan', -7.15643169636805, 109.421244806691),
(67, 'SMKS ISLAM IKHLAS 1', '69775692', 'Swasta', 'JL. RAYA DESA JOJOGAN WATU KUMPUL, Jojogan, Kec. Watukumpul, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga', -7.16264448722439, 109.467302349022),
(68, 'SMK ISLAM MEDIKA', '69888378', 'Swasta', 'JLN. MELATI NO 4 BANTARBOLANG , Bantarbolang, Kec. Bantarbolang, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Asisten Keperawatan, Farmasi Klinis dan Komunitas', -7.03847093206592, 109.374429006713),
(69, 'SMKS ISLAM AL IKHLAS 2', '69775694', 'Swasta', 'JL. DUKUH KARANG ASEM, Bantarbolang, Kec. Bantarbolang, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga', -7.0316, 109.3829),
(70, 'SMKS SYAFIIYAH', '69727638', 'Swasta', 'Jl.Sambeng - Lumpang Km 2, Bantarbolang, Kec. Bantarbolang, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -7.04264423872923, 109.367153082281),
(71, 'SMKS NU BODEH\r\n', '69727636', 'Swasta', 'JL RAYA BODEH, Bodeh, Kec. Bodeh, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif, Teknik Komputer dan Jaringan', -6.96513342687738, 109.49637217787),
(72, 'SMKS AL FALAH PEMALANG', '20354070', 'Swasta', 'JL. RAYA MOGA GUCI KM 0.5 BANYUMUDAL, Banyumudal, Kec. Moga, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Agribisnis Tanaman Pangan dan Hortikultura, Akuntansi dan Keuangan Lembaga, Tata Busana, Teknik dan Bisnis Sepeda Motor, Teknik Kendaraan Ringan Otomotif', -7.1181, 109.2716),
(73, 'SMK CAHAYA ISLAM', '69888719', 'Swasta', 'JL. RAYA MOGA-PRATIN KM 10, Clekatakan, Kec. Pulosari, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Agribisnis Tanaman Pangan dan Hortikultura', -7.19835475650269, 109.279782449039),
(74, 'SMK DAARUL KHAIR PULOSARI', '69945576', 'Swasta', 'Jl. Raya Pulosari - Moga Km 5 Pulosari Pemalang, Pulosari, Kec. Pulosari, Kab. Pemalang Prov. Jawa Tengah', 'C', 'Bersedia Menerima', 'Agribisnis Pengolahan Hasil Pertanian, Akuntansi dan Keuangan Lembaga', -7.15292412399897, 109.260676679719),
(75, 'SMKS IDAMAN WARUNGPRING', '20324223', 'Swasta', 'JL. RAYA WARUNGPRING RANDUDONGKAL KAB. PEMALANG, CIBUYUR, Kec. Warungpring, Kab. Pemalang Prov. Jawa Tengah', '-', 'belum terverifikasi', 'belum terverifikasi', -7.07603744084847, 109.269155177864),
(76, 'SMK ISLAM TERPADU WARUNGPRING', '69888725', 'Swasta', 'JL. PONDOK PESANTREN NO. 42, Mereng, Kec. Warungpring, Kab. Pemalang Prov. Jawa Tengah', 'B', 'Bersedia Menerima', 'Agribisnis Pengolahan Hasil Pertanian, Akuntansi dan Keuangan Lembaga, Teknik dan Bisnis Sepeda Motor', -7.07057929842833, 109.263533335521);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `info_sekolah`
--
ALTER TABLE `info_sekolah`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `info_sekolah`
--
ALTER TABLE `info_sekolah`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
