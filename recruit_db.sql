# SQL Manager 2007 Lite for MySQL 4.4.2.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : recruit_db


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `recruit_db`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `recruit_db`;

#
# Structure for the `usercompany` table : 
#

CREATE TABLE `usercompany` (
  `companyEmail` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`companyEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `companyjob` table : 
#

CREATE TABLE `companyjob` (
  `id` int(11) NOT NULL,
  `jobEmail` varchar(50) DEFAULT NULL,
  `jobCategory` varchar(10) NOT NULL,
  `jobName` varchar(10) DEFAULT NULL,
  `jobNature` varchar(10) DEFAULT NULL,
  `minSalary` varchar(10) DEFAULT NULL,
  `maxSalary` varchar(10) DEFAULT NULL,
  `jobCity` varchar(10) DEFAULT NULL,
  `jobExperience` varchar(20) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `jobTempation` varchar(50) DEFAULT NULL,
  `jobDescription` varchar(200) DEFAULT NULL,
  `jobAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobEmail` (`jobEmail`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`jobEmail`) REFERENCES `usercompany` (`companyEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `userfindjob` table : 
#

CREATE TABLE `userfindjob` (
  `findJobEmail` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`findJobEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `resume` table : 
#

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `resumeEmail` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `expect_job` varchar(20) DEFAULT NULL,
  `jobExperience` varchar(100) DEFAULT NULL,
  `educationBackground` varchar(100) DEFAULT NULL,
  `myselfDescription` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resumeEmail` (`resumeEmail`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`resumeEmail`) REFERENCES `userfindjob` (`findJobEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;