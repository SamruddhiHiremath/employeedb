/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.1.54-community : Database - employee_db_test4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee_db_test4` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `employee_db_test4`;

/*Table structure for table `emp_dtl` */

DROP TABLE IF EXISTS `emp_dtl`;

CREATE TABLE `emp_dtl` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(150) NOT NULL,
  `emp_company` varchar(150) NOT NULL,
  `emp_salary` int(11) NOT NULL,
  `emp_exp` int(11) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_city` varchar(150) DEFAULT NULL,
  `emp_state` varchar(500) DEFAULT NULL,
  `emp_country` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_dtl` */

insert  into `emp_dtl`(`emp_id`,`emp_name`,`emp_company`,`emp_salary`,`emp_exp`,`emp_address`,`emp_city`,`emp_state`,`emp_country`) values 
(1,'SAMRUDDHI','TCS',43889,5,'#6thcrossramnagar','MUMBAI',' maharashtra','INDIA'),
(2,'SRUSHTI','WIPRO',56311,2,'jalnagar','DAVANGERE','KARNATAKA','INDIA'),
(3,'VACHANA','TECHM',68732,3,'ASHRAM ROAD','BANGALORE',' CHENNAI','INDIA'),
(4,'SANJANA','TCS',60451,11,'#2NDcrossmaruthinagar','Koppalringroad','  uttarpradesh','INDIA'),
(5,'SHAMBHAVI','TCS',19046,6,'Gevarchandnagar','LAHORE',' PUNJAB','INDIA'),
(6,'SOUBHAGYA','INFOSYS',64592,8,'Tresurycolony','SOLAPUR',' KARNATAKA','INDIA'),
(7,'SUMAIYA','TCS',48030,4,'Bijapurringroad','PANAJI',' GOA','INDIA'),
(8,' KAVANA','INFOSYS ',66248,4,'sainagar','MUMBAI',' MAHARASHTRA','INDIA');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
