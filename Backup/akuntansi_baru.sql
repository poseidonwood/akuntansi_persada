-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2020 at 04:20 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akuntansi_baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `mp_balance`
--

CREATE TABLE `mp_balance` (
  `id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `value` int(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mp_banks`
--

CREATE TABLE `mp_banks` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `branch` varchar(100) CHARACTER SET latin1 NOT NULL,
  `branchcode` varchar(100) CHARACTER SET latin1 NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `accountno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_banks`
--

INSERT INTO `mp_banks` (`id`, `bankname`, `branch`, `branchcode`, `title`, `accountno`, `status`) VALUES
(1, 'Bank Central Asia', 'Karawang', '23567', 'PT. SiAP System', '12345678910', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_bank_opening`
--

CREATE TABLE `mp_bank_opening` (
  `id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `bank_id` int(11) NOT NULL,
  `amount` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_bank_transaction`
--

CREATE TABLE `mp_bank_transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `method` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cheque_amount` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ref_no` varchar(100) CHARACTER SET latin1 NOT NULL,
  `transaction_status` int(1) NOT NULL,
  `transaction_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_bank_transaction`
--

INSERT INTO `mp_bank_transaction` (`id`, `transaction_id`, `bank_id`, `payee_id`, `method`, `cheque_amount`, `ref_no`, `transaction_status`, `transaction_type`) VALUES
(1, 227, 1, 4, 'Cash', '1000000', '54687', 1, 'recieved');

-- --------------------------------------------------------

--
-- Table structure for table `mp_barcode`
--

CREATE TABLE `mp_barcode` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `random_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_barcode`
--

INSERT INTO `mp_barcode` (`id`, `barcode`, `random_no`, `description`) VALUES
(3, 'A8FR250-Fan Regulator', 'J220H000051', 'sdad'),
(4, 'aaaaaaaa', '4073127917', 'hhh'),
(6, 'NEO RHEUMACYL 20 TABLET', '8817103623', ''),
(7, 'BODREX TAB LAPIS DUA 20 TABLET', '9078129874', '');

-- --------------------------------------------------------

--
-- Table structure for table `mp_brand`
--

CREATE TABLE `mp_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_brand`
--

INSERT INTO `mp_brand` (`id`, `name`) VALUES
(1, 'Merk A'),
(2, 'Merk B'),
(3, 'Merk C'),
(4, 'Merk D'),
(5, 'Merk E');

-- --------------------------------------------------------

--
-- Table structure for table `mp_brand_sector`
--

CREATE TABLE `mp_brand_sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_brand_sector`
--

INSERT INTO `mp_brand_sector` (`id`, `sector`, `created`, `updated`) VALUES
(1, 'Merk Minuman Segar', '2018-05-28', '2019-07-27'),
(2, 'Merk Obat dan Kesehatan', '2018-05-29', '2019-07-27'),
(3, 'Merk Kosmetik dan Skincare', '2018-05-29', '2019-07-27'),
(4, 'Merk Pembersih Rumah Tangga', '2018-05-29', '2019-07-27'),
(5, 'Merk Rokok', '2018-06-04', '2019-07-27'),
(6, 'Merk Makanan dan Snack', '2018-07-05', '2019-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `mp_category`
--

CREATE TABLE `mp_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `register_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `added_by` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_category`
--

INSERT INTO `mp_category` (`id`, `category_name`, `description`, `register_date`, `status`, `added_by`) VALUES
(1, 'Dana dari Bos', 'Income', '2020-09-08', 0, 'Supper Admin'),
(12, 'Rumah Tangga', 'Expense', '2020-09-10', 0, 'Supper Admin');

-- --------------------------------------------------------

--
-- Table structure for table `mp_contactabout`
--

CREATE TABLE `mp_contactabout` (
  `id` int(11) NOT NULL,
  `contact_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone_number` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 NOT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 NOT NULL,
  `linked` varchar(255) CHARACTER SET latin1 NOT NULL,
  `googleplus` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_quotation` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_title2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_description` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_contactabout`
--

INSERT INTO `mp_contactabout` (`id`, `contact_title`, `contact_description`, `phone_number`, `address`, `email`, `facebook`, `twitter`, `linked`, `googleplus`, `about_title`, `about_quotation`, `about_name`, `about_title2`, `about_description`) VALUES
(1, 'Contact Us', 'Tangail Marcel', '01715932630', 'Karawang', 'pos@gmail.com', 'pos@gmail.com', 'rumahit_id', 'rumahit_id', 'rumah_it', '« Lorem Ipsum is simply dummy text of the printing  »', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.p;#039;s standard dummy text ever since the 1500s, when an unknown printer took a ga', '— Medix Pharmacy', 'About Us', 'Praesent convallis tortor et enim laoreet, vel consectetur purus latoque penatibus et dis parturient.');

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_payments`
--

CREATE TABLE `mp_customer_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_customer_payments`
--

INSERT INTO `mp_customer_payments` (`id`, `transaction_id`, `customer_id`, `amount`, `method`, `date`, `description`, `agentname`, `id_kategori`) VALUES
(16, 209, 1, '42500.00', 'Cash', '2020-09-28', 'Bayar Hutang Invoice No. XXX', 'Supper Admin', 2),
(20, 237, 1, '10000.00', 'Cash', '2020-09-09', 'Urgent', 'Supper Admin', 1),
(21, 238, 18, '11111.00', 'Cash', '2020-09-09', 'Test', 'Supper Admin', 7),
(22, 239, 19, '286550.00', 'Cash', '2020-09-10', 'Sisa Saldo Bulan Juni', 'Supper Admin', 12);

-- --------------------------------------------------------

--
-- Table structure for table `mp_drivers`
--

CREATE TABLE `mp_drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(15) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `lisence` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ref` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_drivers`
--

INSERT INTO `mp_drivers` (`id`, `name`, `contact`, `address`, `lisence`, `ref`, `date`, `cus_picture`, `status`) VALUES
(2, 'gfsdf', '568', 'gdfgds', '63863', 'grt', '2018-07-05', 'default.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_expense`
--

CREATE TABLE `mp_expense` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `total_bill` varchar(255) CHARACTER SET latin1 NOT NULL,
  `total_paid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `method` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `payee_id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_expense`
--

INSERT INTO `mp_expense` (`id`, `transaction_id`, `head_id`, `total_bill`, `total_paid`, `date`, `user`, `method`, `description`, `payee_id`, `id_kategori`) VALUES
(2, 233, 19, '15000', '15000', '2020-09-08', 'Supper Admin', 'Cash', 'ok', 4, 8),
(3, 233, 19, '70000', '70000', '2020-09-10', 'Supper Admin', 'Cash', 'Pembelian Rokok Surya kaleng', 19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mp_generalentry`
--

CREATE TABLE `mp_generalentry` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT 0,
  `date` date NOT NULL,
  `naration` varchar(255) CHARACTER SET latin1 NOT NULL,
  `generated_source` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_generalentry`
--

INSERT INTO `mp_generalentry` (`id`, `customer_id`, `date`, `naration`, `generated_source`) VALUES
(198, 0, '2019-07-01', 'Modal awal perusahaan', 'Journal Voucher'),
(199, 0, '2019-07-02', 'Sewa kantor selama satu tahun', 'Journal Voucher'),
(200, 0, '2019-07-04', 'Membeli Peralatan Kantor', 'Journal Voucher'),
(201, 0, '2019-07-08', 'Pendapatan dari penjualan tunai', 'Journal Voucher'),
(202, 0, '2019-07-16', 'Gaji Karyawan bulan Juli', 'Journal Voucher'),
(203, 0, '2019-07-27', 'Transaction occured from POS', 'pos'),
(204, 0, '2019-07-27', 'Transaction occured from create purchases', 'create_purchases'),
(205, 0, '2019-07-27', 'Transaction occured from create purchases', 'create_purchases'),
(206, 0, '2019-07-27', 'Transaction occured from Supplier payments', 'supplier_payment'),
(207, 0, '2019-07-28', 'Transaction occured from POS', 'pos'),
(208, 0, '2019-07-28', 'Transaction occured from POS', 'pos'),
(209, 0, '2019-07-28', 'Transaction occured from customer payments', 'customer_payment'),
(210, 0, '2019-07-30', 'Transaction occured from POS', 'pos'),
(211, 0, '2019-07-30', 'Transaction occured from POS', 'pos'),
(212, 0, '2019-07-30', 'Transaction occured from POS', 'pos'),
(213, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(214, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(215, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(216, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(217, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(218, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(219, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(220, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(221, 0, '2019-07-31', 'Transaction occured from POS', 'pos'),
(222, 0, '2019-08-02', 'Transaksi dilakukan dari Pembelian ke Supplier', 'create_purchases'),
(223, 0, '2019-08-02', 'Transaksi dilakukan dari Pembelian ke Supplier', 'create_purchases'),
(224, 0, '2019-08-02', 'Transaksi dilakukan dari Pembelian ke Supplier', 'create_purchases'),
(225, 0, '2019-08-03', 'Transaksi dilakukan dari Pembelian ke Supplier', 'create_purchases'),
(226, 0, '2019-08-04', 'Transaction occured from expense', 'expense'),
(227, 0, '2019-08-05', 'Setoran Bank', 'deposit'),
(228, 0, '2019-08-05', 'Transaksi dilakukan dari penjualan POS', 'pos'),
(229, 0, '2019-08-05', 'Transaksi dilakukan dari penjualan POS', 'pos'),
(230, 0, '2019-08-05', 'Transaksi dilakukan dari penjualan POS', 'pos'),
(231, 0, '2020-07-30', 'Transaksi dilakukan dari penjualan POS', 'pos'),
(232, 0, '2020-09-08', 'Transaksi dilakukan dari pembayaran Customer', 'customer_payment'),
(233, 0, '2020-09-08', 'Transaksi dilakukan dari pengeluaran / expense', 'expense'),
(235, 0, '2020-09-08', 'Transaksi dilakukan dari pembayaran Customer', 'customer_payment'),
(236, 0, '2020-09-08', 'Transaksi dilakukan dari pembayaran Customer', 'customer_payment'),
(237, 0, '2020-09-09', 'Transaksi dilakukan dari pembayaran Customer', 'customer_payment'),
(238, 0, '2020-09-09', 'Transaksi dilakukan dari pembayaran Customer', 'customer_payment'),
(239, 0, '2020-09-10', 'Transaksi dilakukan dari pembayaran Customer', 'customer_payment');

-- --------------------------------------------------------

--
-- Table structure for table `mp_head`
--

CREATE TABLE `mp_head` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nature` varchar(50) CHARACTER SET latin1 NOT NULL,
  `type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `relation_id` int(11) NOT NULL,
  `expense_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_head`
--

INSERT INTO `mp_head` (`id`, `name`, `nature`, `type`, `relation_id`, `expense_type`) VALUES
(1, '[501] Beban Gaji', 'Expense', 'Lancar', 0, 'Beban Kas'),
(2, '[101] Kas', 'Assets', 'Lancar', 0, '-'),
(3, '[401] Pendapatan Penjualan', 'Revenue', 'Lancar', 0, '-'),
(4, '[102] Piutang Usaha (AR)', 'Assets', 'Lancar', 0, '-'),
(5, '[201] Hutang Usaha (AP)', 'Liability', 'Lancar', 0, '-'),
(6, '[502] Beban Telepon', 'Expense', 'Lancar', 0, 'Beban Kas'),
(7, '[301] Modal Usaha', 'Equity', 'Lancar', 0, '-'),
(8, '[103] Tanah', 'Assets', 'Tetap', 0, '-'),
(9, '[104] Bangunan', 'Assets', 'Tetap', 0, '-'),
(10, '[202] Hutang Wesel', 'Liability', 'Lancar', 0, '-'),
(11, '[105] Peralatan Kantor', 'Assets', 'Lancar', 0, '-'),
(12, '[402] Pendapatan Jasa', 'Revenue', 'Lancar', 0, '-'),
(13, '[503] Beban Administrasi', 'Expense', 'Lancar', 0, 'Beban Kas'),
(14, '[504] Beban Listrik &amp; Air', 'Expense', 'Lancar', 0, 'Beban Kas'),
(15, '[505] Beban Iklan', 'Expense', 'Lancar', 0, 'Beban Kas'),
(16, '[106] Kas Bank', 'Assets', 'Lancar', 0, '-'),
(17, '[107] Asuransi dibayar dimuka', 'Assets', 'Lancar', 0, '-'),
(18, '[108] Sewa dibayar dimuka', 'Assets', 'Lancar', 0, '-'),
(19, '[506] Beban Perlengkapan', 'Expense', 'Lancar', 0, 'Beban Kas'),
(20, '[507] Beban Bunga', 'Expense', 'Lancar', 0, 'Beban Kas'),
(21, '[109] Persediaan', 'Assets', 'Lancar', 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `mp_invoices`
--

CREATE TABLE `mp_invoices` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `status` int(1) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `delivered_to` varchar(100) CHARACTER SET latin1 NOT NULL,
  `delivered_by` varchar(100) CHARACTER SET latin1 NOT NULL,
  `delivered_date` date NOT NULL,
  `delivered_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shippingcharges` decimal(11,2) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `payment_method` int(1) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `bill_paid` decimal(11,2) NOT NULL,
  `source` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_invoices`
--

INSERT INTO `mp_invoices` (`id`, `transaction_id`, `date`, `discount`, `status`, `description`, `agentname`, `cus_id`, `cus_picture`, `delivered_to`, `delivered_by`, `delivered_date`, `delivered_description`, `shippingcharges`, `prescription_id`, `region_id`, `vehicle_id`, `driver_id`, `payment_method`, `total_bill`, `bill_paid`, `source`) VALUES
(141, 203, '2019-07-27', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '99300.00', '99300.00', 0),
(142, 207, '2019-07-28', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(143, 208, '2019-07-28', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '42500.00', '0.00', 0),
(144, 210, '2019-07-30', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(145, 211, '2019-07-30', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '14800.00', '0.00', 0),
(146, 212, '2019-07-30', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '65600.00', '0.00', 0),
(147, 213, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(148, 214, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '4000.00', '4000.00', 0),
(149, 215, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(150, 216, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(151, 217, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(152, 218, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '65600.00', '65600.00', 0),
(153, 219, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32800.00', '32800.00', 0),
(154, 220, '2019-07-31', '500.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32300.00', '32300.00', 0),
(155, 221, '2019-07-31', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '164000.00', '164000.00', 0),
(156, 228, '2019-08-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '73000.00', '73000.00', 0),
(157, 229, '2019-08-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '96500.00', '96500.00', 0),
(158, 230, '2019-08-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '92800.00', '92800.00', 0),
(159, 231, '2020-07-30', '0.00', 0, '', 'Sub Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '30000.00', '30000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_langingpage`
--

CREATE TABLE `mp_langingpage` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companydescription` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companykeywords` varchar(255) CHARACTER SET latin1 NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `banner` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title6` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subtitle6` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subtitle6one` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title8` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title9` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title10` varchar(255) CHARACTER SET latin1 NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) CHARACTER SET latin1 NOT NULL,
  `primarycolor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `theme_pri_hover` varchar(50) CHARACTER SET latin1 NOT NULL,
  `expirey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_langingpage`
--

INSERT INTO `mp_langingpage` (`id`, `companyname`, `companydescription`, `companykeywords`, `logo`, `banner`, `slider1`, `slider2`, `slider3`, `slider4`, `slider5`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `subtitle6`, `subtitle6one`, `title8`, `title9`, `title10`, `currency`, `language`, `primarycolor`, `theme_pri_hover`, `expirey`) VALUES
(1, 'PT. KANGYUDI.ORG', 'Sistem Akuntansi dan Penjualan', 'Sistem Akuntansi dan Penjualan', 'dcb99169fed78154951d15df01aa5dbe.png', '1171127a5133603e62cc949a87aedda4.jpg', '0ae082ea4c6d3334de39a11840c07c09.jpg', 'a3cbfa5f37d75bd8de678ceded28da43.png', 'd6e2b9bad5eb6560699d95d0235b3e9e.png', '67e008061660613ba4497979db422f91.png', 'ec572d4564b40dec3412b2d305f6a59e.png', 'THE  PHARMACY AND POS SYSTEM', 'OUR SERVICES', 'THINGS YOU SHOULD KNOW ABOUT US', 'MEET OUR PHARMACIST!.', 'SEE WHAT PATIENTS ARE SAYING?.', 'CONTACT US.', 'Contact Info.', 'Having Any Query! Or Book an appointment.', 'Quick Links.', 'Follow us.', 'Copyright ©2018: jannatgroupbd.com\r\ndevelopment by: AloranBD Soft', 'IDR', 'ID', '#18dce2', '#16c8cd', 55);

-- --------------------------------------------------------

--
-- Table structure for table `mp_menu`
--

CREATE TABLE `mp_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(100) CHARACTER SET latin1 NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_menu`
--

INSERT INTO `mp_menu` (`id`, `name`, `icon`, `active`) VALUES
(1, 'Inventory', 'fa fa-barcode', 0),
(2, 'Pengaturan', 'fa fa-cog', 0),
(5, 'Laporan', 'fa fa-balance-scale', 0),
(6, 'POS', 'fa fa-clipboard', 0),
(7, 'Profil', 'fa fa-user', 0),
(12, 'Hak Akses', 'fa fa-users', 0),
(16, 'Supplier', 'fa fa-truck', 0),
(18, 'Bank', 'fa fa-bank', 0),
(20, 'Pembelian', 'fa fa-briefcase', 0),
(21, 'Supply Chain', 'fa fa-flask', 0),
(22, 'Atribut', 'fa fa-anchor', 0),
(23, 'Akuntansi', 'fa fa-calculator', 0),
(24, 'Statement', 'fa fa-line-chart', 0),
(25, 'Opsi Umum', 'fa fa-shopping-bag', 0),
(26, 'Dashboard', 'fa fa-tachometer', 1),
(27, 'Pengeluaran', 'fa fa-level-down', 1),
(28, 'Customer', 'fa fa-users', 1),
(29, 'Pendapatan', 'fa fa-level-up', 1),
(30, 'Category', 'fa fa-angle-right', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_menulist`
--

CREATE TABLE `mp_menulist` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_menulist`
--

INSERT INTO `mp_menulist` (`id`, `menu_id`, `title`, `link`) VALUES
(1, 1, 'Produk', 'product'),
(2, 28, 'Kategori', 'category'),
(3, 2, 'Tampilan & Sistem', 'layout'),
(4, 1, 'Barcode Generator', 'product/generate_barcode'),
(9, 28, 'Customer List', 'customers'),
(10, 5, 'Laporan Penjualan', 'salesreport'),
(13, 6, 'Daftar Invoice', 'invoice/manage'),
(16, 7, 'Personal', 'profile'),
(17, 25, 'Pengguna', 'users'),
(18, 1, 'Permintaan Item', 'todolist'),
(26, 12, 'Atur Hak Akses', 'multiple_roles'),
(28, 16, 'Daftar Supplier', 'supplier'),
(29, 27, 'Pengeluaran', 'Expense'),
(30, 18, 'Cek', 'bank/written_cheque'),
(31, 18, 'Daftar Bank', 'bank'),
(34, 1, 'Pending stok', 'product/pending_stock'),
(36, 6, 'Buat Invoice', 'invoice'),
(37, 6, 'Retur Item', 'return_items'),
(38, 5, 'Laporan Retur', 'salesreport/returnitemreport'),
(39, 20, 'Daftar Pembelian', 'purchase'),
(40, 21, 'Daftar Pengiriman', 'supply'),
(41, 21, 'Sopir', 'supply/drivers'),
(42, 21, 'Kendaraan', 'supply/vehicle'),
(43, 22, 'Merk', 'initilization'),
(44, 22, 'Sektor Merk', 'initilization/brandSector'),
(45, 22, 'Region', 'initilization/region'),
(46, 22, 'Kota', 'initilization/town'),
(47, 22, 'Unit', 'initilization/units'),
(48, 22, 'Toko', 'initilization/stores'),
(49, 1, 'Peringatan Stok', 'stockAlertReport'),
(50, 1, 'Produk Kadaluarsa', 'product/expired_list'),
(51, 1, 'Stok', 'product/productStock'),
(52, 1, 'Stok Kadaluarsa', 'product/expired_stock'),
(53, 16, 'Pembayaran Supplier', 'supplier/payment_list'),
(54, 23, 'Buku Besar Customer', 'customers/ledger'),
(55, 23, 'Buku Besar Supplier', 'supplier/ledger'),
(56, 20, 'Retur Pembelian', 'purchase/return_list'),
(57, 4, 'Income dari Customer_void', 'customers/payment_list '),
(58, 23, 'Bagan Akun', 'accounts'),
(59, 24, 'Jurnal Umum', 'statements'),
(60, 24, 'Buku Besar', 'statements/leadgerAccounst'),
(61, 24, 'Neraca Saldo', 'statements/trail_balance'),
(62, 24, 'Laporan Laba Rugi', 'statements/income_statement'),
(63, 24, 'Neraca Keuangan', 'statements/balancesheet'),
(64, 23, 'Entri Jurnal', 'statements/journal_voucher'),
(65, 23, 'Pembukaan Saldo', 'statements/opening_balance'),
(66, 29, 'Pendapatan dari Customer', 'customers/payment_list '),
(68, 25, 'Backup Database', 'backup'),
(69, 25, 'Restore Database', 'backup/upload_restore'),
(70, 18, 'Deposito Bank', 'bank/deposit_list'),
(71, 18, 'Buku Bank', 'bank/bank_book'),
(72, 26, 'Dashboard', 'dashboard'),
(73, 25, 'Pengaturan Printer', 'Printer_settings'),
(74, 25, 'Format Data', 'backup/format');

-- --------------------------------------------------------

--
-- Table structure for table `mp_multipleroles`
--

CREATE TABLE `mp_multipleroles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_Id` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `agentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_multipleroles`
--

INSERT INTO `mp_multipleroles` (`id`, `user_id`, `menu_Id`, `role`, `agentid`) VALUES
(117, 1, 12, 0, 1),
(118, 1, 1, 1, 1),
(119, 1, 2, 1, 1),
(120, 1, 5, 1, 1),
(121, 1, 6, 1, 1),
(122, 1, 7, 1, 1),
(123, 1, 16, 1, 1),
(124, 1, 18, 1, 1),
(125, 1, 20, 1, 1),
(126, 1, 21, 1, 1),
(127, 1, 22, 1, 1),
(128, 1, 23, 1, 1),
(129, 1, 24, 1, 1),
(130, 1, 25, 1, 1),
(131, 1, 26, 1, 1),
(132, 1, 27, 1, 1),
(133, 1, 28, 1, 1),
(134, 2, 1, 1, 1),
(135, 2, 2, 1, 1),
(136, 2, 5, 1, 1),
(137, 2, 6, 1, 1),
(138, 2, 7, 1, 1),
(139, 2, 12, 1, 1),
(140, 2, 16, 1, 1),
(141, 2, 18, 1, 1),
(142, 2, 20, 1, 1),
(143, 2, 21, 1, 1),
(144, 2, 22, 1, 1),
(145, 2, 23, 1, 1),
(146, 2, 25, 1, 1),
(147, 2, 26, 1, 1),
(148, 2, 27, 1, 1),
(149, 2, 28, 1, 1),
(150, 2, 24, 1, 1),
(151, 1, 29, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_payee`
--

CREATE TABLE `mp_payee` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_contact_1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_contact_2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_company` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_picture` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_status` int(1) NOT NULL,
  `cus_region` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_town` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_balance` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_date` date NOT NULL,
  `customer_nationalid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_payee`
--

INSERT INTO `mp_payee` (`id`, `customer_name`, `cus_email`, `cus_password`, `cus_address`, `cus_contact_1`, `cus_contact_2`, `cus_company`, `cus_description`, `cus_picture`, `cus_status`, `cus_region`, `cus_town`, `cus_type`, `cus_balance`, `cus_date`, `customer_nationalid`, `type`) VALUES
(1, 'Vanessa Angel', 'walkin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Jl. Apa Saja - 656', '56655556', '1722967053', 'PT. VA Internasional', '', '0e248f305b49f923eba0f4d1e5968499.jpg', 0, 'Jawa Barat', 'Karawang', 'Regular', '0.00', '2019-08-02', '1234578', 'customer'),
(4, 'PT. Angel Internusa', 'isya40@gmail.com', '', 'Jl. MH Thamrin 56', '089635774675', '089635774675', '', '', '6756e0e4720af9d6f6eaf51d6ea3a4c5.png', 0, 'Jakarta', 'Jakarta Pusat', 'Regular', '', '2019-08-02', '12335555', 'supplier'),
(9, 'PT. Burhan Corps', 'burhan@outlook.com', '', 'Jl. Ahmad Yani 56', '089635774675', '1712031466', 'Burhan ', '', 'ec9ff532bce3fb4fe0b7419dabeb5799.png', 0, 'Jawa Timur', 'Surabaya', 'Regular', '', '2019-08-02', '5656655666', 'supplier'),
(17, 'PT. Samsul United', 'companyemail@example.com', '', 'Jl. Malioboro 6', '5555555555', '089635774675', 'Samsul', '', '0b34c009affb48b3695f25f2418d00ee.png', 0, 'Yogyakarta', 'Sleman', 'Regular', '', '2019-08-02', '12335555', 'supplier'),
(18, 'Walk-in Customer', '', '', '', '', '', '', '', 'default.jpg', 0, '', '', 'Walk in', '', '2019-08-05', '', 'customer'),
(19, 'Sisa Saldo Bulan Juni', '', '', '', '', '', '', '', 'default.jpg', 0, '', '', 'Walk in', '', '2020-09-10', '', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `mp_printer`
--

CREATE TABLE `mp_printer` (
  `id` int(11) NOT NULL,
  `printer_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fontsize` int(11) NOT NULL,
  `set_default` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_printer`
--

INSERT INTO `mp_printer` (`id`, `printer_name`, `fontsize`, `set_default`) VALUES
(6, 'Black Copper BC-85AC', 11, 0),
(7, 'XP-58', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_productslist`
--

CREATE TABLE `mp_productslist` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(50) CHARACTER SET latin1 NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `retail` decimal(11,2) NOT NULL,
  `expire` date NOT NULL,
  `manufacturing` date NOT NULL,
  `sideeffects` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `min_stock` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `total_units` int(11) NOT NULL,
  `packsize` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sku` varchar(255) CHARACTER SET latin1 NOT NULL,
  `location` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_sector_id` int(11) NOT NULL,
  `unit_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `net_weight` varchar(50) CHARACTER SET latin1 NOT NULL,
  `whole_sale` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_productslist`
--

INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(1375, 4, 'NEO RHEUMACYL 20 TABLET', '1', 121, '3400.00', '4000.00', '2025-06-10', '2019-07-09', 'No Effects', 'here', '8999908000101', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'cf7dfe436d8da53ed901cd0077f037ed.jpg', 1, 2, 'Pcs', '', '3900.00'),
(1376, 4, 'BODREX TAB LAPIS DUA 20 TABLET', '1', 118, '3000.00', '4500.00', '2022-02-09', '2019-07-01', 'No Effects', 'here', '8999908000200', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '22e4a017c7045b788b878acdb7366f7f.jpg', 1, 2, 'Pcs', '', '4200.00'),
(1377, 4, 'BODREXIN 20 TABLET', '1', 122, '12100.00', '18000.00', '2022-02-09', '2019-07-05', 'No Effects', 'here', '8999908000705', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'd578240bfc4fade6fa823392e2aec689.jpg', 1, 2, 'Pcs', '', '16000.00'),
(1378, 4, 'OBB OBAT BATUK 60ML', '1', 124, '4200.00', '6300.00', '2022-06-08', '2019-07-18', 'No Effects', 'here', '8999908001207', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'e2b7b3d117c2865c0045f69f587f5aee.jpg', 1, 2, 'Pcs', '', '6000.00'),
(1379, 4, 'VIDORAN SYRUP RS JERUK 225ML', '1', 143, '18000.00', '20000.00', '2030-02-05', '2019-07-02', 'No Effects', 'here', '8999908001603	', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '8599bb86dec6eb0f345caf50863e7fba.jpg', 1, 2, 'btl', '1', '19000.00'),
(1380, 4, 'VIDORAN SIRUP RASA JERUK 120', '1', 144, '30000.00', '35000.00', '2024-06-04', '2019-06-06', 'No Effects', 'here', '8999908001801', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'a752c5e235933a2edf72711b7f208fa5.jpg', 1, 2, 'btl', '1', '33000.00'),
(1381, 4, 'VITAMIN B1 IPI 50TAB', '1', 141, '4000.00', '5000.00', '2024-02-05', '2019-06-04', 'No Effects', 'here', '8999908005007', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'dc1255dbaac7427c6a4eb3953cb4631b.jpg', 1, 2, 'Pcs', '1', '4500.00'),
(1382, 4, 'VITAMIN B IPI 50TAB', '1', 144, '4500.00', '5000.00', '2025-10-20', '2019-06-04', 'No Effects', 'here', '8999908005106', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'f36b984ef5549bd1623a1131a8ea34a6.jpg', 1, 2, 'Pcs', '1', '4700.00'),
(1383, 4, 'VITAMIN C IPI 50TAB', '1', 144, '4000.00', '5000.00', '2026-05-18', '2019-01-10', 'No Effects', 'here', '8999908005205', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '682318af3078594b5207072119c6e9aa.jpg', 1, 2, 'Pcs', '1', '4500.00'),
(1384, 4, 'VITAMIN B12 IPI 50TAB', '1', 144, '4000.00', '5000.00', '2025-06-17', '2019-02-13', 'No Effects', 'here', '8999908005304', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '2b7ab88ccf84a1a5a2249f06d9b24f51.jpg', 1, 2, 'Pcs', '1', '4500.00'),
(1385, 4, 'VITAMIN A IPI 50TAB', '1', 144, '4000.00', '5000.00', '2026-09-27', '2019-04-03', 'No Effects', 'here', '8999908005502', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '8437c9fb3420b866ae04370898529fdd.jpg', 1, 2, 'Pcs', '1', '4500.00'),
(1386, 3, 'F &amp; N SODA WATER 330 ML', '1', 144, '5000.00', '6000.00', '2025-05-11', '2019-04-10', 'No Effects', 'here', '8999908006301', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '0123a1f82f5c8f1634629e6209bc0ffa.jpg', 1, 1, 'btl', '1', '5500.00'),
(1387, 3, 'F &amp; N COFFEE CREAM 330ML', '1', 144, '5000.00', '6000.00', '2026-09-20', '2019-03-05', 'No Effects', 'here', '8999908006400', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'a50a80b15959eb343271118ee265c90b.jpg', 1, 1, 'btl', '1', '5500.00'),
(1388, 3, 'F &amp; N ORANGE 330 ML', '1', 144, '5000.00', '6000.00', '2024-05-19', '2019-04-10', 'No Effects', 'here', '8999908006509', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'd47abfc30399185e9134b7e6b02278b5.jpg', 1, 1, 'Pcs', '1', '5500.00'),
(1389, 3, 'F &amp; N STRAWB 330 ML', '1', 144, '5000.00', '6000.00', '2024-09-22', '2019-03-06', 'No Effects', 'here', '8999908006608', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'eed22de8d5737027ed879d47644f1c32.jpg', 1, 1, 'Pcs', '1', '5500.00'),
(1390, 3, 'F &amp; N SARSI 330 ML', '1', 144, '5000.00', '6000.00', '2028-06-13', '2019-03-05', 'No Effects', 'here', '8999908006707', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '01834ff2a9426ae862e8f17fd3977a8f.png', 1, 1, 'Pcs', '1', '5500.00'),
(1391, 1, 'CLAUDIA BEAUTY HIJAU 80G', '1', 132, '2000.00', '3000.00', '2025-05-18', '2019-04-03', 'No Effects', 'here', '8999908009203', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '3831f1aaf282e02c009945212facd022.png', 1, 3, 'Pcs', '1', '2500.00'),
(1392, 1, 'TOTALCARE JUNIOR ORANGE 50G', '1', 142, '15000.00', '17500.00', '2026-06-16', '2018-12-12', 'No Effects', 'here', '8999908034601	', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '8ce2512ee79394f6b55d7e72c3f8ddc9.jpg', 1, 3, 'Pcs', '1', '16500.00'),
(1393, 1, 'MY BABY POWDER 50 GR', '1', 143, '20000.00', '23000.00', '2024-09-22', '2019-04-24', 'No Effects', 'here', '8999908042408', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '037a90ae3336ac42c616cc6f1e61458d.jpg', 1, 3, 'Pcs', '1', '22400.00'),
(1394, 1, 'MY BABY SOAP 100G', '1', 142, '16000.00', '17000.00', '2023-05-21', '2019-03-06', 'No Effects', 'here', '8999908043108	', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '1d9ce7b6c03c8ee1348320c9eaa11814.jpg', 1, 3, 'Pcs', '1', '16500.00'),
(1395, 1, 'CLAUDIA BEAUTY PINK 80G', '1', 143, '2000.00', '3000.00', '2023-09-17', '2019-03-13', 'No Effects', 'here', '8999908009401', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '171f0e86a0717518feef49524874045a.jpg', 1, 3, 'Pcs', '1', '2500.00'),
(1396, 9, 'MARINA MILK CLEANS 100M', '1', 143, '23000.00', '25000.00', '2025-06-10', '2019-03-05', 'No Effects', 'here', '8999908009807', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'fc671295a814b91a2ef3b174046c4705.jpg', 1, 3, 'Pcs', '1', '24000.00'),
(1397, 9, 'NATURAL HONEY HBL DRY 100ML', '1', 144, '15000.00', '18000.00', '2024-05-12', '2019-06-11', 'No Effects', 'here', '8999908029607', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '5d89d8767d9f54b9f1ddb2b7e3936613.jpg', 1, 3, 'Pcs', '1', '16500.00'),
(1398, 9, 'MARINA H&amp;B LOT PINK 100M', '1', 143, '16000.00', '19000.00', '2025-05-11', '2019-04-16', 'No Effects', 'here', '8999908010100', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'be8acfd66d7b3e72fdd55971a786b9c9.jpg', 1, 3, 'Pcs', '1', '17000.00'),
(1399, 9, 'MARINA H&amp;B LOTION ALOE V 100M', '1', 144, '15000.00', '18000.00', '2025-05-11', '2019-04-10', 'No Effects', 'here', '8999908010308', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '1f77015e2e67a02e191303fe17dbc828.jpg', 1, 3, 'Pcs', '1', '17000.00'),
(1400, 11, 'HEMAVITON JRENG BOX 10X4 GR', '1', 144, '4000.00', '5000.00', '2023-05-21', '2019-03-06', 'No Effects', 'here', '8999908045805	', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'e7e59494eefec5801223024b5492173f.jpg', 1, 1, 'bks', '1', '4500.00'),
(1401, 11, 'HEMAVITON JRENG MANGGA 4GR', '1', 144, '3000.00', '5000.00', '2024-05-13', '2019-04-10', 'No Effects', 'here', '8999908217400', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '617cdcedefd37b8eecfb03424cb24e82.jpg', 1, 1, 'bks', '1', '4000.00'),
(1403, 11, 'NEO HORMOVITON GRENG 10X4.2GR', '1', 0, '5000.00', '7000.00', '2022-05-15', '2019-03-13', 'No Effects', 'here', '8999908057907', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '0e9463ada9628acebe1f358d0230743c.jpg', 1, 2, 'bks', '1', '6000.00'),
(1404, 11, 'HEMAVITON JRENG COLA 10X4GR', '1', 0, '6000.00', '8000.00', '2024-05-19', '2019-01-16', 'No Effects', 'here', '8999908206800', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'd7aeb87e322417203c4707405699949d.jpg', 1, 1, 'btl', '1', '7000.00'),
(1405, 5, 'CHARLIE DEO STICK ORIGIN 40G', '1', 0, '22000.00', '24000.00', '2024-05-13', '2019-05-15', 'No Effects', 'here', '8999908031303', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '67d8c72a63b95ddf3a2bcc3eb8e29cdb.jpg', 1, 3, 'btl', '1', '23000.00'),
(1406, 6, 'SOS PEMBERSIH LANTAI APL 1600M', '1', 0, '14000.00', '16000.00', '2024-05-12', '2019-03-14', 'No Effects', 'here', '8999908079602', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'dd07223d5cb209031eeeb3306d4e3da7.jpg', 1, 4, 'Pcs', '1', '15000.00'),
(1407, 6, 'SOS PEMBERSIH LANTAI LMN 1600M', '1', 0, '16000.00', '18000.00', '2026-05-11', '2019-04-17', 'No Effects', 'here', '8999908079701', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'a83d4dab400169a8a7bee7048f94c496.jpg', 1, 4, 'Pcs', '1', '17000.00'),
(1408, 6, 'SOS LANTAI ORANGE 1600 REFIL', '1', -1, '16000.00', '18000.00', '2023-09-18', '2019-03-14', 'No Effects', 'here', '8999908079800', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '54edc041a1500c5f4f3a2e192acd119c.jpg', 1, 4, 'Pcs', '1', '17000.00'),
(1409, 6, 'SOS KARBOL EXTRA STRONG 800ML', '1', 0, '18000.00', '20000.00', '2024-09-22', '2019-04-17', 'No Effects', 'here', '8999908264107', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '26dd26031c93466ba292b2549fedb460.png', 1, 4, 'Pcs', '1', '19000.00'),
(1410, 6, 'SOS KARBOL CLASSIC PINE 1800ML', '1', -1, '18000.00', '21000.00', '2023-05-15', '2019-04-24', 'No Effects', 'here', '8999908264206', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'd51291a23a319a0a25fc131220e278e6.png', 1, 4, 'Pcs', '1', '19000.00'),
(1411, 3, 'HEMAVITON C1000 150ML', '1', -1, '3000.00', '5000.00', '2023-09-18', '2019-04-17', 'No Effects', 'here', '8999908260802', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '5b03d74dadb2764a8a2262f6e7c89363.jpg', 1, 1, 'btl', '1', '4000.00'),
(1412, 3, 'HEMAVITON HEALTH DRINK 150ML', '1', 3, '4000.00', '5000.00', '2023-05-23', '2019-04-10', 'No Effects', 'here', '8999908059109', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '97d2bb83fb5029248a1831e8a814f775.jpg', 1, 1, 'Pcs', '1', '4500.00'),
(1413, 3, 'HEMAVITON E DRINK COLA 330ML', '1', 0, '3000.00', '5000.00', '2023-05-14', '2019-05-08', 'No Effects', 'here', '8999908218902', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '0fb2ea1e5c97198bc58d9b9e5561ddd2.jpg', 1, 1, 'Pcs', '1', '4000.00'),
(1414, 4, 'OSKADON SP 4 TABLET', '1', 0, '2000.00', '4000.00', '2022-05-16', '2019-03-06', 'No Effects', 'here', '8999908043801', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '3446ea5f7b4997d942a04a3d620df200.png', 1, 2, 'Pcs', '1', '3500.00'),
(1415, 4, 'OSKADON O S KEPALA 4TAB', '1', -1, '3000.00', '4500.00', '2024-11-20', '2019-02-20', 'No Effects', 'here', '8999908039309', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', 'f3a31e32e15e2b52f6cff16f2873aafb.jpg', 1, 2, 'Pcs', '1', '4000.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_purchase`
--

CREATE TABLE `mp_purchase` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `payment_type_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` date NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cus_picture` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_purchase`
--

INSERT INTO `mp_purchase` (`id`, `transaction_id`, `date`, `supplier_id`, `store`, `invoice_id`, `description`, `total_amount`, `payment_type_id`, `payment_date`, `cash`, `cus_picture`, `status`) VALUES
(6, 204, '2019-07-27', 4, 1, 5566, 'Pembelian Produk Skincare', '500000.00', 'Cash', '2019-07-27', '500000.00', '6.00', 0),
(7, 205, '2019-07-27', 4, 1, 6655, 'Pembelian Produk Alat Mandi Dengan Hutang', '600000.00', 'Cash', '2019-07-27', '0.00', '7.00', 0),
(8, 222, '2019-08-02', 4, 2, 5656, 'Belanja Kekurangan Produk', '300000.00', 'Cash', '2019-08-02', '300000.00', '643.00', 0),
(9, 223, '2019-08-02', 9, 1, 55555, '', '200000.00', 'Cash', '2019-08-02', '200000.00', '0.00', 0),
(10, 224, '2019-08-02', 17, 2, 66666, 'Pembelian Alat APD', '550000.00', 'Cash', '2019-08-02', '550000.00', '21e3d1fb48120faebbc91abda50fe6bf.PNG', 0),
(11, 225, '2019-08-03', 4, 1, 665566, 'Pembelian Persediaan Barang dengan bayar sebagian sisanya hutang', '650000.00', 'Cash', '2019-08-04', '550000.00', '03397447d9b1a4ff80b260ba4f5523d5.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_region`
--

CREATE TABLE `mp_region` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_region`
--

INSERT INTO `mp_region` (`id`, `name`, `code`) VALUES
(1, 'Jawa', '1001'),
(2, 'Luar Jawa', '1002');

-- --------------------------------------------------------

--
-- Table structure for table `mp_return`
--

CREATE TABLE `mp_return` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `agent` varchar(255) CHARACTER SET latin1 NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `return_amount` decimal(11,2) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `discount_given` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_return_list`
--

CREATE TABLE `mp_return_list` (
  `id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_sales`
--

CREATE TABLE `mp_sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mg` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_sales`
--

INSERT INTO `mp_sales` (`id`, `product_id`, `product_no`, `order_id`, `product_name`, `mg`, `price`, `purchase`, `qty`, `tax`) VALUES
(183, 1375, '', 141, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 3, '0.00'),
(184, 1376, '', 141, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 2, '0.00'),
(185, 1377, '', 141, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 4, '0.00'),
(186, 1378, '', 141, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(187, 1379, '', 142, 'E4USBSPW16-2USB Charger with Switch', 0, '600.00', '402.00', 1, '0.00'),
(188, 1375, '', 142, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(189, 1376, '', 142, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(190, 1377, '', 142, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(191, 1378, '', 142, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(192, 1375, '', 143, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 5, '0.00'),
(193, 1376, '', 143, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 5, '0.00'),
(194, 1375, '', 144, 'NEO RHEUMACYL 20 TABLET', 1, '3900.00', '3400.00', 1, '0.00'),
(195, 1375, '', 144, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(196, 1378, '', 144, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(197, 1376, '', 144, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(198, 1377, '', 144, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(199, 1375, '', 145, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(200, 1376, '', 145, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(201, 1378, '', 145, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(202, 1375, '', 146, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 2, '0.00'),
(203, 1376, '', 146, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 2, '0.00'),
(204, 1377, '', 146, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 2, '0.00'),
(205, 1378, '', 146, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 2, '0.00'),
(206, 1375, '', 147, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(207, 1376, '', 147, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(208, 1377, '', 147, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(209, 1378, '', 147, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(210, 1375, '', 148, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(211, 1375, '', 149, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(212, 1376, '', 149, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(213, 1377, '', 149, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(214, 1378, '', 149, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(215, 1375, '', 150, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(216, 1376, '', 150, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(217, 1377, '', 150, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(218, 1378, '', 150, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(219, 1375, '', 151, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(220, 1376, '', 151, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(221, 1377, '', 151, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(222, 1378, '', 151, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(223, 1375, '', 152, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 2, '0.00'),
(224, 1376, '', 152, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 2, '0.00'),
(225, 1377, '', 152, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 2, '0.00'),
(226, 1378, '', 152, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 2, '0.00'),
(227, 1375, '', 153, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(228, 1376, '', 153, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(229, 1377, '', 153, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(230, 1378, '', 153, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(231, 1375, '', 154, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 1, '0.00'),
(232, 1376, '', 154, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(233, 1377, '', 154, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(234, 1378, '', 154, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(235, 1375, '', 155, 'NEO RHEUMACYL 20 TABLET', 1, '4000.00', '3400.00', 5, '0.00'),
(236, 1376, '', 155, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 5, '0.00'),
(237, 1377, '', 155, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 5, '0.00'),
(238, 1378, '', 155, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 5, '0.00'),
(239, 1376, '', 156, 'BODREX TAB LAPIS DUA 20 TABLET', 1, '4500.00', '3000.00', 1, '0.00'),
(240, 1381, '', 156, 'VITAMIN B1 IPI 50TAB', 1, '5000.00', '4000.00', 1, '0.00'),
(241, 1410, '', 156, 'SOS KARBOL CLASSIC PINE 1800ML', 1, '21000.00', '18000.00', 1, '0.00'),
(242, 1391, '', 156, 'CLAUDIA BEAUTY HIJAU 80G', 1, '3000.00', '2000.00', 1, '0.00'),
(243, 1392, '', 156, 'TOTALCARE JUNIOR ORANGE 50G', 1, '17500.00', '15000.00', 1, '0.00'),
(244, 1394, '', 156, 'MY BABY SOAP 100G', 1, '17000.00', '16000.00', 1, '0.00'),
(245, 1411, '', 156, 'HEMAVITON C1000 150ML', 1, '5000.00', '3000.00', 1, '0.00'),
(246, 1377, '', 157, 'BODREXIN 20 TABLET', 1, '18000.00', '12100.00', 1, '0.00'),
(247, 1381, '', 157, 'VITAMIN B1 IPI 50TAB', 1, '5000.00', '4000.00', 1, '0.00'),
(248, 1391, '', 157, 'CLAUDIA BEAUTY HIJAU 80G', 1, '3000.00', '2000.00', 1, '0.00'),
(249, 1408, '', 157, 'SOS LANTAI ORANGE 1600 REFIL', 1, '18000.00', '16000.00', 1, '0.00'),
(250, 1393, '', 157, 'MY BABY POWDER 50 GR', 1, '23000.00', '20000.00', 1, '0.00'),
(251, 1415, '', 157, 'OSKADON O S KEPALA 4TAB', 1, '4500.00', '3000.00', 1, '0.00'),
(252, 1396, '', 157, 'MARINA MILK CLEANS 100M', 1, '25000.00', '23000.00', 1, '0.00'),
(253, 1378, '', 158, 'OBB OBAT BATUK 60ML', 1, '6300.00', '4200.00', 1, '0.00'),
(254, 1379, '', 158, 'VIDORAN SYRUP RS JERUK 225ML', 1, '20000.00', '18000.00', 1, '0.00'),
(255, 1395, '', 158, 'CLAUDIA BEAUTY PINK 80G', 1, '3000.00', '2000.00', 1, '0.00'),
(256, 1398, '', 158, 'MARINA H&amp;B LOT PINK 100M', 1, '19000.00', '16000.00', 1, '0.00'),
(257, 1381, '', 158, 'VITAMIN B1 IPI 50TAB', 1, '5000.00', '4000.00', 1, '0.00'),
(258, 1412, '', 158, 'HEMAVITON HEALTH DRINK 150ML', 1, '5000.00', '4000.00', 1, '0.00'),
(259, 1394, '', 158, 'MY BABY SOAP 100G', 1, '17000.00', '16000.00', 1, '0.00'),
(260, 1392, '', 158, 'TOTALCARE JUNIOR ORANGE 50G', 1, '17500.00', '15000.00', 1, '0.00'),
(261, 1391, '', 159, 'CLAUDIA BEAUTY HIJAU 80G', 1, '3000.00', '2000.00', 10, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_sessions`
--

CREATE TABLE `mp_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mp_sessions`
--

INSERT INTO `mp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('03cbf24be15bde154edf85ba14cebc206c75c407', '::1', 1599537926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533373932363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('0728721c4f66423cb8089550858066efcec62ad0', '::1', 1599670988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637303938383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('07cdbadca33132f1bd59aa7d22020bf405bcc197', '::1', 1599548496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534383439363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('09c13f50e9e13bace928edf209644d3dfa1300bb', '::1', 1599672308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637323330383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('0c883362c6d6b731be462ecad8d28212516433c9', '::1', 1599666332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636363333323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('0i32si4bmslldva1m92jt72mcn9badjs', '::1', 1564997842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939373732393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('0m31a9doatrio2u7uigilpd2eihh92kb', '::1', 1565015065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031343832343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('0omfvp23bjrl7bec53hm8f34d0mgrahr', '::1', 1565002434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030323137303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('0thqekj9rhjr9lhrudfqmqqhlilli4se', '::1', 1564986502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938363231353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('11b912ba283b73b289fb5a44b77f7f1dcb2796fd', '::1', 1599705925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730353932353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('17fa60e00083db503d627d9bbbb1736212f3fcc2', '127.0.0.1', 1599567852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536373835323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('19152364566abc1142b62915152cb093c52abe62', '127.0.0.1', 1599572441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537323434313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('191fa206bafff19ce9540b89e1f9eb4728d0aa5d', '::1', 1599706250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730363235303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('19f3dceueg8dsr1o5dh3qg0l7phbcrmk', '::1', 1564863002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836323638373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1a63960e1fdd303108b9a222d6df856f3250c417', '::1', 1599546059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534363035393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1b74e9cec86aefa58fff1b5ffc489dad5b4646b1', '127.0.0.1', 1599565910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536353931303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1da67272de3c9d7012700070a503ed5f968d930f', '127.0.0.1', 1599568233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536383233333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1dabac91f73e446227bea192dc507e39a5ea7210', '::1', 1599579051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537393033333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1e934shmvt9l2dd8pn4ddovo6t2ga5c1', '::1', 1564986769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938363532383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1embka95soo9qgb2pp5dohoimjoj2q26', '::1', 1565002045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030313830393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1g7be7vgjrq1jl1omd40ft95qr27lghj', '::1', 1564851954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835313739343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('1mpu0oeg61t2g8j9eqoqpcb36og0o6m4', '::1', 1565013268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031333035363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('22b297cd256e3640762734546aa72514b5035157', '127.0.0.1', 1599552632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535323633323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('276e3ca85fee2e83ef3b750e3ede1b44f69b41a3', '127.0.0.1', 1599567036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536373033363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('28e47mtvo1c1qm1klvald0laqeo9f158', '::1', 1564850401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835303132333b),
('2a45c5b2ad8fe77a9b414d574e28e5b152c0a67d', '127.0.0.1', 1599557385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535373338353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('2b8642b097f3597aa0833e27257494071100b30d', '::1', 1599665786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636353738363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('2cb721161a01464baee1bc51e1354639495af408', '::1', 1599545650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534353635303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('2i76lvshpfr9diq4klqjmbrd05jp607q', '::1', 1565014085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031333739383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('2ji6jlj7a8c5r363jcmju77hrvtk611q', '::1', 1564860949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836303639343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('2kebhke90m9h9ip14s7f4k8mtg0482bi', '::1', 1565004419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030343231363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('2vquu475troclh9o2g5qecki5451tj6u', '::1', 1564887221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838373230333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('362msffr6rif527fgta01rlh5dkl75mp', '::1', 1564855831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835353639303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('3720cd0c4c738e5fbefeff6ae99ddcb53a6fe852', '127.0.0.1', 1596113075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363131333037353b757365725f69647c613a323a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a393a225375622041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('38869c6c0df79ccbf41a744dff92a5abe8028c51', '::1', 1599704884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730343838343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('3cdsr67kc3ug30n50hcc4etrpf0s2i6i', '::1', 1565014735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031343437373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('40u0e0bnu15lg1dqaumf4n9t0taruruc', '::1', 1564890159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838393836333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('448a9a0267a0bd47b4f5a89b14f9d7231799be4d', '127.0.0.1', 1599563946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536333934363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('45b3ba4a960d1bee7f42e7f498e37c80b17dbe22', '127.0.0.1', 1599565200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536353230303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('48590f31fc5b6401ab3eb6756b9e0773da40b493', '127.0.0.1', 1599563297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536333239373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('4b4017e07129bf56ef8d0eac34c5ba200324ffb6', '::1', 1599668467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636383436373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('4eh03r9ht6fmje1ltjeukanmr9udgfeg', '::1', 1564988725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938383731373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('4fdvh8s5qmf9akis3jah0nbef5b80igf', '::1', 1564999582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939393331303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('4nkuev7tmv51ag97kk1ppd6j2thl16q2', '::1', 1564849537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343834393239393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('50e5db0143d7902ffd4e3421f0192612f7f32a0b', '127.0.0.1', 1596113408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363131333339383b757365725f69647c613a323a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a393a225375622041646d696e223b7d),
('517553d2bcd076a3e01bc99cbd988e45fe497be1', '127.0.0.1', 1599570707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537303730373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('552b6daf9fc3d4ee1abad36e195dda575d12efed', '::1', 1599666658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636363635383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('57ed08a3b3066ebb6264a6456df0c250b1e3009e', '::1', 1599722002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732323030323b7374617475737c613a323a7b733a333a226d7367223b733a3132373a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d6578636c616d6174696f6e2d747269616e676c652220617269612d68696464656e3d2274727565223e3c2f693e20456d61696c2061746175204b6174612053616e64692079616e6720616e6461206d6173756b6b616e2073616c6168223b733a353a22616c657274223b733a363a2264616e676572223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('57f17bc78dc5b45dfa9bfe6b6bbfca96fa60942a', '::1', 1599671292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637313239323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('58d1d50c8eb9002cc9a5cc998da469d343b08933', '127.0.0.1', 1599566216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536363231363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('5a5b78234118e297f348fadeb99e22248b180174', '127.0.0.1', 1596112726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363131323732363b),
('5bd54f9afd894946e80efa02d643f62c0b3bdeb8', '127.0.0.1', 1599568654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536383635343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('5c7b966e7877f1ed93833cd821271cdb7742c04f', '127.0.0.1', 1599560063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536303036333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('5f3e1f08633f9a5d02274613490af832513de491', '127.0.0.1', 1599556971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535363937313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('5g8g963oe4o3k0i0n7fjdef2ujeaacaj', '::1', 1564853709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835333434383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('5urbk1cog0sksifcp9pnkjqp5ukq43sv', '::1', 1564898535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839383433343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('60a7a3b968e93016eb5f89be83e00b23603437c1', '::1', 1599706350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730363235303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('64d3b307d8a8d362259763755f130cd12174ea90', '::1', 1599546401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534363430313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('656ruc15hp61u8dkulcp2edighal6e8s', '::1', 1565005694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030353433383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('657899dbc6558a001ff49a522d2f2db8a82f5f1c', '::1', 1599673246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637333033353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6977b60ris02alrquq7b00h7pqfkrlj8', '::1', 1564853756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835333735353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6bb0c2d12d4c12884085eae25c6e48021740de4f', '::1', 1599673035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637333033353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6c8218906b13cb635e40254914f608aaa17bf822', '::1', 1599723115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732333131353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6cenlo2nji84pc3hca877fp0nm14ok96', '::1', 1564854808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835343534303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6cr0f92sl3dv9pfskv247dinkuas3ksv', '::1', 1564861447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836313139343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6dedc0bb5c26a88b3342aa4d5bf9636fbb0c988d', '::1', 1599723860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732333735363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6e2867743615d5da064dc3da3689e68f6f98ec08', '127.0.0.1', 1599556613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535363631333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6ii74ijdurlrhlphgr38lpa9qeq29vpr', '::1', 1564997212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939373138393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('6kdkufso3oiv36e0arf88gcg9apufrjl', '::1', 1564859823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835393636373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('70bab3e0c98287a84d13c9b063b81292c7da56ac', '127.0.0.1', 1599567475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536373437353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('70c5b65fc33dff775f4b17c877118b54efc9696e', '::1', 1599721673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732313637333b),
('71ff9cdc006fb15b1a2a920c73d4932c0dd01e1e', '::1', 1599538347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533383333343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('725133ea402580d5f54955307954e627b6ecc064', '::1', 1599536848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533363834383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('74359e72f19ec630bb7f0d17a96498cd9b2b8c51', '::1', 1599706799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730363739393b),
('76580fab60e2a7b0e9be7c4eb9fbc3784188af43', '::1', 1599723756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732333735363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('76tft6smq1b93euvani2nf33gdl6tv0k', '::1', 1564891335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839313037313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('773a1c2de63a2ba2b0bb056004392f118d9441bb', '::1', 1599549000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534393030303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('7a9i54bbshgsrur8qs9iu38b4cm0285d', '::1', 1564892343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839323034363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('7iop094dpbb51i7911hholibmuhr7qnj', '::1', 1564889075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838383838383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('7rsul2lvbpbbn5103m0jk0c3bithej94', '::1', 1564850516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835303530303b),
('806c376dae4f92d6b1fbd5e98ef44d903eed610b', '::1', 1599581445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393538313433333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('822996fbe1595a12f9801ddeacafef028ff18400', '::1', 1599546847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534363834363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('8304c760a9b292cd9fdd7703e1a94716ba61a9bd', '127.0.0.1', 1599561019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536313031393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('8ajerccujaelir976h1cim5oi8b24p4v', '::1', 1565015934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031353838333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('8cd649952b49c746a27f22c85e20bf1cae6d8b6e', '127.0.0.1', 1599573090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537333039303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('8kr5kiqksfp4os9ntit9e96o6tm0cpl1', '::1', 1564899933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839393636353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('8vodl278lpqate4k6dajjk394phe59tl', '::1', 1564862597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836323337323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('904b886340c22b7f19439bf8f1ede6b11076889a', '::1', 1599671907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637313930373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('91fgljrbvlii2840mp8o5lq6a86miki6', '::1', 1565006074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030353738303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a38353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565222f3e2042616e6b2045646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('9211abbecf7195d339ff8781b686553f89636aa5', '::1', 1599705529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730353532393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('93c5c0c1a4f769134918aa549f700cd33192b4ed', '127.0.0.1', 1599560367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536303336373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('94i77vf7jm4svn7lr2f22sr2199pnpeu', '::1', 1565015457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031353139333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('95bf091df4a5cb194ea24c33d4306b53e9d65f4e', '127.0.0.1', 1599551918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535313931383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('965ec48880205265440d75721b839ec78442f3ac', '::1', 1599579033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537393033333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('969e084f41cb123c3faff59d7df7fa18e61eaeca', '::1', 1599705201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730353230313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('9a132b7e9621bba8a783bd8f4e211db73d2e7ee0', '::1', 1599672658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637323635383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('9c4ae08834f4d11575af64c4a237cbafca564f8c', '127.0.0.1', 1599562971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536323937313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('9c7ddbbbd70671eabf75172137f255c8baa45952', '127.0.0.1', 1596103772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363130333737323b),
('9d5b1207f6903723d1dd3dd796017e2b7c943c7b', '127.0.0.1', 1599557839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535373833393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('9d8b9219cea31121865553d5f97ca9f783650676', '127.0.0.1', 1599559148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535393134383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a186059e7c0f1e278f2493e62beb8576518daf2b', '::1', 1599578612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537383631323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a1e8f9f0365594188d66a6569f8adfa337d51fa2', '::1', 1599669158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636393135383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a46320706d812e0e043260ad6efda26846e8cb1c', '127.0.0.1', 1599561842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536313834323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a5ahl489fefhds2bbs5b9a3a4492fvst', '::1', 1564898961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839383735363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a5c1956f2b79d8137ef07b83800ae4a6b9aa10d2', '::1', 1599707950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730373935303b),
('a639q8cq8rmgliqaba1o90sg20tqff64', '::1', 1565000260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030303034323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a6fea7780a3ed5fffff7fe3262234e8d1b3cd6cf', '::1', 1599667645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636373634353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a6r67qdidf5ufcikp3r81hhlcjf5rpp6', '::1', 1564986078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938353839363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a97ebc1a4a5c19feefe2ca9a839daf5b3934dfc4', '::1', 1599581433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393538313433333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('aanqsnbhn4km7f5p552ii2i9rc98e4tt', '::1', 1564856599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835363537313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ab1a8f665e6ecdc59ee9c3504f262af19c9425a2', '127.0.0.1', 1599558214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535383231343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ab6dbece45e5e310c44f642a213620c4f41fe59e', '::1', 1599536406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533363430363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('acca1679210aa512acab7c505f5c386cc6382cec', '127.0.0.1', 1599571018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537313031383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('aec84d55e65962e1e9452cf1aa1e503b5ef4094b', '127.0.0.1', 1599571745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537313734353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('aefd18688fd1d4c3feb584c7b1ffefb5fbd2519d', '::1', 1599708083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730373935303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('afb77e75af1e7d4c269c8241cdf1f35e7db0cc01', '::1', 1599667328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636373332383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('alpv1bnjfsq78iqt64mc97hsjab1nivc', '::1', 1564851199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835313136313b7374617475737c613a323a7b733a333a226d7367223b733a3130383a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d6578636c616d6174696f6e2d747269616e676c652220617269612d68696464656e3d2274727565223e3c2f693e20496e636f727265637420456d61696c206f722050617373776f7264223b733a353a22616c657274223b733a363a2264616e676572223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('ap5qplq667tcfs8ovbtph3dvb0dekrn4', '::1', 1564900465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343930303336373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ap61mb9g3uu5jockv0sehn586bh9n1t3', '::1', 1564849113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343834383833353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('avvhespk9k4nmvfcsooomtl73p6lhgg9', '::1', 1565001270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030313033383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('b0ecacab8e812044acc3cbd7cc6c3f75ce6fc011', '127.0.0.1', 1599565504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536353530343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('b2762b909b5c6c46c77968cf742ac6b9c74cb46d', '::1', 1599536061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533363036313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('b55c84814606eb2130aadbf6b6a7badb8f2d7ad8', '127.0.0.1', 1599564273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536343237333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('b7d11b06ff4476f669be9ac16fbcb7ccf6c2375a', '127.0.0.1', 1599573283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537333039303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('b9epndlgg6lbrhjbu5hjt2sgij527jdo', '::1', 1564857626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835373436323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ba56392b6391d24c64f2fd22c40d8e4eb99c7832', '127.0.0.1', 1596113398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363131333339383b757365725f69647c613a323a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a393a225375622041646d696e223b7d),
('baad941a4f3f772cd3bd94281a33f97cca848e06', '127.0.0.1', 1599552328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535323332383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('bb8812f8d384584a61524692016a1e5eefd63b5f', '::1', 1599722774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732323737343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('be72r37hftgrnbnvpchtifcfl6fvfl8m', '::1', 1564857254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835373037303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('bfdcfe29c37dcb0d07af699c0977376ab6b8580f', '::1', 1599668111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636383131313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('btinm5ltu1f7v87vjvls29ard1q7fg6t', '::1', 1564999080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939383830323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('c0a17514692774721d2eb7676572791645e42aad', '::1', 1599549182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534393030303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('c0afv570t5u39cace0uergr8n09bls1h', '::1', 1564987305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938373132333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('c0f85c8acc642b9ed8ea433aa69e280978b04218', '127.0.0.1', 1599560713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536303731333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('c4899cdbf04e57a0d8426c484ebdf16e82ae2989', '::1', 1599671601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393637313630313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('c5jq5qdfjtk5cne131h152ua4d59r09k', '::1', 1565015838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031353536363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('c6a493465f4135dc59a59eaa0a0603535beefee6', '::1', 1599535647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533353634373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('d2c44dd157736ab2083ecebe1185360f171fe9d0', '127.0.0.1', 1596104217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363130343231373b),
('d569c6363090eba22414ee2026cef103312c8cdc', '127.0.0.1', 1599572115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537323131353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('d8007558c517f9a487092680c5cb661654ce32c7', '::1', 1599537625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533373632353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('d82ae68c15d54bb1bd0a35ec1bc29cfa6d727e5a', '127.0.0.1', 1599562378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536323337383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('d9dmaft3bn2uq8l4bgdti81fdktgoi56', '::1', 1564859656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835393336363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('db08cd6c79f6e7dc260c4482668e9f5425a29cac', '::1', 1599546846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534363834363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('dd4ffce418e92484925854427ae0975edf3aad2c', '127.0.0.1', 1599558681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393535383638313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ddce4cb663f89cacf9f389b62ea6e2ebb6570107', '127.0.0.1', 1599571353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393537313335333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('dggvdef7umvvm5fp18jvdi8fu1mbebji', '::1', 1564888461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838383136383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a3131303a223c69207374796c653d22636f6c6f723a236330302220636c6173733d2266612066612d6578636c616d6174696f6e2d747269616e676c652220617269612d68696464656e3d2274727565223e3c2f693e204572726f7220626172636f646520646f6573206e6f7420657869737473223b733a353a22616c657274223b733a363a2264616e676572223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('e5m4g0r9vj9vss82c6o9b7mckeqreu4i', '::1', 1564988307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938383330333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ea646737968d6bb063f45256503ef607cb8bb64f', '::1', 1599669547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393636393534373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('eb6qjud0tikh8v46mee4joivcqfuo5di', '::1', 1564852940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835323737363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ec11ef275270a72bf941a2d810192007e094ebd4', '::1', 1599707320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730373332303b),
('f066562bb3de95cd8e22d25decd81bd8a71288d2', '::1', 1599547740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534373734303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('f3309dc2e9b2ead74e5f9001a840699bd7611cfc', '::1', 1599538334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533383333343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('f5f6af4614e9390438882f8d75dd5958330f0f70', '::1', 1599537232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533373233323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('f63907cc9592a666efb83df6a90b19e9d10e14de', '::1', 1599722356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393732323335363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('f7a2bd99bddd8334bc31b1872034c34d088c7208', '::1', 1599707643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393730373634333b),
('f9f4c75aae79c6ace8787807cf4d98ccdd91d1fb', '127.0.0.1', 1599561412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536313431323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('fa07657cb5ee610f85271fad5e69a86b04f913e8', '127.0.0.1', 1596112414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363131323431343b7374617475737c613a323a7b733a333a226d7367223b733a3130333a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d6578636c616d6174696f6e2d747269616e676c652220617269612d68696464656e3d2274727565223e3c2f693e20456e74657220456d61696c20262050617373776f7264223b733a353a22616c657274223b733a363a2264616e676572223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226e6577223b7d),
('fbd5904a789e3229eb32384063462424fea0b87d', '::1', 1599547223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393534373232333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('fcb864cc3c0d3c5615c22db851fbe0b5502f5953', '::1', 1599537232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393533373233323b),
('fdb4291dbb671772b3b79861c1654722a0ade85d', '127.0.0.1', 1599566524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393536363532343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('fpe7v9hecu4o624s83hdsp05lbrpn6vo', '::1', 1564862081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836313834313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('g4sirglu5hepm7259fm6ksdguc5fs19c', '::1', 1564899312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839393131343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ga9q1sv1ch0hdrnn5v09mg91pn4ej5hi', '::1', 1564860300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836303037333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('h6ob07ili4vsmr9t84o5cttkvqg77tke', '::1', 1565006380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030363038343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('h9h2jic8uh9h0eakn3emjph6qm55s2hk', '::1', 1564858594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835383539343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('inpooj6978viq5vhdlfro2ip0o7okjg2', '::1', 1564887904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838373832363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ios28kig73pgbhhvin23un20s0pn7p7f', '::1', 1564860672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836303339333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ip3foh3gdrab3h1ro4qu73so8vi4br15', '::1', 1565001015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030303733303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('iv8he54koe93qurtt5lbkfkdg01q3mfi', '::1', 1565002776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030323533383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('j82e9qn8623cguhf0pc6jkcis1drsmvt', '::1', 1564861523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836313532333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('k0qtnmok0o582jjkfo1okac3omcc5tt2', '::1', 1564885976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838353736373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ki5beibgpskhk2hthr7qukgiu79i55ic', '::1', 1564851787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835313439313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('l1t81vesruvkatd9subcmgqbq0hkhtas', '::1', 1564849871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343834393730333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('lcod4gka8l93bfknpn85o9452k0ao0he', '::1', 1564856549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835363236353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('lln9fiamg69cqrd2vqkoj8hdcmoktbpl', '::1', 1564892352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839323334383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('lrkru3ovpo0b4ve5n14qiipkeinpmq47', '::1', 1565004606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030343532333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('mbr5ouqo9per5bu5vo0qkjkipulnc043', '::1', 1564852504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835323337363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d);
INSERT INTO `mp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('nefeo9aq5uq8ujb1p45p9dp5vh7p682o', '::1', 1564999970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939393734313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('ok3h0t8bii0ro1jqi0olujkjit4c4be0', '::1', 1564858289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835383234333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('p1ddqqho2r7mcke8kt6jigekdavst283', '::1', 1565013621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031333433373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2043726561746564207375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('p5ku30bos05p55pn75e612gumd0jpgj5', '::1', 1564863179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836333038323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('pe7f1hovc7s39jch8ask0me9fjueur0s', '::1', 1565006439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030363338363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('pn6s5dqk2m6pul680cvtmgqnohl5e6hv', '::1', 1564985533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938353339393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('rd1pnrn8tescjv3vda3vbvqievf14d8e', '::1', 1564853296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835333134343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('rnra6k5vkqccvtjc6407ptc456f29mub', '::1', 1565001697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030313432383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('rs1ho9h1svn3cesnb7gpho0a1i5i4nql', '::1', 1564988204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938373939393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('rvchsna65dplgf22fh7h7780qk22oc24', '::1', 1564885663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838353432343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('s6kvncv86d588f426s9kli3vjfm52a3l', '::1', 1564886900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838363930303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('sbk71hhejoifdk2hhrr11h1cldck8fu2', '::1', 1564889859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838393536313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('spgmamq01gaif5f9vkv2ftshehv4e3s8', '::1', 1564886332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343838363134363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('thc55ai9a0vn4t2dmqe4ljtktom43dda', '::1', 1564891609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839313430373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('tnq3s2qnrcaofssom897mj3s30ahm3k4', '::1', 1565014409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031343131303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('uplsmf1vite6cfa0ngbe9vg3jd80s22t', '::1', 1565002848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030323834383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('v7sjmfo9dec2c73l9f792uc5r0lk7utj', '::1', 1564857450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835373239373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('vbku7uq1hpalk4egkih3s0daj8351mko', '::1', 1564857891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835373831333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('vcosqqokcchveiffnmb8d6jogmkfn0jp', '::1', 1564890911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343839303633313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('vo1hse8jahahpln5dsjcsjd9qqbflel4', '::1', 1565000629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030303336313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('vtlg5925sdvmmo4rkctdtaj4jrv5s3sh', '::1', 1564854434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343835343139383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stock`
--

CREATE TABLE `mp_stock` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `manufacturing` date NOT NULL,
  `expiry` date NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `added` varchar(255) CHARACTER SET latin1 NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `selling` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_stock`
--

INSERT INTO `mp_stock` (`id`, `mid`, `manufacturing`, `expiry`, `qty`, `description`, `date`, `added`, `purchase`, `selling`) VALUES
(1, 0, '2018-07-05', '2020-01-01', 0, '', '2018-07-05', 'Md. Habibur Rahman', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `code`, `address`) VALUES
(1, 'Toko Kelontong', '101', 'Jl. Apa saja asal - Bareng 56'),
(2, 'Toko Aing Mart', '1005', 'Jl. Jendral Sudirman no. 56 Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `mp_sub_entry`
--

CREATE TABLE `mp_sub_entry` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `accounthead` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_sub_entry`
--

INSERT INTO `mp_sub_entry` (`id`, `parent_id`, `accounthead`, `amount`, `type`) VALUES
(413, 198, 2, '500000000.00', 0),
(414, 198, 7, '500000000.00', 1),
(415, 199, 18, '20000000.00', 0),
(416, 199, 2, '20000000.00', 1),
(417, 200, 11, '15000000.00', 0),
(418, 200, 2, '15000000.00', 1),
(419, 201, 2, '10000000.00', 0),
(420, 201, 3, '10000000.00', 1),
(421, 202, 1, '10000000.00', 0),
(422, 202, 2, '10000000.00', 1),
(423, 203, 2, '99300.00', 0),
(424, 203, 3, '99300.00', 1),
(425, 204, 3, '500000.00', 0),
(426, 204, 2, '500000.00', 1),
(427, 205, 3, '600000.00', 0),
(428, 205, 2, '0.00', 1),
(429, 205, 5, '600000.00', 1),
(430, 206, 5, '200000.00', 0),
(431, 206, 2, '200000.00', 1),
(432, 207, 2, '32800.00', 0),
(433, 207, 3, '32800.00', 1),
(434, 208, 4, '42500.00', 0),
(435, 208, 3, '42500.00', 1),
(436, 209, 2, '42500.00', 0),
(437, 209, 4, '42500.00', 1),
(438, 210, 2, '32800.00', 0),
(439, 210, 3, '32800.00', 1),
(440, 211, 4, '14800.00', 0),
(441, 211, 3, '14800.00', 1),
(442, 212, 4, '65600.00', 0),
(443, 212, 3, '65600.00', 1),
(444, 213, 2, '32800.00', 0),
(445, 213, 3, '32800.00', 1),
(446, 214, 2, '4000.00', 0),
(447, 214, 3, '4000.00', 1),
(448, 215, 2, '32800.00', 0),
(449, 215, 3, '32800.00', 1),
(450, 216, 2, '32800.00', 0),
(451, 216, 3, '32800.00', 1),
(452, 217, 2, '32800.00', 0),
(453, 217, 3, '32800.00', 1),
(454, 218, 2, '65600.00', 0),
(455, 218, 3, '65600.00', 1),
(456, 219, 2, '32800.00', 0),
(457, 219, 3, '32800.00', 1),
(458, 220, 2, '32300.00', 0),
(459, 220, 3, '32300.00', 1),
(460, 221, 2, '164000.00', 0),
(461, 221, 3, '164000.00', 1),
(462, 222, 21, '300000.00', 0),
(463, 222, 2, '300000.00', 1),
(464, 223, 21, '200000.00', 0),
(465, 223, 2, '200000.00', 1),
(466, 224, 21, '550000.00', 0),
(467, 224, 2, '550000.00', 1),
(468, 225, 21, '650000.00', 0),
(469, 225, 2, '550000.00', 1),
(470, 225, 5, '100000.00', 1),
(471, 226, 14, '230000.00', 0),
(472, 226, 2, '230000.00', 1),
(473, 227, 16, '1000000.00', 0),
(474, 227, 2, '1000000.00', 1),
(475, 228, 2, '73000.00', 0),
(476, 228, 3, '73000.00', 1),
(477, 229, 2, '96500.00', 0),
(478, 229, 3, '96500.00', 1),
(479, 230, 2, '92800.00', 0),
(480, 230, 3, '92800.00', 1),
(481, 231, 2, '30000.00', 0),
(482, 231, 3, '30000.00', 1),
(483, 232, 2, '125000.00', 0),
(484, 232, 4, '125000.00', 1),
(485, 233, 19, '1.00', 0),
(486, 233, 2, '1.00', 1),
(489, 235, 2, '1.00', 0),
(490, 235, 4, '1.00', 1),
(491, 236, 2, '2.00', 0),
(492, 236, 4, '2.00', 1),
(493, 237, 2, '10000.00', 0),
(494, 237, 4, '10000.00', 1),
(495, 238, 2, '11111.00', 0),
(496, 238, 4, '11111.00', 1),
(497, 239, 2, '286550.00', 0),
(498, 239, 4, '286550.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_supplier_payments`
--

CREATE TABLE `mp_supplier_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_supplier_payments`
--

INSERT INTO `mp_supplier_payments` (`id`, `transaction_id`, `supplier_id`, `amount`, `method`, `date`, `description`, `agentname`, `mode`) VALUES
(4, 206, 4, '200000.00', 'Cash', '2019-07-27', 'Cicilan hutang purchase dari 600000', 'Supper Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_supply`
--

CREATE TABLE `mp_supply` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `region_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `expense` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_temp_barcoder_invoice`
--

CREATE TABLE `mp_temp_barcoder_invoice` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `agentid` int(11) NOT NULL,
  `source` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_todolist`
--

CREATE TABLE `mp_todolist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `addedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_town`
--

CREATE TABLE `mp_town` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `region` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_town`
--

INSERT INTO `mp_town` (`id`, `name`, `region`, `status`) VALUES
(1, 'Jakarta', 'Jawa', 0),
(2, 'Bali', 'Luar Jawa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_units`
--

CREATE TABLE `mp_units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `symbol` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_units`
--

INSERT INTO `mp_units` (`id`, `name`, `symbol`) VALUES
(1, 'Pieces', 'Pcs'),
(2, 'Botol', 'btl'),
(3, 'Paket', 'pkt'),
(4, 'Sacet', 'sct'),
(5, 'Bungkus', 'bks'),
(6, 'Dus', 'Dus');

-- --------------------------------------------------------

--
-- Table structure for table `mp_users`
--

CREATE TABLE `mp_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_contact_1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_contact_2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL,
  `user_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_date` date NOT NULL,
  `agentname` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_users`
--

INSERT INTO `mp_users` (`id`, `user_name`, `user_email`, `user_address`, `user_contact_1`, `user_contact_2`, `cus_picture`, `status`, `user_description`, `user_password`, `user_date`, `agentname`) VALUES
(1, 'Supper Admin', 'admin@ky.org', 'Jl . Bareng Jadian Kaga', '01745519614', '01715932630', '86ed815b3c9225ba422bcdad8cb8e3d8.png', 0, 'admin', '4b8fc7f9835749c1e0110ea7c4b3de88', '2017-08-23', 'Supper Admin'),
(2, 'Sub Admin', 'admin@gmail.com', 'dfgdsf', '5678686', '5686', 'default.jpg', 0, 'User', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2018-06-01', 'Md. Habibur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `mp_vehicle`
--

CREATE TABLE `mp_vehicle` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `number` varchar(255) CHARACTER SET latin1 NOT NULL,
  `vehicle_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `chase_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `engine_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_vehicle`
--

INSERT INTO `mp_vehicle` (`id`, `name`, `number`, `vehicle_id`, `chase_no`, `engine_no`, `date`, `status`) VALUES
(1, 'PIkup', '101', '1123465', '123456', '1452', '2018-05-28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mp_balance`
--
ALTER TABLE `mp_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_banks`
--
ALTER TABLE `mp_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indexes for table `mp_barcode`
--
ALTER TABLE `mp_barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_brand`
--
ALTER TABLE `mp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category`
--
ALTER TABLE `mp_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `mp_drivers`
--
ALTER TABLE `mp_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `head_id` (`head_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payee_id` (`payee_id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_head`
--
ALTER TABLE `mp_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `prescription_id` (`prescription_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_menu`
--
ALTER TABLE `mp_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `menu_Id` (`menu_Id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `mp_payee`
--
ALTER TABLE `mp_payee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_printer`
--
ALTER TABLE `mp_printer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `brand_sector_id` (`brand_sector_id`),
  ADD KEY `unit_type` (`unit_type`);

--
-- Indexes for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `mp_region`
--
ALTER TABLE `mp_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_return`
--
ALTER TABLE `mp_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`return_id`),
  ADD KEY `medicine_id` (`product_id`);

--
-- Indexes for table `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `mp_sessions`
--
ALTER TABLE `mp_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `mp_stock`
--
ALTER TABLE `mp_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`parent_id`),
  ADD KEY `accounthead` (`accounthead`),
  ADD KEY `amount` (`amount`);

--
-- Indexes for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `mp_supply`
--
ALTER TABLE `mp_supply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `mp_town`
--
ALTER TABLE `mp_town`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_units`
--
ALTER TABLE `mp_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symbol` (`symbol`);

--
-- Indexes for table `mp_users`
--
ALTER TABLE `mp_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_name_2` (`user_name`);

--
-- Indexes for table `mp_vehicle`
--
ALTER TABLE `mp_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mp_balance`
--
ALTER TABLE `mp_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_banks`
--
ALTER TABLE `mp_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_barcode`
--
ALTER TABLE `mp_barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mp_brand`
--
ALTER TABLE `mp_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mp_category`
--
ALTER TABLE `mp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mp_drivers`
--
ALTER TABLE `mp_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_expense`
--
ALTER TABLE `mp_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `mp_head`
--
ALTER TABLE `mp_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_menu`
--
ALTER TABLE `mp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `mp_payee`
--
ALTER TABLE `mp_payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mp_printer`
--
ALTER TABLE `mp_printer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mp_region`
--
ALTER TABLE `mp_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_return`
--
ALTER TABLE `mp_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_sales`
--
ALTER TABLE `mp_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `mp_stock`
--
ALTER TABLE `mp_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mp_supply`
--
ALTER TABLE `mp_supply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_town`
--
ALTER TABLE `mp_town`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_units`
--
ALTER TABLE `mp_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mp_users`
--
ALTER TABLE `mp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_vehicle`
--
ALTER TABLE `mp_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  ADD CONSTRAINT `bank_opening_transac` FOREIGN KEY (`bank_id`) REFERENCES `mp_banks` (`id`);

--
-- Constraints for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD CONSTRAINT `bankid_bank_fk` FOREIGN KEY (`bank_id`) REFERENCES `mp_banks` (`id`),
  ADD CONSTRAINT `payee_bank_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `transaction_general_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD CONSTRAINT `customer_trans_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `payee_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `mp_payee` (`id`);

--
-- Constraints for table `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD CONSTRAINT `general_expense_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `head_expense_fk` FOREIGN KEY (`head_id`) REFERENCES `mp_head` (`id`),
  ADD CONSTRAINT `payee_expense_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`);

--
-- Constraints for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD CONSTRAINT `invoice_payee_fk` FOREIGN KEY (`cus_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `invoice_transaction_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD CONSTRAINT `roles_agentid_fk` FOREIGN KEY (`agentid`) REFERENCES `mp_users` (`id`),
  ADD CONSTRAINT `roles_menuid_fk` FOREIGN KEY (`menu_Id`) REFERENCES `mp_menu` (`id`),
  ADD CONSTRAINT `roles_user_fk` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
