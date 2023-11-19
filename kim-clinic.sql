-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2023 pada 14.58
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kim-clinic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `type_barang` int(11) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `gambar` text NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `deskripsi`, `type_barang`, `harga`, `gambar`, `stok`) VALUES
(1, 'Acne Facial Wash', 'Acne Facial Wash', 1, '102562', '1.jpg', 1000),
(2, 'Glow Facial Wash', 'Glow Facial Wash', 1, '313857', '2.jpg', 998),
(3, 'Sun Protect Whitening', 'Sun Protect Whitening', 1, '220173', '3.jpg', 1000),
(4, 'Sun Protect Oil Control', 'Sun Protect Oil Control', 1, '355998', '4.jpg', 1000),
(5, 'Glowing Cream', 'Glowing Cream', 1, '109359', '5.jpg', 999),
(6, 'Sun Protect Foundation', 'Sun Protect Foundation', 1, '329877', '6.jpg', 1000),
(7, 'Moist Skin Barrier', 'Moist Skin Barrier', 1, '340856', '7.jpg', 1000),
(8, 'Acne Toner', 'Acne Toner', 1, '92311', '8.jpg', 1000),
(9, 'Glass Skin Serum', 'Glass Skin Serum', 1, '140315', '9.jpg', 1000),
(10, 'Glow Toner', 'Glow Toner', 1, '106033', '10.jpg', 1000),
(11, 'Cleansing Milk', 'Cleansing Milk', 1, '319300', '11.jpg', 1000),
(12, 'Acne Care Cream', 'Acne Care Cream', 1, '260496', '12.jpg', 1000),
(13, 'Serum Acne', 'Serum Acne', 1, '191509', '14.jpg', 1000),
(14, 'Basic Bright Package', 'Basic Bright Package', 2, '142735', '15.jpg', 1000),
(15, 'Acne Series', 'Acne Series', 2, '97643', '16.jpg', 1000),
(16, 'Brightening Series', 'Brightening Series', 2, '174969', '17.jpg', 1000),
(17, 'Basis Acne Package', 'Basis Acne Package', 2, '242252', '18.jpg', 1000),
(18, 'Basic Moist dan Glow ', 'Basic Moist dan Glow ', 2, '281151', '19.jpg', 1000),
(19, 'Moist dan Glow Series', 'Moist dan Glow Series', 2, '140366', '20.jpg', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_barang`, `qty`) VALUES
(1, 1, 1, 1),
(2, 2, 7, 2),
(3, 3, 7, 2),
(4, 4, 6, 1),
(5, 5, 4, 1),
(6, 6, 3, 2),
(7, 7, 5, 2),
(8, 8, 2, 1),
(9, 9, 5, 2),
(10, 10, 5, 2),
(11, 11, 4, 1),
(12, 12, 3, 2),
(13, 13, 3, 1),
(14, 14, 5, 2),
(15, 15, 3, 1),
(16, 16, 2, 1),
(17, 17, 2, 2),
(18, 18, 1, 1),
(19, 19, 2, 2),
(20, 20, 2, 1),
(21, 21, 7, 2),
(22, 22, 4, 2),
(23, 23, 3, 2),
(24, 24, 7, 1),
(25, 25, 2, 2),
(26, 26, 5, 1),
(27, 27, 7, 1),
(28, 28, 2, 2),
(29, 29, 7, 1),
(30, 30, 1, 2),
(31, 31, 6, 2),
(32, 32, 7, 1),
(33, 33, 1, 1),
(34, 34, 1, 2),
(35, 35, 7, 2),
(36, 36, 1, 2),
(37, 37, 4, 1),
(38, 38, 5, 1),
(39, 39, 6, 2),
(40, 40, 6, 2),
(41, 41, 5, 2),
(42, 42, 4, 2),
(43, 43, 1, 2),
(44, 44, 2, 1),
(45, 45, 6, 2),
(46, 46, 1, 2),
(47, 47, 5, 2),
(48, 48, 1, 2),
(49, 49, 4, 2),
(50, 50, 4, 2),
(51, 51, 2, 2),
(52, 52, 1, 2),
(53, 53, 6, 2),
(54, 54, 1, 2),
(55, 55, 4, 1),
(56, 56, 5, 1),
(57, 57, 6, 1),
(58, 58, 1, 2),
(59, 59, 5, 2),
(60, 60, 3, 2),
(61, 61, 6, 2),
(62, 62, 6, 1),
(63, 63, 7, 1),
(64, 64, 6, 1),
(65, 65, 3, 1),
(66, 66, 5, 1),
(67, 67, 6, 2),
(68, 68, 2, 1),
(69, 69, 6, 1),
(70, 70, 3, 2),
(71, 71, 5, 2),
(72, 72, 4, 1),
(73, 73, 5, 1),
(74, 74, 7, 2),
(75, 75, 6, 1),
(76, 76, 5, 2),
(77, 77, 4, 1),
(78, 78, 5, 2),
(79, 79, 6, 2),
(80, 80, 3, 1),
(81, 81, 6, 2),
(82, 82, 1, 1),
(83, 83, 4, 1),
(84, 84, 3, 2),
(85, 85, 7, 2),
(86, 86, 5, 2),
(87, 87, 1, 1),
(88, 88, 6, 2),
(89, 89, 1, 2),
(90, 90, 3, 2),
(91, 91, 7, 1),
(92, 92, 1, 2),
(93, 93, 3, 1),
(94, 94, 3, 2),
(95, 95, 3, 1),
(96, 96, 2, 2),
(97, 97, 6, 2),
(98, 98, 1, 2),
(99, 99, 7, 2),
(100, 100, 6, 1),
(101, 101, 6, 2),
(102, 102, 6, 1),
(103, 103, 3, 1),
(104, 104, 5, 2),
(105, 105, 3, 2),
(106, 106, 2, 2),
(107, 107, 2, 2),
(108, 108, 4, 2),
(109, 109, 6, 2),
(110, 110, 6, 2),
(111, 111, 7, 2),
(112, 112, 1, 2),
(113, 113, 3, 1),
(114, 114, 6, 1),
(115, 115, 6, 2),
(116, 116, 4, 2),
(117, 117, 4, 2),
(118, 118, 6, 2),
(119, 119, 6, 1),
(120, 120, 6, 1),
(121, 121, 2, 1),
(122, 122, 6, 1),
(123, 123, 6, 1),
(124, 124, 7, 1),
(125, 125, 3, 1),
(126, 126, 5, 1),
(127, 127, 6, 1),
(128, 128, 6, 1),
(129, 129, 3, 2),
(130, 130, 5, 2),
(131, 131, 1, 2),
(132, 132, 1, 2),
(133, 133, 6, 2),
(134, 134, 3, 2),
(135, 135, 7, 1),
(136, 136, 3, 2),
(137, 137, 7, 2),
(138, 138, 5, 2),
(139, 139, 3, 2),
(140, 140, 2, 2),
(141, 141, 6, 2),
(142, 142, 1, 2),
(143, 143, 3, 2),
(144, 144, 3, 1),
(145, 145, 3, 2),
(146, 146, 7, 1),
(147, 147, 3, 2),
(148, 148, 3, 1),
(149, 149, 4, 1),
(150, 150, 6, 1),
(151, 151, 5, 1),
(152, 152, 3, 1),
(153, 153, 5, 2),
(154, 154, 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id_diskon` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_diskon` varchar(15) NOT NULL,
  `diskon` int(11) NOT NULL,
  `nama_diskon` varchar(20) NOT NULL,
  `member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id_diskon`, `id_barang`, `tgl_diskon`, `diskon`, `nama_diskon`, `member`) VALUES
(1, 3, '2023-11-19', 5, 'Sale!', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(125) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `username_pelanggan` varchar(30) NOT NULL,
  `password_pelanggan` varchar(30) NOT NULL,
  `no_hp_pelanggan` varchar(15) NOT NULL,
  `nilai` double NOT NULL,
  `level_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `tgl_lahir`, `jk`, `username_pelanggan`, `password_pelanggan`, `no_hp_pelanggan`, `nilai`, `level_member`) VALUES
(1, 'Asyarani', 'Kuningan, Jawa Barat', '1998-10-02', 'Perempuan', 'asyarani', 'asyarani', '08998767654', 0, 0),
(2, 'Nurul', 'Kuningan, Jawa Barat', '1999-10-03', 'Perempuan', 'nurul', 'nurul', '08998767654', 5124595755069, 0),
(3, 'Afifah', 'Kuningan, Jawa Barat', '2001-09-10', 'Perempuan', 'afifah', 'afifah', '08998767654', 33703505142954, 1),
(4, 'Zarah ', 'Kuningan, Jawa Barat', '2002-10-01', 'Perempuan', 'zarah ', 'zarah ', '08998767654', 7544448784706, 1),
(5, 'Rafi', 'Kuningan, Jawa Barat', '1999-01-20', 'Laki - Laki', 'rafi', 'rafi', '08998767654', 368173473601, 0),
(6, 'Rohmat', 'Kuningan, Jawa Barat', '1998-10-09', 'Laki - Laki', 'rohmat', 'rohmat', '08998767654', 1395247614456, 0),
(7, 'Wati', 'Kuningan, Jawa Barat', '1997-09-03', 'Perempuan', 'wati', 'wati', '08998767654', 8662179013037, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `review` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id_review`, `id_transaksi`, `review`, `time`) VALUES
(1, 3, 'cocok banget d kulit aku', '2023-11-19 10:51:09'),
(2, 3, 'suka sekali', '2023-11-19 10:55:22'),
(3, 3, 'teksturnya lembut di wajah', '2023-11-19 10:55:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_transaksi` varchar(15) NOT NULL,
  `tot_transaksi` varchar(15) NOT NULL,
  `stat_transaksi` int(11) NOT NULL,
  `stat_pembayaran` int(11) NOT NULL,
  `bukti_pembayaran` text NOT NULL,
  `ongkir` varchar(15) NOT NULL,
  `alamat_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `tgl_transaksi`, `tot_transaksi`, `stat_transaksi`, `stat_pembayaran`, `bukti_pembayaran`, `ongkir`, `alamat_pengiriman`) VALUES
(1, 2, '2023-06-01', '102562', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(2, 4, '2023-06-02', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(3, 2, '2023-06-03', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(4, 1, '2023-06-04', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(5, 2, '2023-06-05', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(6, 4, '2023-06-06', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(7, 7, '2023-06-07', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(8, 7, '2023-06-08', '313857', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(9, 6, '2023-06-09', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(10, 1, '2023-06-10', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(11, 4, '2023-06-11', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(12, 7, '2023-06-12', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(13, 6, '2023-06-13', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(14, 6, '2023-06-14', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(15, 2, '2023-06-15', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(16, 1, '2023-06-16', '313857', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(17, 1, '2023-06-17', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(18, 2, '2023-06-18', '102562', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(19, 5, '2023-06-19', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(20, 1, '2023-06-20', '313857', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(21, 6, '2023-06-21', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(22, 7, '2023-06-22', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(23, 6, '2023-06-23', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(24, 6, '2023-06-24', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(25, 4, '2023-06-25', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(26, 5, '2023-06-26', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(27, 3, '2023-06-27', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(28, 1, '2023-06-28', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(29, 2, '2023-06-29', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(30, 2, '2023-06-30', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(31, 1, '2023-07-01', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(32, 5, '2023-07-02', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(33, 7, '2023-07-03', '102562', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(34, 5, '2023-07-04', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(35, 1, '2023-07-05', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(36, 1, '2023-07-06', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(37, 2, '2023-07-07', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(38, 4, '2023-07-08', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(39, 2, '2023-07-09', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(40, 6, '2023-07-10', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(41, 5, '2023-07-11', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(42, 7, '2023-07-12', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(43, 4, '2023-07-13', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(44, 7, '2023-07-14', '313857', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(45, 4, '2023-07-15', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(46, 4, '2023-07-16', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(47, 1, '2023-07-17', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(48, 3, '2023-07-18', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(49, 1, '2023-07-19', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(50, 4, '2023-07-20', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(51, 4, '2023-07-21', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(52, 1, '2023-07-22', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(53, 5, '2023-07-23', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(54, 4, '2023-07-24', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(55, 7, '2023-07-25', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(56, 2, '2023-07-26', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(57, 2, '2023-07-27', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(58, 4, '2023-07-28', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(59, 6, '2023-07-29', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(60, 4, '2023-07-30', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(61, 7, '2023-07-31', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(62, 3, '2023-08-01', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(63, 2, '2023-08-02', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(64, 1, '2023-08-03', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(65, 7, '2023-08-04', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(66, 6, '2023-08-05', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(67, 4, '2023-08-06', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(68, 2, '2023-08-07', '313857', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(69, 1, '2023-08-08', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(70, 1, '2023-08-09', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(71, 4, '2023-08-10', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(72, 4, '2023-08-11', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(73, 3, '2023-08-12', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(74, 5, '2023-08-13', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(75, 5, '2023-08-14', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(76, 4, '2023-08-15', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(77, 1, '2023-08-16', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(78, 2, '2023-08-17', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(79, 3, '2023-08-18', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(80, 2, '2023-08-19', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(81, 2, '2023-08-20', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(82, 7, '2023-08-21', '102562', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(83, 7, '2023-08-22', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(84, 6, '2023-08-23', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(85, 5, '2023-08-24', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(86, 4, '2023-08-25', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(87, 2, '2023-08-26', '102562', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(88, 6, '2023-08-27', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(89, 6, '2023-08-28', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(90, 5, '2023-08-29', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(91, 6, '2023-08-30', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(92, 6, '2023-08-31', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(93, 1, '2023-09-01', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(94, 2, '2023-09-02', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(95, 7, '2023-09-03', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(96, 6, '2023-09-04', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(97, 5, '2023-09-05', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(98, 7, '2023-09-06', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(99, 6, '2023-09-07', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(100, 4, '2023-09-08', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(101, 2, '2023-09-09', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(102, 1, '2023-09-10', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(103, 3, '2023-09-11', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(104, 2, '2023-09-12', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(105, 3, '2023-09-13', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(106, 4, '2023-09-14', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(107, 5, '2023-09-15', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(108, 4, '2023-09-16', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(109, 5, '2023-09-17', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(110, 5, '2023-09-18', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(111, 6, '2023-09-19', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(112, 5, '2023-09-20', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(113, 3, '2023-09-21', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(114, 1, '2023-09-22', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(115, 4, '2023-09-23', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(116, 7, '2023-09-24', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(117, 5, '2023-09-25', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(118, 4, '2023-09-26', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(119, 1, '2023-09-27', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(120, 2, '2023-09-28', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(121, 7, '2023-09-29', '313857', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(122, 1, '2023-09-30', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(123, 6, '2023-10-01', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(124, 4, '2023-10-02', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(125, 1, '2023-10-03', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(126, 3, '2023-10-04', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(127, 1, '2023-10-05', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(128, 6, '2023-10-06', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(129, 6, '2023-10-07', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(130, 4, '2023-10-08', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(131, 5, '2023-10-09', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(132, 4, '2023-10-10', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(133, 7, '2023-10-11', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(134, 4, '2023-10-12', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(135, 4, '2023-10-13', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(136, 2, '2023-10-14', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(137, 1, '2023-10-15', '681712', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(138, 5, '2023-10-16', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(139, 6, '2023-10-17', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(140, 4, '2023-10-18', '627714', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(141, 3, '2023-10-19', '659754', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(142, 3, '2023-10-20', '205124', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(143, 5, '2023-10-21', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(144, 4, '2023-10-22', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(145, 7, '2023-10-23', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(146, 3, '2023-10-24', '340856', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(147, 1, '2023-10-25', '440346', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(148, 1, '2023-10-26', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(149, 3, '2023-10-27', '355998', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(150, 6, '2023-10-28', '329877', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(151, 2, '2023-10-29', '109359', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(152, 2, '2023-10-30', '220173', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(153, 4, '2023-10-31', '218718', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE'),
(154, 5, '2023-11-01', '711996', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-11.jpg', '14000', 'Kuningan, Jawa Barat Kota. Jakarta Timur Provinsi.  Expedisi. jnePaket OKE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(125) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `alamat`, `no_hp`, `username`, `password`, `level_user`) VALUES
(1, 'Admin', 'Kuningan', '089987654323', 'admin', 'admin', 1),
(2, 'Manager', 'Kuningan, Jawa Barat', '08991232123', 'manager', 'manager', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id_diskon`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
