
-- Host: localhost
-- Generation Time: 1398/8/28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `complexa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--


CREATE TABLE `account` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `name` char(200) NOT NULL,
  `number` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `admin`
--


CREATE TABLE `admin` (
  `username` char(64) NOT NULL,
  `password` char(64) NOT NULL,
  `lastlogin` char(100) NOT NULL,
  `mobile` char(11) NOT NULL,
  `otp` char(2) NOT NULL,
  `login_sec_key` varchar(10000) NOT NULL,
  `ip` char(15) NOT NULL,
  `autoupdatetime` int(11) NOT NULL,
  `period_lasttime` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `default_print_size` char(10) NOT NULL,
  `security_pass` char(100) NOT NULL,
  `autologoutmin` int(11) NOT NULL,
  `ticket_return_valid_time` int(11) NOT NULL,
  `ticket_return_damage_percent` int(11) NOT NULL,
  `autobackup_mins` int(11) NOT NULL,
  `autobackup_time_type` enum('hour','day') NOT NULL,
  `autobackup_limit` int(11) NOT NULL,
  `image` char(100) NOT NULL,
  `header` char(100) NOT NULL,
  `free_guest_defaultname` char(100) NOT NULL,
  `login_failute_refresh_time` int(11) NOT NULL,
  `crop_width` int(11) NOT NULL,
  `crop_height` int(11) NOT NULL,
  `crop_quality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `card`
--


CREATE TABLE `card` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `class_id` int(6) NOT NULL,
  `name` char(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `remained` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `code` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `card_payment`
--


CREATE TABLE `card_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `card_id` int(4) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` bigint(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fishnumber` char(100) NOT NULL,
  `account` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `class`
--


CREATE TABLE `class` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `name` char(200) NOT NULL,
  `count` int(2) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_start` char(10) NOT NULL,
  `date_finish` char(10) NOT NULL,
  `day_1_check` char(2) NOT NULL,
  `day_2_check` char(2) NOT NULL,
  `day_3_check` char(2) NOT NULL,
  `day_4_check` char(2) NOT NULL,
  `day_5_check` char(2) NOT NULL,
  `day_6_check` char(2) NOT NULL,
  `day_7_check` char(2) NOT NULL,
  `day_1_time` char(5) NOT NULL,
  `day_2_time` char(5) NOT NULL,
  `day_3_time` char(5) NOT NULL,
  `day_4_time` char(5) NOT NULL,
  `day_5_time` char(5) NOT NULL,
  `day_6_time` char(5) NOT NULL,
  `day_7_time` char(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `closet`
--


CREATE TABLE `closet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `category_name` char(30) NOT NULL,
  `name` char(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` char(40) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `contract`
--


CREATE TABLE `contract` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `type` char(20) NOT NULL,
  `contract_number` char(30) NOT NULL,
  `date_start` bigint(50) NOT NULL,
  `date_finish` bigint(50) NOT NULL,
  `person_id` int(4) NOT NULL,
  `tel` char(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(4) NOT NULL,
  `remained` int(11) NOT NULL,
  `paying_type` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `f1` char(50) NOT NULL,
  `f2` char(50) NOT NULL,
  `f3` char(50) NOT NULL,
  `f4` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `contract_payment`
--


CREATE TABLE `contract_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `contract_id` int(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` bigint(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fishnumber` char(50) NOT NULL,
  `account` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `cost`
--


CREATE TABLE `cost` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `group_id` int(4) NOT NULL,
  `name` char(200) NOT NULL,
  `amount` char(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `time` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `cost_group`
--


CREATE TABLE `cost_group` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `name` char(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `coupon`
--


CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `serial` char(100) CHARACTER SET utf8 NOT NULL,
  `description` char(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('فعال','استفاده شده','رزرو') CHARACTER SET utf8 NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `deduction`
--


CREATE TABLE `deduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `personel_id` int(4) NOT NULL,
  `deduction_group_id` int(4) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `deduction_group`
--


CREATE TABLE `deduction_group` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `guest`
--


CREATE TABLE `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `mobile` char(15) NOT NULL,
  `type` char(20) NOT NULL,
  `sex` char(6) NOT NULL,
  `image` char(100) NOT NULL,
  `date` char(19) NOT NULL,
  `ticket_all` int(11) NOT NULL,
  `ticket_active` int(11) NOT NULL,
  `ticket_refund` int(11) NOT NULL,
  `ticket_used` int(11) NOT NULL,
  `ticket_expired` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `guest_block`
--


CREATE TABLE `guest_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` char(50) NOT NULL,
  `todate_value` char(10) NOT NULL,
  `until_value` char(5) NOT NULL,
  `description` char(255) NOT NULL,
  `date` char(10) NOT NULL,
  `time` char(19) NOT NULL,
  `end_stamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `log`
--


CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `time` bigint(50) NOT NULL,
  `action` varchar(1000) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `technical` varchar(5000) NOT NULL,
  `agent` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15798 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `msgs`
--


CREATE TABLE `msgs` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `text` text NOT NULL,
  `date` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `msgs_fromusers`
--


CREATE TABLE `msgs_fromusers` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `recieve_id` int(11) DEFAULT NULL,
  `suid` int(11) NOT NULL,
  `user_id` int(6) NOT NULL,
  `text` text NOT NULL,
  `time` char(19) NOT NULL,
  `read_msg` int(11) DEFAULT NULL,
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `part`
--


CREATE TABLE `part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `datetime` char(19) NOT NULL,
  `name` char(100) NOT NULL,
  `income_ip` char(15) NOT NULL,
  `income_port` char(6) NOT NULL,
  `output_ip` char(15) NOT NULL,
  `output_port` char(5) NOT NULL,
  `description` text NOT NULL,
  `mens_check` char(2) NOT NULL,
  `womens_check` char(2) NOT NULL,
  `mens_personel_check` char(2) NOT NULL,
  `womens_personel_check` char(2) NOT NULL,
  `mens_amount` int(11) NOT NULL,
  `womens_amount` int(11) NOT NULL,
  `only_admin` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `part_ip`
--


CREATE TABLE `part_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` enum('part','temp_part') NOT NULL,
  `part_id` int(11) NOT NULL,
  `ip` char(15) NOT NULL,
  `port` char(5) NOT NULL,
  `type` enum('income','output') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `person`
--


CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `personel`
--


CREATE TABLE `personel` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `type` char(50) DEFAULT NULL,
  `name` char(200) DEFAULT NULL,
  `gender` char(20) DEFAULT NULL,
  `ntcode` char(11) DEFAULT NULL,
  `shsh` char(10) DEFAULT NULL,
  `hour_per_day` int(2) DEFAULT NULL,
  `amount_type` char(100) DEFAULT NULL,
  `amount_per_hour` int(10) DEFAULT NULL,
  `insurance` char(50) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `fathername` char(50) DEFAULT NULL,
  `birthdate` char(12) DEFAULT NULL,
  `workplace` char(40) DEFAULT NULL,
  `workplace_code` char(12) DEFAULT NULL,
  `tel` char(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `personel_time`
--


CREATE TABLE `personel_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `personel_id` int(4) NOT NULL,
  `act` char(8) NOT NULL,
  `time` bigint(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personel_id` (`personel_id`,`act`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `poster`
--


CREATE TABLE `poster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `time` text NOT NULL,
  `stamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `savior_program`
--


CREATE TABLE `savior_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(4) NOT NULL,
  `personel_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` tinyint(2) NOT NULL,
  `days_of_month` char(255) NOT NULL,
  `start_minute` tinyint(2) NOT NULL,
  `start_hour` tinyint(2) NOT NULL,
  `end_minute` tinyint(2) NOT NULL,
  `end_hour` tinyint(2) NOT NULL,
  `step` tinyint(1) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `showtime`
--


CREATE TABLE `showtime` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `mode` enum('آزاد','ویژه مهمانان') NOT NULL,
  `name` char(200) NOT NULL,
  `price` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `type` char(100) NOT NULL,
  `start_date` char(10) NOT NULL,
  `start_minute` char(2) NOT NULL,
  `start_hour` char(2) NOT NULL,
  `end_date` char(10) NOT NULL,
  `end_minute` char(2) NOT NULL,
  `end_hour` char(2) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `archive` int(11) NOT NULL,
  `use_coupon` char(2) NOT NULL,
  `return_time_limit` int(11) NOT NULL,
  `return_damage_percent` int(11) NOT NULL,
  `sale_limit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `showtime_closet_category`
--


CREATE TABLE `showtime_closet_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showtime_id` int(11) NOT NULL,
  `cname` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `showtime_part`
--


CREATE TABLE `showtime_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showtime_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `type` enum('continual','temp') NOT NULL,
  `item_default` tinyint(1) NOT NULL,
  `item_lock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `showtime_tagscategory`
--


CREATE TABLE `showtime_tagscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showtime_id` int(11) NOT NULL,
  `tags_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `tags`
--


CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `serial` char(150) NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','free','suspend') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `tags_category`
--


CREATE TABLE `tags_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `datetime` char(19) NOT NULL,
  `name` char(100) NOT NULL,
  `color_name` char(50) NOT NULL,
  `color_code` char(7) NOT NULL,
  `pledge` int(11) NOT NULL,
  `type` char(20) NOT NULL,
  `mens` char(2) NOT NULL,
  `mens_count` int(11) NOT NULL,
  `womens` char(2) NOT NULL,
  `womens_count` int(11) NOT NULL,
  `frees` char(2) NOT NULL,
  `frees_count` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` text NOT NULL,
  `only_admin` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `tags_guest_ticket`
--


CREATE TABLE `tags_guest_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_category_id` int(11) NOT NULL,
  `time` char(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `tags_log`
--


CREATE TABLE `tags_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `datetime` char(19) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `details` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `temp_part`
--


CREATE TABLE `temp_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showtime_id` int(11) NOT NULL,
  `suid` int(11) NOT NULL,
  `datetime` char(19) NOT NULL,
  `name` char(100) NOT NULL,
  `income_ip` char(15) NOT NULL,
  `income_port` char(6) NOT NULL,
  `output_ip` char(15) NOT NULL,
  `output_port` char(5) NOT NULL,
  `description` text NOT NULL,
  `mens_check` char(2) NOT NULL,
  `womens_check` char(2) NOT NULL,
  `mens_personel_check` char(2) NOT NULL,
  `womens_personel_check` char(2) NOT NULL,
  `mens_amount` int(11) NOT NULL,
  `womens_amount` int(11) NOT NULL,
  `only_admin` char(2) NOT NULL,
  `item_default` int(1) NOT NULL,
  `item_lock` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `ticket`
--


CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(11) NOT NULL,
  `showtime_id` int(11) DEFAULT NULL,
  `tag_category_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `make_time` char(14) DEFAULT NULL,
  `make_time_stamp` int(11) NOT NULL,
  `description` char(255) DEFAULT NULL,
  `login_amount` int(11) DEFAULT NULL,
  `total_part_amount` int(11) DEFAULT NULL,
  `closet_amount` int(11) NOT NULL,
  `tag_discount` int(11) DEFAULT NULL,
  `tag_pledge` int(11) DEFAULT NULL,
  `discount_1000_rials` int(11) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` char(60) DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_finish` datetime DEFAULT NULL,
  `printed` int(11) DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `ticket_part`
--


CREATE TABLE `ticket_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `part_table` enum('part','temp_part') NOT NULL,
  `closet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_id` (`ticket_id`,`guest_id`,`part_id`,`part_table`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		

--
-- Table structure for table `ticketold`
--


CREATE TABLE `ticketold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `name` char(200) NOT NULL,
  `showtime_id` int(11) NOT NULL,
  `code` char(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `time_start` datetime NOT NULL,
  `time_finish` datetime NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` char(60) NOT NULL,
  `usetime` datetime NOT NULL,
  `type` int(2) NOT NULL,
  `sessions` int(2) NOT NULL,
  `printed` int(11) NOT NULL,
  `print_time` char(30) NOT NULL,
  `archive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `tracks`
--


CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `account_id` int(4) NOT NULL,
  `type` set('+','-') NOT NULL,
  `amount` int(11) NOT NULL,
  `time` bigint(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


-- --------------------------------------------------------
		
		

--
-- Table structure for table `users`
--


CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `suid` int(6) NOT NULL,
  `name` char(200) NOT NULL,
  `username` char(100) NOT NULL,
  `password` char(100) NOT NULL,
  `permit` char(255) NOT NULL,
  `lastlogin` bigint(50) NOT NULL,
  `mobile` char(11) NOT NULL,
  `msg` text NOT NULL,
  `status` enum('available','deleted') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8

		
--
-- Dumping data for table ``
--


INSERT INTO `` VALUES('' , '' , '' , '' , '' , '' , '' , '' , '' , '' );

-- --------------------------------------------------------
		
		
