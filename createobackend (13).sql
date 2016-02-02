-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2016 at 07:38 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `createobackend`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Operator'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user`, `quantity`, `product`, `timestamp`, `size`, `color`) VALUES
(3, 1, 1, '3', '2015-12-07 10:41:16', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crudtype`
--

CREATE TABLE IF NOT EXISTS `crudtype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crudtype`
--

INSERT INTO `crudtype` (`id`, `name`) VALUES
(1, 'create'),
(2, 'update'),
(3, 'delete'),
(4, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE IF NOT EXISTS `demo` (
  `id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `demo_demotable`
--

CREATE TABLE IF NOT EXISTS `demo_demotable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtest_article`
--

CREATE TABLE IF NOT EXISTS `dtest_article` (
  `id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL,
  `table` int(11) NOT NULL,
  `sqlname` varchar(255) NOT NULL,
  `sqltype` varchar(255) NOT NULL,
  `isprimary` varchar(255) NOT NULL,
  `defaultvalue` varchar(255) NOT NULL,
  `isnull` varchar(255) NOT NULL,
  `autoincrement` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `placeholder` varchar(255) NOT NULL,
  `showinview` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `table`, `sqlname`, `sqltype`, `isprimary`, `defaultvalue`, `isnull`, `autoincrement`, `title`, `type`, `placeholder`, `showinview`) VALUES
(1, 1, 'sql', '2', 'no', '0', 'no', 'no', 'id', '2', 'id', 'top'),
(4, 4, 'asa1', '1', 'FALSE', '0', 'TRUE', 'FALSE', 'HTC test', '1', '3', 'top'),
(5, 5, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'Id', '1', 'id', 'top'),
(6, 5, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'name', 'top'),
(7, 5, 'email', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Email', '8', 'email', 'top'),
(8, 5, 'package', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Package', '1', 'package', 'top'),
(9, 6, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'Id', '1', 'id', 'top'),
(10, 6, 'text', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Text', '1', 'text', 'top'),
(11, 6, 'type', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Type', '3', 'type', 'top'),
(12, 6, 'starttime', '6', 'FALSE', '0', 'FALSE', 'FALSE', 'Start Time', '1', 'Start Time', 'top'),
(13, 6, 'endtime', '6', 'FALSE', '0', 'FALSE', 'FALSE', 'End Time', '1', 'End Time', 'top'),
(14, 7, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'Id', '1', 'id', 'top'),
(15, 7, 'email', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Email', '8', 'Email', 'top'),
(16, 7, 'question', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Question', '3', 'Question', 'top'),
(17, 8, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'Id', '1', 'id', 'top'),
(18, 8, 'title', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Title', '1', 'Title', 'top'),
(19, 8, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(20, 8, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(21, 8, 'question', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Question', '3', 'Question', 'top'),
(22, 9, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'Id', '1', 'id', 'top'),
(23, 9, 'user', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'User', '3', 'User', 'top'),
(24, 9, 'question', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Question', '3', 'Question', 'top'),
(25, 9, 'option', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Option', '3', 'Option', 'top'),
(26, 10, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'Id', '1', 'id', 'top'),
(27, 10, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'name', 'top'),
(28, 10, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(29, 11, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'Id', '1', 'id', 'top'),
(30, 11, 'conclusion', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Conclusion', '3', 'Conclusion', 'top'),
(31, 11, 'question', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Question', '3', 'Question', 'top'),
(32, 12, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'Id', '1', 'id', 'top'),
(33, 12, 'conclusion', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Conclusion', '3', 'Conclusion', 'top'),
(34, 12, 'suggestion', '5', 'FALSE', '0', 'FALSE', 'FALSE', 'Suggestion', '2', 'Suggestion', 'top'),
(35, 13, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'Id', '1', 'id', 'top'),
(36, 13, 'conclusion', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Conclusion', '3', 'Conclusion', 'top'),
(37, 13, 'conclusionsuggestion', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Conclusion Suggestion', '3', 'Conclusion Suggestion', 'top'),
(38, 14, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'Id', '1', 'id', 'top'),
(39, 14, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'name', 'top'),
(40, 15, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'Id', '1', 'id', 'top'),
(41, 15, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'name', 'top'),
(42, 16, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'id', '1', 'id', 'top'),
(43, 16, 'title', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'title', '1', 'title', 'top'),
(44, 16, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'image', '10', 'image', 'top'),
(45, 16, 'content', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'content', '1', 'content', 'top'),
(46, 16, 'timestamp', '4', 'FALSE', '0', 'FALSE', 'FALSE', 'timestamp', '1', 'timestamp', 'top'),
(47, 16, 'views', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'views', '1', 'views', 'top'),
(51, 18, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(52, 18, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(53, 19, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(54, 19, 'played', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'played', '1', 'Played', 'top'),
(55, 19, 'wins', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Wins', '1', 'Wins', 'top'),
(56, 19, 'lost', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Lost', '1', 'Lost', 'top'),
(57, 19, 'point', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Point', '1', 'Point', 'top'),
(58, 20, 'id', '1', 'TRUE', '0', 'TRUE', 'TRUE', 'ID', '1', 'ID', 'top'),
(59, 20, 'timestamp', '4', 'FALSE', '0', 'FALSE', 'FALSE', 'Timestamp', '1', 'Timestamp', 'top'),
(60, 20, 'team1', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Team1', '1', 'Team1', 'top'),
(61, 20, 'team2', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Team2', '1', 'Team2', 'top'),
(62, 20, 'stadium', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'stadium', '3', 'stadium', 'top'),
(63, 20, 'bookticket', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Book Ticket', '1', 'Book Ticket', 'top'),
(64, 21, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(65, 21, 'product', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Product', '1', 'Product', 'top'),
(66, 21, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(67, 21, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(68, 21, 'link', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Link', '1', 'Link', 'top'),
(69, 22, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(70, 22, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(71, 22, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(72, 22, 'link', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Link', '1', 'Link', 'top'),
(73, 22, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(74, 23, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(75, 23, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(76, 23, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(77, 23, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(78, 24, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(79, 24, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(80, 24, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(81, 24, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(82, 24, 'gallery', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Gallery', '3', 'Gallery', 'top'),
(83, 25, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(84, 25, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(85, 25, 'content', '5', 'FALSE', '0', 'FALSE', 'FALSE', 'Content', '2', 'Content', 'top'),
(86, 25, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(87, 25, 'type', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Type', '3', 'Type', 'top'),
(88, 25, 'timestamp', '4', 'FALSE', '0', 'FALSE', 'FALSE', 'Timestamp', '1', 'Timestamp', 'top'),
(89, 26, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(90, 26, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(91, 26, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(92, 26, 'type', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Type', '3', 'Type', 'top'),
(93, 26, 'nationality', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Nationality', '1', 'Nationality', 'top'),
(94, 26, 'dob', '6', 'FALSE', '0', 'FALSE', 'FALSE', 'Dob', '11', 'Dob', 'top'),
(95, 26, 'jerseyno', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Jerseyno', '1', 'Jerseyno', 'top'),
(96, 26, 'about', '5', 'FALSE', '0', 'FALSE', 'FALSE', 'About', '2', 'About', 'top'),
(97, 27, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(98, 27, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(99, 27, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(100, 27, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(101, 28, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(102, 28, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(103, 28, 'wallpapercategory', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Wallpaper Category', '3', 'Wallpaper Category', 'top'),
(104, 28, 'image1', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image1', '1', 'Image1', 'top'),
(105, 28, 'image2', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image2', '1', 'Image2', 'top'),
(106, 28, 'image3', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image3', '1', 'Image3', 'top'),
(107, 28, 'image4', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image4', '1', 'Image4', 'top'),
(108, 28, 'image5', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image5', '1', 'Image5', 'top'),
(109, 28, 'image6', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image6', '1', 'Image6', 'top'),
(110, 29, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(111, 29, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(112, 29, 'content', '5', 'FALSE', '0', 'FALSE', 'FALSE', 'Content', '2', 'Content', 'top'),
(113, 30, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(114, 30, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(115, 30, 'content', '5', 'FALSE', '0', 'FALSE', 'FALSE', 'Content', '2', 'Content', 'top'),
(116, 30, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(117, 30, 'type', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Type', '3', 'Type', 'top'),
(118, 31, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(119, 31, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(120, 31, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(121, 32, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(122, 32, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(123, 32, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(124, 32, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(125, 33, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(126, 33, 'videogallery', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Video Gallery', '3', 'Video Gallery', 'top'),
(127, 33, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(128, 33, 'url', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'url', '1', 'url', 'top'),
(129, 33, 'order', '1', 'FALSE', '0', 'FALSE', 'FALSE', 'Order', '1', 'Order', 'top'),
(130, 33, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '1', 'Image', 'top'),
(131, 34, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(132, 34, 'email', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Email', '8', 'Email', 'top'),
(133, 34, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(134, 34, 'comment', '5', 'FALSE', '0', 'FALSE', 'FALSE', 'Comment', '2', 'Comment', 'top'),
(135, 34, 'phone', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Phone', '1', 'Phone', 'top'),
(136, 34, 'timestamp', '4', 'FALSE', '0', 'FALSE', 'FALSE', 'Timestamp', '1', 'Timestamp', 'top'),
(137, 35, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(138, 35, 'email', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Email', '8', 'Email', 'top'),
(139, 35, 'timestamp', '4', 'FALSE', '0', 'FALSE', 'FALSE', 'Timestamp', '1', 'Timestamp', 'top'),
(140, 14, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '10', 'Image', 'top'),
(141, 36, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(142, 36, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(143, 36, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '10', 'Image', 'top'),
(144, 37, 'id', '1', 'TRUE', '0', 'FALSE', 'TRUE', 'ID', '1', 'ID', 'top'),
(145, 37, 'name', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Name', '1', 'Name', 'top'),
(146, 37, 'image', '2', 'FALSE', '0', 'FALSE', 'FALSE', 'Image', '10', 'Image', 'top');

-- --------------------------------------------------------

--
-- Table structure for table `fieldselectfield`
--

CREATE TABLE IF NOT EXISTS `fieldselectfield` (
  `id` int(11) NOT NULL,
  `field` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fieldselectfield`
--

INSERT INTO `fieldselectfield` (`id`, `field`, `name`, `value`) VALUES
(1, 1, 'subcat1', '30');

-- --------------------------------------------------------

--
-- Table structure for table `fieldtype`
--

CREATE TABLE IF NOT EXISTS `fieldtype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fieldtype`
--

INSERT INTO `fieldtype` (`id`, `name`) VALUES
(1, 'text'),
(2, 'textarea'),
(3, 'select'),
(4, 'selectfromtable'),
(5, 'multiselect'),
(6, 'multiselectfromtable'),
(7, 'hidden'),
(8, 'email'),
(9, 'number'),
(10, 'file'),
(11, 'date');

-- --------------------------------------------------------

--
-- Table structure for table `fieldvalidation`
--

CREATE TABLE IF NOT EXISTS `fieldvalidation` (
  `id` int(11) NOT NULL,
  `field` int(11) NOT NULL,
  `validation` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fieldvalidation`
--

INSERT INTO `fieldvalidation` (`id`, `field`, `validation`) VALUES
(1, 1, 'required'),
(2, 2, 'trim'),
(4, 1, 'trim');

-- --------------------------------------------------------

--
-- Table structure for table `logintype`
--

CREATE TABLE IF NOT EXISTS `logintype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintype`
--

INSERT INTO `logintype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Email'),
(4, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `master_company`
--

CREATE TABLE IF NOT EXISTS `master_company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `package` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Users', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(4, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(18, 'Project', '', '', 'site/viewproject', 1, 0, 1, 2, 'icon-dashboard'),
(19, 'Table', '', '', 'site/viewtable', 1, 0, 1, 3, 'icon-dashboard'),
(20, 'Field', '', '', 'site/viewfield', 1, 0, 1, 4, 'icon-dashboard'),
(21, 'Pages', '', '', 'site/viewpage', 1, 0, 1, 5, 'icon-dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `menu1`
--

CREATE TABLE IF NOT EXISTS `menu1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `linktype` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu1`
--

INSERT INTO `menu1` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Pooja', '', '', 'site/viewpooja', '1', 0, 1, 1, 'icon-dashboard'),
(2, 'Jagruti', '', '', 'site/viewjagruti', '1', 0, 1, 1, 'icon-dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(4, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  `table` int(11) NOT NULL,
  `navigationname` varchar(255) NOT NULL,
  `navigationtype` varchar(255) NOT NULL,
  `navigationparent` varchar(255) NOT NULL,
  `crudtype` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `table`, `navigationname`, `navigationtype`, `navigationparent`, `crudtype`) VALUES
(1, 1, '1', '1', '1', 1),
(2, 1, 'aas', 'saxs', 'axa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pageaccesslevel`
--

CREATE TABLE IF NOT EXISTS `pageaccesslevel` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `accesslevel` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pageaccesslevel`
--

INSERT INTO `pageaccesslevel` (`id`, `page`, `accesslevel`) VALUES
(1, 4, 'user'),
(2, 4, 'admin'),
(3, 2, 'admin'),
(4, 2, 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `databasename` varchar(255) NOT NULL,
  `databasepassword` varchar(255) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `mandrillid` varchar(255) NOT NULL,
  `mandrillpassword` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `email`, `databasename`, `databasepassword`, `hostname`, `userpassword`, `mandrillid`, `mandrillpassword`) VALUES
(1, 'toykraft', 'toykraft@email.com', 'toykraft', 'toykraft123', 'localhost', 'toykraft123', 'toykraftmandrill', 'toykraft123'),
(2, 'sergy', 'sergy@email.com', 'sergy', 'chintan1234', 'sergy123', 'chintan1234', 'sergy@email.com', 'sergy123'),
(3, 'master', 'pooja.wohlig@gmail.com', 'master', 'master', 'localhost', 'master', 'master', 'master'),
(5, 'hq', 'pooja.wohlig@gmail.com', 'hq', 'hq', 'localhost', 'hq', 'hq', 'hq'),
(6, 'test', 'pooja.wohlig@gmail.com', 'test', 'test', 'localhost', 'test', 'test', 'test'),
(7, 'demo', 'pooja.wohlig@gmail.com', 'demo', 'demo', 'localhost', 'demo', 'demo', 'demo'),
(8, 'dtest', 'vinodbeloshe12@gmail.com', 'dtest', 'dtest', 'localhost', 'dtest', 'dtest', 'dtest'),
(9, 'jpp', 'pooja@wohlig.com', 'jpp', 'jpp', 'localhost', 'jpp', 'jpp', 'jpp'),
(10, 'testagain', 'pooja@wohlig.com', 'testagain', 'testagain', 'localhost', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `projectaccesslevel`
--

CREATE TABLE IF NOT EXISTS `projectaccesslevel` (
  `id` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `accesslevel` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectaccesslevel`
--

INSERT INTO `projectaccesslevel` (`id`, `project`, `accesslevel`) VALUES
(2, 1, 'admin'),
(3, 2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sqltype`
--

CREATE TABLE IF NOT EXISTS `sqltype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sqltype`
--

INSERT INTO `sqltype` (`id`, `name`) VALUES
(1, 'int'),
(2, 'varchar'),
(3, 'double'),
(4, 'timestamp'),
(5, 'text'),
(6, 'date');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'inactive'),
(2, 'Active'),
(3, 'Waiting'),
(4, 'Active Waiting'),
(5, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `id` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `project`, `tablename`) VALUES
(1, 1, 'category'),
(4, 1, 'demo'),
(5, 3, 'company'),
(6, 4, 'surveyquestion'),
(7, 4, 'surveyquestionuser'),
(8, 4, 'surveyoption'),
(9, 4, 'surveyquestionanswer'),
(10, 5, 'conclusion'),
(11, 5, 'conclusionquestion'),
(12, 5, 'conclusionsuggestion'),
(13, 5, 'conclusionfinalsuggestion'),
(14, 6, 'exam'),
(15, 7, 'demotable'),
(16, 8, 'article'),
(18, 9, 'stadium'),
(19, 9, 'point'),
(20, 9, 'schedule'),
(21, 9, 'shop'),
(22, 9, 'merchandize'),
(23, 9, 'gallery'),
(24, 9, 'galleryslide'),
(25, 9, 'news'),
(26, 9, 'players'),
(27, 9, 'wallpapercategory'),
(28, 9, 'wallpaper'),
(29, 9, 'pages'),
(30, 9, 'team'),
(31, 9, 'sponsor'),
(32, 9, 'videogallery'),
(33, 9, 'videos'),
(34, 9, 'contactus'),
(35, 9, 'subscribe'),
(36, 10, 'pooja'),
(37, 10, 'jagruti');

-- --------------------------------------------------------

--
-- Table structure for table `testagain_jagruti`
--

CREATE TABLE IF NOT EXISTS `testagain_jagruti` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testagain_pooja`
--

CREATE TABLE IF NOT EXISTS `testagain_pooja` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test_exam`
--

CREATE TABLE IF NOT EXISTS `test_exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `socialid` varchar(255) NOT NULL,
  `logintype` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `billingaddress` text NOT NULL,
  `billingcity` varchar(255) NOT NULL,
  `billingstate` varchar(255) NOT NULL,
  `billingcountry` varchar(255) NOT NULL,
  `billingcontact` varchar(255) NOT NULL,
  `billingpincode` varchar(255) NOT NULL,
  `shippingaddress` text NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingcountry` varchar(255) NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `shippingname` varchar(255) NOT NULL,
  `shippingcontact` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `registrationno` varchar(255) NOT NULL,
  `vatnumber` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `image`, `username`, `socialid`, `logintype`, `json`, `firstname`, `lastname`, `phone`, `billingaddress`, `billingcity`, `billingstate`, `billingcountry`, `billingcontact`, `billingpincode`, `shippingaddress`, `shippingcity`, `shippingcountry`, `shippingstate`, `shippingpincode`, `shippingname`, `shippingcontact`, `currency`, `credit`, `companyname`, `registrationno`, `vatnumber`, `country`, `fax`, `gender`, `facebook`, `google`, `twitter`, `street`, `address`, `dob`, `city`, `state`, `pincode`) VALUES
(1, 'wohlig', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, 'images_(2)1.jpg', '', '', 'Facebook', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', '', '', ''),
(6, 'Pooja Thakare', '', 'pooja.wohlig@gmail.com', 3, '2015-12-09 06:02:37', 1, 'https://lh5.googleusercontent.com/-5B1PwZZrwdI/AAAAAAAAAAI/AAAAAAAAABw/J3Hf871N8IE/photo.jpg', '', '103402210128529539675', 'Google', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '103402210128529539675', '', '', '', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `status`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 23, 2, 'User Created', '2014-10-07 06:46:55'),
(7, 24, 2, 'User Created', '2014-10-07 06:48:25'),
(8, 25, 2, 'User Created', '2014-10-07 06:49:04'),
(9, 26, 2, 'User Created', '2014-10-07 06:49:16'),
(10, 27, 2, 'User Created', '2014-10-07 06:52:18'),
(11, 28, 2, 'User Created', '2014-10-07 06:52:45'),
(12, 29, 2, 'User Created', '2014-10-07 06:53:10'),
(13, 30, 2, 'User Created', '2014-10-07 06:53:33'),
(14, 31, 2, 'User Created', '2014-10-07 06:55:03'),
(15, 32, 2, 'User Created', '2014-10-07 06:55:33'),
(16, 33, 2, 'User Created', '2014-10-07 06:59:32'),
(17, 34, 2, 'User Created', '2014-10-07 07:01:18'),
(18, 35, 2, 'User Created', '2014-10-07 07:01:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 07:04:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 07:05:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 07:05:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 07:06:03'),
(23, 7, 6, 'User Created', '2014-10-17 06:22:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 06:32:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 06:32:37'),
(26, 8, 6, 'User Created', '2014-11-15 12:05:52'),
(27, 9, 6, 'User Created', '2014-12-02 10:46:36'),
(28, 9, 6, 'User Details Edited', '2014-12-02 10:47:34'),
(29, 4, 6, 'User Details Edited', '2014-12-03 10:34:49'),
(30, 4, 6, 'User Details Edited', '2014-12-03 10:36:34'),
(31, 4, 6, 'User Details Edited', '2014-12-03 10:36:49'),
(32, 8, 6, 'User Details Edited', '2014-12-03 10:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user`, `product`, `timestamp`) VALUES
(4, 1, '3', '2015-12-08 06:54:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslevel`
--
ALTER TABLE `accesslevel`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crudtype`
--
ALTER TABLE `crudtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_demotable`
--
ALTER TABLE `demo_demotable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtest_article`
--
ALTER TABLE `dtest_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fieldselectfield`
--
ALTER TABLE `fieldselectfield`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fieldtype`
--
ALTER TABLE `fieldtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fieldvalidation`
--
ALTER TABLE `fieldvalidation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintype`
--
ALTER TABLE `logintype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_company`
--
ALTER TABLE `master_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu1`
--
ALTER TABLE `menu1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pageaccesslevel`
--
ALTER TABLE `pageaccesslevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectaccesslevel`
--
ALTER TABLE `projectaccesslevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sqltype`
--
ALTER TABLE `sqltype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testagain_jagruti`
--
ALTER TABLE `testagain_jagruti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testagain_pooja`
--
ALTER TABLE `testagain_pooja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_exam`
--
ALTER TABLE `test_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslevel`
--
ALTER TABLE `accesslevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crudtype`
--
ALTER TABLE `crudtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `demo_demotable`
--
ALTER TABLE `demo_demotable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtest_article`
--
ALTER TABLE `dtest_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `fieldselectfield`
--
ALTER TABLE `fieldselectfield`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fieldtype`
--
ALTER TABLE `fieldtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fieldvalidation`
--
ALTER TABLE `fieldvalidation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `logintype`
--
ALTER TABLE `logintype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_company`
--
ALTER TABLE `master_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `menu1`
--
ALTER TABLE `menu1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pageaccesslevel`
--
ALTER TABLE `pageaccesslevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `projectaccesslevel`
--
ALTER TABLE `projectaccesslevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sqltype`
--
ALTER TABLE `sqltype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `testagain_jagruti`
--
ALTER TABLE `testagain_jagruti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testagain_pooja`
--
ALTER TABLE `testagain_pooja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_exam`
--
ALTER TABLE `test_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
