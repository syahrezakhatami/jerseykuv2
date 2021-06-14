-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2020 pada 16.27
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_codeigniter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(6, 'Nike'),
(5, 'Adidas'),
(7, 'New Balance'),
(8, 'Puma'),
(9, 'Jako');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_status` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_status`) VALUES
(1, 'Premier-League', 1),
(2, 'LaLiga', 1),
(3, 'Ligue-1-French', 1),
(4, 'Bundesliga', 1),
(5, 'Serie-A', 1),
(6, 'Aksesoris', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(25) NOT NULL,
  `contact_email` varchar(32) NOT NULL,
  `contact_subject` varchar(32) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_status` tinyint(2) NOT NULL,
  `contact_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`, `contact_status`, `contact_date`) VALUES
(4, 'abir khan', 'abirkhan@gmail.com', 'Test two', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, '2017-12-28'),
(5, 'abir khan', 'abirkhan@gmail.com', 'Test two', 'Hello, i am abir i need some help.', 0, '2017-12-28'),
(14, 'abcd', 'sumonsarker018@gmail.com', 'Test Message', 'E-Shopper Inc.\r\n\r\n935 W. Webster Ave New Streets Chicago, IL 60614, NY\r\n\r\nNewyork USA\r\n\r\nMobile: +2346 17 38 93\r\n\r\nFax: 1-714-252-0026\r\n\r\nEmail: info@e-shopper.com', 0, '2017-12-28'),
(15, 'mumin', 'mumin@gmail.com', 'Test', 'ddddddddddddd', 0, '2017-12-28'),
(16, 'mumin', 'mumin@gmail.com', 'Test Message', 'Test Message', 0, '2017-12-28'),
(17, 'mumin', 'mumin@gmail.com', 'Test Message', 'Test Message', 0, '2017-12-27'),
(19, 'sumon', 'sumon@gmail.com', 'This is sumon', 'This is sumon', 0, '0000-00-00'),
(20, 'wahyu', 'wahyualief1@gmail.com', 'test', 'awhdgjahgwdjhgawjdh', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(55) NOT NULL,
  `cus_email` varchar(55) NOT NULL,
  `cus_password` varchar(32) NOT NULL,
  `cus_mobile` varchar(14) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_city` varchar(55) NOT NULL,
  `cus_country` varchar(55) NOT NULL,
  `cus_zip` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `cus_address`, `cus_city`, `cus_country`, `cus_zip`) VALUES
(48, 'Sm shuvo', 'sumonsarker080@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1611606484', 'Sylhet City', 'Mymensingh', 'Bangladesh', '2220'),
(47, 'Trailer', 'Traileralltimesu@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1611606484', 'Sylhet City', 'Mymensingh', 'UK', '2220'),
(49, 'frftvg', 'ftcturcf@gmail.com', '44fa9eb827ef6e389b3969e9ac2745a5', '86786856', 'ftcdtrhdtncf', 'new york', 'United_States', '8888'),
(50, 'ridha', 'rido@gmail.com', '5e728593329850c33fa1336969c0a30b', '1611606484', 'Sylhet City', 'new york', 'United_States', '2220');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `cus_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `order_date`) VALUES
(100, 47, 78, 102, 107, 'pending', '2017-12-31 17:20:20'),
(97, 48, 76, 99, 107, 'pending', '2017-12-31 17:01:39'),
(101, 49, 79, 103, 5305600, 'pending', '2020-05-26 18:48:37'),
(102, 49, 79, 104, 1348900, 'pending', '2020-05-26 19:44:59'),
(103, 49, 79, 105, 2667800, 'pending', '2020-05-26 19:55:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(12) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `sales_quantity` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `sales_quantity`) VALUES
(125, 100, 53, 'Samsung j7', 100, 1),
(119, 97, 53, 'Samsung j7', 100, 1),
(126, 101, 53, 'Real Madrid Jersey', 1199000, 4),
(127, 102, 53, 'Real Madrid Jersey', 1199000, 1),
(128, 103, 53, 'Real Madrid Jersey', 1199000, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `payment_type` varchar(20) NOT NULL,
  `payment_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_status`, `payment_type`, `payment_date_time`, `payment_message`) VALUES
(102, 'pending', 'cash_on_delivery', '2017-12-31 17:20:20', ''),
(98, 'pending', 'cash_on_delivery', '2017-12-30 23:45:17', ''),
(97, 'pending', 'cash_on_delivery', '2017-12-30 23:36:17', ''),
(96, 'pending', 'cash_on_delivery', '2017-12-30 23:17:07', ''),
(103, 'pending', 'cash_on_delivery', '2020-05-26 18:48:37', ''),
(104, 'pending', 'cash_on_delivery', '2020-05-26 19:44:59', ''),
(105, 'pending', 'cash_on_delivery', '2020-05-26 19:55:47', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_title` varchar(255) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_cat` tinyint(4) NOT NULL,
  `pro_sub_cat` tinyint(4) NOT NULL,
  `pro_brand` tinyint(4) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_quantity` tinyint(4) NOT NULL,
  `pro_availability` tinyint(4) NOT NULL COMMENT 'status 1=instock, 2=outof stock, 3= up coming',
  `pro_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'status=1 enable status=2 disable',
  `pro_image` text DEFAULT NULL,
  `top_product` tinyint(1) DEFAULT 0 COMMENT 'show top value=1 other wise value=0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_title`, `pro_desc`, `pro_cat`, `pro_sub_cat`, `pro_brand`, `pro_price`, `pro_quantity`, `pro_availability`, `pro_status`, `pro_image`, `top_product`) VALUES
(1, 'Real Madrid Jersey', '<p>Real Madrid Jersey 2019/2020</p>\r\n', 2, 20, 5, 1500000, 10, 1, 1, 'uploads/jrm.jpg', 1),
(2, 'Barcelona Jersey', '<p>Jersey Barcelona 2019/2020</p>\r\n', 2, 21, 6, 1500000, 10, 1, 1, 'uploads/barca.png', 1),
(3, 'PSG Jersey', '<p>Jersey PSG</p>\r\n', 3, 30, 6, 1150000, 10, 3, 1, 'uploads/psg.jpg', 1),
(4, 'Bola Adidas', '<p>Serie UCL 2018/2019</p>\r\n', 6, 60, 6, 650000, 7, 1, 1, 'uploads/adidas.jpg', 1),
(5, 'Liverpool Jersey', '<p>Jersey Liverpool</p>\r\n', 1, 10, 7, 1500000, 10, 1, 1, 'uploads/lvp.jpg', 1),
(6, 'Bayern Munchen', '<p>Jersey Bayern Munich 2019/2020/p>\r\n', 4, 40, 5, 1250000, 12, 1, 1, 'uploads/mun.jpg', 1),
(7, 'Juventus Jersey', '<p>Jersey Juventus</p>\r\n', 5, 50, 6, 1300000, 10, 1, 1, 'uploads/juve.jpg', 1),
(8, 'Borusia Dortmun Jersey', '<p>Borusia Dortmun 2019/2020</p>', 4, 41, 8, 1250000, 12, 1, 1, 'uploads/dor.jpg', 1),
(10, 'leipzig Jersey ', '<p>Jersey leipzig</p>\r\n', 4, 42, 6, 1000000, 10, 1, 1, 'uploads/leip.jpg', 1),
(11, 'leverkusen Jersey', '<p>Jersey leverkusen</p>\r\n', 4, 43, 9, 800000, 10, 1, 1, 'uploads/kusen.jpeg', 1),
(12, 'Wolfsburg Jersey', '<p>Jersey Wolfsburg</p>\r\n', 4, 44, 6, 900000, 10, 1, 1, 'uploads/wol.png', 1),
(13, 'Shalke Jersey', '<p>Jersey Shalke</p>\r\n', 4, 45, 6, 900000, 10, 1, 1, 'uploads/s.jpg', 1),
(14, 'Ac Milan Jersey', '<p>Jersey AC Milan</p>\r\n', 5, 51, 6, 1200000, 10, 1, 1, 'uploads/ac.jpg', 1),
(15, 'Inter Milan Jersey', '<p>Jersey Interminlan</p>\r\n', 5, 52, 6, 1200000, 10, 1, 1, 'uploads/inter.jpg', 1),
(16, 'Napoli Jersey', '<p>Jersey Napoli</p>\r\n', 5, 53, 9, 1200000, 10, 1, 1, 'uploads/napoli.jpg', 1),
(17, 'Fiorentina Jersey', '<p>Jersey Fiorentina</p>\r\n', 5, 54, 9, 1200000, 5, 1, 1, 'uploads/fio.jpg', 1),
(18, 'Olympique marseilie Jersey', '<p>Jersey Olympique marseilie</p>\r\n', 3, 31, 8, 1000000, 5, 1, 1, 'uploads/marsel.jpg\r\n', 1),
(19, 'Losc Lille Jersey', '<p>Jersey Losc Lille</p>\r\n', 3, 32, 7, 600000, 10, 1, 1, 'uploads/lili.jpg\r\n', 1),
(20, 'Renner Jersey', '<p>Jersey Renner</p>\r\n', 3, 33, 8, 600000, 15, 1, 1, 'uploads/re.jpg\r\n', 1),
(21, 'AS Monaco Jersey', '<p>Jersey AS Monaco</p>\r\n', 3, 34, 6, 1200000, 6, 1, 1, 'uploads/mon.jpg\r\n', 1),
(22, 'Valencia Jersey', '<p>Jersey Valencia</p>\r\n', 2, 22, 8, 1150000, 10, 1, 1, 'uploads/val.jpg\r\n', 1),
(23, 'Atletico Madrid Jersey ', '<p>Jersey ATM</p>\r\n', 2, 23, 6, 1200000, 10, 1, 1, 'uploads/at.jpg', 1),
(24, 'Sevilla Jersey', '<p>Jersey Sevilla</p>\r\n', 2, 24, 6, 1130000, 10, 1, 1, 'uploads/sev.jpg', 1),
(25, 'Manchaster City Jersey', '<p>Jersey Man city</p>\r\n', 1, 11, 8, 1150000, 5, 1, 1, 'uploads/city.jpg', 1),
(26, 'Manchaster United Jersey', '<p>Jersey MU</p>\r\n', 1, 12, 5, 1150000, 5, 1, 1, 'uploads/mu.jpg', 1),
(27, 'Chelsea Jersey ', '<p>jersey chelsea</p>\r\n', 1, 13, 6, 1100000, 5, 1, 1, 'uploads/cs.jpg', 1),
(28, 'Arsenal Jersey', '<p>Jersey arsenal</p>\r\n', 1, 14, 6, 800000, 10, 1, 1, 'uploads/ar.jpg', 1),
(29, 'Tottenham Jersey', '<p>Jersey Tottenham</p>\r\n', 1, 15, 6, 900000, 5, 1, 1, 'uploads/tot.jpg', 1),
(76, 'Bantal Chelsea', '', 6, 61, 6, 50000, 15, 1, 1, 'uploads/chelsea.jpg', NULL),
(77, 'Bantal Manchaster city', '<p>Bantal Manchaster city</p>\r\n', 6, 61, 8, 55000, 20, 1, 1, 'uploads/mc.jpg', 1),
(78, 'Bantal RealMadrid', '<p>Bantal RealMadrid</p>\r\n', 6, 61, 5, 50000, 10, 1, 1, 'uploads/madrid.jpg', 1),
(79, 'Bantal Juventus', '<p>Bantal Juventus</p>\r\n', 6, 61, 5, 58000, 10, 1, 1, 'uploads/juve1.jpg', 1),
(80, 'Bantal Inter', '<p>Bantal Inter</p>\r\n', 6, 61, 6, 60000, 10, 1, 1, 'uploads/inter1.jpg', 1),
(81, 'Bantal Napoli', '<p>Bantal Napoli</p>\r\n', 6, 61, 9, 50000, 20, 1, 1, 'uploads/napoli1.jpg', 1),
(82, 'Bantal Atletico Madrid', '<p>Bantal Atletico Madrid</p>\r\n', 6, 61, 6, 50000, 10, 1, 1, 'uploads/atm.jpg', 1),
(83, 'Bantal Bayern Munchen', '<p>Bantal Bayern Munchen</p>\r\n', 0, 61, 5, 65000, 10, 1, 1, 'uploads/muncen.jpg', 1),
(84, 'Bantal Paris Saint Sermain', '<p>Bantal Paris Saint Sermain</p>\r\n', 6, 61, 6, 50000, 10, 1, 1, 'uploads/psg1.jpg', NULL),
(85, 'Bola Puma', '<p>Bola Puma</p>\r\n', 6, 60, 8, 50000, 10, 1, 1, 'uploads/puma.jpg', 1),
(86, 'Bola Nike', '<p>Bola Nike</p>\r\n', 6, 60, 6, 55000, 10, 1, 1, 'uploads/nike.jpeg', 1),
(87, 'Tas Juventus', '<p>Tas Juventus</p>\r\n', 6, 64, 5, 160000, 5, 1, 1, 'uploads/juve2.jpg', NULL),
(88, 'Tas Chelsea', '<p>Tas Chelsea</p>\r\n', 6, 64, 6, 100000, 5, 1, 1, 'uploads/rsz_1chelsea.jpg', 1),
(89, 'Tas Paris saint germani', '<p>Tas Paris saint germani</p>\r\n', 6, 64, 6, 100000, 5, 1, 1, 'uploads/rsz_psg.jpg', 1),
(90, 'Tas Inter Milan', '<p>Tas Inter Milan</p>\r\n', 6, 64, 6, 120000, 5, 1, 1, 'uploads/rsz_inter.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(55) NOT NULL,
  `cus_email` varchar(55) NOT NULL,
  `cus_password` varchar(32) NOT NULL,
  `cus_mobile` varchar(14) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_city` varchar(55) NOT NULL,
  `cus_country` varchar(55) NOT NULL,
  `cus_zip` varchar(5) NOT NULL,
  `cus_fax` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `cus_address`, `cus_city`, `cus_country`, `cus_zip`, `cus_fax`) VALUES
(75, 48, 'Sm shuvo', 'sumonsarker080@gmail.com', '', '1611606484', 'Sylhet City', 'Mymensingh', 'Bangladesh', '2220', ''),
(78, 47, 'Trailer', 'Traileralltimesu@gmail.com', '', '1611606484', 'Sylhet City', 'Mymensingh', 'UK', '2220', ''),
(79, 49, 'frftvg', 'ftcturcf@gmail.com', '', '86786856', 'ftcdtrhdtncf', 'new york', 'United_States', '8888', ''),
(80, 50, 'ridha', 'rido@gmail.com', '', '1611606484', 'Sylhet City', 'new york', 'United_States', '2220', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category_sub_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_cat_id`, `sub_category_name`, `category_sub_id`) VALUES
(20, 'Real Madrid', 2),
(60, 'Bola', 6),
(21, 'Barcelona', 2),
(40, 'Bayern Munchen', 4),
(30, 'PSG', 3),
(10, 'Liverpool', 1),
(50, 'Juventus', 5),
(41, 'Borusia Dortmun', 4),
(51, 'AC Milan', 5),
(52, 'inter milan', 5),
(53, 'napoli', 5),
(54, 'fiorentina', 5),
(11, 'manchester cisty', 1),
(12, 'manchester united', 1),
(13, 'chelsea', 1),
(14, 'arsenal', 1),
(15, 'tottenham', 1),
(31, 'marseile', 3),
(32, 'lille', 3),
(33, 'renners', 3),
(34, 'as monnaco', 3),
(42, 'leipzeig', 4),
(43, 'leverkusen', 4),
(44, 'wolfsburg', 4),
(45, 'shalke', 4),
(22, 'valencia', 2),
(23, 'atletico madrid', 2),
(24, 'sevilla', 2),
(61, 'Bantal', 6),
(64, 'Tas', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(3) NOT NULL,
  `user_status` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `user_email`, `user_password`, `user_role`, `user_status`) VALUES
(1, 'admin football lovers', 'admin@gmail.com', '$2y$10$jC5vMlVtrPNSZNZr4cpJ.O4x.pvMMhRMkLV/NuOthbiVlttTHmsTi', 1, 1),
(2, 'abir', 'abir@gmail.com', '$2y$10$jC5vMlVtrPNSZNZr4cpJ.O4x.pvMMhRMkLV/NuOthbiVlttTHmsTi', 0, 1),
(3, 'Author', 'admin@gmail.com', 'admin', 3, 1),
(4, 'Editor', 'editor@gmail.com', '$2y$10$EESLtdn.aLoCOzrpO0lIl.ZzvewPPEV6symLLJ/./xIsSV5wkZbcq', 4, 1),
(15, 'dddddddddddd', 'dddddddddd@gmail.com', '$2y$10$.pEXHG8AENKIfZUVrfDc0O1CRZI4FBjymkeVznJ7apaqir0beALqa', 0, 1),
(13, 'Deloyar J Imran', 'Imran@gmail.com', '$2y$10$RnujkWIfW4DURvAKYlaSfOZp6XMPrIXtP.HGCICoKQbWyTHR3104y', 2, 1),
(14, 'abir', 'ami@gmail.com', '$2y$10$WW/OrYnmOwlFgWEM4zQ22Om3XQFDmyntZegtRNKN9OVcfQ4GXfluC', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indeks untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indeks untuk tabel `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT untuk tabel `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
