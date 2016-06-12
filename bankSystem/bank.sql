/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.17 : Database - banksystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`banksystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `banksystem`;

/*Table structure for table `t_account` */

DROP TABLE IF EXISTS `t_account`;

CREATE TABLE `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acctId` varchar(32) DEFAULT NULL,
  `userId` varchar(8) DEFAULT NULL,
  `accType` int(1) DEFAULT NULL,
  `isLoss` int(1) DEFAULT NULL,
  `saveMoney` decimal(10,2) DEFAULT NULL,
  `saveType` int(1) DEFAULT NULL,
  `saveYear` int(2) DEFAULT NULL,
  `saveDate` date DEFAULT NULL,
  `loanMoney` decimal(10,2) DEFAULT NULL,
  `loanType` int(1) DEFAULT NULL,
  `loanYear` int(2) DEFAULT NULL,
  `loanDate` date DEFAULT NULL,
  `warrant01` varchar(8) DEFAULT NULL,
  `warrant02` varchar(8) DEFAULT NULL,
  `loanHouse` varchar(64) DEFAULT NULL,
  `creditMoney` decimal(10,2) DEFAULT NULL,
  `consumeMoney` decimal(10,2) DEFAULT NULL,
  `creditPwd` varchar(6) DEFAULT NULL,
  `US_dollar` decimal(10,2) DEFAULT NULL,
  `HK_dollar` decimal(10,2) DEFAULT NULL,
  `JP_dollar` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `t_account` */

insert  into `t_account`(`id`,`acctId`,`userId`,`accType`,`isLoss`,`saveMoney`,`saveType`,`saveYear`,`saveDate`,`loanMoney`,`loanType`,`loanYear`,`loanDate`,`warrant01`,`warrant02`,`loanHouse`,`creditMoney`,`consumeMoney`,`creditPwd`,`US_dollar`,`HK_dollar`,`JP_dollar`) values (3,'62284','11111',0,0,'3590.00',0,0,'2015-12-10','0.00',0,0,'2015-12-10',NULL,NULL,NULL,'0.00','0.00',NULL,'0.00','0.00','0.00'),(24,'62285','11111',0,0,'1.00',0,1,'2015-12-11','0.00',0,0,'2015-12-11',NULL,NULL,NULL,'0.00','0.00',NULL,'0.00','0.00','0.00'),(29,'62286','11111',0,0,'1.00',0,1,'2015-12-11','0.00',0,0,'2015-12-11',NULL,NULL,NULL,'0.00','0.00',NULL,'0.00','0.00','0.00'),(30,'7979','99999',0,0,'4000.00',0,10,'2015-12-12','0.00',0,0,'2015-12-12',NULL,NULL,NULL,'0.00','0.00',NULL,'0.00','0.00','0.00'),(31,'62288','99999',0,0,'100000.00',0,2,'2016-06-11','0.00',0,0,'2016-06-11',NULL,NULL,NULL,'0.00','0.00',NULL,'0.00','0.00','0.00');

/*Table structure for table `t_transinfo` */

DROP TABLE IF EXISTS `t_transinfo`;

CREATE TABLE `t_transinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) DEFAULT NULL,
  `acctNo` varchar(32) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `transType` varchar(16) DEFAULT NULL,
  `transDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `t_transinfo` */

insert  into `t_transinfo`(`id`,`userId`,`acctNo`,`money`,`transType`,`transDate`) values (3,'11111','62284','1000.00','存款','2015-12-13 00:00:00'),(4,'11111','62284','1000.00','取款','2015-12-13 00:00:00'),(5,'11111','62284','100.00','取款','2015-12-13 00:00:00'),(6,'11111','62284','200.00','存款','2015-12-13 00:00:00'),(7,'11111','62284','50.00','存款','2015-12-13 15:11:53'),(8,'11111','62284','60.00','取款','2015-12-13 15:12:03'),(9,'11111','62284','1000.00','存款','2015-12-13 15:12:11'),(10,'11111','62284','200.00','取款','2015-12-13 15:12:15'),(11,'11111','62284','300.00','取款','2015-12-13 15:12:20');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `UserId` varchar(20) NOT NULL DEFAULT '',
  `personId` varchar(20) DEFAULT NULL,
  `userName` varchar(58) DEFAULT NULL,
  `userPwd` varchar(58) DEFAULT NULL,
  `oldPwd` varchar(58) DEFAULT NULL,
  `phone` varchar(58) DEFAULT NULL,
  `addr` varchar(58) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`UserId`,`personId`,`userName`,`userPwd`,`oldPwd`,`phone`,`addr`,`userType`) values ('11111','1','a','a2345678',NULL,'1','1',2),('99999','123321','邱厚森','1234567a',NULL,'110','123123',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
