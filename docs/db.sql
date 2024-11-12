-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 07:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigdealpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_admin`
--

CREATE TABLE `ai_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `email_id` varchar(70) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` enum('A','M','E','S') NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` int(1) NOT NULL,
  `country` varchar(40) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `avatar` varchar(40) DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_admin`
--

INSERT INTO `ai_admin` (`id`, `username`, `first_name`, `last_name`, `email_id`, `image`, `role`, `password`, `status`, `country`, `phone_no`, `avatar`, `updated`) VALUES
(1, 'admin', 'Bigdeal Pro', '', 'superadmin@gmail.com', 'male.png', 'A', '56bf377cae026633fe10d7401f40dbb4', 1, 'India', '9334628120', '1727070701_42b2a0c6b2781407c645.png', '2024-09-23 05:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `ai_airdrop`
--

CREATE TABLE `ai_airdrop` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `level_id` int(1) NOT NULL DEFAULT 1,
  `amount` float(10,2) DEFAULT NULL,
  `start_dt` date DEFAULT NULL,
  `end_dt` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_airdrop_check`
--

CREATE TABLE `ai_airdrop_check` (
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_announcement`
--

CREATE TABLE `ai_announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_announcement`
--

INSERT INTO `ai_announcement` (`id`, `title`, `description`, `image`) VALUES
(3, 'Bonanza Offer', '<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:https://www.digitalpowerworld.com/a16ddf26-7861-4449-9112-b4c9192e9ef8\" width=\"739\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `ai_cashback`
--

CREATE TABLE `ai_cashback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` float(10,2) NOT NULL,
  `pay_date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ai_cashback`
--

INSERT INTO `ai_cashback` (`id`, `user_id`, `order_id`, `amount`, `pay_date`, `status`, `updated`) VALUES
(1, 405571, 28, 300.00, '2024-10-10', 0, NULL),
(2, 405571, 28, 300.00, '2024-10-25', 0, NULL),
(3, 405571, 28, 300.00, '2024-11-09', 0, NULL),
(4, 405571, 28, 300.00, '2024-11-24', 0, NULL),
(5, 463630, 29, 300.00, '2024-10-10', 0, NULL),
(6, 463630, 29, 300.00, '2024-10-25', 0, NULL),
(7, 463630, 29, 300.00, '2024-11-09', 0, NULL),
(8, 463630, 29, 300.00, '2024-11-24', 0, NULL),
(9, 650600, 30, 300.00, '2024-10-10', 0, NULL),
(10, 650600, 30, 300.00, '2024-10-25', 0, NULL),
(11, 650600, 30, 300.00, '2024-11-09', 0, NULL),
(12, 650600, 30, 300.00, '2024-11-24', 0, NULL),
(13, 612955, 31, 300.00, '2024-10-11', 0, NULL),
(14, 612955, 31, 300.00, '2024-10-26', 0, NULL),
(15, 612955, 31, 300.00, '2024-11-10', 0, NULL),
(16, 612955, 31, 300.00, '2024-11-25', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_cashback_orders`
--

CREATE TABLE `ai_cashback_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `bill_amount` float(10,2) DEFAULT NULL,
  `cashback` float(10,2) NOT NULL,
  `screenshot` varchar(100) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_categories`
--

CREATE TABLE `ai_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `slug` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `excerpt` text DEFAULT NULL,
  `sequence` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `seo_title` text NOT NULL,
  `seo_description` text NOT NULL,
  `seo_keywords` text NOT NULL,
  `popular_cat` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_categories`
--

INSERT INTO `ai_categories` (`id`, `parent_id`, `name`, `slug`, `status`, `description`, `excerpt`, `sequence`, `image`, `seo_title`, `seo_description`, `seo_keywords`, `popular_cat`) VALUES
(5, 0, 'Machinery', 'machinery', 1, '', NULL, 0, NULL, '', '', '', 0),
(6, 0, 'Automotive Parts', 'automotive-parts', 1, '', NULL, 0, NULL, '', '', '', 0),
(7, 0, 'Packaging & Printing', 'packaging-printing', 1, '', NULL, 0, NULL, '', '', '', 0),
(8, 0, 'Rubber & Plastic', 'rubber-plastic', 1, '', NULL, 0, NULL, '', '', '', 0),
(9, 0, 'Agriculture', 'agriculture', 0, '', NULL, 0, NULL, '', '', '', 0),
(12, 0, 'Consumer Electronics', '', 1, '', NULL, 0, NULL, '', '', '', 0),
(13, 0, 'Home Appliance', '', 1, '', NULL, 0, NULL, '', '', '', 0),
(14, 0, 'Electric Equipment Supplies', '', 1, '', NULL, 0, NULL, '', '', '', 0),
(15, 0, 'Fabric & Textile Raw Materials', '', 1, '', NULL, 0, NULL, '', '', '', 0),
(16, 0, 'Telecommunication', '', 1, '', NULL, 0, NULL, '', '', '', 0),
(17, 0, 'Wellness ', '', 1, '', NULL, 0, NULL, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ai_clubmembers`
--

CREATE TABLE `ai_clubmembers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_clubwallet`
--

CREATE TABLE `ai_clubwallet` (
  `id` int(11) NOT NULL,
  `club_id` int(1) NOT NULL,
  `amount` float(12,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cr_dr` enum('cr','dr') DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_company_wallet`
--

CREATE TABLE `ai_company_wallet` (
  `id` int(11) NOT NULL,
  `notes` varchar(20) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_countries`
--

CREATE TABLE `ai_countries` (
  `id` int(11) NOT NULL,
  `sortname` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  `header_logo` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `header_content` varchar(100) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_countries`
--

INSERT INTO `ai_countries` (`id`, `sortname`, `name`, `country_name`, `iso3`, `numcode`, `phonecode`, `header_logo`, `image`, `header_content`, `active`) VALUES
(1, 'AF', 'AF', 'Afghanistan', NULL, NULL, 93, '740033.jpg', '740033.jpg', '     dd\r\n      \r\n      \r\n      \r\n      \r\n      \r\n ', 0),
(3, 'DZ', '', 'Algeria', NULL, NULL, 213, '', '', '', 0),
(4, 'AS', '', 'American Samoa', NULL, NULL, 1684, '', '', '', 0),
(5, 'AD', '', 'Andorra', NULL, NULL, 376, '', '', '', 0),
(6, 'AO', '', 'Angola', NULL, NULL, 244, '', '', '     \r\n ', 0),
(7, 'AI', '', 'Anguilla', NULL, NULL, 1264, '', '', '', 0),
(8, 'AQ', '', 'Antarctica', NULL, NULL, 0, '', '', '', 0),
(9, 'AG', '', 'Antigua And Barbuda', NULL, NULL, 1268, '', '', '', 0),
(10, 'AR', '', 'Argentina', NULL, NULL, 54, '', '', '', 0),
(11, 'AM', '', 'Armenia', NULL, NULL, 374, '', '', '', 0),
(12, 'AW', '', 'Aruba', NULL, NULL, 297, '', '', '', 0),
(13, 'AU', 'AUS', 'Australia', NULL, NULL, 61, '', '', '     \r\n ', 1),
(14, 'AT', '', 'Austria', NULL, NULL, 43, '', '', '', 0),
(15, 'AZ', '', 'Azerbaijan', NULL, NULL, 994, '', '', '', 0),
(16, 'BS', '', 'Bahamas The', NULL, NULL, 1242, '', '', '', 0),
(17, 'BH', '', 'Bahrain', NULL, NULL, 973, '', '', '', 0),
(18, 'BD', '', 'Bangladesh', NULL, NULL, 880, '', '', '', 0),
(19, 'BB', '', 'Barbados', NULL, NULL, 1246, '', '', '', 0),
(20, 'BY', '', 'Belarus', NULL, NULL, 375, '', '', '', 0),
(21, 'BE', '', 'Belgium', NULL, NULL, 32, '', '', '', 0),
(22, 'BZ', '', 'Belize', NULL, NULL, 501, '', '', '', 0),
(23, 'BJ', '', 'Benin', NULL, NULL, 229, '', '', '', 0),
(24, 'BM', '', 'Bermuda', NULL, NULL, 1441, '', '', '', 0),
(25, 'BT', '', 'Bhutan', NULL, NULL, 975, '', '', '', 0),
(26, 'BO', '', 'Bolivia', NULL, NULL, 591, '', '', '', 0),
(27, 'BA', '', 'Bosnia and Herzegovina', NULL, NULL, 387, '', '', '', 0),
(28, 'BW', '', 'Botswana', NULL, NULL, 267, '', '', '', 0),
(29, 'BV', '', 'Bouvet Island', NULL, NULL, 0, '', '', '', 0),
(30, 'BR', '', 'Brazil', NULL, NULL, 55, '', '', '', 0),
(31, 'IO', '', 'British Indian Ocean Territory', NULL, NULL, 246, '', '', '', 0),
(32, 'BN', '', 'Brunei', NULL, NULL, 673, '', '', '', 0),
(33, 'BG', '', 'Bulgaria', NULL, NULL, 359, '', '', '', 0),
(34, 'BF', '', 'Burkina Faso', NULL, NULL, 226, '', '', '', 0),
(35, 'BI', '', 'Burundi', NULL, NULL, 257, '', '', '', 0),
(36, 'KH', '', 'Cambodia', NULL, NULL, 855, '', '', '', 0),
(37, 'CM', '', 'Cameroon', NULL, NULL, 237, '', '', '', 0),
(38, 'CA', 'CAN', 'Canada', NULL, NULL, 1, '', '', '     \r\n ', 1),
(39, 'CV', '', 'Cape Verde', NULL, NULL, 238, '', '', '', 0),
(40, 'KY', '', 'Cayman Islands', NULL, NULL, 1345, '', '', '', 0),
(41, 'CF', '', 'Central African Republic', NULL, NULL, 236, '', '', '', 0),
(42, 'TD', '', 'Chad', NULL, NULL, 235, '', '', '', 0),
(43, 'CL', '', 'Chile', NULL, NULL, 56, '', '', '', 0),
(44, 'CN', '', 'China', NULL, NULL, 86, '', '', '', 0),
(45, 'CX', '', 'Christmas Island', NULL, NULL, 61, '', '', '', 0),
(46, 'CC', '', 'Cocos (Keeling) Islands', NULL, NULL, 672, '', '', '', 0),
(47, 'CO', '', 'Colombia', NULL, NULL, 57, '', '', '', 0),
(48, 'KM', '', 'Comoros', NULL, NULL, 269, '', '', '', 0),
(49, 'CG', 'CG', 'Republic Of The Congo', NULL, NULL, 242, '', '', '     \r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n     ', 0),
(50, 'CD', '', 'Democratic Republic Of The Congo', NULL, NULL, 242, '', '', '', 0),
(51, 'CK', '', 'Cook Islands', NULL, NULL, 682, '', '', '', 0),
(52, 'CR', '', 'Costa Rica', NULL, NULL, 506, '', '', '', 0),
(53, 'CI', '', 'Cote D\'Ivoire (Ivory Coast)', NULL, NULL, 225, '', '', '', 0),
(54, 'HR', '', 'Croatia (Hrvatska)', NULL, NULL, 385, '', '', '', 0),
(55, 'CU', '', 'Cuba', NULL, NULL, 53, '', '', '', 0),
(56, 'CY', '', 'Cyprus', NULL, NULL, 357, '', '', '', 0),
(57, 'CZ', '', 'Czech Republic', NULL, NULL, 420, '', '', '', 0),
(58, 'DK', '', 'Denmark', NULL, NULL, 45, '', '', '', 0),
(59, 'DJ', '', 'Djibouti', NULL, NULL, 253, '', '', '', 0),
(60, 'DM', '', 'Dominica', NULL, NULL, 1767, '', '', '', 0),
(61, 'DO', '', 'Dominican Republic', NULL, NULL, 1809, '', '', '', 0),
(62, 'TP', '', 'East Timor', NULL, NULL, 670, '', '', '', 0),
(63, 'EC', '', 'Ecuador', NULL, NULL, 593, '', '', '', 0),
(64, 'EG', '', 'Egypt', NULL, NULL, 20, '', '', '', 0),
(65, 'SV', '', 'El Salvador', NULL, NULL, 503, '', '', '', 0),
(66, 'GQ', '', 'Equatorial Guinea', NULL, NULL, 240, '', '', '', 0),
(67, 'ER', '', 'Eritrea', NULL, NULL, 291, '', '', '', 0),
(68, 'EE', '', 'Estonia', NULL, NULL, 372, '', '', '', 0),
(69, 'ET', '', 'Ethiopia', NULL, NULL, 251, '', '', '', 0),
(70, 'XA', '', 'External Territories of Australia', NULL, NULL, 61, '', '', '', 0),
(71, 'FK', '', 'Falkland Islands', NULL, NULL, 500, '', '', '', 0),
(72, 'FO', '', 'Faroe Islands', NULL, NULL, 298, '', '', '', 0),
(73, 'FJ', '', 'Fiji Islands', NULL, NULL, 679, '', '', '', 0),
(74, 'FI', '', 'Finland', NULL, NULL, 358, '', '', '', 0),
(75, 'FR', '', 'France', NULL, NULL, 33, '', '', '', 0),
(76, 'GF', '', 'French Guiana', NULL, NULL, 594, '', '', '', 0),
(77, 'PF', '', 'French Polynesia', NULL, NULL, 689, '', '', '', 0),
(78, 'TF', '', 'French Southern Territories', NULL, NULL, 0, '', '', '', 0),
(79, 'GA', '', 'Gabon', NULL, NULL, 241, '', '', '', 0),
(80, 'GM', '', 'Gambia The', NULL, NULL, 220, '', '', '', 0),
(81, 'GE', '', 'Georgia', NULL, NULL, 995, '', '', '', 0),
(82, 'DE', '', 'Germany', NULL, NULL, 49, '', '', '', 0),
(83, 'GH', '', 'Ghana', NULL, NULL, 233, '', '', '', 0),
(84, 'GI', '', 'Gibraltar', NULL, NULL, 350, '', '', '', 0),
(85, 'GR', '', 'Greece', NULL, NULL, 30, '', '', '', 0),
(86, 'GL', 'GL', 'Greenland', NULL, NULL, 299, '', '', '     \r\n      \r\n ', 0),
(87, 'GD', '', 'Grenada', NULL, NULL, 1473, '', '', '', 0),
(88, 'GP', '', 'Guadeloupe', NULL, NULL, 590, '', '', '', 0),
(89, 'GU', '', 'Guam', NULL, NULL, 1671, '', '', '', 0),
(90, 'GT', '', 'Guatemala', NULL, NULL, 502, '', '', '', 0),
(91, 'XU', '', 'Guernsey and Alderney', NULL, NULL, 44, '', '', '', 0),
(92, 'GN', '', 'Guinea', NULL, NULL, 224, '', '', '', 0),
(93, 'GW', '', 'Guinea-Bissau', NULL, NULL, 245, '', '', '', 0),
(94, 'GY', '', 'Guyana', NULL, NULL, 592, '', '', '', 0),
(95, 'HT', '', 'Haiti', NULL, NULL, 509, '', '', '', 0),
(96, 'HM', 'HM', 'Heard and McDonald Islands', NULL, NULL, 0, '', '', 'dsfsdf f sdfsfd\r\n      \r\n      \r\n      \r\n      \r\n      \r\n      \r\n ', 0),
(97, 'HN', '', 'Honduras', NULL, NULL, 504, '', '', '', 0),
(98, 'HK', '', 'Hong Kong S.A.R.', NULL, NULL, 852, '', '', '', 0),
(99, 'HU', 'HU', 'Hungary', NULL, NULL, 36, '', '', '     \r\n      \r\n ', 0),
(100, 'IS', '', 'Iceland', NULL, NULL, 354, '', '', '', 0),
(101, 'IN', 'IND', 'India', NULL, NULL, 91, '', '', '     \r\n ', 1),
(102, 'ID', '', 'Indonesia', NULL, NULL, 62, '', '', '', 0),
(103, 'IR', '', 'Iran', NULL, NULL, 98, '', '', '', 0),
(104, 'IQ', '', 'Iraq', NULL, NULL, 964, '', '', '', 0),
(105, 'IE', '', 'Ireland', NULL, NULL, 353, '', '', '', 0),
(106, 'IL', '', 'Israel', NULL, NULL, 972, '', '', '', 0),
(107, 'IT', '', 'Italy', NULL, NULL, 39, '', '', '', 0),
(108, 'JM', '', 'Jamaica', NULL, NULL, 1876, '', '', '', 0),
(109, 'JP', '', 'Japan', NULL, NULL, 81, '', '', '', 0),
(110, 'XJ', '', 'Jersey', NULL, NULL, 44, '', '', '', 0),
(111, 'JO', '', 'Jordan', NULL, NULL, 962, '', '', '', 0),
(112, 'KZ', '', 'Kazakhstan', NULL, NULL, 7, '', '', '', 0),
(113, 'KE', '', 'Kenya', NULL, NULL, 254, '', '', '', 0),
(114, 'KI', '', 'Kiribati', NULL, NULL, 686, '', '', '', 0),
(115, 'KP', '', 'North Korea ', NULL, NULL, 850, '', '', '', 0),
(116, 'KR', '', 'South Korea', NULL, NULL, 82, '', '', '', 0),
(117, 'KW', '', 'Kuwait', NULL, NULL, 965, '', '', '', 0),
(118, 'KG', '', 'Kyrgyzstan', NULL, NULL, 996, '', '', '', 0),
(119, 'LA', '', 'Laos', NULL, NULL, 856, '', '', '', 0),
(120, 'LV', '', 'Latvia', NULL, NULL, 371, '', '', '', 0),
(121, 'LB', '', 'Lebanon', NULL, NULL, 961, '', '', '', 0),
(122, 'LS', '', 'Lesotho', NULL, NULL, 266, '', '', '', 0),
(123, 'LR', '', 'Liberia', NULL, NULL, 231, '', '', '', 0),
(124, 'LY', '', 'Libya', NULL, NULL, 218, '', '', '', 0),
(125, 'LI', '', 'Liechtenstein', NULL, NULL, 423, '', '', '', 0),
(126, 'LT', '', 'Lithuania', NULL, NULL, 370, '', '', '', 0),
(127, 'LU', '', 'Luxembourg', NULL, NULL, 352, '', '', '', 0),
(128, 'MO', '', 'Macau S.A.R.', NULL, NULL, 853, '', '', '', 0),
(129, 'MK', '', 'Macedonia', NULL, NULL, 389, '', '', '', 0),
(130, 'MG', '', 'Madagascar', NULL, NULL, 261, '', '', '', 0),
(131, 'MW', '', 'Malawi', NULL, NULL, 265, '', '', '', 0),
(132, 'MY', '', 'Malaysia', NULL, NULL, 60, '', '', '', 0),
(133, 'MV', '', 'Maldives', NULL, NULL, 960, '', '', '', 0),
(134, 'ML', '', 'Mali', NULL, NULL, 223, '', '', '', 0),
(135, 'MT', '', 'Malta', NULL, NULL, 356, '', '', '', 0),
(136, 'XM', '', 'Man (Isle of)', NULL, NULL, 44, '', '', '', 0),
(137, 'MH', '', 'Marshall Islands', NULL, NULL, 692, '', '', '', 0),
(138, 'MQ', '', 'Martinique', NULL, NULL, 596, '', '', '', 0),
(139, 'MR', '', 'Mauritania', NULL, NULL, 222, '', '', '', 0),
(140, 'MU', '', 'Mauritius', NULL, NULL, 230, '', '', '', 0),
(141, 'YT', '', 'Mayotte', NULL, NULL, 269, '', '', '', 0),
(142, 'MX', '', 'Mexico', NULL, NULL, 52, '', '', '', 0),
(143, 'FM', '', 'Micronesia', NULL, NULL, 691, '', '', '', 0),
(144, 'MD', '', 'Moldova', NULL, NULL, 373, '', '', '', 0),
(145, 'MC', '', 'Monaco', NULL, NULL, 377, '', '', '', 0),
(146, 'MN', '', 'Mongolia', NULL, NULL, 976, '', '', '', 0),
(147, 'MS', '', 'Montserrat', NULL, NULL, 1664, '', '', '', 0),
(148, 'MA', '', 'Morocco', NULL, NULL, 212, '', '', '', 0),
(149, 'MZ', '', 'Mozambique', NULL, NULL, 258, '', '', '', 0),
(150, 'MM', '', 'Myanmar', NULL, NULL, 95, '', '', '', 0),
(151, 'NA', '', 'Namibia', NULL, NULL, 264, '', '', '', 0),
(152, 'NR', '', 'Nauru', NULL, NULL, 674, '', '', '', 0),
(153, 'NP', '', 'Nepal', NULL, NULL, 977, '', '', '', 0),
(154, 'AN', '', 'Netherlands Antilles', NULL, NULL, 599, '', '', '', 0),
(155, 'NL', '', 'Netherlands The', NULL, NULL, 31, '', '', '', 0),
(156, 'NC', '', 'New Caledonia', NULL, NULL, 687, '', '', '', 0),
(157, 'NZ', '', 'New Zealand', NULL, NULL, 64, '', '', '', 0),
(158, 'NI', '', 'Nicaragua', NULL, NULL, 505, '', '', '', 0),
(159, 'NE', '', 'Niger', NULL, NULL, 227, '', '', '', 0),
(160, 'NG', '', 'Nigeria', NULL, NULL, 234, '', '', '', 0),
(161, 'NU', '', 'Niue', NULL, NULL, 683, '', '', '', 0),
(162, 'NF', '', 'Norfolk Island', NULL, NULL, 672, '', '', '', 0),
(163, 'MP', '', 'Northern Mariana Islands', NULL, NULL, 1670, '', '', '', 0),
(164, 'NO', '', 'Norway', NULL, NULL, 47, '', '', '', 0),
(165, 'OM', '', 'Oman', NULL, NULL, 968, '', '', '', 0),
(166, 'PK', '', 'Pakistan', NULL, NULL, 92, '', '', '', 0),
(167, 'PW', '', 'Palau', NULL, NULL, 680, '', '', '', 0),
(168, 'PS', '', 'Palestinian Territory Occupied', NULL, NULL, 970, '', '', '', 0),
(169, 'PA', '', 'Panama', NULL, NULL, 507, '', '', '', 0),
(170, 'PG', '', 'Papua new Guinea', NULL, NULL, 675, '', '', '', 0),
(171, 'PY', '', 'Paraguay', NULL, NULL, 595, '', '', '', 0),
(172, 'PE', '', 'Peru', NULL, NULL, 51, '', '', '', 0),
(173, 'PH', '', 'Philippines', NULL, NULL, 63, '', '', '', 0),
(174, 'PN', '', 'Pitcairn Island', NULL, NULL, 0, '', '', '', 0),
(175, 'PL', '', 'Poland', NULL, NULL, 48, '', '', '', 0),
(176, 'PT', '', 'Portugal', NULL, NULL, 351, '', '', '', 0),
(177, 'PR', '', 'Puerto Rico', NULL, NULL, 1787, '', '', '', 0),
(178, 'QA', '', 'Qatar', NULL, NULL, 974, '', '', '', 0),
(179, 'RE', '', 'Reunion', NULL, NULL, 262, '', '', '', 0),
(180, 'RO', '', 'Romania', NULL, NULL, 40, '', '', '', 0),
(181, 'RU', '', 'Russia', NULL, NULL, 70, '', '', '', 0),
(182, 'RW', '', 'Rwanda', NULL, NULL, 250, '', '', '', 0),
(183, 'SH', '', 'Saint Helena', NULL, NULL, 290, '', '', '', 0),
(184, 'KN', '', 'Saint Kitts And Nevis', NULL, NULL, 1869, '', '', '', 0),
(185, 'LC', '', 'Saint Lucia', NULL, NULL, 1758, '', '', '', 0),
(186, 'PM', '', 'Saint Pierre and Miquelon', NULL, NULL, 508, '', '', '', 0),
(187, 'VC', '', 'Saint Vincent And The Grenadines', NULL, NULL, 1784, '', '', '', 0),
(188, 'WS', '', 'Samoa', NULL, NULL, 684, '', '', '', 0),
(189, 'SM', '', 'San Marino', NULL, NULL, 378, '', '', '', 0),
(190, 'ST', '', 'Sao Tome and Principe', NULL, NULL, 239, '', '', '', 0),
(191, 'SA', '', 'Saudi Arabia', NULL, NULL, 966, '', '', '', 0),
(192, 'SN', '', 'Senegal', NULL, NULL, 221, '', '', '', 0),
(193, 'RS', '', 'Serbia', NULL, NULL, 381, '', '', '', 0),
(194, 'SC', '', 'Seychelles', NULL, NULL, 248, '', '', '', 0),
(195, 'SL', '', 'Sierra Leone', NULL, NULL, 232, '', '', '', 0),
(196, 'SG', '', 'Singapore', NULL, NULL, 65, '', '', '', 0),
(197, 'SK', '', 'Slovakia', NULL, NULL, 421, '', '', '', 0),
(198, 'SI', '', 'Slovenia', NULL, NULL, 386, '', '', '', 0),
(199, 'XG', '', 'Smaller Territories of the UK', NULL, NULL, 44, '', '', '', 0),
(200, 'SB', '', 'Solomon Islands', NULL, NULL, 677, '', '', '', 0),
(201, 'SO', '', 'Somalia', NULL, NULL, 252, '', '', '    mnnmn', 0),
(202, 'ZA', '', 'South Africa', NULL, NULL, 27, '', '', '', 0),
(203, 'GS', '', 'South Georgia', NULL, NULL, 0, '', '', '', 0),
(204, 'SS', '', 'South Sudan', NULL, NULL, 211, '', '', '', 0),
(205, 'ES', '', 'Spain', NULL, NULL, 34, '', '', '', 0),
(206, 'LK', '', 'Sri Lanka', NULL, NULL, 94, '', '', '', 0),
(207, 'SD', '', 'Sudan', NULL, NULL, 249, '', '', '', 0),
(208, 'SR', '', 'Suriname', NULL, NULL, 597, '', '', '', 0),
(209, 'SJ', '', 'Svalbard And Jan Mayen Islands', NULL, NULL, 47, '', '', '', 0),
(210, 'SZ', '', 'Swaziland', NULL, NULL, 268, '', '', '', 0),
(211, 'SE', '', 'Sweden', NULL, NULL, 46, '', '', '', 0),
(212, 'CH', '', 'Switzerland', NULL, NULL, 41, '', '', '', 0),
(213, 'SY', '', 'Syria', NULL, NULL, 963, '', '', '', 0),
(214, 'TW', '', 'Taiwan', NULL, NULL, 886, '', '', '', 0),
(215, 'TJ', '', 'Tajikistan', NULL, NULL, 992, '', '', '', 0),
(216, 'TZ', '', 'Tanzania', NULL, NULL, 255, '', '', '', 0),
(217, 'TH', '', 'Thailand', NULL, NULL, 66, '', '', '', 0),
(218, 'TG', '', 'Togo', NULL, NULL, 228, '', '', '', 0),
(219, 'TK', '', 'Tokelau', NULL, NULL, 690, '', '', '', 0),
(220, 'TO', '', 'Tonga', NULL, NULL, 676, '', '', '', 0),
(221, 'TT', '', 'Trinidad And Tobago', NULL, NULL, 1868, '', '', '', 0),
(222, 'TN', '', 'Tunisia', NULL, NULL, 216, '', '', '', 0),
(223, 'TR', '', 'Turkey', NULL, NULL, 90, '', '', '', 0),
(224, 'TM', '', 'Turkmenistan', NULL, NULL, 7370, '', '', '', 0),
(225, 'TC', '', 'Turks And Caicos Islands', NULL, NULL, 1649, '', '', '', 0),
(226, 'TV', '', 'Tuvalu', NULL, NULL, 688, '', '', '', 0),
(227, 'UG', '', 'Uganda', NULL, NULL, 256, '', '', '', 0),
(228, 'UA', '', 'Ukraine', NULL, NULL, 380, '', '', '', 0),
(229, 'AE', 'UAE', 'United Arab Emirates', NULL, NULL, 971, '20_x_203.jpg', '', '     \r\n ', 1),
(230, 'GB', 'UK', 'United Kingdom', NULL, NULL, 44, '', '', '     \r\n ', 1),
(231, 'US', 'USA', 'United States', NULL, NULL, 1, '', '', '     \r\n ', 1),
(232, 'UM', '', 'United States Minor Outlying Islands', NULL, NULL, 1, '', '', '', 0),
(233, 'UY', '', 'Uruguay', NULL, NULL, 598, '', '', '', 0),
(234, 'UZ', '', 'Uzbekistan', NULL, NULL, 998, '', '', '', 0),
(235, 'VU', '', 'Vanuatu', NULL, NULL, 678, '', '', '', 0),
(236, 'VA', '', 'Vatican City State (Holy See)', NULL, NULL, 39, '', '', '', 0),
(237, 'VE', '', 'Venezuela', NULL, NULL, 58, '', '', '', 0),
(238, 'VN', '', 'Vietnam', NULL, NULL, 84, '', '', '', 0),
(239, 'VG', '', 'Virgin Islands (British)', NULL, NULL, 1284, '', '', '', 0),
(240, 'VI', '', 'Virgin Islands (US)', NULL, NULL, 1340, '', '', '', 0),
(241, 'WF', '', 'Wallis And Futuna Islands', NULL, NULL, 681, '', '', '', 0),
(242, 'EH', '', 'Western Sahara', NULL, NULL, 212, '', '', '', 0),
(243, 'YE', '', 'Yemen', NULL, NULL, 967, '', '', '', 0),
(244, 'YU', '', 'Yugoslavia', NULL, NULL, 38, '', '', '', 0),
(245, 'ZM', '', 'Zambia', NULL, NULL, 260, '', '', '', 0),
(246, 'ZW', '', 'Zimbabwe', NULL, NULL, 263, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ai_crons`
--

CREATE TABLE `ai_crons` (
  `id` int(11) NOT NULL,
  `created` date DEFAULT NULL,
  `cron_type` varchar(100) DEFAULT NULL,
  `last_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_epin`
--

CREATE TABLE `ai_epin` (
  `id` int(11) NOT NULL,
  `pintype` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `pin_from` int(11) DEFAULT NULL,
  `act_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_epin_request`
--

CREATE TABLE `ai_epin_request` (
  `id` int(11) NOT NULL,
  `pintype` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pin_qty` int(11) DEFAULT NULL,
  `amount` float(10,2) NOT NULL,
  `paymode` varchar(100) DEFAULT NULL,
  `txn_no` varchar(40) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `screenshot` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_fund`
--

CREATE TABLE `ai_fund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `cr_dr` enum('cr','dr') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `ref_id` varchar(20) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_fund_request`
--

CREATE TABLE `ai_fund_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `txn_no` varchar(40) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `screenshot` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fdate` varchar(20) DEFAULT NULL,
  `ftime` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_gallery`
--

CREATE TABLE `ai_gallery` (
  `id` int(11) NOT NULL,
  `gallery_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sequence` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_gallery`
--

INSERT INTO `ai_gallery` (`id`, `gallery_name`, `description`, `sequence`) VALUES
(1, 'Main Slider', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ai_gallery_img`
--

CREATE TABLE `ai_gallery_img` (
  `id` int(11) NOT NULL,
  `sequence` int(5) NOT NULL DEFAULT 0,
  `gallery_id` int(5) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `link_url` varchar(200) DEFAULT NULL,
  `img_title` varchar(100) DEFAULT NULL,
  `img_alt` varchar(100) DEFAULT NULL,
  `img_desc` varchar(1000) DEFAULT NULL,
  `new_tab` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_images`
--

CREATE TABLE `ai_images` (
  `id` int(11) NOT NULL,
  `sequence` int(5) DEFAULT 0,
  `gallery_id` int(5) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `link_url` varchar(200) DEFAULT NULL,
  `img_title` varchar(100) DEFAULT NULL,
  `img_alt` varchar(100) DEFAULT NULL,
  `img_desc` varchar(1000) DEFAULT NULL,
  `new_tab` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_level_manager`
--

CREATE TABLE `ai_level_manager` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `level_id` int(11) NOT NULL,
  `sponsor_id` int(11) DEFAULT NULL,
  `position` int(1) NOT NULL,
  `first` int(1) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `ac_active_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_level_manager`
--

INSERT INTO `ai_level_manager` (`id`, `user_id`, `level_id`, `sponsor_id`, `position`, `first`, `created`, `ac_active_date`) VALUES
(1, 1, 0, 0, 1, 0, '2021-10-17 18:37:19', '2022-11-27 15:12:14'),
(2, 356130, 1, 1, 1, 0, '2024-09-10 03:38:45', NULL),
(3, 464445, 1, 1, 1, 0, '2024-09-10 03:40:16', NULL),
(4, 831992, 1, 464445, 1, 0, '2024-09-10 08:59:57', NULL),
(5, 276079, 1, 831992, 1, 0, '2024-09-10 09:14:11', NULL),
(6, 381677, 1, 276079, 1, 0, '2024-09-10 09:22:16', NULL),
(7, 259949, 1, 831992, 1, 0, '2024-09-10 09:40:22', NULL),
(8, 145138, 1, 381677, 1, 0, '2024-09-11 13:38:29', NULL),
(9, 481575, 1, 831992, 1, 0, '2024-09-11 13:47:37', NULL),
(10, 458470, 1, 259949, 1, 0, '2024-09-12 04:25:42', NULL),
(11, 399459, 1, 831992, 1, 0, '2024-09-13 13:22:36', NULL),
(12, 309641, 1, 464445, 1, 0, '2024-09-14 07:18:26', NULL),
(13, 218662, 1, 464445, 1, 0, '2024-09-14 07:22:41', NULL),
(14, 405571, 1, 464445, 1, 0, '2024-09-14 16:20:30', NULL),
(15, 680531, 1, 464445, 1, 0, '2024-09-15 08:49:55', NULL),
(16, 148125, 1, 464445, 1, 0, '2024-09-15 11:07:53', NULL),
(17, 355635, 1, 464445, 1, 0, '2024-09-19 09:01:12', NULL),
(18, 134693, 1, 464445, 1, 0, '2024-09-23 17:48:50', NULL),
(19, 559805, 1, 464445, 1, 0, '2024-09-24 11:37:37', NULL),
(20, 864414, 1, 464445, 1, 0, '2024-09-24 11:38:16', NULL),
(21, 594414, 1, 464445, 1, 0, '2024-09-24 11:38:35', NULL),
(22, 958276, 1, 464445, 1, 0, '2024-09-24 11:39:01', NULL),
(23, 366173, 1, 464445, 1, 0, '2024-09-24 11:39:39', NULL),
(24, 760238, 1, 464445, 1, 0, '2024-09-24 11:39:58', NULL),
(25, 730524, 1, 464445, 1, 0, '2024-09-24 11:40:18', NULL),
(26, 394839, 1, 464445, 1, 0, '2024-09-24 11:40:45', NULL),
(27, 500023, 1, 464445, 1, 0, '2024-09-24 11:40:58', NULL),
(28, 247091, 1, 464445, 1, 0, '2024-09-24 11:41:12', NULL),
(29, 463630, 1, 464445, 1, 0, '2024-09-25 18:20:20', NULL),
(30, 650600, 1, 831992, 1, 0, '2024-09-25 18:38:52', NULL),
(31, 612955, 1, 134693, 1, 0, '2024-09-25 19:36:48', NULL),
(32, 990646, 1, 831992, 1, 0, '2024-10-01 13:56:07', NULL),
(33, 282114, 1, 259949, 1, 0, '2024-10-05 14:59:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_media`
--

CREATE TABLE `ai_media` (
  `id` int(11) NOT NULL,
  `file_type` varchar(20) DEFAULT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `img_title` varchar(100) NOT NULL,
  `type_img` int(5) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_media`
--

INSERT INTO `ai_media` (`id`, `file_type`, `file_name`, `img_title`, `type_img`, `created`) VALUES
(27, 'image/png', '1666204446_2b1e0e78e1a87744ad21.png', 'Logo', 0, '2022-10-20 00:04:06'),
(28, 'image/png', '1667564832_81fe8606b94b984babcd.png', 'dd', 0, '2022-11-04 17:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `ai_monthly_payments`
--

CREATE TABLE `ai_monthly_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ai_monthly_payments`
--

INSERT INTO `ai_monthly_payments` (`id`, `user_id`, `amount`, `start_date`, `end_date`, `status`, `created`) VALUES
(1, 1, 250.00, '2024-03-19', '2026-02-19', 1, '2024-02-19 07:18:22'),
(2, 396652, 250.00, '2024-05-13', '2026-04-13', 1, '2024-04-13 06:31:39'),
(3, 396652, 250.00, '2024-09-27', '2026-08-27', 1, '2024-08-27 07:59:02'),
(4, 527108, 250.00, '2024-09-27', '2026-08-27', 1, '2024-08-27 09:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `ai_notifications`
--

CREATE TABLE `ai_notifications` (
  `id` int(11) NOT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `readstatus` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_options`
--

CREATE TABLE `ai_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext DEFAULT NULL,
  `group_name` varchar(100) NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_options`
--

INSERT INTO `ai_options` (`option_id`, `option_name`, `option_value`, `group_name`) VALUES
(1, 'logo', 'https://bigdealpro.com/ai-content/uploads/1727070346_dae6b6c7e5d85fcf46e8.png', 'general'),
(2, 'title', 'Welcome to our website', 'general'),
(3, 'message', '', 'general'),
(4, 'pdf_link', '', 'general'),
(5, 'address', '', 'general'),
(6, 'mobile', '', 'general'),
(7, 'email_id', '', 'general'),
(8, 'fb_link', '', 'general'),
(9, 'tw_link', '', 'general'),
(10, 'rs_link', '', 'general'),
(11, 'gp_link', '', 'general'),
(12, 'support_no', NULL, 'general'),
(13, 'support_email', NULL, 'general');

-- --------------------------------------------------------

--
-- Table structure for table `ai_orders`
--

CREATE TABLE `ai_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fuser_id` int(11) DEFAULT NULL,
  `total_amt` float(8,2) DEFAULT NULL,
  `order_status` int(1) DEFAULT NULL,
  `payvia` varchar(10) NOT NULL,
  `ordervia` varchar(20) NOT NULL,
  `pv` int(4) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_orders`
--

INSERT INTO `ai_orders` (`id`, `user_id`, `fuser_id`, `total_amt`, `order_status`, `payvia`, `ordervia`, `pv`, `created`, `updated`, `comments`) VALUES
(1, 1, 2, 3.00, 1, '', '', 0, '2023-10-05 08:45:31', '2023-10-05 08:45:31', NULL),
(2, 1, 197042, 3.00, 1, '', '', 0, '2023-10-05 08:46:11', '2023-10-05 08:46:11', 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `ai_order_items`
--

CREATE TABLE `ai_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `bv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_order_items`
--

INSERT INTO `ai_order_items` (`id`, `order_id`, `product_id`, `price`, `qty`, `bv`) VALUES
(1, 2, 1, 100.00, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ai_packages`
--

CREATE TABLE `ai_packages` (
  `id` int(5) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `cost` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `package_type` varchar(100) DEFAULT NULL,
  `package_description` varchar(255) NOT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `cashback` float(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_packages`
--

INSERT INTO `ai_packages` (`id`, `package_name`, `cost`, `image`, `package_type`, `package_description`, `status`, `created`, `cashback`) VALUES
(1, 'Standard Package', '1', '1707368916_ed1c2e4535d1563e6877.jpeg', '', '<p>Testing for Plan 1</p>', 0, NULL, 0.00),
(2, 'Holiday Package ', '3000', '1708173705_94b70d496bdf23364a6e.jpg', 'tour', '<p><strong>Holiday Tour Package..</strong></p>', 0, NULL, 0.00),
(3, 'KIT- A', '3500', '1725446870_3ccb80d396a52b356a9c.jpg', 'product', '<p>&bull; MULTIVIT-PRO PROTEIN POWDER (VANILA FLAVOUR)</p><p>&bull; SLIM SHAPE</p><p>&bull; OMEGA</p><p>&bull; I-BOOST</p><p>&nbsp;</p>', 0, '2024-09-04 10:47:50', 0.00),
(4, 'KIT- B', '3500', '1725446890_3fbf8c39c32c00e4a0da.jpg', 'product', '<p>&bull; MULTIVIT-PRO PROTEIN POWDER (KESAR PISTA FLAVOUR)</p><p>&bull; SLIM SHAPE</p><p>&bull; OMEGA</p><p>&bull; I-BOOST</p>', 0, '2024-09-04 10:48:10', 0.00),
(5, 'KIT- C', '3500', '1725883437_b790cd693631f5524764.jpg', 'product', '<p>&bull; MULTIVIT-PRO PROTEIN POWDER (VANILLA FLAVOUR)</p><p>&bull; MULTIVIT-PRO PROTEIN POWDER (KESAR PISTA&nbsp;FLAVOUR)</p><p>&bull; SLIM SHAPE</p><p>&bull; OMEGA</p><p>&bull; I-BOOST</p>', 1, '2024-09-09 12:03:57', 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `ai_package_items`
--

CREATE TABLE `ai_package_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `bv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_package_items`
--

INSERT INTO `ai_package_items` (`id`, `order_id`, `product_id`, `price`, `qty`, `bv`) VALUES
(1, 32, 1, 699.00, 2, 0),
(2, 32, 2, 799.00, 3, 0),
(3, 33, 1, 699.00, 2, 0),
(4, 33, 2, 799.00, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ai_package_orders`
--

CREATE TABLE `ai_package_orders` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_method` varchar(20) DEFAULT NULL,
  `utr_no` varchar(40) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `screenshot` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ship_name` varchar(60) DEFAULT NULL,
  `ship_number` varchar(10) DEFAULT NULL,
  `ship_address` varchar(100) DEFAULT NULL,
  `ship_city` varchar(60) DEFAULT NULL,
  `ship_pincode` varchar(6) DEFAULT NULL,
  `ship_notes` varchar(200) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `response` varchar(200) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `orderType` varchar(40) DEFAULT 'package'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_package_orders`
--

INSERT INTO `ai_package_orders` (`id`, `package_id`, `amount`, `user_id`, `pay_method`, `utr_no`, `pay_date`, `screenshot`, `image`, `status`, `created`, `ship_name`, `ship_number`, `ship_address`, `ship_city`, `ship_pincode`, `ship_notes`, `updated`, `response`, `txn_id`, `orderType`) VALUES
(1, 2, 3000.00, 755580, 'online', NULL, NULL, NULL, NULL, 1, '2024-08-27 07:59:02', 'BIG DEAL  PRO', '9973513572', 'aa', 'bb', 'cc', 'dd', NULL, 'Payment initiated...', 'BD7555801724505863', 'package'),
(2, 1, 2000.00, 1, 'online', NULL, NULL, NULL, NULL, 0, '2024-08-26 05:48:10', 'Bigdeal Pro', '8709293726', 'Ranchi', 'Ranchi', '834004', '', NULL, 'Payment initiated...', 'BD11724651290', 'package'),
(8, 3, 3500.00, 1, 'online', NULL, NULL, NULL, NULL, 0, '2024-09-09 11:38:09', 'Bigdeal Pro', '8709293726', 'Ranchi', 'Ranchi', '834004', '', NULL, 'Payment initiated...', 'BD11725881889', 'package'),
(9, 5, 3500.00, 1, 'online', NULL, NULL, NULL, NULL, 0, '2024-09-09 12:49:36', 'Dipika Kumari', '9835050312', 'Ranchi', 'Ranchi', '834004', '', NULL, 'Payment initiated...', 'BD11725886176', 'package'),
(10, 5, 3500.00, 464445, 'online', NULL, NULL, NULL, NULL, 2, '2024-09-10 08:33:21', 'AMIT KUMAR  KASHYAP ', '9835050312', '', '', '', '', '2024-09-10 08:33:21', 'Payment Failed', 'BD4644451725955915', 'package'),
(11, 5, 3500.00, 259949, 'online', 'T2409111638361552728857', NULL, NULL, NULL, 1, '2024-09-11 11:08:40', 'SUNIL KUMAR  SINGH', '8252952994', '', '', '', '', '2024-09-11 11:08:40', 'Payment Success', 'BD2599491726052856', 'package'),
(15, 5, 3500.00, 276079, 'offline', 'Cash of Slim Shape only', NULL, NULL, NULL, 0, '2024-09-24 06:37:21', 'Md. Sakil  Khan', '7488267061', 'Mojahid Nagar Hindpiri Ranchi ', 'Ranchi ', '834001', 'Purchased Slim Shape only', NULL, NULL, 'BD2760791727159841', 'package'),
(16, 5, 3500.00, 247091, 'offline', 'BP247091', NULL, NULL, NULL, 1, '2024-09-24 11:58:10', 'SFG ', '23542', '', '', '', '', NULL, NULL, 'BD2470911727179068', 'package'),
(17, 5, 3500.00, 500023, 'offline', 'BP500023', NULL, NULL, NULL, 1, '2024-09-24 11:59:39', 'DGDE ', '2434', '', '', '', '', NULL, NULL, 'BD5000231727179163', 'package'),
(18, 5, 3500.00, 394839, 'offline', ' BP394839', NULL, NULL, NULL, 1, '2024-09-24 12:01:31', 'DF ', '23', '', '', '', '', NULL, NULL, 'BD3948391727179273', 'package'),
(19, 5, 3500.00, 730524, 'offline', 'BP730524', NULL, NULL, NULL, 1, '2024-09-24 12:11:31', 'WWW ', 'SB', '', '', '', '', NULL, NULL, 'BD7305241727179875', 'package'),
(20, 5, 3500.00, 760238, 'offline', 'BP760238', NULL, NULL, NULL, 1, '2024-09-24 12:12:58', 'SFF ', '2', '', '', '', '', NULL, NULL, 'BD7602381727179930', 'package'),
(21, 5, 3500.00, 366173, 'offline', 'BP366173', NULL, NULL, NULL, 1, '2024-09-24 12:13:49', 'ASD ', '23', '', '', '', '', NULL, NULL, 'BD3661731727180018', 'package'),
(22, 5, 3500.00, 958276, 'offline', 'BP958276', NULL, NULL, NULL, 1, '2024-09-24 12:14:27', 'ABCDE ', '1', '', '', '', '', NULL, NULL, 'BD9582761727180056', 'package'),
(23, 5, 3500.00, 594414, 'offline', 'BP594414', NULL, NULL, NULL, 1, '2024-09-24 12:15:05', 'ABCD ', '1234', '', '', '', '', NULL, NULL, 'BD5944141727180094', 'package'),
(24, 5, 3500.00, 864414, 'offline', ' BP864414', NULL, NULL, NULL, 1, '2024-09-24 12:15:43', 'ABC ', '12345678', '', '', '', '', NULL, NULL, 'BD8644141727180133', 'package'),
(25, 5, 3500.00, 559805, 'offline', 'BP559805', NULL, NULL, NULL, 1, '2024-09-24 12:16:18', 'SKD ', '7885675676', '', '', '', '', NULL, NULL, 'BD5598051727180167', 'package'),
(28, 5, 3500.00, 405571, 'offline', 'test', NULL, '1727268260_cbfeb6a4fee12ffa7449.jpg', NULL, 1, '2024-09-25 12:44:31', 'SHIVAM SHARMA', '7004223243', 'tes', 'test', 'test', 'test', NULL, NULL, 'BD4055711727268260', 'package'),
(29, 5, 3500.00, 463630, 'offline', 'test123', NULL, '1727268655_d212e5322d87cddd4dd2.jpg', NULL, 1, '2024-09-25 12:51:12', 'TEST TEST', '9999999999', 'test', 'test', 'test', 'test', NULL, NULL, 'BD4636301727268655', 'package'),
(30, 5, 3500.00, 650600, 'offline', 'test11111', NULL, '1727269784_0b10c9e2f71ec8e850e5.jpg', NULL, 1, '2024-09-25 13:09:57', 'TEST1 TEST1', '9090909090', 'te', 'tes', 'test', 'test', NULL, NULL, 'BD6506001727269784', 'package'),
(31, 5, 3500.00, 612955, 'offline', 'BP612955', NULL, NULL, NULL, 1, '2024-09-26 11:36:39', 'RAVI KUMAR CHHETRI', '7765945396', '', '', '', '', NULL, NULL, 'BD6129551727350581', 'package'),
(32, 0, 3795.00, 1, 'online', NULL, NULL, NULL, NULL, 2, '2024-10-08 02:27:42', 'Dipika Kumari', '9835050312', 'Ranchi', 'Ranchi', '834004', 'kamal', NULL, 'Payment initiated...', 'BD11728352769', 'product'),
(33, 0, 3795.00, 1, 'offline', 'hello123', NULL, '1728352902_30414bb53ac6caa3b93c.png', NULL, 1, '2024-10-08 02:27:50', 'Dipika Kumari', '9835050312', 'Ranchi', 'Ranchi', '834004', '', NULL, NULL, 'BD11728352902', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `ai_package_purchase_orders`
--

CREATE TABLE `ai_package_purchase_orders` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_mode` varchar(20) DEFAULT NULL,
  `utr_no` varchar(40) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `screenshot` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ship_name` varchar(60) DEFAULT NULL,
  `ship_number` varchar(10) DEFAULT NULL,
  `ship_address` varchar(100) DEFAULT NULL,
  `ship_city` varchar(60) DEFAULT NULL,
  `ship_pincode` varchar(6) DEFAULT NULL,
  `ship_notes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_package_purchase_orders`
--

INSERT INTO `ai_package_purchase_orders` (`id`, `package_id`, `user_id`, `pay_mode`, `utr_no`, `pay_date`, `screenshot`, `image`, `status`, `created`, `ship_name`, `ship_number`, `ship_address`, `ship_city`, `ship_pincode`, `ship_notes`) VALUES
(1, 2, 396652, 'cash', 'Bbj', NULL, NULL, NULL, 1, '2024-04-13 06:31:39', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'upi', 'asdg', NULL, '1708326985_e020ced9331b7c44ddd0.png', NULL, 1, '2024-02-19 07:18:22', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 527108, 'imps', '1234', NULL, '1721038928_455174700bf7cc562224.jpg', NULL, 0, '2024-07-15 04:52:08', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 531536, 'upi', 'ASDFG', NULL, NULL, NULL, 0, '2024-08-06 04:16:03', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_payments`
--

CREATE TABLE `ai_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(5) DEFAULT NULL,
  `st_date` date DEFAULT NULL,
  `ed_date` date DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `payfor` int(11) DEFAULT NULL,
  `paylevel` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_payorder`
--

CREATE TABLE `ai_payorder` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `order_status` int(1) DEFAULT NULL,
  `payment_status` int(1) DEFAULT NULL,
  `txnid` varchar(40) DEFAULT NULL,
  `confirmation` int(2) DEFAULT NULL,
  `pay_type` varchar(20) DEFAULT NULL,
  `pay_error` varchar(255) DEFAULT NULL,
  `payment_address` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `amount_sendto` varchar(100) DEFAULT NULL,
  `status_url` varchar(200) DEFAULT NULL,
  `qrcode_url` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_payout`
--

CREATE TABLE `ai_payout` (
  `id` int(11) NOT NULL,
  `paytype` varchar(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_plans`
--

CREATE TABLE `ai_plans` (
  `id` int(11) NOT NULL,
  `plan_title` varchar(100) DEFAULT NULL,
  `amount` float(8,2) NOT NULL,
  `max_amount` float(8,2) NOT NULL DEFAULT 0.00,
  `validity` int(5) DEFAULT NULL,
  `roi` float(4,2) DEFAULT NULL,
  `capping` float(10,2) NOT NULL DEFAULT 0.00,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `is_deleted` int(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_plans`
--

INSERT INTO `ai_plans` (`id`, `plan_title`, `amount`, `max_amount`, `validity`, `roi`, `capping`, `status`, `created`, `updated`, `is_deleted`, `deleted_at`) VALUES
(1, 'Plan 25 - 100', 25.00, 100.00, 100, 7.00, 100.00, 1, '2022-11-22 23:33:17', '2022-11-29 12:25:26', NULL, NULL),
(2, 'Plan 101 - 300', 101.00, 300.00, 100, 8.00, 300.00, 1, '2022-11-29 11:18:29', '2022-11-29 12:26:04', NULL, NULL),
(3, 'Plan 301 - 600', 301.00, 600.00, 100, 9.00, 600.00, 1, '2022-11-29 11:18:56', '2022-11-29 12:26:11', NULL, NULL),
(4, 'Plan 601 - 1000', 601.00, 1000.00, 100, 10.00, 1000.00, 1, '2022-11-29 11:19:18', '2022-11-29 12:26:18', NULL, NULL),
(5, 'Plan 1001 - 3000', 1001.00, 3000.00, 100, 11.00, 0.00, 1, '2022-12-08 10:40:17', '2022-12-08 10:40:17', NULL, NULL),
(6, 'Plan 3001 - 6000', 3001.00, 6000.00, 100, 13.00, 0.00, 1, '2022-12-08 10:40:39', '2022-12-08 10:40:39', NULL, NULL),
(7, 'Plan 6001 - 10000', 6001.00, 10000.00, 100, 15.00, 0.00, 1, '2022-12-08 10:41:01', '2022-12-08 10:41:01', NULL, NULL),
(8, 'Plan 10k+ ', 10001.00, 1000000.00, 100, 20.00, 0.00, 1, '2022-12-08 10:41:38', '2022-12-08 10:41:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_postcats`
--

CREATE TABLE `ai_postcats` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sequence` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_posts`
--

CREATE TABLE `ai_posts` (
  `id` int(11) NOT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `post_title` varchar(200) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `post_type` varchar(50) NOT NULL,
  `excerpt` text NOT NULL,
  `description` text DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'post',
  `image` varchar(300) DEFAULT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_description` mediumtext DEFAULT NULL,
  `seo_keywords` mediumtext DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `user_id` int(2) NOT NULL DEFAULT 1,
  `is_offer` int(11) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `wp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_posts`
--

INSERT INTO `ai_posts` (`id`, `parent_id`, `post_title`, `slug`, `post_type`, `excerpt`, `description`, `layout`, `image`, `attachment`, `url`, `seo_title`, `seo_description`, `seo_keywords`, `status`, `created`, `updated`, `user_id`, `is_offer`, `start_date`, `end_date`, `wp`) VALUES
(1, '0', 'test', 'test', 'announcement', '', '<p>da</p>', 'post', '1726812258_eb5c6847fa457eb8fe53.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2024-09-20 06:00:40', '2024-09-20 06:04:18', 1, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ai_powerpv`
--

CREATE TABLE `ai_powerpv` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pv` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cr_dr` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_products`
--

CREATE TABLE `ai_products` (
  `id` int(11) NOT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `product_code` varchar(20) NOT NULL,
  `ptitle` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `gallery` varchar(1000) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `params` text DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(200) DEFAULT NULL,
  `meta_keywords` varchar(200) DEFAULT NULL,
  `category` varchar(80) DEFAULT NULL,
  `featured` int(11) NOT NULL,
  `bvp` int(11) NOT NULL,
  `dp` varchar(5) NOT NULL,
  `offer` float(6,2) NOT NULL DEFAULT 0.00,
  `discount` varchar(10) DEFAULT NULL,
  `sequence` int(4) NOT NULL DEFAULT 1,
  `sizes` varchar(100) DEFAULT NULL,
  `product_type` int(1) NOT NULL DEFAULT 1,
  `qty` int(4) NOT NULL DEFAULT 1,
  `gst` int(2) NOT NULL,
  `keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_products`
--

INSERT INTO `ai_products` (`id`, `sku`, `product_code`, `ptitle`, `slug`, `description`, `price`, `image`, `gallery`, `status`, `created`, `params`, `meta_title`, `meta_description`, `meta_keywords`, `category`, `featured`, `bvp`, `dp`, `offer`, `discount`, `sequence`, `sizes`, `product_type`, `qty`, `gst`, `keywords`) VALUES
(1, NULL, '00001', 'I-BOOST', 'i-boost', '<p>Disclaimer: Due to natural Ingredients the color, taste, and consistency may vary</p><p>Precautions: Avoid during pregnancy and lactation consult a physician before using this product in any other medical conditions</p><p>KEEP OUT OF REACH OF CHILDREN</p>', 699.00, '1725444817_f331fa48a187426eccd3.jpg', '', 1, NULL, NULL, NULL, NULL, NULL, '17', 0, 0, '', 0.00, '0', 0, NULL, 1, 100, 0, NULL),
(2, NULL, '00002', 'OMEGA', 'omega', '<p>Disclaimer: Due to natural Ingredients the color, taste, and consistency may vary</p><p>Precautions: Avoid during pregnancy and lactation consult a physician before using this product in any other medical conditions</p><p>KEEP OUT OF REACH OF CHILDREN</p>', 799.00, '1725445432_6fb4314d018b48f790c0.jpg', '', 1, NULL, NULL, NULL, NULL, NULL, '17', 0, 0, '', 0.00, '0', 0, NULL, 1, 100, 0, NULL),
(4, NULL, '00003', 'SLIM SHAPE', 'slim-shape', '<p>Disclaimer: Due to natural Ingredients the color, taste, and consistency may vary</p><p>Precautions: Avoid during pregnancy and lactation consult a physician before using this product in any other medical conditions</p><p>KEEP OUT OF REACH OF CHILDREN</p>', 1249.00, '1725445634_b44d2f0013295fde3a09.jpg', '', 1, NULL, NULL, NULL, NULL, NULL, '17', 0, 0, '', 0.00, '0', 0, NULL, 1, 100, 0, NULL),
(5, NULL, '00004', 'MULTIVIT-PRO PROTEIN POWDER (KESAR PISTA FLAVOUR)', 'multivit-pro-protein-powder-kesar-pista-flavour', '<p>Adequate overages are added to compensate for possible loss of potency on storage.</p><p>It contains permitted Synthetic food color &amp; added flavors Multivit-pro (Kesar Pista) supplies essential nutrients which support healthy growth and provide a wholesome nutritional supplement for pregnant women, adults as well as children.</p><p>Tastes Best with Milk</p>', 1190.00, '1725446092_4c609121db5eb0343a56.jpg', '', 1, NULL, NULL, NULL, NULL, NULL, '0', 0, 0, '', 0.00, '0', 0, NULL, 1, 12, 0, NULL),
(6, NULL, '00005', 'MULTIVIT-PRO PROTEIN POWDER (VANILA FLAVOUR)', 'multivit-pro-protein-powder-vanila-flavour', '<p>Adequate overages are added to compensate for possible loss of potency on storage.</p><p>Ingredients</p><p>Milk Protein, Sucrose, Malto Dextrine, Vitamins and Minerals. As directed by the Dietician</p><p>It contains permitted Synthetic food color &amp; added flavors. Multivit-pro suppliesessential nutrients which support healthy growth and provide a wholesome nutritional supplement for pregnant women, adults as well as children.</p><p>Tastes Best with Milk</p>', 1190.00, '1725446671_d297a7f6c483ac6b64a9.jpg', '', 1, NULL, NULL, NULL, NULL, NULL, '17', 0, 0, '', 0.00, '0', 0, NULL, 1, 6, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_reports`
--

CREATE TABLE `ai_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `left_count` int(11) DEFAULT 0,
  `right_count` int(11) DEFAULT 0,
  `left_carry` int(11) DEFAULT 0,
  `right_carry` int(11) DEFAULT 0,
  `plan_total` int(11) DEFAULT 0,
  `matching` int(11) DEFAULT NULL,
  `laps` int(11) DEFAULT NULL,
  `laps_amt` int(11) NOT NULL DEFAULT 0,
  `created` date DEFAULT NULL,
  `report_created` datetime DEFAULT NULL,
  `slot` int(2) NOT NULL,
  `left_pv` int(4) NOT NULL DEFAULT 0,
  `right_pv` int(4) NOT NULL DEFAULT 0,
  `txn_id` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_rewards`
--

CREATE TABLE `ai_rewards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `reward_title` varchar(200) DEFAULT NULL,
  `gift_item` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_states`
--

CREATE TABLE `ai_states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(40) NOT NULL,
  `sequence` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_states`
--

INSERT INTO `ai_states` (`id`, `state_name`, `sequence`) VALUES
(1, 'Andaman and Nicobar Islands', 0),
(2, 'Andhra Pradesh', 0),
(3, 'Arunachal Pradesh', 0),
(4, 'Assam', 0),
(5, 'Bihar', 0),
(6, 'Chandigarh', 0),
(7, 'Chhattisgarh', 0),
(8, 'Dadra and Nagar Haveli', 0),
(9, 'Daman and Diu', 0),
(10, 'Delhi', 0),
(11, 'Goa', 0),
(12, 'Gujarat', 0),
(13, 'Haryana', 0),
(14, 'Himachal Pradesh', 0),
(15, 'Jammu and Kashmir', 0),
(16, 'Jharkhand', 0),
(17, 'Karnataka', 0),
(18, 'Kenmore', 0),
(19, 'Kerala', 0),
(20, 'Lakshadweep', 0),
(21, 'Madhya Pradesh', 0),
(22, 'Maharashtra', 0),
(23, 'Manipur', 0),
(24, 'Meghalaya', 0),
(25, 'Mizoram', 0),
(26, 'Nagaland', 0),
(29, 'Odisha', 0),
(31, 'Pondicherry', 0),
(32, 'Punjab', 0),
(33, 'Rajasthan', 0),
(34, 'Sikkim', 0),
(35, 'Tamil Nadu', 0),
(36, 'Telangana', 0),
(37, 'Tripura', 0),
(38, 'Uttar Pradesh', 0),
(39, 'Uttarakhand', 0),
(41, 'West Bengal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ai_stock`
--

CREATE TABLE `ai_stock` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_stock`
--

INSERT INTO `ai_stock` (`id`, `user_id`, `product_id`, `qty`) VALUES
(1, 197042, 1, 4),
(2, 197042, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ai_stock_order`
--

CREATE TABLE `ai_stock_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `order_status` int(1) DEFAULT NULL,
  `order_items` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_stock_order`
--

INSERT INTO `ai_stock_order` (`id`, `user_id`, `created`, `updated`, `order_status`, `order_items`) VALUES
(1, 197042, '2023-10-05 07:42:21', '2023-10-05 07:52:11', 1, '[{\"id\":\"1\",\"qty\":4},{\"id\":\"2\",\"qty\":1}]');

-- --------------------------------------------------------

--
-- Table structure for table `ai_supports`
--

CREATE TABLE `ai_supports` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_supports_view`
--

CREATE TABLE `ai_supports_view` (
  `id` int(11) NOT NULL,
  `support_id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_topup`
--

CREATE TABLE `ai_topup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `toup_for` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_topup_history`
--

CREATE TABLE `ai_topup_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `act_type` enum('fund','pin') DEFAULT NULL,
  `act_info` varchar(10) DEFAULT NULL,
  `topup_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_transaction`
--

CREATE TABLE `ai_transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `notes` varchar(111) NOT NULL,
  `cr_dr` varchar(2) NOT NULL,
  `created` datetime NOT NULL,
  `ref_id` varchar(40) DEFAULT NULL,
  `paylevel` int(11) NOT NULL DEFAULT 0,
  `rank` int(1) NOT NULL DEFAULT 0,
  `comments` varchar(100) DEFAULT NULL,
  `total_bal` float(12,2) NOT NULL DEFAULT 0.00,
  `txn_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_transaction`
--

INSERT INTO `ai_transaction` (`id`, `user_id`, `amount`, `notes`, `cr_dr`, `created`, `ref_id`, `paylevel`, `rank`, `comments`, `total_bal`, `txn_id`) VALUES
(1, 831992, 175.00, 'sponsor', 'cr', '2024-09-13 05:30:05', '259949', 0, 1, 'TOPUP/ BP259949', 175.00, 'sponsor-259949'),
(2, 831992, 700.00, 'level', 'cr', '2024-09-13 05:30:05', '11', 1, 1, 'REPURCHASE LEVEL/1', 875.00, 'repurchase-11-1'),
(3, 464445, 175.00, 'level', 'cr', '2024-09-13 05:30:05', '11', 2, 1, 'REPURCHASE LEVEL/2', 175.00, 'repurchase-11-2'),
(4, 1, 70.00, 'level', 'cr', '2024-09-13 05:30:05', '11', 3, 1, 'REPURCHASE LEVEL/3', 70.00, 'repurchase-11-3'),
(5, 464445, 0.05, 'sponsor', 'cr', '2024-09-14 13:14:49', '218662', 0, 1, 'TOPUP/ BP218662', 175.05, 'sponsor-218662'),
(6, 464445, 0.20, 'level', 'cr', '2024-09-14 13:14:49', '12', 1, 1, 'REPURCHASE LEVEL/1', 175.25, 'repurchase-12-1'),
(7, 1, 0.05, 'level', 'cr', '2024-09-14 13:14:49', '12', 2, 1, 'REPURCHASE LEVEL/2', 70.05, 'repurchase-12-2'),
(8, 1, 0.05, 'sponsor', 'cr', '2024-09-14 14:43:13', '356130', 0, 1, 'TOPUP/ BP356130', 70.10, 'sponsor-356130'),
(9, 1, 0.20, 'level', 'cr', '2024-09-14 14:43:13', '13', 1, 1, 'REPURCHASE LEVEL/1', 70.30, 'repurchase-13-1'),
(10, 464445, 175.00, 'sponsor', 'cr', '2024-09-16 06:44:46', '405571', 0, 1, 'TOPUP/ BP405571', 350.25, 'sponsor-405571'),
(11, 464445, 700.00, 'level', 'cr', '2024-09-16 06:44:46', '14', 1, 1, 'REPURCHASE LEVEL/1', 1050.25, 'repurchase-14-1'),
(12, 1, 175.00, 'level', 'cr', '2024-09-16 06:44:46', '14', 2, 1, 'REPURCHASE LEVEL/2', 245.30, 'repurchase-14-2'),
(13, 831992, 500.00, 'withdraw', 'dr', '2024-09-16 06:57:24', '1', 0, 0, 'Withdraw', 375.00, NULL),
(14, 831992, 500.00, 'withdraw', 'cr', '2024-09-16 07:06:49', '1', 0, 1, 'Withdraw Declined by admin', 875.00, ''),
(15, 464445, 500.00, 'withdraw', 'dr', '2024-09-24 11:30:39', '2', 0, 0, 'Withdraw', 550.25, NULL),
(16, 464445, 500.00, 'withdraw', 'cr', '2024-09-24 11:33:00', '2', 0, 1, 'Withdraw Declined by admin', 1050.25, ''),
(17, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 11:58:10', '247091', 0, 1, 'TOPUP/ BP247091', 1225.25, 'sponsor-247091'),
(18, 464445, 700.00, 'level', 'cr', '2024-09-24 11:58:10', '16', 1, 1, 'LEVEL/1', 1925.25, 'repurchase-16-1'),
(19, 1, 175.00, 'level', 'cr', '2024-09-24 11:58:10', '16', 2, 1, 'LEVEL/2', 420.30, 'repurchase-16-2'),
(20, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 11:59:39', '500023', 0, 1, 'TOPUP/ BP500023', 2100.25, 'sponsor-500023'),
(21, 464445, 700.00, 'level', 'cr', '2024-09-24 11:59:39', '17', 1, 1, 'LEVEL/1', 2800.25, 'repurchase-17-1'),
(22, 1, 175.00, 'level', 'cr', '2024-09-24 11:59:39', '17', 2, 1, 'LEVEL/2', 595.30, 'repurchase-17-2'),
(23, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:01:31', '394839', 0, 1, 'TOPUP/ BP394839', 2975.25, 'sponsor-394839'),
(24, 464445, 700.00, 'level', 'cr', '2024-09-24 12:01:31', '18', 1, 1, 'LEVEL/1', 3675.25, 'repurchase-18-1'),
(25, 1, 175.00, 'level', 'cr', '2024-09-24 12:01:31', '18', 2, 1, 'LEVEL/2', 770.30, 'repurchase-18-2'),
(26, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:11:31', '730524', 0, 1, 'TOPUP/ BP730524', 3850.25, 'sponsor-730524'),
(27, 464445, 700.00, 'level', 'cr', '2024-09-24 12:11:31', '19', 1, 1, 'LEVEL/1', 4550.25, 'repurchase-19-1'),
(28, 1, 175.00, 'level', 'cr', '2024-09-24 12:11:31', '19', 2, 1, 'LEVEL/2', 945.30, 'repurchase-19-2'),
(29, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:12:58', '760238', 0, 1, 'TOPUP/ BP760238', 4725.25, 'sponsor-760238'),
(30, 464445, 700.00, 'level', 'cr', '2024-09-24 12:12:58', '20', 1, 1, 'LEVEL/1', 5425.25, 'repurchase-20-1'),
(31, 1, 175.00, 'level', 'cr', '2024-09-24 12:12:58', '20', 2, 1, 'LEVEL/2', 1120.30, 'repurchase-20-2'),
(32, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:13:49', '366173', 0, 1, 'TOPUP/ BP366173', 5600.25, 'sponsor-366173'),
(33, 464445, 700.00, 'level', 'cr', '2024-09-24 12:13:49', '21', 1, 1, 'LEVEL/1', 6300.25, 'repurchase-21-1'),
(34, 1, 70.00, 'level', 'cr', '2024-09-24 12:13:49', '21', 2, 1, 'LEVEL/2', 1190.30, 'repurchase-21-2'),
(35, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:14:27', '958276', 0, 1, 'TOPUP/ BP958276', 6475.25, 'sponsor-958276'),
(36, 464445, 700.00, 'level', 'cr', '2024-09-24 12:14:27', '22', 1, 1, 'LEVEL/1', 7175.25, 'repurchase-22-1'),
(37, 1, 70.00, 'level', 'cr', '2024-09-24 12:14:27', '22', 2, 1, 'LEVEL/2', 1260.30, 'repurchase-22-2'),
(38, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:15:05', '594414', 0, 1, 'TOPUP/ BP594414', 7350.25, 'sponsor-594414'),
(39, 464445, 700.00, 'level', 'cr', '2024-09-24 12:15:05', '23', 1, 1, 'LEVEL/1', 8050.25, 'repurchase-23-1'),
(40, 1, 70.00, 'level', 'cr', '2024-09-24 12:15:05', '23', 2, 1, 'LEVEL/2', 1330.30, 'repurchase-23-2'),
(41, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 12:15:43', '864414', 0, 1, 'TOPUP/ BP864414', 8225.25, 'sponsor-864414'),
(42, 464445, 700.00, 'level', 'cr', '2024-09-24 12:15:43', '24', 1, 1, 'LEVEL/1', 8925.25, 'repurchase-24-1'),
(43, 1, 70.00, 'level', 'cr', '2024-09-24 12:15:43', '24', 2, 1, 'LEVEL/2', 1400.30, 'repurchase-24-2'),
(44, 464445, 175.00, 'sponsor', 'cr', '2024-09-24 17:46:18', '559805', 0, 1, 'TOPUP/ BP559805', 9100.25, 'sponsor-559805'),
(45, 464445, 700.00, 'level', 'cr', '2024-09-24 17:46:18', '25', 1, 1, 'LEVEL/1', 9800.25, 'repurchase-25-1'),
(46, 1, 70.00, 'level', 'cr', '2024-09-24 17:46:18', '25', 2, 1, 'LEVEL/2', 1470.30, 'repurchase-25-2'),
(47, 405571, 735.00, 'level', 'cr', '2024-09-25 18:11:40', '27', 2, 1, 'LEVEL/2', 735.00, 'purchase-27-2'),
(48, 464445, 210.00, 'level', 'cr', '2024-09-25 18:11:40', '27', 10, 1, 'LEVEL/10', 10010.25, 'purchase-27-10'),
(49, 1, 0.00, 'level', 'cr', '2024-09-25 18:11:40', '27', 11, 1, 'LEVEL/11', 1470.30, 'purchase-27-11'),
(50, 405571, 735.00, 'level', 'cr', '2024-09-25 18:14:31', '28', 2, 1, 'LEVEL/2', 1470.00, 'purchase-28-2'),
(51, 464445, 210.00, 'level', 'cr', '2024-09-25 18:14:31', '28', 10, 1, 'LEVEL/10', 10220.25, 'purchase-28-10'),
(52, 1, 0.00, 'level', 'cr', '2024-09-25 18:14:31', '28', 11, 1, 'LEVEL/11', 1470.30, 'purchase-28-11'),
(53, 464445, 175.00, 'sponsor', 'cr', '2024-09-25 18:21:12', '463630', 0, 1, 'TOPUP/ BP463630', 10395.25, 'sponsor-463630'),
(54, 463630, 700.00, 'level', 'cr', '2024-09-25 18:21:12', '29', 1, 1, 'LEVEL/1', 700.00, 'purchase-29-1'),
(55, 464445, 245.00, 'level', 'cr', '2024-09-25 18:21:12', '29', 10, 1, 'LEVEL/10', 10640.25, 'purchase-29-10'),
(56, 831992, 175.00, 'sponsor', 'cr', '2024-09-25 18:39:57', '650600', 0, 1, 'TOPUP/ BP650600', 1050.00, 'sponsor-650600'),
(57, 650600, 805.00, 'level', 'cr', '2024-09-25 18:39:57', '30', 4, 1, 'LEVEL/4', 805.00, 'purchase-30-4'),
(58, 831992, 119.00, 'level', 'cr', '2024-09-25 18:39:57', '30', 9, 1, 'LEVEL/9', 1169.00, 'purchase-30-9'),
(59, 464445, 21.00, 'level', 'cr', '2024-09-25 18:39:57', '30', 10, 1, 'LEVEL/10', 10661.25, 'purchase-30-10'),
(60, 612955, 770.00, 'level', 'cr', '2024-09-26 17:06:39', '31', 3, 1, 'LEVEL/3', 770.00, 'purchase-31-3'),
(61, 134693, 154.00, 'level', 'cr', '2024-09-26 17:06:39', '31', 9, 1, 'LEVEL/9', 154.00, 'purchase-31-9'),
(62, 464445, 21.00, 'level', 'cr', '2024-09-26 17:06:39', '31', 10, 1, 'LEVEL/10', 10682.25, 'purchase-31-10'),
(63, 1, 1024.65, 'level', 'cr', '2024-10-08 07:57:50', '33', 11, 1, 'LEVEL/11', 2494.95, 'purchase-33-11'),
(64, 1, 1024.65, 'level', 'cr', '2024-10-22 12:29:38', '32', 11, 1, 'LEVEL/11', 3519.60, 'purchase-32-11');

-- --------------------------------------------------------

--
-- Table structure for table `ai_userplans`
--

CREATE TABLE `ai_userplans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `daily_roi` float(4,2) NOT NULL DEFAULT 0.00,
  `amount` float(11,5) NOT NULL DEFAULT 0.00000,
  `matching` float(8,2) NOT NULL DEFAULT 0.00,
  `capping` float NOT NULL DEFAULT 0,
  `plancode` int(11) DEFAULT NULL,
  `start_dt` date DEFAULT NULL,
  `end_dt` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active, 2=complete, 3=reinvest, 4=withdrawan',
  `created` datetime DEFAULT NULL,
  `topup_token` float(10,5) NOT NULL DEFAULT 0.00000,
  `total_token` float(11,5) NOT NULL DEFAULT 0.00000,
  `reinvest` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_users`
--

CREATE TABLE `ai_users` (
  `slno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `passwd` varchar(40) DEFAULT NULL,
  `txnpin` varchar(40) DEFAULT NULL,
  `plan_total` float(10,2) DEFAULT 0.00,
  `email_id` varchar(55) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` int(3) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `pin_code` varchar(6) DEFAULT NULL,
  `epin` varchar(255) DEFAULT NULL,
  `pan_no` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `adhar_no` varchar(20) DEFAULT NULL,
  `aadharf` varchar(100) DEFAULT NULL,
  `aadharb` varchar(100) DEFAULT NULL,
  `passbook` varchar(100) DEFAULT NULL,
  `nominee` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `martial_status` varchar(10) DEFAULT NULL,
  `sponsor_id` int(100) NOT NULL,
  `position` int(1) NOT NULL DEFAULT 0,
  `franchise` int(30) DEFAULT 0,
  `ac_status` int(1) NOT NULL DEFAULT 0,
  `kyc_status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(200) DEFAULT NULL,
  `ac_active_date` datetime DEFAULT NULL,
  `user_rank` int(2) NOT NULL DEFAULT 0,
  `spil_id` int(11) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_branch` varchar(100) DEFAULT NULL,
  `bank_ifsc` varchar(40) DEFAULT NULL,
  `bank_ac_number` varchar(40) DEFAULT NULL,
  `bank_ac_name` varchar(100) DEFAULT NULL,
  `payout` int(1) NOT NULL DEFAULT 0,
  `kyc_updated` int(1) NOT NULL DEFAULT 0,
  `bank_edit` int(1) NOT NULL DEFAULT 1,
  `matching` int(5) NOT NULL DEFAULT 0,
  `is_upgraded` int(1) DEFAULT 0,
  `time_slot` int(1) DEFAULT 1,
  `block_msg` tinytext DEFAULT NULL,
  `btc_adrs` varchar(40) DEFAULT NULL,
  `phonepe` varchar(10) DEFAULT NULL,
  `google` varchar(10) DEFAULT NULL,
  `paytm` varchar(10) DEFAULT NULL,
  `upi_id` varchar(100) DEFAULT NULL,
  `id_proof` varchar(100) DEFAULT NULL,
  `address_proof` varchar(100) DEFAULT NULL,
  `otp_code` int(6) DEFAULT NULL,
  `otp_verified` int(1) DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT 0,
  `total_downline` int(11) NOT NULL DEFAULT 0,
  `kit_issue` int(1) DEFAULT NULL,
  `kit_issue_by` int(11) DEFAULT NULL,
  `kit_issue_date` date DEFAULT NULL,
  `kit_issue_details` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_users`
--

INSERT INTO `ai_users` (`slno`, `id`, `username`, `first_name`, `last_name`, `mobile`, `passwd`, `txnpin`, `plan_total`, `email_id`, `address`, `state`, `dob`, `father_name`, `status`, `created`, `pin_code`, `epin`, `pan_no`, `pan`, `adhar_no`, `aadharf`, `aadharb`, `passbook`, `nominee`, `relation`, `district`, `city_name`, `gender`, `martial_status`, `sponsor_id`, `position`, `franchise`, `ac_status`, `kyc_status`, `image`, `ac_active_date`, `user_rank`, `spil_id`, `bank_name`, `bank_branch`, `bank_ifsc`, `bank_ac_number`, `bank_ac_name`, `payout`, `kyc_updated`, `bank_edit`, `matching`, `is_upgraded`, `time_slot`, `block_msg`, `btc_adrs`, `phonepe`, `google`, `paytm`, `upi_id`, `id_proof`, `address_proof`, `otp_code`, `otp_verified`, `pv`, `total_downline`, `kit_issue`, `kit_issue_by`, `kit_issue_date`, `kit_issue_details`) VALUES
(1, 1, 'BP000001', 'Dipika', 'Kumari', '9835050312', '1234', NULL, 0.00, 'amitkkashyap1999@gmail.com', 'Ranchi', 5, '1973-06-27', '', 1, '2022-05-27 15:34:45', '834004', '0RNKSB', 'FXFPK5435N', '', '296167194067', '', '', '', '', '', NULL, 'Ranchi', '1', '1', 0, 0, 0, 1, 1, '', '2021-02-27 18:59:00', 10, 0, 'SBI', 'cb', 'eb', 'db', 'bb', 1, 0, 1, 9, 0, 1, 'Sorry, You have been removed !!', '', '', '', '', '', '1725965085_6c071916c09b80fddc95.jpeg', '1725965091_a97ab55599e98a55ff1d.jpeg', NULL, NULL, 0, 38750, 1, 197042, '2023-10-05', '1'),
(2, 356130, 'BP356130', 'BIG DEAL ', 'PRO', '9835050312', '43144', NULL, 1.00, 'amitkrv2.a@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-10 03:38:45', NULL, NULL, 'Azxpk8566F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, NULL, 9, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9455, 1, 0, 0, NULL, NULL, NULL, NULL),
(3, 464445, 'BP464445', 'AMIT KUMAR ', 'KASHYAP ', '9835050312', '36097', NULL, 0.00, 'anmlmblackdiamond@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-10 03:40:16', NULL, NULL, 'AZXPK8566H', '1727177325_d11ea0431b29e39f4150.jpeg', NULL, '1727177342_5586014fe86187869c14.jpeg', '1727177332_4b8f457fc2d95ce8fece.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, NULL, 9, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8809, 1, 0, 0, NULL, NULL, NULL, NULL),
(4, 831992, 'BP831992', 'AMIN', 'AHMAD', '7717764362', '16469', NULL, 0.00, 'aminahmadranchi7311@gmai.com', 'aa', 10, '2006-09-16', '', 1, '2024-09-10 08:59:57', 'aaaaa', NULL, 'AWWPA1127G', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'aa', '1', NULL, 464445, 0, 0, 1, 0, NULL, NULL, 8, 464445, 'aa', 'dd', 'dd', 'cc', 'bb', 1, 0, 0, 0, 0, 1, '', NULL, '', '', '', 'dd', NULL, NULL, 7267, 1, 0, 0, NULL, NULL, NULL, NULL),
(5, 276079, 'BP276079', 'Md. Sakil ', 'Khan', '7488267061', 'S@123', NULL, 0.00, 'khansakil91@gmail.com', 'Idgah road chitarpur ', 16, '1972-01-04', '', 1, '2024-09-10 09:14:11', '825101', NULL, '657841650798', '1727368430_abf872f0726bf3976dbf.jpg', '', '1727368489_5f69e6fffcbffb0ab793.jpg', '1727368560_8ee48a1369f7fe95054c.jpg', NULL, NULL, NULL, NULL, 'Ramgarh ', '1', NULL, 831992, 0, 0, 1, 0, NULL, NULL, 7, 831992, '', 'UPPER BAZAR', '', '', 'Mohammad Naushad Alam ', 1, 1, 0, 0, 0, 1, '', NULL, '', '', '', '', NULL, NULL, 6343, 1, 0, 0, NULL, NULL, NULL, NULL),
(6, 381677, 'BP381677', 'SHAMIMUL HASAN', 'HASAN', '9709402450', '39105', NULL, 0.00, 'shamimanhoniranchwi01@gamil.com', NULL, 0, NULL, '', 1, '2024-09-10 09:22:16', NULL, NULL, 'AIKPH7353M', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 276079, 0, 0, 1, 0, NULL, NULL, 6, 276079, '', NULL, '', '', NULL, 1, 1, 1, 0, 0, 1, '', NULL, '', '', '', NULL, '1726059038_24ce648ae4735b0e05bd.jpeg', '1726059045_67c59f3cc10f53314d53.jpeg', 7401, 1, 0, 0, NULL, NULL, NULL, NULL),
(7, 259949, 'BP259949', 'SUNIL KUMAR ', 'SINGH', '8252952994', '47613', NULL, 3500.00, 'aminahmad6998@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-10 09:40:22', NULL, NULL, 'CZXPS5477D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 831992, 0, 0, 1, 0, NULL, '2024-09-25 17:38:57', 7, 831992, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 9324, 1, 0, 0, NULL, NULL, NULL, NULL),
(8, 145138, 'BP145138', 'AHRAR AHMAD', 'AHMAD', '9431359847', '19218', NULL, 0.00, 'aminahmad6998@gmail.com', NULL, 0, NULL, '', 1, '2024-09-11 13:38:29', NULL, NULL, 'ALXPA4087F', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 381677, 0, 0, 1, 0, NULL, NULL, 5, 381677, '', NULL, '', '', NULL, 1, 0, 1, 0, 0, 1, '', NULL, '', '', '', NULL, NULL, NULL, 6920, 1, 0, 0, NULL, NULL, NULL, NULL),
(9, 481575, 'BP481575', 'ALI IMAM RAHMATI', 'IMAM', '9263947033', '29566', NULL, 0.00, 'aliimamrahmati576@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-11 13:47:37', NULL, NULL, 'AXPAA1227H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 831992, 0, 0, 1, 0, NULL, NULL, 4, 831992, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8658, 1, 0, 0, NULL, NULL, NULL, NULL),
(10, 458470, 'BP458470', 'ABHISHEK ', 'SINGH', '8404991400', '27442', NULL, 0.00, 'drabhisin06@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-12 04:25:42', NULL, NULL, 'Azmpk8566C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 259949, 0, 0, 1, 0, NULL, NULL, 4, 259949, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2229, 1, 0, 0, NULL, NULL, NULL, NULL),
(11, 399459, 'BP399459', 'MOHD FIROZ KAISHER SIDDIQUE ', 'KAISHER', '9709250757', '27801', NULL, 0.00, 'aminahmad6998@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-13 13:22:36', NULL, NULL, 'ASXPS4899Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 831992, 0, 0, 1, 0, NULL, NULL, 1, 831992, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6503, 1, 0, 0, NULL, NULL, NULL, NULL),
(12, 309641, 'BP309641', 'SIDDHARTH ', 'JHA', '7903886880', '46707', NULL, 0.00, 'raman147bksc@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-14 07:18:26', NULL, NULL, 'CTAPS6815A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, NULL, 8, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3669, 1, 0, 0, NULL, NULL, NULL, NULL),
(13, 218662, 'BP218662', 'KAMLESH ', 'SHARMA ', '6378059585', '17069', NULL, 1.00, 'sharma.k7278@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-14 07:22:41', NULL, NULL, 'CTAPS8815A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, NULL, 8, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5162, 1, 0, 0, NULL, NULL, NULL, NULL),
(14, 405571, 'BP405571', 'SHIVAM', 'SHARMA', '7004223243', '43161', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-14 16:20:30', NULL, NULL, 'HHWPS1431C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-25 18:14:31', 1, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6683, 1, 0, 0, NULL, NULL, NULL, NULL),
(15, 680531, 'BP680531', 'DEEPAK ', 'SHARMA', '8409708447', '32665', NULL, 0.00, '', NULL, NULL, NULL, '', 1, '2024-09-15 08:49:55', NULL, NULL, 'HHWPS7123Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 0, 0, NULL, NULL, 0, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4157, 1, 0, 0, NULL, NULL, NULL, NULL),
(16, 148125, 'BP148125', 'JITENDRA', 'JEET', '6200690090', '37739', NULL, 0.00, '', NULL, NULL, NULL, '', 1, '2024-09-15 11:07:53', NULL, NULL, 'AJVPJ6574G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 0, 0, NULL, NULL, 8, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8094, 1, 0, 0, NULL, NULL, NULL, NULL),
(17, 355635, 'BP355635', 'SANJAY KUMAR ', 'SINGH', '8210759612', '29054', NULL, 0.00, 'anmlmblackdiamond@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-19 09:01:12', NULL, NULL, 'Azxpk6685H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 0, 0, NULL, NULL, 8, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3703, 1, 0, 0, NULL, NULL, NULL, NULL),
(18, 134693, 'BP134693', 'SUJEET', 'KHALKHO', '7991136649', '31693', NULL, 0.00, 'sujit.khalkho@gmail.com', 'ARA GATE PHUTKAL TOLI, P/O- MAHILONG, P/S - TATISILWAI ', 16, '1974-10-27', '', 1, '2024-09-23 17:48:50', '835103', NULL, 'ANSPK9507D', '1727504790_ac7707c63f0b501522bf.jpg', '999441414534', '1727504888_de80d6a752d1e9d6da8e.jpg', '1727505046_124770924bfc9d8cc555.jpg', NULL, NULL, NULL, NULL, 'RANCHI ', '1', NULL, 464445, 0, 0, 0, 0, NULL, NULL, 8, 464445, 'STATE BANK OF INDIA ', 'NAAMKUM', 'SBIN0009011', '30832395759', 'SUJEET KHALKHO ', 1, 1, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2650, 1, 0, 0, NULL, NULL, NULL, NULL),
(19, 559805, 'BP559805', 'SKD', '', '7885675676', '31308', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:37:37', NULL, NULL, '', NULL, '1234567891256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-25 17:36:08', 0, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7492, 1, 0, 0, NULL, NULL, NULL, NULL),
(20, 864414, 'BP864414', 'ABC', '', '12345678', '13597', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:38:16', NULL, NULL, '', NULL, '1234567891255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-24 12:15:43', 1, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8479, 1, 0, 0, NULL, NULL, NULL, NULL),
(21, 594414, 'BP594414', 'ABCD', '', '1234', '28628', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:38:35', NULL, NULL, '', NULL, '1234567891257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-24 12:15:05', 2, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8243, 1, 0, 0, NULL, NULL, NULL, NULL),
(22, 958276, 'BP958276', 'ABCDE', '', '1', '29616', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:39:01', NULL, NULL, '', NULL, '1234567891254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-24 12:14:27', 2, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8257, 1, 0, 0, NULL, NULL, NULL, NULL),
(23, 366173, 'BP366173', 'ASD', '', '23', '47919', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:39:39', NULL, NULL, '', NULL, '123456789158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-24 12:13:49', 3, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2242, 1, 0, 0, NULL, NULL, NULL, NULL),
(24, 760238, 'BP760238', 'SFF', '', '2', '17444', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:39:58', NULL, NULL, '', NULL, '123456784758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-24 12:12:58', 4, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4330, 1, 0, 0, NULL, NULL, NULL, NULL),
(25, 730524, 'BP730524', 'WWW', '', 'SB', '23083', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:40:18', NULL, NULL, '', NULL, '1234567847796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, NULL, 5, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9857, 1, 0, 0, NULL, NULL, NULL, NULL),
(26, 394839, 'BP394839', 'DF', '', '23', '46668', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:40:45', NULL, NULL, '', NULL, '1234567842685', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, NULL, 6, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9471, 1, 0, 0, NULL, NULL, NULL, NULL),
(27, 500023, 'BP500023', 'DGDE', '', '2434', '46343', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:40:58', NULL, NULL, '', NULL, '1234567842686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, NULL, 7, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4886, 1, 0, 0, NULL, NULL, NULL, NULL),
(28, 247091, 'BP247091', 'SFG', '', '23542', '38332', NULL, 3500.00, '', NULL, NULL, NULL, '', 1, '2024-09-24 11:41:12', NULL, NULL, '', NULL, '12345678426698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, NULL, 8, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3692, 1, 0, 0, NULL, NULL, NULL, NULL),
(29, 463630, 'BP463630', 'TEST', 'TEST', '999999999999', '53803', NULL, 3500.00, 'test@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-25 18:20:20', NULL, NULL, '', NULL, '123412341234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 464445, 0, 0, 1, 0, NULL, '2024-09-25 18:21:12', 0, 464445, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5431, 1, 0, 0, NULL, NULL, NULL, NULL),
(30, 650600, 'BP650600', 'TEST1', 'TEST1', '9090909090', '15059', NULL, 3500.00, 'test1@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-25 18:38:52', NULL, NULL, '', NULL, '222233334444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 831992, 0, 0, 1, 0, NULL, '2024-09-25 18:39:57', 3, 831992, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8396, 1, 0, 0, NULL, NULL, NULL, NULL),
(31, 612955, 'BP612955', 'RAVI', 'KUMAR CHHETRI', '7765945396', '17313', NULL, 3500.00, 'chhetriravikumar068@gmail.com', NULL, NULL, NULL, '', 1, '2024-09-25 19:36:48', NULL, NULL, '', NULL, '621655923835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134693, 0, 0, 1, 0, NULL, '2024-09-26 17:06:39', 2, 134693, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9382, 1, 0, 0, NULL, NULL, NULL, NULL),
(32, 990646, 'BP990646', 'GULZAR', 'AHMAD', '9297781212', '35965', NULL, 0.00, 'mdgulzarahmad55@gmail.com', NULL, NULL, NULL, '', 1, '2024-10-01 13:56:07', NULL, NULL, '', NULL, '654327893456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 831992, 0, 0, 0, 0, NULL, NULL, 4, 831992, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2379, 1, 0, 0, NULL, NULL, NULL, NULL),
(33, 282114, 'BP282114', 'MANOJ KUMAR ', 'GUPTA ', '9122248342', '22861', NULL, 0.00, 'immanoj9263@gmail.com', NULL, NULL, NULL, '', 1, '2024-10-05 14:59:51', NULL, NULL, '', NULL, '505658687525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 259949, 0, 0, 0, 0, NULL, NULL, 6, 259949, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6652, 1, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_users1`
--

CREATE TABLE `ai_users1` (
  `id` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_users1`
--

INSERT INTO `ai_users1` (`id`, `username`, `first_name`, `last_name`, `mobile`, `createdAt`, `updatedAt`) VALUES
(1, 'BP000001', 'Dipika', 'Kumari', '9835050312', NULL, NULL),
(2, 'BP356130', 'BIG DEAL ', 'PRO', '9835050312', NULL, NULL),
(3, 'BP464445', 'AMIT KUMAR ', 'KASHYAP ', '9835050312', NULL, NULL),
(4, 'BP831992', 'AMIN', 'AHMAD', '7717764362', NULL, NULL),
(5, 'BP276079', 'Md. Sakil ', 'Khan', '7488267061', NULL, NULL),
(6, 'BP381677', 'SHAMIMUL HASAN', 'HASAN', '9709402450', NULL, NULL),
(7, 'BP259949', 'SUNIL KUMAR ', 'SINGH', '8252952994', NULL, NULL),
(8, 'BP145138', 'AHRAR AHMAD', 'AHMAD', '9431359847', NULL, NULL),
(9, 'BP481575', 'ALI IMAM RAHMATI', 'IMAM', '9263947033', NULL, NULL),
(10, 'BP458470', 'ABHISHEK ', 'SINGH', '8404991400', NULL, NULL),
(11, 'BP399459', 'MOHD FIROZ KAISHER SIDDIQUE ', 'KAISHER', '9709250757', NULL, NULL),
(12, 'BP309641', 'SIDDHARTH ', 'JHA', '7903886880', NULL, NULL),
(13, 'BP218662', 'KAMLESH ', 'SHARMA ', '6378059585', NULL, NULL),
(14, 'BP405571', 'SHIVAM', 'SHARMA', '7004223243', NULL, NULL),
(15, 'BP680531', 'DEEPAK ', 'SHARMA', '8409708447', NULL, NULL),
(16, 'BP148125', 'JITENDRA', 'JEET', '6200690090', NULL, NULL),
(17, 'BP355635', 'SANJAY KUMAR ', 'SINGH', '8210759612', NULL, NULL),
(18, 'BP134693', 'SUJEET', 'KHALKHO', '7991136649', NULL, NULL),
(19, 'BP559805', 'SKD', '', '7885675676', NULL, NULL),
(20, 'BP864414', 'ABC', '', '12345678', NULL, NULL),
(21, 'BP594414', 'ABCD', '', '1234', NULL, NULL),
(22, 'BP958276', 'ABCDE', '', '1', NULL, NULL),
(23, 'BP366173', 'ASD', '', '23', NULL, NULL),
(24, 'BP760238', 'SFF', '', '2', NULL, NULL),
(25, 'BP730524', 'WWW', '', 'SB', NULL, NULL),
(26, 'BP394839', 'DF', '', '23', NULL, NULL),
(27, 'BP500023', 'DGDE', '', '2434', NULL, NULL),
(28, 'BP247091', 'SFG', '', '23542', NULL, NULL),
(29, 'BP463630', 'TEST', 'TEST', '999999999999', NULL, NULL),
(30, 'BP650600', 'TEST1', 'TEST1', '9090909090', NULL, NULL),
(31, 'BP612955', 'RAVI', 'KUMAR CHHETRI', '7765945396', NULL, NULL),
(32, 'BP990646', 'GULZAR', 'AHMAD', '9297781212', NULL, NULL),
(33, 'BP282114', 'MANOJ KUMAR ', 'GUPTA ', '9122248342', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_users_meta`
--

CREATE TABLE `ai_users_meta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meta_name` varchar(40) DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_wallet`
--

CREATE TABLE `ai_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `wallet_type` int(1) NOT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `cr_dr` enum('cr','dr') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `ref_id` varchar(20) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_withdraw`
--

CREATE TABLE `ai_withdraw` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `wallet_type` varchar(20) DEFAULT NULL,
  `wallet_adrs` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `pay_method` varchar(20) DEFAULT NULL,
  `paid_total` varchar(40) DEFAULT NULL,
  `otp_code` int(4) DEFAULT NULL,
  `otp_verified` int(1) DEFAULT NULL,
  `coin_payment` varchar(100) DEFAULT NULL,
  `tds` float(10,2) DEFAULT NULL,
  `admin` float(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai_withdraw`
--

INSERT INTO `ai_withdraw` (`id`, `user_id`, `amount`, `wallet_type`, `wallet_adrs`, `created`, `updated`, `status`, `comments`, `txn_id`, `pay_method`, `paid_total`, `otp_code`, `otp_verified`, `coin_payment`, `tds`, `admin`) VALUES
(1, 831992, 500.00, '', NULL, '2024-09-16 06:57:24', '2024-09-16 07:06:00', 2, 'Rejected by admin', '', '', '450', NULL, NULL, '0', NULL, NULL),
(2, 464445, 500.00, '', NULL, '2024-09-24 11:30:39', '2024-09-24 11:33:00', 2, 'Rejected by admin', '', '', '450', NULL, NULL, '0', 25.00, 25.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_admin`
--
ALTER TABLE `ai_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_airdrop`
--
ALTER TABLE `ai_airdrop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_announcement`
--
ALTER TABLE `ai_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_cashback`
--
ALTER TABLE `ai_cashback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_cashback_orders`
--
ALTER TABLE `ai_cashback_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_categories`
--
ALTER TABLE `ai_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_clubmembers`
--
ALTER TABLE `ai_clubmembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_clubwallet`
--
ALTER TABLE `ai_clubwallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_company_wallet`
--
ALTER TABLE `ai_company_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_countries`
--
ALTER TABLE `ai_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_crons`
--
ALTER TABLE `ai_crons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_epin`
--
ALTER TABLE `ai_epin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_epin_request`
--
ALTER TABLE `ai_epin_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_fund`
--
ALTER TABLE `ai_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_fund_request`
--
ALTER TABLE `ai_fund_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_gallery`
--
ALTER TABLE `ai_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_gallery_img`
--
ALTER TABLE `ai_gallery_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_images`
--
ALTER TABLE `ai_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_level_manager`
--
ALTER TABLE `ai_level_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_media`
--
ALTER TABLE `ai_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_monthly_payments`
--
ALTER TABLE `ai_monthly_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_notifications`
--
ALTER TABLE `ai_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_options`
--
ALTER TABLE `ai_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ai_orders`
--
ALTER TABLE `ai_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_order_items`
--
ALTER TABLE `ai_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_packages`
--
ALTER TABLE `ai_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_package_items`
--
ALTER TABLE `ai_package_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_package_orders`
--
ALTER TABLE `ai_package_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_package_purchase_orders`
--
ALTER TABLE `ai_package_purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_payments`
--
ALTER TABLE `ai_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_payorder`
--
ALTER TABLE `ai_payorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_payout`
--
ALTER TABLE `ai_payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_plans`
--
ALTER TABLE `ai_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_postcats`
--
ALTER TABLE `ai_postcats`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `ai_posts`
--
ALTER TABLE `ai_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_powerpv`
--
ALTER TABLE `ai_powerpv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_products`
--
ALTER TABLE `ai_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_reports`
--
ALTER TABLE `ai_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_rewards`
--
ALTER TABLE `ai_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_states`
--
ALTER TABLE `ai_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_stock`
--
ALTER TABLE `ai_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_stock_order`
--
ALTER TABLE `ai_stock_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_supports`
--
ALTER TABLE `ai_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_supports_view`
--
ALTER TABLE `ai_supports_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_topup`
--
ALTER TABLE `ai_topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_topup_history`
--
ALTER TABLE `ai_topup_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_transaction`
--
ALTER TABLE `ai_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_userplans`
--
ALTER TABLE `ai_userplans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_users`
--
ALTER TABLE `ai_users`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `ai_users1`
--
ALTER TABLE `ai_users1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_users_meta`
--
ALTER TABLE `ai_users_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_wallet`
--
ALTER TABLE `ai_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_withdraw`
--
ALTER TABLE `ai_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_admin`
--
ALTER TABLE `ai_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_airdrop`
--
ALTER TABLE `ai_airdrop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_announcement`
--
ALTER TABLE `ai_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ai_cashback`
--
ALTER TABLE `ai_cashback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ai_cashback_orders`
--
ALTER TABLE `ai_cashback_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ai_categories`
--
ALTER TABLE `ai_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ai_clubmembers`
--
ALTER TABLE `ai_clubmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_clubwallet`
--
ALTER TABLE `ai_clubwallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_company_wallet`
--
ALTER TABLE `ai_company_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_countries`
--
ALTER TABLE `ai_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `ai_crons`
--
ALTER TABLE `ai_crons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_epin`
--
ALTER TABLE `ai_epin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_epin_request`
--
ALTER TABLE `ai_epin_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_fund`
--
ALTER TABLE `ai_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_fund_request`
--
ALTER TABLE `ai_fund_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_gallery`
--
ALTER TABLE `ai_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_gallery_img`
--
ALTER TABLE `ai_gallery_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_images`
--
ALTER TABLE `ai_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_level_manager`
--
ALTER TABLE `ai_level_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ai_media`
--
ALTER TABLE `ai_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ai_monthly_payments`
--
ALTER TABLE `ai_monthly_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_notifications`
--
ALTER TABLE `ai_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_options`
--
ALTER TABLE `ai_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ai_orders`
--
ALTER TABLE `ai_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ai_order_items`
--
ALTER TABLE `ai_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_packages`
--
ALTER TABLE `ai_packages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ai_package_items`
--
ALTER TABLE `ai_package_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_package_orders`
--
ALTER TABLE `ai_package_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ai_package_purchase_orders`
--
ALTER TABLE `ai_package_purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_payments`
--
ALTER TABLE `ai_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_payorder`
--
ALTER TABLE `ai_payorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_payout`
--
ALTER TABLE `ai_payout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_plans`
--
ALTER TABLE `ai_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ai_posts`
--
ALTER TABLE `ai_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_powerpv`
--
ALTER TABLE `ai_powerpv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_products`
--
ALTER TABLE `ai_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ai_reports`
--
ALTER TABLE `ai_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_rewards`
--
ALTER TABLE `ai_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_states`
--
ALTER TABLE `ai_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ai_stock`
--
ALTER TABLE `ai_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ai_stock_order`
--
ALTER TABLE `ai_stock_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ai_supports`
--
ALTER TABLE `ai_supports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_supports_view`
--
ALTER TABLE `ai_supports_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_topup`
--
ALTER TABLE `ai_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_topup_history`
--
ALTER TABLE `ai_topup_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_transaction`
--
ALTER TABLE `ai_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ai_userplans`
--
ALTER TABLE `ai_userplans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_users`
--
ALTER TABLE `ai_users`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ai_users1`
--
ALTER TABLE `ai_users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ai_users_meta`
--
ALTER TABLE `ai_users_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_wallet`
--
ALTER TABLE `ai_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_withdraw`
--
ALTER TABLE `ai_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
