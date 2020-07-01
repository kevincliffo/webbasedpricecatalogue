-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2017 at 12:22 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `serial` int(11) NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`serial`, `name`, `email`, `address`, `phone`) VALUES
(1, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(2, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(3, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(4, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(5, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(6, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(7, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(8, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(9, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(10, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(11, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(12, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(13, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(14, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(15, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(16, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(17, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(18, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(19, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(20, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(21, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(22, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(23, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(24, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(25, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(26, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(27, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(28, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(29, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(30, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(31, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(32, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(33, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(34, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(35, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(36, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(37, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(38, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(39, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(40, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(41, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(42, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(43, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(44, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(45, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(46, 'Kevin Owino', 'Mombasa', '42255', '072241162'),
(47, 'Kevin Mwania', 'kingdavid@gmail.com', '23445', '0770234412'),
(48, 'Peter Mwanzia', 'peter@yahoo.com', '2345 Mombasa', '0723114415'),
(49, 'Kenneth', 'kenneth@gmail.com', '234467 Mombasa', '0722413327'),
(50, 'Reagan', 'reagan@gmail.com', '3422 Mombasa', '0722316617'),
(51, 'Steve Kiragu', 'skiragu@gmail.com', '3444 Kitui', '0723221111'),
(52, 'Njeri', 'njesh@yahoo.com', 'Mugo', '0721901123'),
(53, 'Felix ', 'felo@gmail.com', '6722 Kisumu', '0677123345'),
(54, 'Felix ', 'felo@gmail.com', '6722 Kisumu', '0677123345'),
(55, 'sadsad', 'erew', 'werewrw', 'werwe'),
(56, 'Ruth', 'ruth@gmail.com', '2322 Matui', '972231'),
(57, 'Ruth', 'ruth@gmail.com', '2322 Matui', '972231'),
(58, 'Samson', 'sam@gmail.com', '745', '07234677789'),
(59, 'Maryline Wafula', 'mary@gmail.com', '6122 Mombasa', '0711241161'),
(60, 'Maryline Wafula', 'mary@gmail.com', '6122 Mombasa', '0711241161'),
(61, 'Customer One', 'customerone@gmail.com', '1245 Mombasa', '0720070123'),
(62, 'Steven Makau', 'stevemaka@gmail.com', '5667 Mombasa', '0744563422'),
(63, 'Val', 'val@gmail.com', '2345 Kisumu', '0715242219'),
(64, 'Val', 'val@gmail.com', '2345 Kisumu', '0715242219'),
(65, 'Kevin Ochieng', 'kevincliffo@gmail.com', '32445 Mombasa', '0721223378'),
(66, '0', '0', '0', '0'),
(67, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(68, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(69, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(70, 'Peter Munyoki', 'pmunyoki@gmail.com', '2344 Webuye', '0711234511'),
(71, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(72, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(73, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(74, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(75, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(76, 'Steve Njeru', 'stevemaka@gmail.com', '3244 Kisumu', '0723441677'),
(77, 'Peter Munyoki', 'pmunyoki@gmail.com', '2344 Webuye', '0711234511'),
(78, 'Peter Munyoki', 'pmunyoki@gmail.com', '2344 Webuye', '0711234511'),
(79, 'Njunge Kenneth', 'njush@gmail.com', '134 Nairobi', '0721223389'),
(80, 'Zablon Otieno', 'zabby@gmail.com', '2145 Nairobi', '0718221900'),
(81, 'Zablon Otieno', 'zabby@gmail.com', '2145 Nairobi', '0718221900'),
(82, 'Zablon Otieno', 'zabby@gmail.com', '2145 Nairobi', '0718221900'),
(83, 'kkks', 'sds', 'asdsd', '82353'),
(84, 'kkks', 'sds', 'asdsd', '82353'),
(85, 'kkks', 'sds', 'asdsd', '82353'),
(86, 'kkks', 'sds', 'asdsd', '82353'),
(87, 'asdad', 'jhgkjhkj', 'khnkh', 'kjkjg'),
(88, 'asdad', 'jhgkjhkj', 'khnkh', 'kjkjg'),
(89, 'asdad', 'jhgkjhkj', 'khnkh', 'kjkjg'),
(90, 'asdad', 'jhgkjhkj', 'khnkh', 'kjkjg'),
(91, 'asdad', 'jhgkjhkj', 'khnkh', 'kjkjg'),
(92, 'Peter Njoroge', 'peter@yahoo.com', '2345 Mombasa', '0724112278'),
(93, 'Peter Njoroge', 'peter@yahoo.com', '2345 Mombasa', '0724112278'),
(94, 'Peter Njoroge', 'peter@yahoo.com', '2345 Mombasa', '0724112278'),
(95, 'Peter Njoroge', 'peter@yahoo.com', '2345 Mombasa', '0724112278'),
(96, 'John Chege', 'john@gmail.com', '2341 Mombasa', '0734561233'),
(97, 'John Chege', 'john@gmail.com', '2341 Mombasa', '0734561233'),
(98, 'Jerry Macguire', 'kevincliffo@gmail.com', '2311 Mombasa', '0724155511'),
(99, 'Jerry Macguire', 'kevincliffo@gmail.com', '2311 Mombasa', '0724155511'),
(100, 'Jerry Macguire', 'kevincliffo@gmail.com', '2311 Mombasa', '0724155511'),
(101, 'Jerry Macguire', 'kevincliffo@gmail.com', '2311 Mombasa', '0724155511'),
(102, 'Kevin Mwania', 'kingdavid@gmail.com', '2345 Mombasa', '0724112278'),
(103, 'Kevin Mwania', 'kingdavid@gmail.com', '2345 Mombasa', '0724112278'),
(104, 'Kevin Mwania', 'kingdavid@gmail.com', '2345 Mombasa', '0724112278'),
(105, 'Kevin Mwania', 'kingdavid@gmail.com', '2345 Mombasa', '0724112278'),
(106, 'Kevin Mwania', 'kingdavid@gmail.com', '2345 Mombasa', '0724112278'),
(107, 'Kevin Mwania', 'kingdavid@gmail.com', '2345 Mombasa', '0724112278'),
(108, 'Peter Waweru', 'peterwaweru@gmail.com', '2356 Mombasa', '0722871123'),
(109, 'Peter Waweru', 'peterwaweru@gmail.com', '2356 Mombasa', '0722871123'),
(110, 'Peter Waweru', 'peterwaweru@gmail.com', '2344 Mombasa', '0722416789'),
(111, 'Kev', 'kevinochieng@cim-pool.ch', '144 Mombasa', '0725011566'),
(112, 'Kevin Ochieng', 'kevincliffo@gmail.com', '83', '725036299');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `first_name` varchar(254) NOT NULL,
  `last_name` varchar(254) NOT NULL,
  `email_address` varchar(254) NOT NULL,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`first_name`, `last_name`, `email_address`, `username`, `password`) VALUES
('Kevin', 'Owino', 'kevinowino@yahoo.com', 'admin', '81dc9bdb52d04dc20036dbd8313ed055'),
('Kevin', 'Ochieng', 'kevin@yahoo.com', 'kevo', '9d5e3ecdeb4cdb7acfd63075ae046672'),
('First Name', 'Last Name', 'winnieatis@yahoo.com', 'winnie', 'd5455de2f44f740d0e7ae3b97ffaf9ea');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `serial` int(11) NOT NULL,
  `date` date NOT NULL,
  `customerid` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`serial`, `date`, `customerid`) VALUES
(1, '2015-03-18', 1),
(2, '2015-03-19', 2),
(3, '2015-03-20', 3),
(4, '2015-03-20', 4),
(5, '2015-03-23', 5),
(6, '2015-03-23', 51),
(7, '2015-03-29', 52),
(8, '2015-03-29', 53),
(9, '2015-03-29', 54),
(10, '2015-03-29', 57),
(11, '2015-03-29', 58),
(12, '2015-03-29', 59),
(13, '2015-03-29', 60),
(14, '2015-03-29', 61),
(15, '2015-03-30', 62),
(16, '2015-03-30', 63),
(17, '2015-03-30', 64),
(18, '2015-04-08', 65),
(19, '2015-04-08', 66),
(20, '2015-04-08', 67),
(21, '2015-04-08', 68),
(22, '2015-04-08', 69),
(23, '2015-04-08', 70),
(24, '2015-04-08', 71),
(25, '2015-04-08', 72),
(26, '2015-04-08', 73),
(27, '2015-04-08', 74),
(28, '2015-04-08', 75),
(29, '2015-04-08', 76),
(30, '2015-04-08', 77),
(31, '2015-04-08', 78),
(32, '2015-04-09', 79),
(33, '2015-04-09', 80),
(34, '2015-04-09', 81),
(35, '2015-04-09', 82),
(36, '2015-04-09', 83),
(37, '2015-04-09', 84),
(38, '2015-04-09', 85),
(39, '2015-04-09', 86),
(40, '2015-04-09', 87),
(41, '2015-04-09', 88),
(42, '2015-04-09', 89),
(43, '2015-04-09', 90),
(44, '2015-04-09', 91),
(45, '2015-04-09', 92),
(46, '2015-04-09', 93),
(47, '2015-04-09', 94),
(48, '2015-04-09', 95),
(49, '2015-04-10', 96),
(50, '2015-04-10', 97),
(51, '2015-04-16', 98),
(52, '2015-04-16', 99),
(53, '2015-04-16', 100),
(54, '2015-04-16', 101),
(55, '2015-04-16', 102),
(56, '2015-04-16', 103),
(57, '2015-04-16', 104),
(58, '2015-04-16', 105),
(59, '2015-04-16', 106),
(60, '2015-04-16', 107),
(61, '2015-04-21', 108),
(62, '2015-04-21', 109),
(63, '2015-04-21', 110),
(64, '2016-06-03', 111),
(65, '2017-07-11', 112);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total_price` float NOT NULL,
  `store` varchar(254) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`orderid`, `productid`, `quantity`, `price`, `total_price`, `store`) VALUES
(1, 1, 1, 699, 699, 'Nakumatt'),
(2, 1, 1, 699, 699, 'Nakumatt'),
(3, 3, 1, 25000, 25000, 'Nakumatt'),
(3, 2, 2, 60000, 120000, 'Nakumatt'),
(4, 1, 2, 2000, 4000, 'Nakumatt'),
(4, 2, 1, 3000, 3000, 'Nakumatt'),
(4, 5, 4, 2000, 8000, 'Nakumatt'),
(4, 4, 1, 4000, 4000, 'Nakumatt'),
(5, 2, 1, 56000, 56000, 'Nakumatt'),
(5, 1, 1, 47700, 47700, 'Nakumatt'),
(5, 3, 1, 30000, 30000, 'Nakumatt'),
(6, 5, 1, 80100, 80100, 'Nakumatt'),
(7, 3, 1, 25000, 25000, 'Nakumatt'),
(9, 6, 1, 4000, 4000, 'Nakumatt'),
(10, 6, 1, 4000, 4000, 'Uchumi'),
(11, 6, 4, 4000, 16000, 'Uchumi'),
(12, 6, 4, 4000, 16000, 'Uchumi'),
(12, 3, 2, 25000, 50000, 'Tuskys'),
(13, 6, 4, 4000, 16000, 'Uchumi'),
(13, 3, 2, 25000, 50000, 'Tuskys'),
(14, 1, 1, 45000, 45000, 'Nakumatt'),
(15, 1, 4, 45000, 180000, 'Nakumatt'),
(15, 12, 2, 490, 980, 'Uchumi'),
(16, 5, 1, 75600, 75600, 'Tuskys'),
(17, 5, 1, 75600, 75600, 'Tuskys'),
(18, 2, 1, 56000, 56000, 'Tuskys'),
(18, 3, 1, 25000, 25000, 'Tuskys'),
(18, 4, 1, 55000, 55000, 'Nakumatt'),
(19, 2, 1, 56000, 56000, 'Tuskys'),
(20, 3, 1, 25000, 25000, 'Nakumatt'),
(21, 3, 1, 25000, 25000, 'Nakumatt'),
(22, 3, 1, 25000, 25000, 'Nakumatt'),
(23, 9, 1, 250, 250, 'Nakumatt'),
(24, 3, 1, 25000, 25000, 'Nakumatt'),
(25, 3, 1, 25000, 25000, 'Nakumatt'),
(26, 3, 1, 25000, 25000, 'Nakumatt'),
(27, 3, 1, 25000, 25000, 'Nakumatt'),
(28, 3, 1, 25000, 25000, 'Nakumatt'),
(29, 3, 1, 25000, 25000, 'Nakumatt'),
(32, 3, 1, 25000, 25000, 'Nakumatt'),
(32, 2, 1, 59500, 59500, 'Uchumi'),
(33, 9, 1, 250, 250, 'Nakumatt'),
(33, 21, 1, 45, 45, 'Uchumi'),
(33, 20, 1, 95, 95, 'Tuskys'),
(34, 9, 1, 250, 250, 'Nakumatt'),
(34, 21, 1, 45, 45, 'Uchumi'),
(34, 20, 1, 95, 95, 'Tuskys'),
(35, 9, 1, 250, 250, 'Nakumatt'),
(35, 21, 1, 45, 45, 'Uchumi'),
(35, 20, 1, 95, 95, 'Tuskys'),
(36, 9, 1, 250, 250, 'Nakumatt'),
(36, 21, 1, 45, 45, 'Uchumi'),
(36, 20, 1, 95, 95, 'Tuskys'),
(38, 9, 1, 250, 250, 'Nakumatt'),
(38, 21, 1, 45, 45, 'Uchumi'),
(38, 20, 1, 95, 95, 'Tuskys'),
(39, 9, 1, 250, 250, 'Nakumatt'),
(39, 21, 1, 45, 45, 'Uchumi'),
(39, 20, 1, 95, 95, 'Tuskys'),
(40, 9, 1, 250, 250, 'Nakumatt'),
(40, 21, 1, 45, 45, 'Uchumi'),
(40, 20, 1, 95, 95, 'Tuskys'),
(41, 9, 1, 250, 250, 'Nakumatt'),
(41, 21, 1, 45, 45, 'Uchumi'),
(41, 20, 1, 95, 95, 'Tuskys'),
(42, 9, 1, 250, 250, 'Nakumatt'),
(42, 21, 1, 45, 45, 'Uchumi'),
(42, 20, 1, 95, 95, 'Tuskys'),
(43, 9, 1, 250, 250, 'Nakumatt'),
(43, 21, 1, 45, 45, 'Uchumi'),
(43, 20, 1, 95, 95, 'Tuskys'),
(44, 9, 1, 250, 250, 'Nakumatt'),
(44, 21, 1, 45, 45, 'Uchumi'),
(44, 20, 1, 95, 95, 'Tuskys'),
(45, 9, 1, 250, 250, 'Nakumatt'),
(45, 21, 1, 45, 45, 'Uchumi'),
(45, 20, 1, 95, 95, 'Tuskys'),
(46, 9, 1, 250, 250, 'Nakumatt'),
(46, 21, 1, 45, 45, 'Uchumi'),
(46, 20, 1, 95, 95, 'Tuskys'),
(47, 9, 1, 250, 250, 'Nakumatt'),
(47, 21, 1, 45, 45, 'Uchumi'),
(47, 20, 1, 95, 95, 'Tuskys'),
(48, 9, 1, 250, 250, 'Nakumatt'),
(48, 21, 1, 45, 45, 'Uchumi'),
(48, 20, 1, 95, 95, 'Tuskys'),
(49, 8, 1, 180, 180, 'Nakumatt'),
(49, 9, 1, 310, 310, 'Uchumi'),
(49, 14, 1, 350, 350, 'Naivas'),
(49, 23, 1, 1295, 1295, 'Tuskys'),
(50, 8, 1, 180, 180, 'Nakumatt'),
(50, 9, 1, 310, 310, 'Uchumi'),
(50, 14, 1, 350, 350, 'Naivas'),
(50, 23, 1, 1295, 1295, 'Tuskys'),
(51, 3, 1, 25000, 25000, 'Nakumatt'),
(51, 6, 1, 3950, 3950, 'Nakumatt'),
(51, 4, 1, 55000, 55000, 'Nakumatt'),
(52, 3, 1, 25000, 25000, 'Nakumatt'),
(52, 6, 1, 3950, 3950, 'Nakumatt'),
(52, 4, 1, 55000, 55000, 'Nakumatt'),
(53, 3, 1, 25000, 25000, 'Nakumatt'),
(53, 6, 1, 3950, 3950, 'Nakumatt'),
(53, 4, 1, 55000, 55000, 'Nakumatt'),
(54, 3, 1, 25000, 25000, 'Nakumatt'),
(54, 6, 1, 3950, 3950, 'Nakumatt'),
(54, 4, 1, 55000, 55000, 'Nakumatt'),
(55, 3, 1, 25000, 25000, 'Nakumatt'),
(55, 6, 1, 3950, 3950, 'Nakumatt'),
(55, 4, 1, 55000, 55000, 'Nakumatt'),
(56, 3, 1, 25000, 25000, 'Nakumatt'),
(56, 6, 1, 3950, 3950, 'Nakumatt'),
(56, 4, 1, 55000, 55000, 'Nakumatt'),
(57, 3, 1, 25000, 25000, 'Nakumatt'),
(57, 6, 1, 3950, 3950, 'Nakumatt'),
(57, 4, 1, 55000, 55000, 'Nakumatt'),
(58, 3, 1, 25000, 25000, 'Nakumatt'),
(58, 6, 1, 3950, 3950, 'Nakumatt'),
(58, 4, 1, 55000, 55000, 'Nakumatt'),
(59, 3, 1, 25000, 25000, 'Nakumatt'),
(59, 6, 1, 3950, 3950, 'Nakumatt'),
(59, 4, 1, 55000, 55000, 'Nakumatt'),
(60, 3, 1, 25000, 25000, 'Nakumatt'),
(60, 6, 1, 3950, 3950, 'Nakumatt'),
(60, 4, 1, 55000, 55000, 'Nakumatt'),
(61, 1, 1, 45000, 45000, 'Nakumatt'),
(61, 12, 1, 500, 500, 'Tuskys'),
(61, 9, 1, 250, 250, 'Nakumatt'),
(61, 15, 1, 150, 150, 'Tuskys'),
(61, 24, 1, 3250, 3250, 'Tuskys'),
(62, 1, 1, 45000, 45000, 'Nakumatt'),
(62, 12, 1, 500, 500, 'Tuskys'),
(62, 9, 1, 250, 250, 'Nakumatt'),
(62, 15, 1, 150, 150, 'Tuskys'),
(62, 24, 1, 3250, 3250, 'Tuskys'),
(63, 3, 1, 25000, 25000, 'Tuskys'),
(63, 6, 1, 3850, 3850, 'Tuskys'),
(63, 12, 1, 500, 500, 'Tuskys'),
(63, 2, 1, 60000, 60000, 'Nakumatt'),
(63, 14, 1, 350, 350, 'Nakumatt'),
(64, 2, 1, 60000, 60000, 'Nakumatt'),
(65, 2, 1, 60000, 60000, 'Nakumatt');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `serial` int(11) NOT NULL,
  `name` varchar(254) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nakumatt_price` float NOT NULL,
  `tuskys_price` float NOT NULL,
  `uchumi_price` float NOT NULL,
  `naivas_price` float NOT NULL,
  `picture` varchar(80) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`serial`, `name`, `description`, `nakumatt_price`, `tuskys_price`, `uchumi_price`, `naivas_price`, `picture`) VALUES
(1, 'Google Nexus 6', 'The Qualecomm @ snapdragon 805 quard-core processor provides lightning fast multi tasking and the Adreno 420 Gpu gives you brilliant graphics.', 45000, 50000, 47700, 49500, 'images/mobile.jpg'),
(2, 'Ipad Air 2', 'Full HD Recording,\nWi-Fi Enabled,\nFaceTime,\n8 MP Primary Camera,\nA8X Chip with M8 Motion Co-processor,\n1.2 MP Secondary Camera,\n9.7-inch LED Touchscreen', 60000, 56000, 59500, 60000, 'images/ipad.jpg'),
(3, 'Home Theater', ' Home Theater 4.1 with USB and FM Wired Home Audio Speaker', 25000, 25000, 26500, 30000, 'images/sound.jpg'),
(4, 'Samsung Split AC', 'Out Door Unit Stand.\nExtra copper wire if any.\nDrain Pipe extension if any.\nPlumbing and Masonry Work.\nWiring extension from Meter to site, Power point/MCB fitting and any other electrical work,Carpentry work.', 55000, 49700, 52500, 55000, 'images/ac.jpg'),
(5, 'Nikon DSLR Camera', '(Black, Body with AF-S DX NIKKOR 18-55mm f/3.5-5.6G VR II Lens) 2 Years Nikon India Warranty and Free Transit Insurance.', 75600, 75600, 80100, 79800, 'images/camera.jpg'),
(6, 'Tea maker', 'Morphy Richards 1.5 Ltr - Tea Maker Silver Black', 3950, 3850, 4000, 3900, 'images/teamaker.jpg'),
(7, 'BMX Bike Child', 'BMX Bike for Children', 6000, 6300, 6500, 6500, 'images/BMXBikeChild.jpg'),
(8, 'Britannia', 'Britannia Biscuits', 180, 230, 220, 200, 'images/Britania.jpg'),
(9, 'ChildrenDollShoes', 'Doll shoes for Children size 1 and below', 250, 295, 310, 300, 'images/ChildrenDollShoes.jpg'),
(10, 'Children Dress', 'Dress for children aged 1 and above', 450, 470, 500, 500, 'images/ChildrenDress.jpg'),
(11, 'Children Dress', 'Dress for children aged 5 and above', 600, 595, 650, 650, 'images/ChildrenDress2.jpg'),
(12, 'Children Rubber Shoe', 'Rubber shoes for small children', 500, 500, 490, 500, 'images/ChildrenRubberShoes.jpg'),
(13, 'Coat', 'Men coat', 2750, 2300, 2200, 2500, 'images/Court.jpg'),
(14, 'Dairy Fresh', 'Dairy fresh Ice Cream 500 grams', 350, 350, 350, 350, 'images/DairyFresh.jpg'),
(15, 'Dairy Milk Chocolate', '250 grams', 130, 150, 130, 130, 'images/DairyMilk.jpg'),
(16, 'Designer TShirt', 'Designer T Shirt for Men North Star', 1100, 1300, 1500, 1500, 'images/DesignerTShirt.jpg'),
(17, 'Golden Fry Cooking O', '3 Litres', 375, 380, 370, 375, 'images/GoldenFry.jpg'),
(18, 'T shirt', 'Hakuna Matata Tshirt Unisex', 1100, 1100, 950, 1000, 'images/HakunaMatataTshirt.jpg'),
(19, 'Kenya T Shirt', 'I Love Kenya Tshirt', 1000, 1100, 1050, 1200, 'images/ILoveKenyaTshirt.jpg'),
(20, 'Jogoo', '2 Kg Maize Flour', 100, 95, 100, 105, 'images/Jogoo.jpg'),
(21, 'Kcc', '500 ML Milk', 45, 45, 45, 45, 'images/Kcc.jpg'),
(22, 'Kenya Tshirt', 'Kenya T shirt', 750, 800, 800, 800, 'images/KenyaTshirt.jpg'),
(23, 'Lady Shoes', 'Trendy Lady Shoes Size 6-8', 1300, 1295, 1350, 1300, 'images/LadyShoes.jpg'),
(24, 'LG Blender', 'LG 915, Capacity 0.8 Litres, Conatainer Material Plastic, Voltage 220, Origin China', 3500, 3250, 3400, 3500, 'images/LGBlender.jpg'),
(25, 'LG DVD Player', 'LG DP 122, Direct Recording, Multi-Payback, USB 2.0 Playback', 3400, 3500, 3700, 3000, 'images/LGDVDPlayer.jpg'),
(26, 'LG Fridge', 'GRB650GLH 8Cu Ft, Capacity 650 Litres, Frost Free. Shelves Glass', 30000, 34000, 33000, 32200, 'images/LGFridge.jpg'),
(27, 'LG Gas Cooker', 'LG Dako Gas Cooker, White Painted Body, 4 Gas burners, One Oven, Manual Ignition Device, Glass door', 23500, 24000, 25000, 22500, 'images/LGGasCooker.jpg'),
(28, 'LG Home Theater', 'LG BH9420PW With Smart TV and Wireless Speakers, 3D sound, Built in WI-FI, 3D Blueray disk 1080P Playback', 52000, 46500, 45500, 45000, 'images/LGHomeTheater.jpg'),
(29, 'LG Music System', 'LG LHT874 AM/FM Tuner, Clock Radio with Alarm, USB Media Host, CD Playback, 2.1 Channel', 30000, 31000, 29000, 29500, 'images/LgMusicSystem.jpg'),
(30, 'Long sleeve Men Shir', 'Men Shirt Long Sleeve Casual', 2350, 1900, 1900, 2000, 'images/MenShirtLongSleeve.jpg'),
(31, 'Short Sleeve Men Shi', 'Men Shirt Short Sleeve Casual', 1500, 1490, 1450, 1500, 'images/MenShirtShortSleeve.jpg'),
(32, 'Men Official Shoes', 'Men Official Shoes Size 7 - 10', 3100, 3300, 2900, 3200, 'images/MenShoes.jpg'),
(33, 'Milo', 'Milo drinking Chocolate 500 Grams', 370, 365, 370, 340, 'images/Milo.jpg'),
(34, 'Mountain Bike', 'Mountain Bike for ages 7 - 18', 13000, 12500, 11900, 12500, 'images/MountainBike.jpg'),
(35, 'Mumias Sugar', 'Mumias Sugar 2KG', 150, 150, 150, 150, 'images/MumiasSugar.jpg'),
(36, 'Pembe', 'Pembe Maize Flour 2KG', 110, 110, 105, 110, 'images/Pembe.jpg'),
(37, 'Samsung Fridge', 'Samsung refrigerator-T9000 LCD Four Door, 32 Cubic feet, 10 Inch LCD touchscreen display, Linux OS', 110500, 115500, 115500, 115500, 'images/SamsungFridge.jpg'),
(38, 'Samsung Galaxy S4', 'Black - White, Andoid 4.2.2 (Jelly Bean), 2GB RAM, Internal 16/32/64 GB, Micro sim', 40000, 42500, 41500, 40000, 'images/SamsungGalaxyS4.jpg'),
(39, 'Samsung Gas Cooker', '5 Burner Freestanding, 5.8 Cubic feet Oven, Large Oval Burner, High Powered Burner 1700BTU', 54900, 55000, 54000, 54000, 'images/SamsungGasCooker.jpg'),
(40, 'Samsung Home Theater', 'Smart TV, Blueray Player', 100000, 110300, 100500, 100500, 'images/SamsungHomeTheater.jpg'),
(41, 'Samsung Microwave', '1.7 Cubic Feet OTR Speed Oven Microwave', 17290, 16900, 17000, 17000, 'images/SamsungMicrowave.jpg'),
(42, 'Samsung Music System', 'MM E 320 Micro Audio System CD Player FM Radio AUX USB 10W', 29500, 31200, 30000, 30000, 'images/SamsungMusicSystem.jpg'),
(43, 'Sony DVD Player', 'DVP-SR370 Super Dustproof, High Pictire Quality with Xvid Home, Wide Playability, USB play', 8000, 8100, 7990, 8000, 'images/SonyDVDPlayer.jpg'),
(44, 'Sony Led TV 32 Inche', 'Sony Led TV 32 KLV 32EX330, Bravia Engine, Direct LED, Intelligent Picture PLUS, Digital Noise reduction, MHL Enabled', 31000, 31200, 29500, 30000, 'images/SonyLed32.jpg'),
(45, 'Sony LED TV 46 Inche', 'Sony LED TV 46 Inches Sony Bravia HX750 Internet TV, media App control, streaming for Mobile devices and computers', 73000, 71200, 69900, 70000, 'images/SonyLed46.jpg'),
(46, 'Sony Music System', 'Sony Music System MHC EC99 Stereo Mini Hi-Fi music System, 110-240 volts, CD Player', 28000, 28900, 27900, 27800, 'images/SonyMusicSystem.jpg'),
(47, 'Tie And Shirt', 'Men Official Shirt and tie', 1590, 1590, 1600, 1650, 'images/TieAndShirt.jpg'),
(48, 'T Shirt', 'Multicoloured T shirts in varying sizes', 500, 500, 450, 500, 'images/TShirt.jpg'),
(49, 'Vaseline', 'Vaseline Petroleum jelly 250 Grams', 150, 150, 165, 150, 'images/Vaseline.jpg'),
(50, 'Mens trouser', 'Youth Men Trouser', 950, 1000, 1050, 1000, 'images/YouthMenTrouser.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE IF NOT EXISTS `stores` (
  `storeid` int(11) NOT NULL,
  `storename` varchar(254) NOT NULL,
  `storeemail` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`storeid`, `storename`, `storeemail`) VALUES
(1, 'Nakumatt', 'kevincliffo@gmail.com'),
(2, 'Tuskys', 'sadikcharo@gmail.com'),
(3, 'Uchumi', 'info@uchumi.com'),
(4, 'Naivas', 'info@naivas.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`storeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
