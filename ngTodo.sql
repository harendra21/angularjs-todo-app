/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.37-MariaDB : Database - ngtodo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ngtodo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ngtodo`;

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `task` */

insert  into `task`(`id`,`title`,`status`,`description`,`created_at`,`updated_at`) values (1,'This is new task','delete','Description','2019-02-12 13:58:49','2019-02-12 16:55:20'),(2,'This is another task','delete','This is task desciption.','2019-02-12 14:14:24','2019-02-12 16:55:19'),(3,'This is new task',NULL,'Desc','2019-02-12 14:25:36','2019-02-12 14:25:36'),(4,'This is new task','delete','desc','2019-02-12 14:27:56','2019-02-12 16:55:18'),(5,'This is new task','delete','desc','2019-02-12 14:28:09','2019-02-12 16:55:17'),(6,'this is new task','delete','descr','2019-02-12 14:28:23','2019-02-12 16:55:16'),(7,'Adding new task','delete','New task','2019-02-12 16:12:26','2019-02-12 16:54:56'),(8,'SymposiumGo Website','pending','Complete SymposiumGo website new front end task.','2019-02-12 17:03:30','2019-02-12 17:09:54'),(9,'Online Audio Training','assigned','Complete remaining changes on Online Audio Training Website','2019-02-12 17:11:02','2019-02-12 17:11:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
