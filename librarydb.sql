/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.36-MariaDB : Database - librarydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`librarydb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `librarydb`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `MIDDLENAME` varchar(100) NOT NULL,
  `CONTACT` varchar(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `SECRET_QUESTION` varchar(100) NOT NULL,
  `SECRET_ANSWER` varchar(100) NOT NULL,
  `TYPE_OF_PERMISSION` varchar(100) NOT NULL,
  `DATE_OF_BIRTH` varchar(50) NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `account` */

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) NOT NULL,
  `PERMISSION` varchar(100) NOT NULL,
  `LOG_IN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `ISBN` varchar(50) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `CATEGORY_BOOK` varchar(50) NOT NULL,
  `EDITION` varchar(50) NOT NULL,
  `PUBLICATION` varchar(50) NOT NULL,
  `PUBLICATION_YEAR` varchar(4) NOT NULL,
  `TOTAL_BOOKS` varchar(10) NOT NULL,
  `AMOUNT` varchar(10) NOT NULL,
  `TOTAL_BORROWED` varchar(10) NOT NULL,
  `DATE_CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MARKS` int(11) NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `books` */

/*Table structure for table `borrow` */

DROP TABLE IF EXISTS `borrow`;

CREATE TABLE `borrow` (
  `RECORDNO` varchar(50) NOT NULL,
  `LIBRARYID` varchar(50) NOT NULL,
  `STUDENTID` varchar(50) NOT NULL,
  `FULLNAME` varchar(100) NOT NULL,
  `BOOKID` varchar(50) NOT NULL,
  `BOOK_TITLE` varchar(100) NOT NULL,
  `CATEGORY_BOOK` varchar(100) NOT NULL,
  `ISSUES_DATE` varchar(50) NOT NULL,
  `RETURN_DATE` varchar(50) NOT NULL,
  `MARKS` int(11) NOT NULL,
  PRIMARY KEY (`RECORDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `borrow` */

/*Table structure for table `login_history` */

DROP TABLE IF EXISTS `login_history`;

CREATE TABLE `login_history` (
  `USER` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) NOT NULL,
  `TIME_OUT` varchar(50) NOT NULL,
  `DATE_OUT` varchar(50) NOT NULL,
  PRIMARY KEY (`USER`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `login_history` */

/*Table structure for table `returns` */

DROP TABLE IF EXISTS `returns`;

CREATE TABLE `returns` (
  `RETURNID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_NO` varchar(50) NOT NULL,
  `LIBRARYID` varchar(50) NOT NULL,
  `STUDENT_NO` varchar(50) NOT NULL,
  `BOOKNAME` varchar(100) NOT NULL,
  `LATEDAYS` int(50) NOT NULL,
  `CHARGES` double NOT NULL,
  `DATE_RECORD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`RETURNID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `returns` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `LIBRARY_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `MIDDLENAME` varchar(100) NOT NULL,
  `COURSE` varchar(100) NOT NULL,
  `YEAR` varchar(100) NOT NULL,
  `EDUC` varchar(100) NOT NULL,
  `CONTACT` varchar(11) NOT NULL,
  `TODAY` text NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `ADDRESS` text NOT NULL,
  PRIMARY KEY (`LIBRARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
