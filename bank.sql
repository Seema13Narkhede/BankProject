-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.29 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for bank
CREATE DATABASE IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bank`;


-- Dumping structure for table bank.accountreg
CREATE TABLE IF NOT EXISTS `accountreg` (
  `fname` varchar(50) NOT NULL DEFAULT '0',
  `mname` varchar(50) NOT NULL DEFAULT '0',
  `lname` varchar(50) NOT NULL DEFAULT '0',
  `mobno` varchar(50) NOT NULL DEFAULT '0',
  `dob` date NOT NULL,
  `accno` int(11) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `ifsc` varchar(50) NOT NULL DEFAULT '0',
  `acctype` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `add1` varchar(50) NOT NULL DEFAULT '0',
  `branch` varchar(50) NOT NULL DEFAULT '0',
  `pass` varchar(50) NOT NULL DEFAULT '0',
  `regdate` date NOT NULL,
  PRIMARY KEY (`accno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bank.accountreg: ~1 rows (approximately)
/*!40000 ALTER TABLE `accountreg` DISABLE KEYS */;
INSERT INTO `accountreg` (`fname`, `mname`, `lname`, `mobno`, `dob`, `accno`, `balance`, `ifsc`, `acctype`, `email`, `add1`, `branch`, `pass`, `regdate`) VALUES
	('Harish', 'Chandrakant', 'Rukumpure', 'rukumpure', '2017-06-15', 123456789, '000000', 'FGHS7856', 'saving', 'hr@gmail.com', 'Pune', 'Pune', 'harish8789', '2017-06-07');
/*!40000 ALTER TABLE `accountreg` ENABLE KEYS */;


-- Dumping structure for table bank.traacc
CREATE TABLE IF NOT EXISTS `traacc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accno` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table bank.traacc: ~1 rows (approximately)
/*!40000 ALTER TABLE `traacc` DISABLE KEYS */;
INSERT INTO `traacc` (`id`, `accno`, `balance`) VALUES
	(1, '48465699455', '520000');
/*!40000 ALTER TABLE `traacc` ENABLE KEYS */;


-- Dumping structure for table bank.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `accno` int(20) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `FK__accountreg` (`accno`),
  CONSTRAINT `FK__accountreg` FOREIGN KEY (`accno`) REFERENCES `accountreg` (`accno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bank.transaction: ~1 rows (approximately)
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` (`tid`, `accno`, `balance`) VALUES
	(1, 123456789, 50000);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
