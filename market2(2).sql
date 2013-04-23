-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2013 at 12:20 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `market2`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `name`, `content`) VALUES
(1, 'main_title', 'انت تحتاج الي تحقيق الربح ؟؟ وبدون'),
(2, 'second_title', '"يوفر موقعنا لك ذالك وانت فvnbnmي بيتك"'),
(3, 'slider_txt', ' الاعمال الصغيرة تكسبك المال من البيت, تكسبك دخل إضافي وتسمح لك بكسب المزيد من المال على الإنترنيت. إذا ما كنت تعيش في الجزائر, لبنان مصر, السعودية, الإمارات العربية المتحدة, قطر, عمان, البحرين, الكويت, المغرب, تونس, ليبيا, السودان, الأردن, سوريا, العراق أو أي مكان آخر يمكنك العمل في المنزل وكسب اموال اضافية مع فرص الأعمال الصغيرة.\r\n\r\nضاعف ارباحك من خلال الانترنت واستفد من شهره موقعك وعدد زياراته واربح المال مع زوار ربح لن تحتاج بعد اليوم للبحث عن معلن لموقعك يدخل من بوابه كبيره ويمشي في الطرقه حتى وصل الى الغرفه السريه.. دفع الباب فإذا كل من في الغرفه ينظرون اليه بعيون مليئه بالترقب.. هو ده يا باشا الخبير اللي بعتنا نجيبه هو ده اللي هيقفل اليوتيوب؟ أيوه يا باشا.. - يأخذ الشاب الخبير مكانه أمام شاشه حاسوب كبيره ويبدأ في الضغط على الأزرار ثم فجأه يصرخ..\r\n$10تصفح خدماتنا الان\r\n'),
(4, 'tree_txt', 'إمشي علي إللي هيوديك تفكيرك ليه و المهم خليك جرئ حاول توصل فكرك للناس يمكن تقنعهم أو تلاقي ناس عندهم نفس الفكر و ساعتها هتبقوا أقويnm,,mn'),
(5, 'service_txt', 'إمشي علي إللي هيوديك تفكيرك ليه و المهم خليك جرئ حاول توصل فكرك للناس يمكن تقنعهم أو تلاقي ناس عندهjjjjjjjم نفس الفكر و ساعتها هتبقوا أقوي'),
(6, 'user_txt', 'إمشي علي إللي هيوديك تفكيرك ليه و المهم خليك جرئ حاول توصل فكرك للناس يمكن تقنعهم أو تلاقي ناس عندهم نفس الفكر و ساعتها هتبقوا أقوmmmmmmmmي'),
(7, 'vido', 'http://www.youtube.com/embed/gMURs7auyBM'),
(8, 'about', 'السلام عليكم و رحمه الله و بركاته\r\nانا لم اتكلم عن اى تعديل فى لوحه الادمن لانها خارج نطاق التعديل بمعنى ان لما يبقى فيها لوحه ادمن هبقى اشوف التعديلات\r\nلان حتى اضافه خدمه موجوده و لا تعمل و لا يوجد اضافه تدوينه\r\nمستنيكوا يوم الجمعه ان شاء الله\r\nبالتوفيق');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`) VALUES
(1, 'كتب'),
(2, 'مقالت دينية'),
(3, 'تمرااز'),
(4, 'سسسس');

-- --------------------------------------------------------

--
-- Table structure for table `blog_sub_categ`
--

CREATE TABLE IF NOT EXISTS `blog_sub_categ` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `b_c_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sub_categ_2` (`b_c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blog_sub_categ`
--

INSERT INTO `blog_sub_categ` (`id`, `name`, `b_c_id`) VALUES
(1, 'اخوان', 1),
(3, 'مرشد', 1),
(4, 'يبنتسنتيس', 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(13, 'مبيعات'),
(14, 'مشتريات'),
(15, 'خدمات ألكترونيه'),
(16, 'ادوات منزلية'),
(23, 'اشهارات ألكترونية'),
(24, 'تيمووو'),
(25, 'مصر');

-- --------------------------------------------------------

--
-- Table structure for table `civou`
--

CREATE TABLE IF NOT EXISTS `civou` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(450) NOT NULL,
  `pass` varchar(453) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `civou`
--

INSERT INTO `civou` (`id`, `username`, `pass`) VALUES
(1, 'civou', 'ab7bdb533b18fcccf72ca2379b556923'),
(2, 'employe', '2e893ba55c4bedcc010a45a7e6c7af67'),
(3, 'ahmed', '9193ce3b31332b03f7d8af056c692b84'),
(4, 'mohamedsaad', '6a057ddaa582cda042a3a3e928f3d3ca');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_type` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `on` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `date`, `u_type`, `u_id`, `on`, `parent`, `post_id`) VALUES
(1, 'محمد سعد هنا حد عايز حاجه', '2013-03-20 03:17:57', 'user', 10, 'blog', 0, 3),
(2, 'محمد سعد هنا حد عايز حاجه', '2013-03-20 03:19:46', 'user', 10, 'blog', 0, 3),
(3, 'يبلاتن', '2013-03-20 03:19:54', 'user', 10, 'blog', 0, 3),
(4, 'سعد', '2013-03-20 03:20:53', 'user', 10, 'blog', 0, 4),
(5, 'gfhjkl;', '2013-03-20 03:21:47', 'employee', 21, 'blog', 0, 4),
(6, 'dfkjkldsjlkjdfslkjdfs', '2013-03-20 03:23:46', 'employee', 21, 'blog', 0, 20),
(7, 'dfkjkldsjlkjdfslkjdfs', '2013-03-20 03:24:44', 'employee', 21, 'service', 0, 20),
(8, 'dsfghjk;', '2013-03-20 03:27:33', 'employee', 21, 'service', 0, 20),
(9, 'dsfghjk', '2013-03-20 03:27:45', 'employee', 21, 'blog', 0, 4),
(10, 'هلووووووو ايفرى بدى', '2013-03-20 03:51:25', 'employee', 21, 'blog', 0, 4),
(11, 'شيى لتييييييييييييييييييييييف .. شيى جمييييييييييييييييييييييل .. مقدرش أقوول كلام عليه', '2013-03-20 03:52:45', 'employee', 21, 'blog', 0, 4),
(12, 'شيى لتييييييييييييييييييييييف .. شيى جمييييييييييييييييييييييل .. مقدرش أقوول كلام عليه', '2013-03-20 03:52:53', 'employee', 21, 'service', 0, 20),
(13, 'شيى لتييييييييييييييييييييييف .. شيى جمييييييييييييييييييييييل .. مقدرش أقوول كلام عليه', '2013-03-20 03:53:06', 'employee', 21, 'service', 0, 23),
(14, 'ازيك يلا', '2013-03-20 12:42:29', 'user', 10, 'service', 0, 19),
(15, 'اااااااا', '2013-03-20 12:48:35', 'user', 10, 'service', 0, 19),
(16, 'سفد', '2013-03-20 12:58:44', 'user', 10, 'blog', 1, 19),
(17, 'ةياسانيبتستيبس', '2013-03-20 13:52:14', 'user', 10, 'blog', 1, 3),
(18, 'kjhkjhj', '2013-03-22 02:15:48', 'user', 10, 'blog', 0, 5),
(19, 'ثانيا السوق\r\n1-كنا قد اتفقنا على ان يكون طلب الخدمه موجوده فى مربع الخدمه فى السوق والغاء تفاصيل الخدمه\r\n2-المسافه بين تفاصيل الخدمه ونهايه مربع الخدمه كبيره جدا فمن الممكن ان نستغلها بحيث نقوم بتنزيل تفاصيل الخدمه "اطلب الخدمه" مستقبلا الى الاسفل قليلا وجل اسم الخدمه يكتب فى سطرين', '2013-04-02 07:02:26', 'user', 13, 'blog', 0, 3),
(20, '&lt;input type="submit" id="ask2"  value="اضف التعليق" /&gt;', '2013-04-02 07:06:43', 'user', 3, 'service', 0, 21),
(21, '2-المسافه بين تفاصيل الخدمه ونهايه مربع الخدمه كبيره جدا فمن الممكن ان نستغلها بحيث نقوم بتنزيل تفاصيل الخدمه "اطلب الخدمه" مستقبلا الى الاسفل قليلا وجل اسم الخدمه يكتب فى سطرين\r\n3-كما تم الاتفاق وضع معلومات الخدمه بمربع بلون مختلف ليظهر بصوره واضحه وايضا وضع تفاصيل الخدمه ذات نفسه فى مربع منفصل مثل', '2013-04-02 07:07:09', 'user', 3, 'service', 0, 21),
(22, 'rdhjfxjx', '2013-04-05 09:48:09', 'user', 10, 'blog', 0, 11),
(23, 'dxhxfhj', '2013-04-05 09:48:32', 'user', 10, 'blog', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `mail` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `read` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mail`, `message`, `read`, `type`) VALUES
(9, 'mohamed', 'addf@yahoo.com', 'sdfsdfsdf', 1, 'استفسار'),
(10, 'محمد', 'mohmed@yahoo.com', 'elkgh', 1, 'شكوي عامه');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(950) NOT NULL,
  `pass` varchar(950) NOT NULL,
  `name` varchar(950) NOT NULL,
  `phone` varchar(950) DEFAULT NULL,
  `email` varchar(950) DEFAULT NULL,
  `rate_up` varchar(950) DEFAULT NULL,
  `rate_down` varchar(950) DEFAULT NULL,
  `num_success` varchar(950) DEFAULT NULL,
  `num_failed` varchar(950) DEFAULT NULL,
  `note` varchar(950) DEFAULT NULL,
  `c_id` int(10) unsigned DEFAULT NULL,
  `sc_id` int(10) unsigned DEFAULT NULL,
  `num_service` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_employee_1` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `pass`, `name`, `phone`, `email`, `rate_up`, `rate_down`, `num_success`, `num_failed`, `note`, `c_id`, `sc_id`, `num_service`) VALUES
(15, 'employe1', '54a51d77ba883e4c77cf681bc70214e5', 'employe1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 18, 5),
(16, 'employe2', 'db57a2c4455defb2052e690537e2663e', 'employe2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 0, 5),
(17, 'employe3', '79ed2a63b8e20bc0a3e09e99c034bb27', 'employe3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 19, 5),
(18, 'employe4', 'b9b1bd5733d461e05dea25f6c659ccbb', 'employe4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 0, 5),
(19, 'employe5', '54387aed52eec034213ac723b21686fc', 'employe5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 0, 5),
(20, 'employe6', 'bca39f59706ae54a3cf42997ee0efb62', 'employe6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 20, 5),
(21, 'employe7', '6f6146b84fea01a95b87d91529d4006c', 'employe7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 21, 5),
(22, 'mody', '78c44895078570248a45de2751e5eeef', 'mody', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 0, 5),
(23, 'employe10', '8aab37c955ae1ecdfa05fe6d18e46e40', 'employe10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 22, 5),
(24, 'employe11', '4a3d020efb4195e6cfbbbd6c2a436a0f', 'employe11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 22, 20);

-- --------------------------------------------------------

--
-- Table structure for table `external`
--

CREATE TABLE IF NOT EXISTS `external` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(950) NOT NULL,
  `price` varchar(450) NOT NULL,
  `ser_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_external_1` (`ser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` varchar(5) NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`, `active`, `link`) VALUES
(2, 'محمد', 'ليك وحشه جامده جديييييييييييييييييييييييييييييى', '2013-03-20 04:10:04', 'on', ''),
(6, 'Test1', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:10', 'off', 'Test1 Test1 Test1'),
(7, 'Test1', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:22', 'off', 'Test1 Test1 Test1'),
(8, 'Test1', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:25', 'off', 'Test1 Test1 Test1'),
(9, 'Test1', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:26', 'off', 'Test1 Test1 Test1'),
(10, 'Test2', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:32', 'off', 'Test1 Test1 Test1'),
(11, 'Test3', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:37', 'off', 'Test1 Test1 Test1'),
(12, 'Test4', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:43', 'off', 'Test1 Test1 Test1'),
(13, 'Test5', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:05:50', 'off', 'Test1 Test1 Test1'),
(14, 'Test6', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:06:00', 'off', 'Test1 Test1 Test1'),
(15, 'Test7', 'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1\r\n', '2013-03-21 19:06:06', 'off', 'Test1 Test1 Test1'),
(16, 'محمد', 'محمد سعد يرحب بكم', '2013-03-22 11:53:58', 'on', 'www.alxawy.com');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` int(10) unsigned DEFAULT NULL,
  `u_id` int(10) unsigned DEFAULT NULL,
  `e_id` int(10) unsigned DEFAULT NULL,
  `start` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end` date DEFAULT NULL,
  `duration` int(5) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL,
  `statu` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_1` (`s_id`),
  KEY `FK_order_2` (`u_id`),
  KEY `FK_order_3` (`e_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `s_id`, `u_id`, `e_id`, `start`, `end`, `duration`, `c_id`, `sc_id`, `statu`) VALUES
(56, 20, 10, 17, '2013-03-30 05:18:59', '0000-00-00', 5, 15, 19, 1),
(57, 20, 10, 17, '2013-03-30 05:19:01', '0000-00-00', 5, 15, 19, 1),
(58, 19, 10, 17, '2013-03-30 05:18:47', '0000-00-00', 5, 15, 19, 1),
(59, 19, 10, 17, '2013-03-30 05:18:50', '0000-00-00', 5, 15, 19, 1),
(60, 23, 10, 15, '2013-03-29 02:21:32', NULL, 5, 13, 18, 1),
(61, 25, 10, NULL, '2013-03-16 22:11:37', NULL, 5, 13, 18, 0),
(62, 29, 10, NULL, '2013-03-16 22:11:54', NULL, 5, 13, 18, 0),
(63, 28, 10, 20, '2013-03-30 05:30:44', '0000-00-00', 5, 23, 20, 1),
(64, 27, 10, NULL, '2013-03-16 22:12:16', NULL, 5, 14, 0, 0),
(65, 23, 10, 15, '2013-03-30 04:18:38', '0000-00-00', 5, 13, 18, 1),
(66, 21, 10, 15, '2013-03-16 23:38:24', NULL, 5, 13, 18, 1),
(67, 20, 10, 17, '2013-03-30 05:21:20', '0000-00-00', 5, 15, 19, 1),
(68, 19, 10, 17, '2013-03-30 05:18:19', '0000-00-00', 5, 15, 19, 1),
(69, 18, 10, 17, '2013-03-30 05:18:37', '0000-00-00', 5, 15, 19, 1),
(70, 23, 10, NULL, '2013-03-17 00:47:21', NULL, 5, 13, 18, 0),
(71, 22, 10, 15, '0000-00-00 00:00:00', NULL, 5, 13, 18, 1),
(72, 21, 10, 15, '0000-00-00 00:00:00', NULL, 5, 13, 18, 1),
(73, 26, 10, NULL, '2013-03-17 00:47:56', NULL, 5, 13, 18, 0),
(74, 25, 10, 17, '2013-03-30 05:18:13', '0000-00-00', 5, 13, 18, 1),
(75, 24, 10, NULL, '2013-03-17 00:48:15', NULL, 5, 13, 18, 0),
(76, 27, 10, NULL, '2013-03-17 00:48:26', NULL, 5, 14, 0, 0),
(77, 28, 10, 20, '2013-03-30 05:30:54', '0000-00-00', 5, 23, 20, 1),
(78, 29, 10, 15, '2013-03-30 04:49:50', '0000-00-00', 5, 13, 18, 1),
(79, 27, 10, NULL, '2013-03-17 00:55:47', NULL, 5, 14, 0, 0),
(80, 30, 10, NULL, '2013-03-17 01:01:15', NULL, 5, 14, 0, 0),
(81, 30, 10, NULL, '2013-03-17 01:06:32', NULL, 5, 14, 0, 0),
(82, 28, 10, NULL, '2013-03-19 14:10:21', NULL, 5, 23, 20, 0),
(83, 31, 10, 20, '2013-03-30 05:31:00', '0000-00-00', 5, 23, 20, 1),
(84, 31, 10, 20, '2013-03-30 05:31:05', '0000-00-00', 5, 23, 20, 1),
(85, 31, 11, 20, '2013-03-30 05:30:52', '0000-00-00', 5, 23, 20, 1),
(86, 31, 11, 20, '2013-03-30 06:03:40', '0000-00-00', 5, 23, 20, 1),
(87, 20, 10, 17, '2013-03-30 05:18:43', '0000-00-00', 5, 15, 19, 1),
(88, 20, 10, 17, '2013-03-30 05:18:25', '0000-00-00', 5, 15, 19, 1),
(89, 21, 10, 15, '0000-00-00 00:00:00', NULL, 5, 13, 18, 1),
(90, 27, 10, NULL, '2013-03-28 02:09:56', NULL, 5, 14, 0, 0),
(91, 25, 10, NULL, '2013-03-28 02:11:16', NULL, 5, 13, 18, 0),
(92, 28, 10, NULL, '2013-03-30 07:21:05', NULL, NULL, 23, 20, 0),
(93, 26, 10, NULL, '2013-03-30 07:21:10', NULL, NULL, 13, 18, 0),
(94, 25, 10, NULL, '2013-03-30 07:21:49', NULL, NULL, 13, 18, 0),
(95, 20, 10, 17, '2013-03-30 05:23:41', '0000-00-00', NULL, 15, 19, 1),
(96, 21, 10, NULL, '2013-03-30 08:17:27', NULL, 0, 13, 18, 0),
(97, 21, 10, NULL, '2013-03-30 08:20:13', NULL, 5, 13, 18, 0),
(98, 33, 10, NULL, '2013-03-30 08:25:52', NULL, 20, 24, 0, 0),
(99, 21, 10, NULL, '2013-04-04 16:03:30', NULL, NULL, 13, 18, 0),
(100, 20, 10, NULL, '2013-04-04 16:05:38', NULL, NULL, 15, 19, 0),
(101, 20, 10, NULL, '2013-04-04 16:11:12', NULL, 5, 15, 19, 0),
(102, 20, 10, NULL, '2013-04-05 06:13:14', NULL, 5, 15, 19, 0),
(103, 19, 10, NULL, '2013-04-05 11:28:50', NULL, 5, 15, 19, 0),
(104, 20, 10, NULL, '2013-04-05 15:21:31', NULL, 5, 15, 19, 0),
(105, 20, 10, NULL, '2013-04-05 15:29:07', NULL, 5, 15, 19, 0),
(106, 21, 10, NULL, '2013-04-05 15:29:46', NULL, 5, 13, 18, 0),
(107, 21, 10, NULL, '2013-04-05 15:34:39', NULL, 5, 13, 18, 0),
(108, 20, 10, NULL, '2013-04-05 16:44:50', NULL, 5, 15, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_setting`
--

CREATE TABLE IF NOT EXISTS `payment_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `amount` double NOT NULL,
  `taxes` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(950) NOT NULL,
  `price_point` varchar(950) NOT NULL,
  `detail` varchar(950) NOT NULL,
  `photo_name` varchar(950) DEFAULT NULL,
  `instruction` varchar(950) DEFAULT NULL,
  `rate_up` varchar(950) DEFAULT NULL,
  `rate_down` varchar(950) DEFAULT NULL,
  `tags` varchar(950) DEFAULT NULL,
  `c_id` int(10) unsigned NOT NULL,
  `sc_id` int(10) unsigned DEFAULT NULL,
  `duration` int(2) NOT NULL,
  `order_num` int(11) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_service_1` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `price_point`, `detail`, `photo_name`, `instruction`, `rate_up`, `rate_down`, `tags`, `c_id`, `sc_id`, `duration`, `order_num`, `add_date`) VALUES
(18, '100 يوزر ف اليوم', '500', '100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم', '221.png', '100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم', NULL, NULL, NULL, 15, 19, 5, 0, '2013-04-05 15:34:15'),
(19, '100 يوزر ف اليوم', '500', '100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم', '2211.png', '100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم', NULL, NULL, NULL, 15, 19, 5, 0, '2013-04-05 15:34:15'),
(20, '100 يوزر ف اليوم', '500', '100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم', '2212.png', '100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم\r\n100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم100 يوزر ف اليوم', NULL, NULL, NULL, 15, 19, 5, 2, '2013-04-05 15:34:15'),
(21, 'ولاعه', '2300', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', '549200_429971077081095_805434467_n.jpg', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', NULL, NULL, NULL, 13, 18, 5, 2, '2013-04-05 15:34:15'),
(22, 'ولاعه', '2300', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', '549200_429971077081095_805434467_n1.jpg', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', NULL, NULL, NULL, 13, 18, 5, 0, '2013-04-05 15:34:15'),
(23, 'ولاعه', '2300', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', '549200_429971077081095_805434467_n2.jpg', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', NULL, NULL, NULL, 13, 18, 5, 0, '2013-04-05 15:34:15'),
(24, 'ولاعه', '2300', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', '549200_429971077081095_805434467_n3.jpg', 'ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه \r\nولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه ولاعه', NULL, NULL, NULL, 13, 18, 5, 0, '2013-04-05 15:34:15'),
(25, 'بيع منازل', '2300', 'بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل', 'logo.png', 'بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل', NULL, NULL, NULL, 13, 18, 5, 0, '2013-04-05 15:34:15'),
(26, 'بيع منازل', '2300', 'بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل', 'logo1.png', 'بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل\r\n بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل بيع منازل', NULL, NULL, NULL, 13, 18, 5, 0, '2013-04-05 15:34:15'),
(27, 'موبيل', '958', 'موبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل', '10.PNG', 'موبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل \r\nموبيل موبيل موبيل موبيل موبيل موبيل موبيل', NULL, NULL, NULL, 14, 0, 5, 0, '2013-04-05 15:34:15'),
(28, 'بيع منازل', '0545', 'تايبنصاتنبصاشكمنهخاثصنتاثنتانسايق\r\nسنتنمتنستثنتنمس', '3.PNG', 'اناهعغعثقهصغخهعفه\r\nصثتاعثصغهعغثقصه', NULL, NULL, NULL, 23, 20, 5, 0, '2013-04-05 15:34:15'),
(29, 'l;k;lk', '625', 'kljkljlkjkjkljkljikj', 'DSCF0219.JPG', 'kjkljk;lk86', NULL, NULL, NULL, 13, 18, 5, 0, '2013-04-05 15:34:15'),
(30, 'موبيل', '550', 'mohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad\r\nmohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad\r\nmohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad\r\nmohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad', '603491_168165869974893_327713457_n.jpg', 'mohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad\r\nmohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad\r\nmohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad\r\nmohamed saaaaaaaaaaaaaaaaadmohamed saaaaaaaaaaaaaaaaad', NULL, NULL, NULL, 14, 0, 5, 0, '2013-04-05 15:34:15'),
(31, 'بطيخة', '920', 'بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان', '6402_197978716993608_1291570189_n.jpg', 'بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان\r\nبطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان بطيخ وبتنجان', NULL, NULL, NULL, 23, 20, 5, 0, '2013-04-05 15:34:15'),
(32, 'قهبتهتنتنتثقت', '4666', 'نسيرتنمبتيسننتنميبستنتيبسنتنمتيسنبتمنيبستشنمتيسشبننيبسشتنميبسىنتت\r\nيبسنتيساشبتنايسبتاتيسبيسبتالتيساابايبستانايستنانايبسبيسنتميسبنتمنتبيسنمب\r\nبيتايبساتاتياشسيبتنيسبتايبستشنيساتناتسشبينابسشيتايبسشتاتيبستاايسبتن\r\nابلاليساتيسشباتيسال', '268225_2976039219346_1393190720_n.jpg', 'نسيرتنمبتيسننتنميبستنتيبسنتنمتيسنبتمنيبستشنمتيسشبننيبسشتنميبسىنتت\r\nيبسنتيساشبتنايسبتاتيسبيسبتالتيساابايبستانايستنانايبسبيسنتميسبنتمنتبيسنمب\r\nبيتايبساتاتياشسيبتنيسبتايبستشنيساتناتسشبينابسشيتايبسشتاتيبستاايسبتن\r\nابلاليساتيسشباتيسال', NULL, NULL, NULL, 14, 22, 5, 0, '2013-04-05 15:34:15'),
(33, 'محمد', '455', 'ىبنتسينبيسىىتةينسمةيسنمةنيمستش\r\nسشيبةنمبيىسشنمت', '306010_186026648188815_14554965_n.jpg', 'تنيبساشيبسنتا\r\nشيبسنتابيسنتا', NULL, NULL, NULL, 24, 0, 20, 0, '2013-04-05 15:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `service_message`
--

CREATE TABLE IF NOT EXISTS `service_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `resiver_id` int(11) NOT NULL,
  `sender_u_name` varchar(255) NOT NULL,
  `reciver_u_name` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `recive_seen` int(2) NOT NULL,
  `sender_seen` int(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `service_message`
--

INSERT INTO `service_message` (`id`, `sender_id`, `resiver_id`, `sender_u_name`, `reciver_u_name`, `message`, `file`, `recive_seen`, `sender_seen`, `date`, `type`) VALUES
(1, 10, 15, 'saaad', 'employee1', 'hiiiiiiiiiiiiiiiiiiii', '', 0, 0, '2013-04-05 06:41:56', 'user'),
(2, 15, 10, 'employee1', 'saaad', 'nhjadgsknahgnjm', 'non', 0, 0, '2013-04-05 06:45:01', 'admin'),
(3, 10, 15, 'saaad', 'employee1', 'صباح الخير يا محمد عامل ايه ؟', 'non', 0, 0, '2013-04-05 07:04:43', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categ`
--

CREATE TABLE IF NOT EXISTS `sub_categ` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `c_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sub_categ_1` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `sub_categ`
--

INSERT INTO `sub_categ` (`id`, `name`, `c_id`) VALUES
(18, 'لعب اطفال', 13),
(19, 'تسويق ألكترونى', 15),
(20, 'دومين', 23),
(21, 'منى', 23),
(22, 'بالا', 24),
(23, 'مصر 11', 25);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `t_photo_name` varchar(255) NOT NULL,
  `rate_up` int(11) NOT NULL,
  `rate_down` int(11) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `statue` varchar(10) NOT NULL,
  `num_seen` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `c_id`, `sc_id`, `user_id`, `title`, `content`, `t_photo_name`, `rate_up`, `rate_down`, `user_type`, `statue`, `num_seen`, `date`) VALUES
(3, 1, 1, 1, 'اخوانى ', 'ما انا قولت كده من الاول اسمعو الكلام بقيما انا قولت كده من الاول اسمعو الكلام بقيما انا قولت كده من الاول اسمعو الكلام بقيما انا قولت كده من الاول اسمعو الكلام بقيما انا قولت كده من الاول اسمعو الكلام بقيما انا قولت كده من الاول اسمعو الكلام بقي', 'img4.jpg', 0, 0, 'user', '1', 5, '2013-04-07 05:29:03'),
(4, 1, 3, 10, 'تمراز', 'ول ما تفتح كلمنى عشان اعملك بوش\r\nانا شغال حاليا ف الخدمه باظبطها عل الديزين دا وهاشتغل ف البلوج اهو', 'img4.jpg', 0, 0, 'user', '1', 4, '2013-04-07 05:29:03'),
(5, 0, 0, 10, 'هههههههههههههههههههههه', 'ههههههههههههههههههههههههههههههههههههههههههههههههههههههههه\r\nههههههههههههههههههههههههههههههههههههههههههههههههههههههههه\r\nههههههههههههههههههههههههههههههههههههههههههههههههههههههههه\r\nههههههههههههههههههههههههههههههههههههههههههههههههههههههههه\r\nههههههههههههههههههههههههههههههههههههههههههههههههههههههههه\r\nههههههههههههههههههههههههههههههههههههههههههههههههههههههههه\r\nههههههههههههههههههههههههههههههههههههههههههههههههههههههههه', 'IMAG0020.JPG', 0, 0, 'user', '1', 3, '2013-04-07 05:29:03'),
(6, 3, 0, 10, 'محمد سعد', 'وةتيسنتنيسشانماتنانتاسشيس\r\nسيبتاتيبساليسالارالايبسش\r\nتيسابتاشتاتنساشتناتلالاىلاى', '1.jpg', 0, 0, 'user', '0', 0, '2013-04-07 05:29:03'),
(7, 3, 0, 10, 'hgjkihsuagt', 'IUDSAHIEIHESAIU', '529369_288793867920193_2014415672_n.jpg', 0, 0, 'user', '0', 0, '2013-04-07 05:29:03'),
(8, 2, 0, 10, 'يسمبنتنميستبن', 'نمثيبستنمتبسينمتنميبس', '11.jpg', 0, 0, 'user', '0', 0, '2013-04-07 05:29:03'),
(10, 1, 1, 10, 'dfcjvbjvbj', 'vmvbnmcgfhjdfk,dgjm', 'DSCF1316.JPG', 0, 0, 'user', '0', 0, '2013-04-07 05:29:03'),
(11, 1, 3, 10, 'hamsa', 'afzdsgdfxhfxhcxh', 'DSCF1315.JPG', 0, 0, 'user', '0', 0, '2013-04-07 05:29:03'),
(12, 1, 1, 1, 'hamsa2', 'fsgtdszgzdgxgcxghcxhcx', 'DSCF13152.JPG', 0, 0, 'admin', '0', 0, '2013-04-07 05:29:03'),
(13, 1, 1, 1, 'hamsa2', 'fsgtdszgzdgxgcxghcxhcx', 'DSCF13153.JPG', 0, 0, 'admin', '0', 0, '2013-04-07 05:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(450) NOT NULL,
  `email` varchar(450) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount_point` int(10) unsigned DEFAULT NULL,
  `amount_money` double DEFAULT NULL,
  `pincode` varchar(450) NOT NULL,
  `last_log` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(450) NOT NULL,
  `pass` varchar(950) NOT NULL,
  `phone` varchar(450) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `parent_link` varchar(500) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `payment_email` varchar(245) NOT NULL,
  `sec_pass` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `zip_code`, `email`, `reg_date`, `amount_point`, `amount_money`, `pincode`, `last_log`, `username`, `pass`, `phone`, `country`, `city`, `address`, `parent_link`, `profile_pic`, `payment_email`, `sec_pass`) VALUES
(1, '', 'malah@yahoo.com', '2013-03-03 22:32:50', 5500, 5000, '', '2013-03-02 16:57:52', 'malah', '39c49127fc7e59af6265cd979a267b90', '012987878787', '????????', 'asdfs', 'kjn', 'sdfvxcv', 'IMAG0007.JPG', '', ''),
(2, '', 'mohamedsaad2085@yahoo.com', '2013-03-03 22:32:50', 1380, NULL, '', '2013-03-02 17:24:39', 'mohamed', '1c9c6a5272d43ad8e85470ffa0c1f07d', '010650216546', '???', '?????', '????-?????', '0', 'default_pic.jpg', '', ''),
(3, '1233', 'temraz@yahoo.com', '2013-03-03 22:32:50', 6000, NULL, '', '2013-03-03 16:33:42', 'temraz', '202cb962ac59075b964b07152d234b70', '012', 'الصومال', 'tanta', 'dsf', 'tet', '36563_361510953941817_225287246_n.jpg', '', ''),
(5, '0', 'temraz21@yahoo.com', '2013-03-08 03:51:12', 5500, NULL, '', '0000-00-00 00:00:00', '????', '81dc9bdb52d04dc20036dbd8313ed055', '0106186891195', '???????', 'sfg,,', 'wfsdf', '1233', 'default_pic.jpg', '', ''),
(6, '0', 'rr@yahoo.com', '2013-03-08 04:01:14', 5500, NULL, '', '0000-00-00 00:00:00', 'rrr', '202cb962ac59075b964b07152d234b70', '124', 'none', '123', '123', 'wqer', 'default_pic.jpg', '', ''),
(7, '12345', 'we@yahoo.com', '2013-03-08 04:03:08', 5500, NULL, '', '0000-00-00 00:00:00', 'temraz4', '202cb962ac59075b964b07152d234b70', '123', 'DZ', '123', 'we', 'qr', '301949_313921635289170_1892217951_n.jpg', '', ''),
(8, '123', 'temraaz12@yahoo.com', '2013-03-08 06:39:50', 5500, NULL, '', '0000-00-00 00:00:00', 'تمراز', '202cb962ac59075b964b07152d234b70', '0106186891195', '????????', '12', 'wr', 'sdf', 'default_pic.jpg', '', ''),
(9, '1234', 'temo12@yahoo.com', '2013-03-08 11:38:32', 5500, NULL, '', '0000-00-00 00:00:00', 'temraz122', '202cb962ac59075b964b07152d234b70', '01061868195', 'SA', '???????', ';df;g;', 'werkn', 'default_pic.jpg', '', ''),
(10, '', '', '2013-03-09 15:16:29', 976599, 0, '', '0000-00-00 00:00:00', 'saad', '347602146a923872538f3803eb5f3cef', NULL, NULL, NULL, NULL, '', '562705_445133228897713_229894976_n.jpg', '', ''),
(11, '', '', '2013-03-19 20:13:23', 5500, NULL, '', '0000-00-00 00:00:00', 'mohamed', '309cd3800aacbd003ac36199fa537295', NULL, NULL, NULL, NULL, '', '309168_168014173323396_784558585_n.jpg', '', ''),
(12, '65765454', 'mody.ss50@yahoo.com', '2013-03-21 19:03:17', 5500, NULL, '', '0000-00-00 00:00:00', 'mody', '78c44895078570248a45de2751e5eeef', '546465465465', 'DZ', 'mody', 'mody', 'mody', 'default_pic.jpg', '', ''),
(13, '123', 'ahmed123@yahoo.com', '2013-04-02 04:57:22', NULL, NULL, '', '0000-00-00 00:00:00', 'gogo', '202cb962ac59075b964b07152d234b70', '01061868195', 'DZ', '123', 'akfn', 'wfewr', 'default_pic.jpg', 'ahmed124@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `user_chat`
--

CREATE TABLE IF NOT EXISTS `user_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receiv_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `receiv_seen` varchar(45) NOT NULL,
  `sender_seen` varchar(45) NOT NULL,
  `mess_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_user_chat_1` (`receiv_id`),
  KEY `FK_user_chat_2` (`sender_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `user_chat`
--

INSERT INTO `user_chat` (`id`, `receiv_id`, `sender_id`, `message`, `receiv_seen`, `sender_seen`, `mess_date`) VALUES
(1, 3, 10, 'sdfsdfdsf', '0', '1', '2013-03-17 01:58:53'),
(2, 3, 10, 'dasdasd\n', '1', '1', '2013-03-17 02:36:15'),
(3, 10, 3, 'sdfsdfsdf', '0', '1', '2013-03-17 03:08:56'),
(4, 3, 10, 'تصميم مواقع خلال خمس ايام مع تقديم استضافه لمده شهر مجاناتصميم مواقع خلال خمس ايام مع تقديم استضافه لمده شهر مجانا', '0', '1', '2013-03-17 03:10:09'),
(5, 10, 3, 'kooooooooooo', '0', '1', '2013-03-17 10:12:36'),
(8, 3, 10, 'hi\n', '0', '1', '2013-03-17 11:27:09'),
(9, 3, 7, 'hah', '0', '1', '2013-03-17 11:27:58'),
(10, 3, 10, 'temraz', '0', '1', '2013-03-20 10:44:43'),
(11, 10, 10, 'l dlfg', '0', '1', '2013-03-20 10:48:46'),
(12, 1, 10, 'kjihuytrdfyuio', '0', '1', '2013-03-21 13:49:13'),
(13, 10, 10, 'jdhskjhdjas', '0', '1', '2013-04-04 16:02:56'),
(14, 10, 10, 'ملاح', '0', '1', '2013-04-04 18:45:46'),
(15, 10, 10, 'محمد', '0', '1', '2013-04-04 18:45:52'),
(16, 10, 10, 'يبس', '0', '1', '2013-04-04 18:51:51'),
(17, 10, 10, 'يسشيسيسب', '0', '1', '2013-04-04 18:51:53'),
(18, 10, 1, 'اسكت ابقا', '0', '1', '2013-04-05 06:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_temp`
--

CREATE TABLE IF NOT EXISTS `user_temp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(245) CHARACTER SET latin1 NOT NULL,
  `email` varchar(245) CHARACTER SET latin1 NOT NULL,
  `country` varchar(245) CHARACTER SET latin1 NOT NULL,
  `city` varchar(245) CHARACTER SET latin1 NOT NULL,
  `address` varchar(245) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(25) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(245) CHARACTER SET latin1 NOT NULL,
  `parent_link` varchar(500) CHARACTER SET latin1 NOT NULL,
  `key` varchar(500) CHARACTER SET latin1 NOT NULL,
  `zip_code` varchar(45) CHARACTER SET latin1 NOT NULL,
  `sec_pass` varchar(245) CHARACTER SET latin1 NOT NULL,
  `payment_email` varchar(245) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_temp`
--

INSERT INTO `user_temp` (`id`, `username`, `email`, `country`, `city`, `address`, `phone`, `pass`, `parent_link`, `key`, `zip_code`, `sec_pass`, `payment_email`) VALUES
(1, 'gogo', 'ahmed12@yahoo.com', 'SA', '123', 'akfn', '01061868195', '202cb962ac59075b964b07152d234b70', 'wfewr', '92bb06612880618c24706df5cd3bbdbe', '123', '12345', 'ahmed12@yahoo.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_employee_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `external`
--
ALTER TABLE `external`
  ADD CONSTRAINT `FK_external_1` FOREIGN KEY (`ser_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_order_1` FOREIGN KEY (`s_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_order_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_order_3` FOREIGN KEY (`e_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_service_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categ`
--
ALTER TABLE `sub_categ`
  ADD CONSTRAINT `FK_sub_categ_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
