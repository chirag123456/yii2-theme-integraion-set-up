/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.7.24-0ubuntu0.16.04.1-log : Database - couchconstruction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`couchconstruction` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `couchconstruction`;

/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `fk_module` (`module_id`),
  CONSTRAINT `fk_action` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=latin1;

/*Data for the table `action` */

insert  into `action`(`id`,`action_name`,`module_id`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(69,'index',24,1,'2018-10-02 02:54:28',1,'2018-10-02 02:54:28','Y','Y'),
(70,'add',24,1,'2018-10-02 02:54:28',1,'2018-10-02 02:54:28','Y','Y'),
(71,'update',24,1,'2018-10-02 02:54:28',1,'2018-10-02 02:54:28','Y','Y'),
(72,'delete',24,1,'2018-10-02 02:54:28',1,'2018-10-02 02:54:28','Y','Y'),
(73,'index',25,1,'2018-10-02 02:54:40',1,'2018-10-02 02:54:40','Y','Y'),
(74,'add',25,1,'2018-10-02 02:54:40',1,'2018-10-02 02:54:40','Y','Y'),
(75,'update',25,1,'2018-10-02 02:54:41',1,'2018-10-02 02:54:41','Y','Y'),
(76,'delete',25,1,'2018-10-02 02:54:41',1,'2018-10-02 02:54:41','Y','Y'),
(121,'index',38,1,'2018-10-02 02:56:27',1,'2018-10-02 02:56:27','Y','Y'),
(122,'add',38,1,'2018-10-02 02:56:27',1,'2018-10-02 02:56:27','Y','Y'),
(123,'update',38,1,'2018-10-02 02:56:27',1,'2018-10-02 02:56:27','Y','Y'),
(124,'delete',38,1,'2018-10-02 02:56:27',1,'2018-10-02 02:56:27','Y','Y'),
(189,'index',39,1,'2018-10-19 02:36:45',1,'2018-10-19 02:36:45','Y','N'),
(190,'add',39,1,'2018-10-19 02:36:45',1,'2018-10-19 02:36:45','Y','N'),
(191,'update',39,1,'2018-10-19 02:36:45',1,'2018-10-19 02:36:45','Y','N'),
(192,'delete',39,1,'2018-10-19 02:36:45',1,'2018-10-19 02:36:45','Y','N'),
(193,'view',39,1,'2018-10-19 02:36:46',1,'2018-10-19 02:36:46','Y','N'),
(194,'status',39,1,'2018-10-19 02:36:46',1,'2018-10-19 02:36:46','Y','N'),
(201,'index',28,1,'2018-10-19 02:37:18',1,'2018-10-19 02:37:18','Y','N'),
(202,'add',28,1,'2018-10-19 02:37:18',1,'2018-10-19 02:37:18','Y','N'),
(203,'update',28,1,'2018-10-19 02:37:18',1,'2018-10-19 02:37:18','Y','N'),
(204,'delete',28,1,'2018-10-19 02:37:18',1,'2018-10-19 02:37:18','Y','N'),
(205,'view',28,1,'2018-10-19 02:37:18',1,'2018-10-19 02:37:18','Y','N'),
(206,'status',28,1,'2018-10-19 02:37:18',1,'2018-10-19 02:37:18','Y','N'),
(207,'index',29,1,'2018-10-19 02:37:36',1,'2018-10-19 02:37:36','Y','N'),
(208,'add',29,1,'2018-10-19 02:37:37',1,'2018-10-19 02:37:37','Y','N'),
(209,'update',29,1,'2018-10-19 02:37:37',1,'2018-10-19 02:37:37','Y','N'),
(210,'delete',29,1,'2018-10-19 02:37:37',1,'2018-10-19 02:37:37','Y','N'),
(211,'view',29,1,'2018-10-19 02:37:37',1,'2018-10-19 02:37:37','Y','N'),
(212,'status',29,1,'2018-10-19 02:37:37',1,'2018-10-19 02:37:37','Y','N'),
(213,'index',30,1,'2018-10-19 02:37:57',1,'2018-10-19 02:37:57','Y','N'),
(214,'add',30,1,'2018-10-19 02:37:57',1,'2018-10-19 02:37:57','Y','N'),
(215,'update',30,1,'2018-10-19 02:37:57',1,'2018-10-19 02:37:57','Y','N'),
(216,'delete',30,1,'2018-10-19 02:37:57',1,'2018-10-19 02:37:57','Y','N'),
(217,'view',30,1,'2018-10-19 02:37:57',1,'2018-10-19 02:37:57','Y','N'),
(218,'status',30,1,'2018-10-19 02:37:57',1,'2018-10-19 02:37:57','Y','N'),
(219,'index',31,1,'2018-10-19 02:38:32',1,'2018-10-19 02:38:32','Y','N'),
(220,'add',31,1,'2018-10-19 02:38:32',1,'2018-10-19 02:38:32','Y','N'),
(221,'update',31,1,'2018-10-19 02:38:32',1,'2018-10-19 02:38:32','Y','N'),
(222,'delete',31,1,'2018-10-19 02:38:32',1,'2018-10-19 02:38:32','Y','N'),
(223,'view',31,1,'2018-10-19 02:38:32',1,'2018-10-19 02:38:32','Y','N'),
(224,'status',31,1,'2018-10-19 02:38:32',1,'2018-10-19 02:38:32','Y','N'),
(225,'index',32,1,'2018-10-19 02:38:50',1,'2018-10-19 02:38:50','Y','N'),
(226,'add',32,1,'2018-10-19 02:38:50',1,'2018-10-19 02:38:50','Y','N'),
(227,'update',32,1,'2018-10-19 02:38:50',1,'2018-10-19 02:38:50','Y','N'),
(228,'delete',32,1,'2018-10-19 02:38:50',1,'2018-10-19 02:38:50','Y','N'),
(229,'status',32,1,'2018-10-19 02:38:50',1,'2018-10-19 02:38:50','Y','N'),
(236,'index',35,1,'2018-10-19 02:39:32',1,'2018-10-19 02:39:32','Y','N'),
(237,'add',35,1,'2018-10-19 02:39:32',1,'2018-10-19 02:39:32','Y','N'),
(238,'update',35,1,'2018-10-19 02:39:32',1,'2018-10-19 02:39:32','Y','N'),
(239,'delete',35,1,'2018-10-19 02:39:32',1,'2018-10-19 02:39:32','Y','N'),
(240,'status',35,1,'2018-10-19 02:39:32',1,'2018-10-19 02:39:32','Y','N'),
(241,'index',36,1,'2018-10-19 02:39:40',1,'2018-10-19 02:39:40','Y','N'),
(242,'add',36,1,'2018-10-19 02:39:40',1,'2018-10-19 02:39:40','Y','N'),
(243,'update',36,1,'2018-10-19 02:39:40',1,'2018-10-19 02:39:40','Y','N'),
(244,'delete',36,1,'2018-10-19 02:39:40',1,'2018-10-19 02:39:40','Y','N'),
(245,'status',36,1,'2018-10-19 02:39:40',1,'2018-10-19 02:39:40','Y','N'),
(246,'index',37,1,'2018-10-19 02:39:59',1,'2018-10-19 02:39:59','Y','N'),
(247,'add',37,1,'2018-10-19 02:40:00',1,'2018-10-19 02:40:00','Y','N'),
(248,'update',37,1,'2018-10-19 02:40:00',1,'2018-10-19 02:40:00','Y','N'),
(249,'delete',37,1,'2018-10-19 02:40:00',1,'2018-10-19 02:40:00','Y','N'),
(250,'view',37,1,'2018-10-19 02:40:00',1,'2018-10-19 02:40:00','Y','N'),
(251,'status',37,1,'2018-10-19 02:40:00',1,'2018-10-19 02:40:00','Y','N'),
(252,'index',40,1,'2018-10-19 02:57:04',1,'2018-10-19 02:57:04','Y','N'),
(253,'add',40,1,'2018-10-19 02:57:04',1,'2018-10-19 02:57:04','Y','N'),
(254,'update',40,1,'2018-10-19 02:57:04',1,'2018-10-19 02:57:04','Y','N'),
(255,'delete',40,1,'2018-10-19 02:57:04',1,'2018-10-19 02:57:04','Y','N'),
(256,'view',40,1,'2018-10-19 02:57:05',1,'2018-10-19 02:57:05','Y','N'),
(257,'status',40,1,'2018-10-19 02:57:05',1,'2018-10-19 02:57:05','Y','N'),
(258,'index',41,1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(259,'add',41,1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(260,'update',41,1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(261,'delete',41,1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(262,'view',41,1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(263,'status',41,1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(264,'index',42,1,'2018-10-19 03:07:07',1,'2018-10-19 03:07:07','Y','N'),
(265,'add',42,1,'2018-10-19 03:07:08',1,'2018-10-19 03:07:08','Y','N'),
(266,'view',42,1,'2018-10-19 03:07:08',1,'2018-10-19 03:07:08','Y','N'),
(267,'index',26,1,'2018-10-19 06:11:07',1,'2018-10-19 06:11:07','Y','N'),
(268,'add',26,1,'2018-10-19 06:11:07',1,'2018-10-19 06:11:07','Y','N'),
(269,'update',26,1,'2018-10-19 06:11:07',1,'2018-10-19 06:11:07','Y','N'),
(270,'delete',26,1,'2018-10-19 06:11:08',1,'2018-10-19 06:11:08','Y','N'),
(271,'status',26,1,'2018-10-19 06:11:08',1,'2018-10-19 06:11:08','Y','N'),
(277,'index',27,1,'2018-10-19 06:11:37',1,'2018-10-19 06:11:37','Y','N'),
(278,'add',27,1,'2018-10-19 06:11:37',1,'2018-10-19 06:11:37','Y','N'),
(279,'update',27,1,'2018-10-19 06:11:38',1,'2018-10-19 06:11:38','Y','N'),
(280,'delete',27,1,'2018-10-19 06:11:38',1,'2018-10-19 06:11:38','Y','N'),
(281,'view',27,1,'2018-10-19 06:11:38',1,'2018-10-19 06:11:38','Y','N'),
(282,'status',27,1,'2018-10-19 06:11:38',1,'2018-10-19 06:11:38','Y','N'),
(283,'index',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(284,'add',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(285,'update',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(286,'delete',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(287,'view',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(288,'status',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(289,'export-excel',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(290,'export-pdf',33,1,'2018-10-19 06:12:06',1,'2018-10-19 06:12:06','Y','N'),
(291,'index',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(292,'add',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(293,'update',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(294,'delete',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(295,'view',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(296,'status',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(297,'export-pdf',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(298,'export-one-pdf',34,1,'2018-10-19 06:12:31',1,'2018-10-19 06:12:31','Y','N'),
(299,'index',43,1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(300,'add',43,1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(301,'update',43,1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(302,'delete',43,1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(303,'view',43,1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(304,'status',43,1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(305,'index',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(306,'add',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(307,'update',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(308,'delete',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(309,'view',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(310,'status',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(311,'export-pdf',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(312,'export-one-pdf',44,1,'2018-11-23 00:33:00',1,'2018-11-23 00:33:00','Y','N'),
(313,'index',45,1,'2018-11-24 03:38:03',1,'2018-11-24 03:38:03','Y','N'),
(314,'add',45,1,'2018-11-24 03:38:03',1,'2018-11-24 03:38:03','Y','N'),
(315,'update',45,1,'2018-11-24 03:38:03',1,'2018-11-24 03:38:03','Y','N'),
(316,'delete',45,1,'2018-11-24 03:38:03',1,'2018-11-24 03:38:03','Y','N'),
(317,'index',46,1,'2018-11-26 06:00:13',1,'2018-11-26 06:00:13','Y','N'),
(318,'view',46,1,'2018-11-26 06:00:13',1,'2018-11-26 06:00:13','Y','N'),
(319,'export-one-pdf',46,1,'2018-11-26 06:00:14',1,'2018-11-26 06:00:14','Y','N'),
(320,'index',47,1,'2018-11-26 06:00:56',1,'2018-11-26 06:00:56','Y','N'),
(321,'view',47,1,'2018-11-26 06:00:56',1,'2018-11-26 06:00:56','Y','N'),
(322,'export-pdf',47,1,'2018-11-26 06:00:56',1,'2018-11-26 06:00:56','Y','N'),
(323,'index',48,1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N'),
(324,'add',48,1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N'),
(325,'update',48,1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N'),
(326,'delete',48,1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N'),
(327,'view',48,1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N'),
(328,'status',48,1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N');

/*Table structure for table `action_item` */

DROP TABLE IF EXISTS `action_item`;

CREATE TABLE `action_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_location` text NOT NULL,
  `next_meeting_details` text NOT NULL,
  `facilitators` varchar(255) NOT NULL,
  `invitees` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `objective` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_action_project_id` (`project_id`),
  CONSTRAINT `FK_action_project_id` FOREIGN KEY (`project_id`) REFERENCES `project_management` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `action_item` */

insert  into `action_item`(`id`,`project_id`,`meeting_date`,`meeting_location`,`next_meeting_details`,`facilitators`,`invitees`,`participants`,`objective`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(7,21,'2018-10-18','csdc','sdcskjdflsjdflskdjf alfj sldkf sldfkja lsdfkjas dkja\r\ndflasjdflasdkjf laskdjf lasdjf lasdkfj alskdfjlasdjf\r\nsdfljasldfkjsldkfja lsdkfjsldfkjadf\r\n','xasx','asxa','sdc','csdcs',1,'2018-10-18 00:57:29',1,'2018-10-25 15:57:23','Y','N'),
(8,37,'2018-12-01','Test Location','Test Location','Test Location','Test Location','Test Location','Test Location',1,'2018-12-01 04:12:39',1,'2018-12-01 04:12:39','Y','N'),
(9,37,'2018-12-01','Test Location Test LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest Location','Test Location Test LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest Location','Test Location','Test Location','Test Location','Test Location',1,'2018-12-01 04:16:31',1,'2018-12-01 04:36:17','Y','N'),
(10,36,'2018-12-31','Meeting Location','Meeting Details','Faciliators','Investiees','Partricipants','Objectives',1,'2018-12-01 04:46:39',1,'2018-12-01 04:46:39','N','N'),
(11,37,'2019-01-31','Task Allocation','Task Allocation Meetings','Facilitators','Invitees','Participants','Objectives',1,'2018-12-05 08:38:41',1,'2018-12-05 08:39:19','Y','N');

/*Table structure for table `action_item_list` */

DROP TABLE IF EXISTS `action_item_list`;

CREATE TABLE `action_item_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_item_id` int(11) NOT NULL,
  `item_no` int(11) NOT NULL,
  `date_of_origin` date NOT NULL,
  `priority` enum('HIGH','STANDARD','LOW') NOT NULL,
  `item_desc` text NOT NULL,
  `current_status` enum('OPEN','ASSIGNED','INPROGRESS','ESCALATED','CLOSED') NOT NULL,
  `action_item_owner` varchar(255) NOT NULL,
  `item_origin` varchar(255) NOT NULL,
  `due_date` date NOT NULL,
  `completed_or_received` enum('COMPLETED','RECEIVED') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `FK_action_item_id` (`action_item_id`),
  CONSTRAINT `FK_action_item_id` FOREIGN KEY (`action_item_id`) REFERENCES `action_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `action_item_list` */

insert  into `action_item_list`(`id`,`action_item_id`,`item_no`,`date_of_origin`,`priority`,`item_desc`,`current_status`,`action_item_owner`,`item_origin`,`due_date`,`completed_or_received`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(5,7,1,'2018-10-19','STANDARD','asxca','ASSIGNED','asc','56156','2018-10-26','COMPLETED',1,'2018-10-25 15:57:23',1,'2018-10-25 15:57:23','Y','N'),
(6,7,2,'2018-10-20','HIGH','asc','OPEN','ascasc','56156ascac','2018-10-27','COMPLETED',1,'2018-10-25 15:57:23',1,'2018-10-25 15:57:23','Y','N'),
(7,7,3,'2018-06-04','HIGH','fdgfgsdfgdf','OPEN','fgdfgdfg','fgdfg','2018-10-30','RECEIVED',1,'2018-10-25 15:57:23',1,'2018-10-25 15:57:23','Y','N'),
(8,8,11,'2018-12-01','HIGH','Test Location','OPEN','Test Location','Test Location','1969-12-31','COMPLETED',1,'2018-12-01 04:12:39',1,'2018-12-01 04:12:39','Y','N'),
(17,9,11,'2018-12-01','HIGH','Test Location','OPEN','Test Location','Test Location Test LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest LocationTest L','2020-01-01','COMPLETED',1,'2018-12-01 04:36:17',1,'2018-12-01 04:36:17','Y','N'),
(18,9,22,'2018-12-02','STANDARD','Test Location','ASSIGNED','Test Location','Test Location','2018-12-30','RECEIVED',1,'2018-12-01 04:36:17',1,'2018-12-01 04:36:17','Y','N'),
(19,10,2345,'2018-12-01','LOW','Itesm Description','OPEN','Abbas','Tampa','1969-12-31','RECEIVED',1,'2018-12-01 04:46:39',1,'2018-12-01 04:46:39','Y','N'),
(20,10,2345,'2018-12-02','HIGH','Itesm Descriptionnnnn','ASSIGNED','Ali','Florida','1969-12-31','COMPLETED',1,'2018-12-01 04:46:39',1,'2018-12-01 04:46:39','Y','N'),
(21,10,2345,'2018-12-03','STANDARD','Itesm Descriptionnnnnrrr','INPROGRESS','Mohmaad','New York','1969-12-31','RECEIVED',1,'2018-12-01 04:46:39',1,'2018-12-01 04:46:39','Y','N'),
(26,11,1232,'2018-12-05','LOW','Description','OPEN','Action Items Owner','Item Origin','1969-12-31','RECEIVED',1,'2018-12-05 08:39:19',1,'2018-12-05 08:39:19','Y','N'),
(27,11,1324,'2018-12-26','HIGH','Description','ASSIGNED','Action Items Owner','Item Origin','1969-12-31','COMPLETED',1,'2018-12-05 08:39:19',1,'2018-12-05 08:39:19','Y','N');

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('Architecture',20,2018),
('Architecture',24,2018),
('Architecture',33,2018),
('Architecture',34,2018),
('Architecture',35,2018),
('Architecture',36,2018),
('Architecture',37,2018),
('Architecture',38,2018),
('Architecture',39,2018),
('Architecture',40,2018),
('Architecture',41,2018),
('Architecture',42,2018),
('Architecture',43,2018),
('Architecture',48,2018),
('Architecture',60,2018),
('Architecture',73,2018),
('Architecture',97,2018),
('General Contractor(GC)',3,2018),
('General Contractor(GC)',4,2018),
('General Contractor(GC)',6,2018),
('General Contractor(GC)',8,2018),
('General Contractor(GC)',9,2018),
('General Contractor(GC)',10,2018),
('General Contractor(GC)',11,2018),
('General Contractor(GC)',12,2018),
('New Test Role',64,2018),
('New Test Role',68,2018),
('New Test Role',89,2018),
('Onsite Developers',7,2018),
('Onsite Developers',13,2018),
('Onsite Developers',14,2018),
('Onsite Developers',15,2018),
('Onsite Developers',80,2018),
('Project Manager',16,2018),
('Project Manager',82,2018),
('Project Manager',90,2018),
('Sub Contractor',18,2018),
('Sub Contractor',21,2018),
('Sub Contractor',23,2018),
('Sub Contractor',26,2018),
('Sub Contractor',27,2018),
('Sub Contractor',28,2018),
('Sub Contractor',29,2018),
('Sub Contractor',30,2018),
('Sub Contractor',31,2018),
('Sub Contractor',32,2018),
('Sub Contractor',47,2018),
('Sub Contractor',57,2018),
('Sub Contractor',61,2018),
('Sub Contractor',71,2018),
('Sub Contractor',94,2018),
('superadmin',1,NULL),
('Superintendent',17,2018),
('Superintendent',72,2018),
('Superintendent',98,2018),
('test',22,2018),
('Vendor',44,2018),
('Vendor',46,2018),
('Vendor',58,2018),
('Vendor',59,2018),
('Vendor',62,2018),
('Vendor',70,2018),
('VIP',49,2018);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(255) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
('Architecture',1,NULL,NULL,NULL,2018,2018),
('General Contractor(GC)',1,NULL,NULL,NULL,2018,2018),
('New Test Role',1,NULL,NULL,NULL,2018,2018),
('Project Manager',1,NULL,NULL,NULL,2018,2018),
('Sub Admin',1,NULL,NULL,NULL,2018,2018),
('Sub Contractor',1,NULL,NULL,NULL,2018,2018),
('superadmin',1,NULL,NULL,NULL,NULL,NULL),
('Superintendent',1,NULL,NULL,NULL,2018,2018),
('Supplier',1,NULL,NULL,NULL,2018,2018),
('test1',1,NULL,NULL,NULL,2018,2018);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_item_child` */

/*Table structure for table `change_order` */

DROP TABLE IF EXISTS `change_order`;

CREATE TABLE `change_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `project_no` varchar(255) NOT NULL,
  `purchase_order_no` varchar(255) DEFAULT NULL,
  `change_order_no` varchar(255) NOT NULL,
  `contract_date` date NOT NULL,
  `contract_for` varchar(255) NOT NULL,
  `to_contractor` int(11) NOT NULL,
  `old_contract_sum` varchar(255) NOT NULL,
  `change_order_total_sum` varchar(255) NOT NULL,
  `new_order_contract_sum` varchar(255) NOT NULL,
  `architect_id` int(11) NOT NULL,
  `contractor_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `date_submited_approval` date NOT NULL,
  `date_approval_recived_back` datetime NOT NULL,
  `date_recived_response` date NOT NULL,
  `current_status` enum('OPEN','SUBMITED','APPROVED','REJECTED') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `change_order` */

insert  into `change_order`(`id`,`project_id`,`project_no`,`purchase_order_no`,`change_order_no`,`contract_date`,`contract_for`,`to_contractor`,`old_contract_sum`,`change_order_total_sum`,`new_order_contract_sum`,`architect_id`,`contractor_id`,`client_id`,`date_submited_approval`,`date_approval_recived_back`,`date_recived_response`,`current_status`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,24,'561561',NULL,'5c07a98519993','2018-12-05','CONSTRUCTION',3,'620','46','666',35,3,NULL,'2018-12-05','2018-12-05 05:37:53','2018-12-05','SUBMITED',1,'2018-12-05 05:37:53',1,'2018-12-05 05:37:53','Y','N'),
(2,24,'561561',NULL,'5c07ca3394afc','2018-12-05','CONSTRUCTION',3,'620','4356','4976',35,3,NULL,'2018-12-05','2018-12-05 07:53:41','2018-12-05','SUBMITED',1,'2018-12-05 07:53:41',1,'2018-12-05 07:53:41','Y','N'),
(3,37,'99999',NULL,'5c07d92ac0551','2018-12-07','CONSTRUCTION',3,'497','2','499',80,3,NULL,'2018-12-06','2018-12-05 08:58:58','2018-12-31','OPEN',1,'2018-12-05 08:58:58',1,'2018-12-05 08:58:58','Y','N');

/*Table structure for table `change_order_item` */

DROP TABLE IF EXISTS `change_order_item`;

CREATE TABLE `change_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `change_order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `extended_amt` varchar(255) NOT NULL,
  `change_class` enum('Owner Requested Changes','Materials or Equipment Unavailable','Misc. / Other','Regulatory Requirements','Unforseen Conditions','Omission','Error') NOT NULL,
  `time_ext` varchar(255) NOT NULL,
  `co_amt` varchar(255) NOT NULL,
  `updated_contract_amt` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `change_order_item` */

insert  into `change_order_item`(`id`,`change_order_id`,`item_id`,`qty`,`unit`,`description`,`unit_price`,`extended_amt`,`change_class`,`time_ext`,`co_amt`,`updated_contract_amt`,`notes`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,1,4,'1','KG','Test','23','23','Materials or Equipment Unavailable','2','23','643','Test',1,'2018-12-05 05:37:53',1,'2018-12-05 05:37:53','Y','N'),
(2,1,15,'1','KG','Test','23','23','Unforseen Conditions','2','23','643','Test',1,'2018-12-05 05:37:53',1,'2018-12-05 05:37:53','Y','N'),
(3,2,4,'66','KG','Test','66','4356','Owner Requested Changes','321','4356','4976','Test',1,'2018-12-05 07:53:41',1,'2018-12-05 07:53:41','Y','N'),
(4,3,1,'1','1','Description','1','1','Owner Requested Changes','1','1','498','1',1,'2018-12-05 08:58:58',1,'2018-12-05 08:58:58','Y','N'),
(5,3,3,'1','1','Description','1','1','Owner Requested Changes','1','1','498','1',1,'2018-12-05 08:58:58',1,'2018-12-05 08:58:58','Y','N');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`id`,`name`,`state_id`,`country_id`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'Miami',1,1,1,'2018-08-21 01:00:47',1,'2018-08-21 01:00:47','Y','N'),
(2,'Dallas',2,1,1,'2018-10-08 06:46:15',1,'2018-10-08 06:46:15','Y','N'),
(3,'Montgomery',4,1,1,'2018-10-18 02:15:19',1,'2018-10-18 02:15:19','Y','N'),
(4,'Juneau',5,1,1,'2018-10-18 02:15:30',1,'2018-10-18 02:15:30','Y','N'),
(5,'Phoenix',6,1,1,'2018-10-18 02:15:41',1,'2018-10-18 02:15:41','Y','N'),
(6,'Little Rock',7,1,1,'2018-10-18 02:15:53',1,'2018-10-18 02:15:53','Y','N'),
(7,'Sacramento',8,1,1,'2018-10-18 02:16:06',1,'2018-10-18 02:16:06','Y','N'),
(8,'Denver',9,1,1,'2018-10-18 02:16:18',1,'2018-10-18 02:16:18','Y','N'),
(9,'Hartford',10,1,1,'2018-10-18 02:16:30',1,'2018-10-18 02:16:30','Y','N'),
(10,'Dover',11,1,1,'2018-10-18 02:16:43',1,'2018-10-18 02:16:43','Y','N'),
(11,'Tallahassee',1,1,1,'2018-10-18 02:17:03',1,'2018-10-18 02:17:03','Y','N'),
(12,'Atlanta',12,1,1,'2018-10-18 02:17:19',1,'2018-10-18 02:17:19','Y','N'),
(13,'Honolulu',13,1,1,'2018-10-18 02:17:33',1,'2018-10-18 02:17:33','Y','N'),
(14,'Boise',14,1,1,'2018-10-18 02:17:45',1,'2018-10-18 02:17:45','Y','N'),
(15,'Springfield',15,1,1,'2018-10-18 02:18:12',1,'2018-10-18 02:18:12','Y','N'),
(16,'Indianapolis',16,1,1,'2018-10-18 02:18:30',1,'2018-10-18 02:18:30','Y','N'),
(17,'Des Moines',17,1,1,'2018-10-18 02:21:40',1,'2018-10-18 02:21:40','Y','N'),
(18,'Topeka',18,1,1,'2018-10-18 02:22:01',1,'2018-10-18 02:22:01','Y','N'),
(19,'Frankfort',19,1,1,'2018-10-18 02:22:14',1,'2018-10-18 02:22:14','Y','N'),
(20,'Baton Rouge',20,1,1,'2018-10-18 02:22:33',1,'2018-10-18 02:22:33','Y','N'),
(21,'Augusta',21,1,1,'2018-10-18 02:22:46',1,'2018-10-18 02:22:46','Y','N'),
(22,'Annapolis',22,1,1,'2018-10-18 02:22:59',1,'2018-10-18 02:22:59','Y','N'),
(23,'Boston',23,1,1,'2018-10-18 02:23:19',1,'2018-10-18 02:23:19','Y','N'),
(24,'Lansing',24,1,1,'2018-10-18 02:23:34',1,'2018-10-18 02:23:34','Y','N'),
(25,'Saint Paul',25,1,1,'2018-10-18 02:23:48',1,'2018-10-18 02:23:48','Y','N'),
(26,'Jackson',26,1,1,'2018-10-18 02:24:06',1,'2018-10-18 02:24:06','Y','N'),
(27,'Jefferson City',27,1,1,'2018-10-18 02:24:44',1,'2018-10-18 02:24:44','Y','N'),
(28,'Helena',28,1,1,'2018-10-18 02:25:07',1,'2018-10-18 02:25:07','Y','N'),
(29,'Lincoln',29,1,1,'2018-10-18 02:25:24',1,'2018-10-18 02:25:24','Y','N'),
(30,'Carson City',30,1,1,'2018-10-18 02:25:42',1,'2018-10-18 02:25:42','Y','N'),
(31,'Concord',31,1,1,'2018-10-18 02:26:00',1,'2018-10-18 02:26:00','Y','N'),
(32,'Trenton',32,1,1,'2018-10-18 02:26:18',1,'2018-10-18 02:26:18','Y','N'),
(33,'Santa Fe',33,1,1,'2018-10-18 02:26:45',1,'2018-10-18 02:26:45','Y','N'),
(34,'Albany',34,1,1,'2018-10-18 02:27:11',1,'2018-10-18 02:27:11','Y','N'),
(35,'Raleigh',35,1,1,'2018-10-18 02:27:27',1,'2018-10-18 02:27:27','Y','N'),
(36,'Bismarck',36,1,1,'2018-10-18 02:27:49',1,'2018-10-18 02:27:49','Y','N'),
(37,'Columbus',37,1,1,'2018-10-18 02:28:34',1,'2018-10-18 02:28:34','Y','N'),
(38,'Oklahoma City',38,1,1,'2018-10-18 02:28:54',1,'2018-10-18 02:28:54','Y','N'),
(39,'Salem',39,1,1,'2018-10-18 02:29:06',1,'2018-10-18 02:29:06','Y','N'),
(40,'Harrisburg',40,1,1,'2018-10-18 02:29:24',1,'2018-10-18 02:29:24','Y','N'),
(41,'Providence',41,1,1,'2018-10-18 02:29:39',1,'2018-10-18 02:29:39','Y','N'),
(42,'Columbia',42,1,1,'2018-10-18 02:29:51',1,'2018-10-18 02:29:51','Y','N'),
(43,'Pierre',43,1,1,'2018-10-18 02:30:06',1,'2018-10-18 02:30:06','Y','N'),
(44,'Nashville',44,1,1,'2018-10-18 02:30:45',1,'2018-10-18 02:30:45','Y','N'),
(45,'Salt Lake City',45,1,1,'2018-10-24 03:29:30',1,'2018-10-24 03:29:30','Y','N'),
(46,'Montpelier',46,1,1,'2018-10-18 02:31:28',1,'2018-10-18 02:31:28','Y','N'),
(47,'Richmond',47,1,1,'2018-10-18 02:31:47',1,'2018-10-18 02:31:47','Y','N'),
(48,'Olympia',48,1,1,'2018-10-18 02:32:23',1,'2018-10-18 02:32:23','Y','N'),
(49,'Charleston',49,1,1,'2018-10-18 02:32:34',1,'2018-10-18 02:32:34','Y','N'),
(50,'Madison',50,1,1,'2018-10-18 02:32:48',1,'2018-10-18 02:32:48','Y','N'),
(51,'Cheyenne',51,1,1,'2018-10-18 02:32:59',1,'2018-10-18 02:32:59','Y','N'),
(52,'Austin',2,1,1,'2018-10-18 02:33:09',1,'2018-10-18 02:33:09','Y','N'),
(53,'New City',1,1,1,'2018-10-23 07:36:41',1,'2018-10-23 07:36:41','Y','N'),
(54,'New City1',1,1,1,'2018-10-24 03:29:26',1,'2018-10-24 03:29:26','Y','N'),
(55,'Washington',48,1,1,'2018-10-24 04:36:29',1,'2018-10-24 04:36:29','N','Y');

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) NOT NULL,
  `client_address` text NOT NULL,
  `client_phone` varchar(255) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`id`,`client_name`,`client_address`,`client_phone`,`client_email`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'Philip','USA','651561561561','ck@yaho0.com',1,'2018-09-07 07:03:07',24,'2018-09-27 03:24:06','Y','N'),
(2,'jackson','sdkcbj ','111111111111','nin@sdchh.sdc',1,'2018-09-07 07:14:05',1,'2018-09-07 07:14:05','Y','N'),
(3,'Khalifa','Dubai','+18671289379','khalifa@mailintaor.com',1,'2018-10-08 07:49:48',1,'2018-10-08 07:49:48','N','N'),
(4,'WINSTON','Dubai','+19879812739','WINSTON@mailinator.com',1,'2018-10-08 07:55:27',1,'2018-10-08 07:55:27','Y','N'),
(5,'TRACEY','USA','+19809128930','TRACEY@mailinator.com',1,'2018-10-08 07:56:06',1,'2018-10-08 07:56:06','Y','N'),
(6,'STEPHEN','USA','+19871928738','STEPHEN@mailinator.com',1,'2018-10-08 07:56:34',1,'2018-10-08 07:56:34','Y','N'),
(7,'RUSSELL','USA','+18712983719','RUSSELL@mailinator.com',1,'2018-10-08 07:57:00',1,'2018-10-08 07:57:00','Y','N'),
(8,'PATRICK','USA','+19810928390','PATRICK@mailinator.com',1,'2018-10-08 07:57:29',1,'2018-10-08 07:57:29','Y','N'),
(9,'OSWALDO','USA','+19872390804','OSWALDO@mailinator.com',1,'2018-10-08 07:57:51',1,'2018-10-08 07:57:51','Y','N'),
(10,'NICHOLAS','USA','+19798127893','NICHOLAS@mailinator.com',1,'2018-10-08 07:58:22',1,'2018-10-08 07:58:22','Y','N'),
(11,'MICKEY','USA','+19879812739','MICKEY@mailinator.com',1,'2018-10-08 07:58:59',1,'2018-10-08 07:58:59','Y','N'),
(12,'LUTHER','Adress','+19871290387','LUTHER@mailinator.com',1,'2018-10-08 08:00:31',1,'2018-10-08 08:00:31','Y','N'),
(13,'Clinet1','Test1','+19871902839','Client1@gmail.com',1,'2018-10-09 09:32:44',1,'2018-10-19 08:31:49','Y','N'),
(14,'Louis Philipines','juhasd kahsdkj hiayshdioy auiosydio yasodiu oiausdo iuoiasu doiu asiod uoiasduoiu aoisud oiuasoidu oiausdoi upoiasu dpoiu oiasu dpoiu asiopduoi asuodiuioasudoiu ioasuoiuOIAUDS IOU ASOIDU OIAS UDOIUASOIDULiau dsoiua iosduoiua soid uoiaus doiuoiasudoiuasiodu oiausdiouoiasudoiuaspoidu poiausdipou oipaU','192830918203','louis@mailinator.com',1,'2018-10-17 04:55:28',1,'2018-10-17 04:55:57','N','Y'),
(15,'Jeson','Test','+19798127893','Jeson@mailinator.com',1,'2018-10-17 05:04:06',1,'2018-10-17 05:05:40','Y','Y'),
(16,'Al Jazeera','Address Testttt','109999900000','Aljazeera@mailinator.com',1,'2018-10-23 03:14:24',1,'2018-10-23 03:20:52','Y','Y'),
(17,'Abdulla1','Test','222222222222','Abdulla@mailinator.com',1,'2018-10-23 03:26:55',1,'2018-10-23 03:27:18','Y','N');

/*Table structure for table `construction_contract_management` */

DROP TABLE IF EXISTS `construction_contract_management`;

CREATE TABLE `construction_contract_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `contractor_id` int(11) NOT NULL,
  `sub_contractor_id` int(11) NOT NULL,
  `construction_contract_cost` varchar(255) NOT NULL,
  `construction_estimated_days` varchar(255) NOT NULL,
  `sub_contractor_price` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `construction_address` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `construction_contract_management` */

insert  into `construction_contract_management`(`id`,`project_id`,`contractor_id`,`sub_contractor_id`,`construction_contract_cost`,`construction_estimated_days`,`sub_contractor_price`,`client_id`,`construction_address`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,1,3,31,'23','2000','23',4,'6',1,'2018-09-28 00:55:44',1,'2018-10-08 08:01:50','N','N'),
(2,26,3,31,'787889','2222','666666',1,'Dubai',1,'2018-10-08 07:52:36',1,'2018-10-08 07:52:36','Y','N'),
(3,26,3,31,'777777','7777','777777',2,'UAEEEE',1,'2018-10-08 07:53:54',1,'2018-10-08 07:54:05','Y','N'),
(4,24,3,29,'000000','0000','000000',7,'USA',1,'2018-10-08 08:45:33',1,'2018-10-08 08:47:08','Y','N'),
(5,1,3,27,'453453','4534','453453',12,'USA',1,'2018-10-08 08:47:39',1,'2018-10-08 08:47:39','Y','N'),
(6,21,3,28,'900000','9000','900000',4,'USAAAA',1,'2018-10-08 08:50:08',1,'2018-10-08 08:50:08','Y','N'),
(7,24,3,29,'800000','8000','800000',5,'YYYYYY',1,'2018-10-08 08:52:19',1,'2018-10-08 08:52:19','N','N'),
(8,25,3,30,'222222','3333','111111',6,'USAAAA',1,'2018-10-08 08:52:59',1,'2018-10-08 08:52:59','Y','N'),
(9,22,3,31,'909090','9090','909090',10,'USAS',1,'2018-10-08 08:54:05',1,'2018-10-08 08:54:05','Y','N'),
(10,21,3,21,'404040','4040','404040',11,'USAAA',1,'2018-10-08 08:54:35',1,'2018-10-08 08:54:35','Y','N'),
(11,11,3,14,'707087','8080','707087',9,'USA',1,'2018-10-08 08:55:49',1,'2018-10-08 08:55:49','Y','N'),
(12,21,3,14,'101001','1010','100100',7,'Test',1,'2018-10-08 08:56:15',1,'2018-10-08 08:56:15','Y','Y'),
(13,26,3,47,'123123','123','123123',13,'Test',1,'2018-10-09 09:42:05',1,'2018-10-09 09:42:15','Y','N'),
(14,24,3,27,'22222','123','2222',6,'Testt',1,'2018-10-17 05:28:11',1,'2018-10-17 05:29:22','Y','Y'),
(15,25,3,31,'222222','2222','222222',13,'Address2222',1,'2018-10-23 07:03:34',1,'2018-10-23 07:07:59','N','Y');

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`id`,`country_name`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'USA',1,'2018-08-21 00:55:07',1,'2018-08-21 00:55:07','Y','N');

/*Table structure for table `item_work` */

DROP TABLE IF EXISTS `item_work`;

CREATE TABLE `item_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cost_code` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `item_work` */

insert  into `item_work`(`id`,`name`,`cost_code`,`is_active`,`is_delete`,`created_by`,`created_date`,`updated_by`,`updated_date`) values 
(1,'General Conditions / Supervision and Mgmt',0,'Y','N',1,'2018-09-13 01:44:41',1,'2018-09-13 01:44:41'),
(2,'Test',0,'Y','Y',1,'2018-09-13 01:50:05',1,'2018-09-13 01:50:05'),
(3,'Progressive and Final Cleaning',0,'Y','N',1,'2018-09-13 01:51:03',1,'2018-09-13 01:51:03'),
(4,'Demolition and Removal',100,'Y','N',1,'2018-11-20 04:01:12',1,'2018-11-20 04:01:12'),
(5,'Concrete / Cut and Patch As Required',300,'Y','N',1,'2018-11-20 04:15:08',1,'2018-11-20 04:15:08'),
(6,'Rough Carpentry and Blocking',600,'Y','N',1,'2018-11-20 04:17:19',1,'2018-11-20 04:17:19'),
(7,'Millwork and Trim',0,'Y','N',1,'2018-09-13 01:51:47',1,'2018-09-13 01:51:47'),
(8,'Steel Main Frame Fabrication and Assembly',0,'Y','N',1,'2018-09-13 01:52:22',1,'2018-09-13 01:52:22'),
(9,'Roofing',700,'Y','N',1,'2018-11-20 04:19:12',1,'2018-11-20 04:19:12'),
(10,'Caulking and Sealing',710,'Y','N',1,'2018-11-20 04:18:44',1,'2018-11-20 04:18:44'),
(11,'Doors and Hardware',800,'Y','N',1,'2018-11-20 04:24:34',1,'2018-11-20 04:24:34'),
(12,'Glass / Glazing',960,'Y','N',1,'2018-11-20 04:26:08',1,'2018-11-20 04:26:08'),
(13,'Drywall Systems / Patch As Required',0,'Y','N',1,'2018-09-13 01:53:14',1,'2018-09-13 01:53:14'),
(14,'Acoustical Ceilings',0,'Y','N',1,'2018-09-13 01:53:25',1,'2018-09-13 01:53:25'),
(15,'Flooring and Ceramics',920,'Y','N',1,'2018-11-20 04:24:02',1,'2018-11-20 04:24:02'),
(16,'Wall and Ceiling Finishes / Painting',900,'Y','N',1,'2018-11-20 04:19:58',1,'2018-11-20 04:19:58'),
(17,'Fire Extinguisher(s)',0,'Y','N',1,'2018-09-13 01:53:58',1,'2018-09-13 01:53:58'),
(18,'Toilet Accessories',0,'Y','N',1,'2018-09-13 01:54:07',1,'2018-09-13 01:54:07'),
(19,'Fire Protection / Sprinkler System',1500,'Y','N',1,'2018-11-20 04:06:40',1,'2018-11-20 04:06:40'),
(20,'Security, Sound, Low Voltage Wiring',0,'Y','N',1,'2018-09-13 01:54:30',1,'2018-09-13 01:54:30'),
(21,'Kitchen Equipment',1100,'Y','N',1,'2018-11-20 04:05:27',1,'2018-11-20 04:05:27'),
(22,'Plumbing',1510,'Y','N',1,'2018-11-20 04:06:59',1,'2018-11-20 04:06:59'),
(23,'HVAC',1520,'Y','N',1,'2018-11-13 04:28:49',1,'2018-11-13 04:28:49'),
(24,'Electrical, Data Stub and Lighting',1600,'Y','N',1,'2018-11-20 04:07:36',1,'2018-11-20 04:07:36'),
(25,'Test Work',0,'N','Y',1,'2018-10-24 04:42:07',1,'2018-10-24 04:42:07'),
(26,'Furnishings',1200,'Y','N',1,'2018-11-13 04:32:08',1,'2018-11-13 04:32:08'),
(28,'Site Work',200,'Y','N',1,'2018-11-13 04:34:37',1,'2018-11-13 04:34:37'),
(29,'Misc Specialities',1000,'Y','N',1,'2018-11-20 04:01:54',1,'2018-11-20 04:01:54'),
(30,'Special Construction',1300,'Y','N',1,'2018-11-20 04:06:21',1,'2018-11-20 04:06:21'),
(31,'Landscaping/Irrigation',210,'Y','N',1,'2018-11-20 04:08:29',1,'2018-11-20 04:08:29'),
(32,'Paving',220,'Y','N',1,'2018-11-20 04:09:37',1,'2018-11-20 04:09:37'),
(33,'Site Concrete',230,'Y','N',1,'2018-11-20 04:10:14',1,'2018-11-20 04:10:14'),
(34,'Soil Poisoning',240,'Y','N',1,'2018-11-20 04:14:33',1,'2018-11-20 04:14:33'),
(35,'Speciality Concrete',310,'Y','N',1,'2018-11-20 04:15:53',1,'2018-11-20 04:15:53'),
(36,'General Conditions',3200,'Y','N',1,'2018-11-20 04:16:30',1,'2018-11-20 04:16:30'),
(37,'Masonry',400,'Y','N',1,'2018-11-20 04:16:45',1,'2018-11-20 04:16:45'),
(38,'Metals',500,'Y','N',1,'2018-11-20 04:16:57',1,'2018-11-20 04:16:57'),
(39,'Finish Carpentry',610,'Y','N',1,'2018-11-20 04:18:02',1,'2018-11-20 04:18:02'),
(40,'Waterproofing',720,'Y','N',1,'2018-11-20 04:19:21',1,'2018-11-20 04:19:21'),
(41,'Wall Covering',910,'Y','N',1,'2018-11-20 04:20:24',1,'2018-11-20 04:20:24'),
(42,'Frames / Sheathing',930,'Y','N',1,'2018-11-20 04:25:01',1,'2018-11-20 04:25:01'),
(43,'Ceilings',940,'Y','N',1,'2018-11-20 04:25:31',1,'2018-11-20 04:25:31'),
(44,'Ceramic Tiles',950,'Y','N',1,'2018-11-20 04:25:54',1,'2018-11-20 04:25:54'),
(45,'EIFS',970,'Y','N',1,'2018-11-20 04:26:28',1,'2018-11-20 04:26:28');

/*Table structure for table `landlord` */

DROP TABLE IF EXISTS `landlord`;

CREATE TABLE `landlord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landlord_address` text NOT NULL,
  `landlord_state_id` int(11) NOT NULL,
  `landlord_city_id` int(11) NOT NULL,
  `landlord_zipcode` varchar(100) NOT NULL,
  `landlord_contact_person` varchar(255) NOT NULL,
  `landlord_email` varchar(255) NOT NULL,
  `landlord_phone` varchar(50) NOT NULL,
  `will_landlord_require_special_documentation_for_billing` enum('Y','N') NOT NULL,
  `if_special_documentation_required_if_yes_list` text,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `FK_state` (`landlord_state_id`),
  KEY `FK_city` (`landlord_city_id`),
  KEY `FK_created_by` (`created_by`),
  KEY `FK_updated_by` (`updated_by`),
  CONSTRAINT `FK_city` FOREIGN KEY (`landlord_city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_state` FOREIGN KEY (`landlord_state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `landlord` */

insert  into `landlord`(`id`,`landlord_address`,`landlord_state_id`,`landlord_city_id`,`landlord_zipcode`,`landlord_contact_person`,`landlord_email`,`landlord_phone`,`will_landlord_require_special_documentation_for_billing`,`if_special_documentation_required_if_yes_list`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'asdc',1,1,'56165156','szdc sec sdc','ck@yahoo.com','651561561','Y',' cvsdsd wec',1,'2018-10-01 05:58:21',1,'2018-10-09 09:14:55','Y','N'),
(2,'Test',1,1,'asdasdas','YUviba kjahsdklh asdoiuoaisudoi uioiasud oipu aspo','AARON@gmail.com','812739871982','Y','Test jhaskjd hkjahsdlkj hkjashdlkjh sadlkjhlkjhaskdl hlkjhaslkjd h lkjas dhkjahsdljkh  ljkasdh  lkjhaslkdjh kljashdlkhaslkjhdkjhaskjHLKJJAhdkjhkjsahdkjhsakjd hkjjashd kj hkajsdkjhaskjdh jkah sdkjahsdlkjh a lkjshdjk hlkjasdhjklhas dlkjhlkjashdlkjhasdhkjahsd kjahsd jkha skjd hkjash dkjh askjdhlkjjashd',1,'2018-10-17 07:08:35',1,'2018-10-17 07:08:41','N','N'),
(3,'Test',2,2,'90128309','BETHANIE','BETHANIE@MAILINATOR.COM','912309809182','N','sdfsdf',1,'2018-10-17 07:10:50',1,'2018-10-17 07:12:17','Y','N'),
(4,'Test',2,2,'81729837','CAMELLIA@mailinator.com','CAMELLIA@mailinator.com','798371982739','Y','CAMELLIA',1,'2018-10-17 07:20:11',1,'2018-10-17 07:20:11','Y','N'),
(5,'DEANDREA',2,2,'18723897','DEANDREA','DEANDREA@mailinator.com','918729037809','Y','DEANDREA',1,'2018-10-17 07:22:51',1,'2018-10-17 07:22:51','Y','N'),
(6,'ELEANORA',2,2,'12312312','ELEANORA','ELEANORA@mailinator.com','198091289038','Y','ELEANORA',1,'2018-10-17 07:24:04',1,'2018-10-17 07:24:04','Y','N'),
(7,'FLORINDA',1,1,'19827389','FLORINDA','FLORINDA@mailinator.com','191902389081','Y','FLORINDA',1,'2018-10-17 07:24:42',1,'2018-10-17 07:24:42','Y','N'),
(8,'GEARLDINE',2,2,'12312312','GEARLDINE','GEARLDINE@mailinator.com','190981230980','Y','GEARLDINE',1,'2018-10-17 07:36:15',1,'2018-10-17 07:36:15','Y','N'),
(9,'Test',1,1,'12345','HILDEGARDE','HILDEGARDE@MAILINATOR.COM','198190283098','Y','HILDEGARDE',1,'2018-10-17 07:36:56',1,'2018-10-17 07:36:56','Y','N'),
(10,'Test',2,2,'234567','INGEBORG','INGEBORG@mailinator.com','981239889236','Y','INGEBORG',1,'2018-10-17 07:37:54',1,'2018-10-17 07:37:54','Y','N'),
(11,'JACKQUELINE',2,2,'123123','JACKQUELINE','JACKQUELINE@mailinator.com','109823409890','Y','JACKQUELINE',1,'2018-10-17 07:38:29',1,'2018-10-17 07:38:29','Y','N'),
(12,'KASANDRA',2,2,'123445','KASANDRA','KASANDRA@mailinator.com','198712934798','Y','KASANDRA',1,'2018-10-17 07:39:17',1,'2018-10-17 07:39:17','N','N'),
(13,'LARHONDAA',2,2,'102934','LARHONDAA','LARHONDA@mailinator.com','117239087911','Y','LARHONDAAB',1,'2018-10-17 07:39:48',1,'2018-10-17 07:40:33','N','Y'),
(14,'Satelite',1,1,'980015','Florida','david@david.david','+16541656','N','',1,'2018-10-19 06:29:09',1,'2018-10-19 06:29:09','Y','N'),
(15,'Satelite',1,1,'980015','Florida','david@david.davidq','+16541656','Y','ascxc',1,'2018-10-19 06:31:20',1,'2018-10-19 07:07:54','Y','N'),
(16,'Landlord Address',2,2,'20550','Landlord Test','Landlord@mailinator.com','172398798123','N','',1,'2018-10-19 08:51:14',1,'2018-10-19 08:51:14','Y','N'),
(17,'USA',2,2,'20550','New Landlord','newlandlord@mailinator.com','18234980948','Y','Test',1,'2018-10-19 08:52:42',1,'2018-10-19 09:18:40','Y','N'),
(18,'USA',7,6,'20550','Test Landlord Person','TestLandlord@mailinator.com','187128937378','Y','sdcasd',1,'2018-10-19 08:53:39',1,'2018-10-19 09:20:13','Y','N'),
(19,'Test Address New',51,51,'22222222','Landlord Person','Landlord@yahoo.com','181723897198','Y','Test',1,'2018-10-23 05:40:34',1,'2018-10-23 05:42:10','Y','Y'),
(20,'Tamps',1,1,'21983490','Garry Landlord','garrylandlord@mailinator.com','+17981273498','Y','Test DES',1,'2018-11-30 01:57:07',1,'2018-11-30 01:57:07','Y','N');

/*Table structure for table `lender` */

DROP TABLE IF EXISTS `lender`;

CREATE TABLE `lender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lender_or_bank_contact_person` varchar(255) NOT NULL,
  `lender_email` varchar(255) NOT NULL,
  `lender_phone` varchar(255) NOT NULL,
  `bank_require_special_documentation_for_billing_project_closeout` enum('Y','N') NOT NULL,
  `lender_special_documentation_list_requirements` text NOT NULL,
  `lender_address` text NOT NULL,
  `lender_state_id` int(11) NOT NULL,
  `lender_city_id` int(11) NOT NULL,
  `lender_zipcode` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lender_state` (`lender_state_id`),
  KEY `FK_lender_city` (`lender_city_id`),
  KEY `FK_lender_created_by` (`created_by`),
  KEY `FK_lender_updated_by` (`updated_by`),
  CONSTRAINT `FK_lender_city` FOREIGN KEY (`lender_city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lender_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lender_state` FOREIGN KEY (`lender_state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lender_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `lender` */

insert  into `lender`(`id`,`lender_or_bank_contact_person`,`lender_email`,`lender_phone`,`bank_require_special_documentation_for_billing_project_closeout`,`lender_special_documentation_list_requirements`,`lender_address`,`lender_state_id`,`lender_city_id`,`lender_zipcode`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'knjkn','sdc@sdf.sd','56156156','Y','sadcsd','djkvn',1,1,'45455',1,'2018-10-02 05:59:12',1,'2018-10-09 09:16:17','N','N'),
(2,'Tummy Valenciaaa','Tummy@mailinator.com','192830918209','Y','Test','USSAAAA',7,6,'9809123',1,'2018-10-19 09:30:43',1,'2018-10-23 05:53:55','Y','N'),
(3,'Lender Contact Person','Lender@mailinator.com','+19182390813','N','Test','Lender Address Testt',5,4,'33333',1,'2018-10-23 06:23:45',1,'2018-10-23 06:47:08','Y','Y'),
(4,'Garry Sobers','Garrylender@mailinator.com','+19871298371','Y','Test Desc','Tampa',1,1,'21983490',1,'2018-11-30 01:59:14',1,'2018-11-30 01:59:14','Y','N');

/*Table structure for table `module` */

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `module` */

insert  into `module`(`id`,`module_name`,`icon`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(24,'user','fa fa-users',1,'2018-10-02 00:29:52',1,'2018-10-02 02:54:28','Y','Y'),
(25,'user-role','fa fa-user',1,'2018-10-02 00:31:30',1,'2018-10-02 02:54:40','Y','Y'),
(26,'client','fa fa-users',1,'2018-10-02 00:48:13',1,'2018-10-19 06:11:07','Y','N'),
(27,'sub-contractor-management','fa fa-users',1,'2018-10-02 00:48:58',1,'2018-10-19 06:11:37','Y','N'),
(28,'architect','fa fa-building',1,'2018-10-02 00:49:58',1,'2018-10-19 02:37:18','Y','N'),
(29,'landlord','fa fa-user',1,'2018-10-02 00:50:28',1,'2018-10-19 02:37:36','Y','N'),
(30,'owner-information','fa fa-user',1,'2018-10-02 00:50:54',1,'2018-10-19 02:37:57','Y','N'),
(31,'construction-contract-management','fa fa-building',1,'2018-10-02 01:00:45',1,'2018-10-19 02:38:32','Y','N'),
(32,'item-work','fa fa-object-group',1,'2018-10-02 01:01:05',1,'2018-10-19 02:38:50','Y','N'),
(33,'project','fa fa-building',1,'2018-10-02 01:01:34',1,'2018-10-19 06:12:06','Y','N'),
(34,'project-budget','fa fa-usd',1,'2018-10-02 01:01:55',1,'2018-10-19 06:12:31','Y','N'),
(35,'state','fa fa-flag',1,'2018-10-02 01:02:18',1,'2018-10-19 02:39:32','Y','N'),
(36,'city','fa fa-building',1,'2018-10-02 01:02:30',1,'2018-10-19 02:39:40','Y','N'),
(37,'task-allocation','fa fa-tasks',1,'2018-10-02 01:03:39',1,'2018-10-19 02:39:59','Y','N'),
(38,'setting','',1,'2018-10-02 01:04:15',1,'2018-10-02 02:56:26','Y','Y'),
(39,'rfi','fa fa-building',1,'2018-10-19 02:36:45',1,'2018-10-19 02:36:45','Y','N'),
(40,'action-item','fa fa-tasks',1,'2018-10-19 02:57:04',1,'2018-10-19 02:57:04','Y','N'),
(41,'contractor-management','fa fa-users',1,'2018-10-19 03:05:44',1,'2018-10-19 03:05:44','Y','N'),
(42,'punch-list','fa fa-building',1,'2018-10-19 03:07:07',1,'2018-10-19 03:07:07','Y','N'),
(43,'lender','fa fa-user',1,'2018-10-19 06:13:23',1,'2018-10-19 06:13:23','Y','N'),
(44,'project-proposal','fa fa-usd',1,'2018-11-23 00:32:59',1,'2018-11-23 00:32:59','Y','N'),
(45,'team','fa fa-group',1,'2018-11-24 03:38:03',1,'2018-11-24 03:38:03','Y','N'),
(46,'buyout-log','fa fa-history',1,'2018-11-26 06:00:13',1,'2018-11-26 06:00:13','Y','N'),
(47,'rfi-log','fa fa-history',1,'2018-11-26 06:00:56',1,'2018-11-26 06:00:56','Y','N'),
(48,'submittal','fa fa-info-circle',1,'2018-11-29 06:51:20',1,'2018-11-29 06:51:20','Y','N');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_no` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `architect_id` int(11) NOT NULL,
  `contractor_id` int(11) NOT NULL,
  `contract_for` enum('CONSTRUCTION','DEMOLITION') NOT NULL DEFAULT 'CONSTRUCTION',
  `job_no` varchar(255) NOT NULL,
  `job_name` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `to_be_shipped_via` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `shipping_handling` varchar(255) NOT NULL,
  `other_cost` varchar(255) NOT NULL,
  `total_amt` varchar(255) NOT NULL,
  `issued_by` varchar(255) NOT NULL,
  `issued_date` date NOT NULL,
  `accepted_by` varchar(255) NOT NULL,
  `accepted_date` date NOT NULL,
  `fob` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `order` */

insert  into `order`(`id`,`purchase_order_no`,`project_id`,`owner_id`,`architect_id`,`contractor_id`,`contract_for`,`job_no`,`job_name`,`order_date`,`delivery_date`,`to_be_shipped_via`,`sub_total`,`tax`,`shipping_handling`,`other_cost`,`total_amt`,`issued_by`,`issued_date`,`accepted_by`,`accepted_date`,`fob`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'CCS001',1,NULL,24,3,'CONSTRUCTION','CCS1','Test','2018-12-04','2018-12-04','Test','30','10','test','10','50','test','2018-12-22','test','2019-01-05','test',1,'2018-12-04 04:22:37',1,'2018-12-04 04:22:37','Y','N'),
(4,'CCS002',24,NULL,20,3,'CONSTRUCTION','CCS2','Test','2018-12-04','2018-12-04','Test','500','20','Test','100','620','test','2018-12-22','test1','2018-12-28','test',1,'2018-12-04 04:35:31',1,'2018-12-04 04:35:31','Y','N'),
(5,'219874398',37,NULL,97,3,'CONSTRUCTION','219843093','Job name Test','2018-12-31','2018-12-31','Tampa','495','1','By Car','1','497','Abdulla','2018-12-31','Alyeffi','2018-12-31','FOB',1,'2018-12-05 08:56:24',1,'2018-12-05 08:56:24','Y','N');

/*Table structure for table `order_item` */

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cost_code` varchar(255) DEFAULT NULL,
  `unit_price` varchar(255) NOT NULL,
  `extended_amt` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `order_item` */

insert  into `order_item`(`id`,`order_id`,`item_id`,`qty`,`unit`,`description`,`cost_code`,`unit_price`,`extended_amt`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,1,12,1,'1','Test',NULL,'1','12',1,'2018-12-04 04:22:37',1,'2018-12-04 04:22:37','Y','N'),
(2,1,4,1,'113','Test',NULL,'23','5623',1,'2018-12-04 04:22:37',1,'2018-12-04 04:22:37','Y','N'),
(3,4,4,1,'KG','Test',NULL,'20','300',1,'2018-12-04 04:35:31',1,'2018-12-04 04:35:31','Y','N'),
(4,4,5,1,'LTR','Test',NULL,'23','100',1,'2018-12-04 04:35:31',1,'2018-12-04 04:35:31','Y','N'),
(5,4,5,1,'KG','Test',NULL,'33','100',1,'2018-12-04 04:35:31',1,'2018-12-04 04:35:31','Y','N'),
(6,5,1,45,'1','Description',NULL,'11','495',1,'2018-12-05 08:56:24',1,'2018-12-05 08:56:24','Y','N');

/*Table structure for table `owner_information` */

DROP TABLE IF EXISTS `owner_information`;

CREATE TABLE `owner_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owners_legal_name` varchar(255) NOT NULL,
  `permissible_working_hours` varchar(255) NOT NULL,
  `latest_owner_signed_construction_proposal_date` date NOT NULL,
  `owners_mailing_address` varchar(255) NOT NULL,
  `owner_city_id` int(11) NOT NULL,
  `owner_state_id` int(11) NOT NULL,
  `owner_zipcode` varchar(100) NOT NULL,
  `owners_primary_contact_person` varchar(255) NOT NULL,
  `owner_email` varchar(100) NOT NULL,
  `owner_phone` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `FK_state_owner` (`owner_state_id`),
  KEY `FK_city_owner` (`owner_city_id`),
  KEY `FK_created_by_owner` (`created_by`),
  KEY `FK_updated_by_owner` (`updated_by`),
  CONSTRAINT `FK_city_owner` FOREIGN KEY (`owner_city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_created_by_owner` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_state_owner` FOREIGN KEY (`owner_state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_updated_by_owner` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `owner_information` */

insert  into `owner_information`(`id`,`owners_legal_name`,`permissible_working_hours`,`latest_owner_signed_construction_proposal_date`,`owners_mailing_address`,`owner_city_id`,`owner_state_id`,`owner_zipcode`,`owners_primary_contact_person`,`owner_email`,`owner_phone`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'Philip','2323','2018-10-01','aba bab',1,1,'980015','sdb yubg','abc@abc.abc','123456789',1,'2018-10-01 09:40:03',1,'2018-10-01 09:41:10','Y','N'),
(2,'MALLORY','12-08-2018','2018-10-17','MALLORY',2,2,'12341231','MALLORY','MALLORY@mailinator.com','18712837987123',1,'2018-10-17 08:08:29',1,'2018-10-17 08:08:29','Y','N'),
(3,'NERISSA','12 Hours','2018-10-27','NERISSA',2,2,'12342342','NERISSANERISSANE','NERISSA@mailinator.com','11237912319238091823',1,'2018-10-17 08:14:50',1,'2018-10-17 08:17:23','Y','N'),
(4,'OZELLAOZELLA','11 Hours','2018-10-24','OZELLAOZELLA@mailinator.com',2,2,'123123','OZELLAOZELLA','OZELLAOZELLA@mailinator.com','108234908109283123',1,'2018-10-17 08:16:06',1,'2018-10-17 08:16:06','Y','N'),
(5,'PAMELIA','13 Hours ','2018-10-27','PAMELIA',2,2,'1028930','PAMELIA','PAMELIA@mailinator.com','132234234234',1,'2018-10-17 08:16:55',1,'2018-10-17 08:16:55','Y','N'),
(6,'RACHEAL','11 Hours','2019-01-23','RACHEAL',2,2,'18726387','RACHEAL','RACHEAL@mailinator.com','187891273987123',1,'2018-10-17 08:18:10',1,'2018-10-17 08:18:10','Y','N'),
(7,'SALOME','55 Hours','2018-11-03','SALOME',2,2,'12313','SALOME','SALOME@mailinator.com','123879817239',1,'2018-10-17 08:23:30',1,'2018-10-17 08:23:30','Y','N'),
(8,'TABETHA','11 Hours','2018-10-31','TABETHA',2,2,'12314','TABETHA','TABETHA@mailinator.com','18798712348',1,'2018-10-17 08:43:44',1,'2018-10-17 08:43:44','Y','N'),
(9,'URSULA','88 Hours','2018-10-25','URSULA',2,2,'712893','URSULA - 89172398','URSULA@mailinator.com','187219387981273',1,'2018-10-17 08:48:22',1,'2018-10-17 08:48:22','Y','N'),
(10,'VALENTINE','11 Hours','2018-10-31','VALENTINE',2,2,'12345','VALENTINE','VALENTINE@mailinator.com','12312379817',1,'2018-10-17 08:57:49',1,'2018-10-17 08:57:49','Y','N'),
(11,'XIOMARA','18-09-2018','2018-10-24','XIOMARA',2,2,'23456','XIOMARA','XIOMARA@mailinator.com','1921309819023',1,'2018-10-17 08:59:07',1,'2018-10-17 08:59:07','Y','N'),
(12,'YOSHIKO','11 Miutes','2019-02-22','YOSHIKO',2,2,'1243435','YOSHIKO','YOSHIKO@mailinator.com','19283908908123',1,'2018-10-17 08:59:51',1,'2018-10-17 08:59:51','Y','N'),
(13,'ZORAIDAA','11 Hourss','2018-11-02','ZORAIDAA',1,1,'22222','ZORAIDAA','ZORAIDAA@mailinator.com','18238080810',1,'2018-10-17 09:00:35',1,'2018-10-17 09:01:24','Y','Y'),
(14,'hamid1','12 Hours','2018-10-24','Hamid@mailinator.com',5,6,'222222','Hamid Ansari New Contact Person','Hamid@mailinator.com','+18712897391',1,'2018-10-23 05:47:30',1,'2018-10-23 05:51:24','N','N');

/*Table structure for table `project_budget_item` */

DROP TABLE IF EXISTS `project_budget_item`;

CREATE TABLE `project_budget_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `project_budget_id` int(11) NOT NULL,
  `sub_contractor_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `sub_contractor_estimate_cost` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `project_budget_item` */

insert  into `project_budget_item`(`id`,`project_id`,`project_budget_id`,`sub_contractor_id`,`item_id`,`cost`,`comment`,`sub_contractor_estimate_cost`,`is_active`,`is_delete`,`created_by`,`created_date`,`updated_by`,`updated_date`) values 
(18,1,1,18,16,'13','6sd d sd sd d ','3','Y','N',1,'2018-09-25 03:10:56',1,'2018-09-25 03:10:56'),
(19,1,1,21,14,'13','6sd d sd sd d ','3','Y','N',1,'2018-09-25 03:10:56',1,'2018-09-25 03:10:56'),
(20,1,1,18,7,'13','test','3','Y','N',1,'2018-09-25 03:10:56',1,'2018-09-25 03:10:56'),
(21,1,1,18,12,'200','aa','156560','Y','N',1,'2018-09-25 03:10:56',1,'2018-09-25 03:10:56'),
(22,21,2,14,3,'13','zxc ','3','Y','N',1,'2018-10-12 08:36:51',1,'2018-10-12 08:36:51'),
(23,21,2,10,8,'13','asc','3','Y','N',1,'2018-10-12 08:36:51',1,'2018-10-12 08:36:51'),
(24,21,2,18,5,'13','asc','3','Y','N',1,'2018-10-12 08:36:51',1,'2018-10-12 08:36:51'),
(26,26,3,10,1,'1000','Comment','2000','Y','N',1,'2018-10-18 02:53:01',1,'2018-10-18 02:53:01'),
(31,26,4,47,12,'111.11','Ravi is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ','222.22','Y','N',1,'2018-10-18 03:05:31',1,'2018-10-18 03:05:31'),
(35,25,6,47,1,'22222.22','Comment','22222.22','Y','N',1,'2018-10-23 07:22:18',1,'2018-10-23 07:22:18'),
(36,22,5,10,4,'3333333333','test','1111111111','Y','N',1,'2018-10-24 04:40:47',1,'2018-10-24 04:40:47');

/*Table structure for table `project_budget_management` */

DROP TABLE IF EXISTS `project_budget_management`;

CREATE TABLE `project_budget_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `pb_name` varchar(255) DEFAULT NULL,
  `contractor_id` int(11) DEFAULT NULL,
  `sub_contractor_id` int(11) DEFAULT NULL,
  `sub_contractor_total_cost` int(11) DEFAULT NULL,
  `pb_total_cost` varchar(255) NOT NULL,
  `pb_desc` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_budget` (`project_id`),
  CONSTRAINT `fk_project_budget` FOREIGN KEY (`project_id`) REFERENCES `project_management` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `project_budget_management` */

insert  into `project_budget_management`(`id`,`project_id`,`pb_name`,`contractor_id`,`sub_contractor_id`,`sub_contractor_total_cost`,`pb_total_cost`,`pb_desc`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,1,'Test',1,2,156569,'239','<p>Test</p>\r\n',1,'2018-09-17 01:39:11',1,'2018-09-25 03:10:56','N','N'),
(2,21,NULL,NULL,NULL,9,'39','<p>ascasc</p>\r\n',1,'2018-10-12 08:36:51',1,'2018-10-12 08:36:51','Y','N'),
(3,26,NULL,NULL,NULL,2000,'1000','<p><strong><img alt=\"https://photos.zillowstatic.com/p_h/IS27a7myvdldzr0000000000.jpg\" src=\"https://photos.zillowstatic.com/p_h/IS27a7myvdldzr0000000000.jpg\" style=\"height:413px; width:550px\" /></strong></p>\r\n\r\n<p><strong><a id=\"Test\" name=\"Test\"></a>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</strong></p>\r\n',1,'2018-10-18 02:52:44',1,'2018-10-18 02:53:01','Y','N'),
(4,26,NULL,NULL,NULL,222,'111.11','<p><strong>Ravi is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the&nbsp;<img alt=\"\" src=\"https://photos.zillowstatic.com/p_h/IS27a7myvdldzr0000000000.jpg\" style=\"height:413px; width:550px\" /></strong></p>\r\n',1,'2018-10-18 02:56:52',1,'2018-10-18 03:05:31','N','Y'),
(5,22,NULL,NULL,NULL,1111111111,'3333333333','<p>test</p>\r\n',1,'2018-10-23 07:17:58',1,'2018-10-24 04:40:47','Y','N'),
(6,25,NULL,NULL,NULL,22222,'22222.22','<p>Test DESC</p>\r\n',1,'2018-10-23 07:21:36',1,'2018-10-23 07:22:18','Y','Y');

/*Table structure for table `project_document` */

DROP TABLE IF EXISTS `project_document`;

CREATE TABLE `project_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `project_folder_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_downloaded` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `fk_project_document` (`project_id`),
  CONSTRAINT `fk_project_document` FOREIGN KEY (`project_id`) REFERENCES `project_management` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

/*Data for the table `project_document` */

insert  into `project_document`(`id`,`project_id`,`project_folder_id`,`file_name`,`file_path`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`,`is_downloaded`) values 
(75,25,22,'1540295860_156879993.jpg','/media/uploads/project_document/25/Darshitademo',72,'2018-10-19 06:58:13',72,'2018-10-19 06:58:13','Y','N','N'),
(77,1,12,'1539946750_1019898455.docx','/media/uploads/project_document/1/ChiragDemo',1,'2018-10-19 06:59:10',1,'2018-10-19 06:59:10','Y','N','N'),
(78,1,13,'1539948237_1708334654.docx','/media/uploads/project_document/1/Rushita',1,'2018-10-19 07:23:57',1,'2018-10-19 07:23:57','Y','N','N'),
(79,1,14,'1539948267_280895169.docx','/media/uploads/project_document/1/Bhumika',1,'2018-10-19 07:24:27',1,'2018-10-19 07:24:27','Y','N','N'),
(80,1,14,'1539949233_771107746.docx','/media/uploads/project_document/1/Bhumika',1,'2018-10-19 07:40:33',1,'2018-10-19 07:40:33','Y','N','N'),
(102,25,22,'1540295847_1907037757.docx','/media/uploads/project_document/25/Darshitademo',72,'2018-10-23 07:57:27',72,'2018-10-23 07:57:27','Y','N','Y'),
(103,25,22,'1540295852_327867116.xlsx','/media/uploads/project_document/25/Darshitademo',72,'2018-10-23 07:57:32',72,'2018-10-23 07:57:32','Y','N','Y'),
(107,1,23,'1540297373_29880417.xlsx','/media/uploads/project_document/1/DASU',72,'2018-10-23 08:22:53',72,'2018-10-23 08:22:53','Y','N','Y'),
(108,34,37,'1542084740_520179945.pdf','/media/uploads/project_document/34/Test by david',89,'2018-11-12 23:52:20',89,'2018-11-12 23:52:20','Y','N','N'),
(109,34,37,'1542085112_1335080926.pdf','/media/uploads/project_document/34/Test by david',89,'2018-11-12 23:58:32',89,'2018-11-12 23:58:32','Y','N','Y'),
(110,34,37,'1542087129_1948998852.jpg','/media/uploads/project_document/34/Test by david',89,'2018-11-13 00:32:09',89,'2018-11-13 00:32:09','Y','N','N'),
(111,34,34,'1542087204_567725804.png','/media/uploads/project_document/34/Test by david',89,'2018-11-13 00:33:24',89,'2018-11-13 00:33:24','Y','N','Y'),
(112,34,36,'1542087270_409931563.png','/media/uploads/project_document/34/Default',89,'2018-11-13 00:34:30',89,'2018-11-13 00:34:30','Y','N','Y'),
(113,34,37,'1542120051_1837225936.jpeg','/media/uploads/project_document/34/Test by david',89,'2018-11-13 09:40:51',89,'2018-11-13 09:40:51','Y','N','N'),
(114,30,39,'1542120348_85630944.docx','/media/uploads/project_document/30/undefined',72,'2018-11-13 09:45:48',72,'2018-11-13 09:45:48','Y','N','Y'),
(115,31,32,'1542129654_1447267520.docx','/media/uploads/project_document/31/undefined',72,'2018-11-13 12:20:54',72,'2018-11-13 12:20:54','Y','N','Y'),
(116,31,32,'1542133400_162585816.jpg','/media/uploads/project_document/31/undefined',72,'2018-11-13 13:23:20',72,'2018-11-13 13:23:20','Y','N','N'),
(117,31,29,'1542141951_1227776533.txt','/media/uploads/project_document/31/undefined',72,'2018-11-13 15:45:51',72,'2018-11-13 15:45:51','Y','N','N'),
(118,30,41,'1542171852_699874998.jpg','/media/uploads/project_document/30/undefined',72,'2018-11-14 00:04:12',72,'2018-11-14 00:04:12','Y','N','Y'),
(119,35,44,'1542176822_1845140120.android','/media/uploads/project_document/35/undefined',72,'2018-11-14 01:27:02',72,'2018-11-14 01:27:02','Y','N','N'),
(120,35,45,'1542176974_1116773352.jpg','/media/uploads/project_document/35/undefined',72,'2018-11-14 01:29:34',72,'2018-11-14 01:29:34','Y','N','Y'),
(121,36,46,'1542189897_231355482.mp4','/media/uploads/project_document/36/undefined',90,'2018-11-14 05:04:57',90,'2018-11-14 05:04:57','Y','N','Y'),
(122,36,46,'1542189978_2029735029.0','/media/uploads/project_document/36/undefined',90,'2018-11-14 05:06:18',90,'2018-11-14 05:06:18','Y','N','N'),
(123,36,53,'1542305362_127395185.jpg','/media/uploads/project_document/36/123',90,'2018-11-15 13:09:22',90,'2018-11-15 13:09:22','Y','N','Y'),
(124,34,36,'1542371110_1903327991.jpg','/media/uploads/project_document/34/undefined',89,'2018-11-16 07:25:10',89,'2018-11-16 07:25:10','Y','N','N'),
(125,36,64,'5bf3aac3ba516.docx','/media/uploads/project_document/36/Default/',1,'2018-11-20 01:33:39',1,'2018-11-20 01:33:39','Y','N','N'),
(126,36,64,'5bf3ab155af48.png','/media/uploads/project_document/36/Default/',1,'2018-11-20 01:35:01',1,'2018-11-20 01:35:01','Y','N','N'),
(127,21,65,'1543250566_493061409.docx','/media/uploads/project_document/21/undefined',72,'2018-11-26 11:42:46',72,'2018-11-26 11:42:46','Y','N','N'),
(128,37,66,'5c00e367000d8.jpg','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(129,37,66,'5c00e3671153c.jpg','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(130,37,66,'5c00e367118cd.jpg','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(131,37,66,'5c00e36711bab.jpg','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(132,37,66,'5c00e36711e71.jpg','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(133,37,66,'5c00e367122d0.jfif','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(134,37,66,'5c00e36712595.jpg','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:47',1,'2018-11-30 02:14:47','Y','N','N'),
(135,37,66,'5c00e52ca9e8e.doc','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:22:20',1,'2018-11-30 02:22:20','Y','N','N'),
(136,37,66,'5c00e58d99438.doc','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:23:57',1,'2018-11-30 02:23:57','Y','N','N'),
(137,1,67,'1543994534_247744370.jpg','/media/uploads/project_document/1/undefined',72,'2018-12-05 02:22:14',72,'2018-12-05 02:22:14','Y','N','N'),
(138,38,69,'5c07ccb7ed315.jpg','/media/uploads/project_document/38/Default/',1,'2018-12-05 08:03:51',1,'2018-12-05 08:03:51','Y','N','N'),
(139,38,69,'5c07ccb7f0c8a.jpg','/media/uploads/project_document/38/Default/',1,'2018-12-05 08:03:51',1,'2018-12-05 08:03:51','Y','N','N'),
(140,38,69,'5c07ccb7f0f47.jpg','/media/uploads/project_document/38/Default/',1,'2018-12-05 08:03:51',1,'2018-12-05 08:03:51','Y','N','N'),
(141,38,69,'5c07ccb7f11fb.jpg','/media/uploads/project_document/38/Default/',1,'2018-12-05 08:03:51',1,'2018-12-05 08:03:51','Y','N','N');

/*Table structure for table `project_folder` */

DROP TABLE IF EXISTS `project_folder`;

CREATE TABLE `project_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `folder_path` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `project_folder` */

insert  into `project_folder`(`id`,`project_id`,`folder_name`,`folder_path`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(11,1,'Darshita','/media/uploads/project_document/1/Darshita',1,'2018-10-19 06:56:58',1,'2018-10-19 06:56:58','Y','Y'),
(12,1,'ChiragDemo','/media/uploads/project_document/1/ChiragDemo',1,'2018-10-19 07:10:21',1,'2018-10-19 07:10:21','Y','N'),
(13,1,'Rushita','/media/uploads/project_document/1/Rushita',1,'2018-10-19 07:23:57',1,'2018-10-19 07:23:57','Y','N'),
(14,1,'Bhumika','/media/uploads/project_document/1/Bhumika',1,'2018-10-19 08:39:36',1,'2018-10-19 08:39:36','Y','N'),
(15,1,'Keval','/media/uploads/project_document/1/Keval',1,'2018-10-19 09:33:47',1,'2018-10-19 09:33:47','Y','N'),
(16,25,'Sweety','/media/uploads/project_document/25/Sweety',1,'2018-10-19 09:42:34',1,'2018-10-19 09:42:34','Y','N'),
(17,25,'kevaldemo','/media/uploads/project_document/25/kevaldemo',1,'2018-10-23 00:46:03',1,'2018-10-23 00:46:03','Y','N'),
(18,25,'Rushita','/media/uploads/project_document/25/Rushita',1,'2018-10-22 09:05:06',1,'2018-10-22 09:05:06','Y','N'),
(19,25,'abc','/media/uploads/project_document/25/abc',1,'2018-10-23 01:19:57',1,'2018-10-23 01:19:57','Y','N'),
(20,25,'xyz','/media/uploads/project_document/25/xyz',1,'2018-10-23 01:20:49',1,'2018-10-23 01:20:49','Y','N'),
(21,25,'dasu','/media/uploads/project_document/25/dasu',1,'2018-10-23 05:51:58',1,'2018-10-23 05:51:58','Y','N'),
(22,25,'Darshitademo','/media/uploads/project_document/25/Darshitademo',72,'2018-10-23 07:56:31',72,'2018-10-23 07:56:31','Y','N'),
(23,1,'DASU','/media/uploads/project_document/1/DASU',72,'2018-12-05 02:10:39',72,'2018-12-05 02:10:39','Y','N'),
(24,33,'Default','/media/uploads/project_document/33/Default/',1,'2018-10-29 09:46:45',1,'2018-10-29 09:46:45','Y','N'),
(25,25,'demo folder','/media/uploads/project_document/25/demo folder',72,'2018-10-31 12:26:57',72,'2018-10-31 12:26:57','Y','N'),
(26,25,'demo2 ','/media/uploads/project_document/25/demo2 ',72,'2018-10-31 12:31:04',72,'2018-10-31 12:31:04','Y','Y'),
(27,25,'demo3','/media/uploads/project_document/25/demo3',72,'2018-10-31 12:53:43',72,'2018-10-31 12:53:43','Y','Y'),
(28,25,'rename2','/media/uploads/project_document/25/rename2',72,'2018-10-31 15:08:20',72,'2018-10-31 15:08:20','Y','N'),
(29,31,'demo folder','/media/uploads/project_document/31/demo folder',72,'2018-11-01 11:50:12',72,'2018-11-01 11:50:12','Y','Y'),
(30,30,'test demo','/media/uploads/project_document/30/test demo',72,'2018-11-07 08:30:04',72,'2018-11-07 08:30:04','Y','N'),
(31,31,'demo4','/media/uploads/project_document/31/demo4',72,'2018-11-17 15:55:41',72,'2018-11-17 15:55:41','Y','N'),
(32,31,'test1','/media/uploads/project_document/31/test1',72,'2018-11-13 09:32:42',72,'2018-11-13 09:32:42','Y','Y'),
(33,30,'TEST4','/media/uploads/project_document/30/TEST4',72,'2018-11-12 09:15:26',72,'2018-11-12 09:15:26','Y','Y'),
(34,30,'TEST6','/media/uploads/project_document/30/TEST6',72,'2018-11-12 09:17:19',72,'2018-11-12 09:17:19','Y','Y'),
(35,30,'test3','/media/uploads/project_document/30/test3',72,'2018-11-12 10:58:11',72,'2018-11-12 10:58:11','Y','Y'),
(36,34,'Default','/media/uploads/project_document/34/Default/',89,'2018-11-12 23:29:16',89,'2018-11-12 23:29:16','Y','N'),
(37,34,'Test by david','/media/uploads/project_document/34/Test by david',89,'2018-11-12 23:30:01',89,'2018-11-12 23:30:01','Y','Y'),
(38,31,'Test4','/media/uploads/project_document/31/Test4',72,'2018-11-13 06:55:33',72,'2018-11-13 06:55:33','Y','Y'),
(39,30,'test5','/media/uploads/project_document/30/test5',72,'2018-11-13 09:41:55',72,'2018-11-13 09:41:55','Y','N'),
(40,30,'undefined','/media/uploads/project_document/30/undefined',72,'2018-11-13 09:45:48',72,'2018-11-13 09:45:48','Y','Y'),
(41,30,'Testing new','/media/uploads/project_document/30/Testing new',72,'2018-11-14 00:03:51',72,'2018-11-14 00:03:51','Y','N'),
(42,35,'Default','/media/uploads/project_document/35/Default/',72,'2018-11-14 01:24:36',72,'2018-11-14 01:24:36','Y','Y'),
(43,31,'Demo2','/media/uploads/project_document/31/Demo2',72,'2018-11-15 14:00:54',72,'2018-11-15 14:00:54','Y','N'),
(44,35,'Test','/media/uploads/project_document/35/Test',72,'2018-11-14 01:26:18',72,'2018-11-14 01:26:18','Y','N'),
(45,35,'New test','/media/uploads/project_document/35/New test',72,'2018-11-14 01:28:46',72,'2018-11-14 01:28:46','Y','N'),
(46,36,'Test','/media/uploads/project_document/36/Test',90,'2018-11-14 04:41:00',90,'2018-11-14 04:41:00','Y','Y'),
(47,36,'Cufufufufufucufufufufufufufucucucucucucufucucucucuç','/media/uploads/project_document/36/Cufufufufufucufufufufufufufucucucucucucufucucucucuç',90,'2018-11-14 04:27:19',90,'2018-11-14 04:27:19','Y','Y'),
(48,36,'New','/media/uploads/project_document/36/New',90,'2018-11-19 05:44:49',90,'2018-11-19 05:44:49','Y','Y'),
(49,36,'Test2','/media/uploads/project_document/36/Test2',90,'2018-11-14 04:42:02',90,'2018-11-14 04:42:02','Y','N'),
(50,36,'Test four','/media/uploads/project_document/36/Test four',90,'2018-11-14 04:56:21',90,'2018-11-14 04:56:21','Y','Y'),
(51,36,'shubham','/media/uploads/project_document/36/shubham',90,'2018-11-16 02:25:10',90,'2018-11-16 02:25:10','Y','Y'),
(52,30,'test88','/media/uploads/project_document/30/test88',72,'2018-11-14 11:55:49',72,'2018-11-14 11:55:49','Y','Y'),
(53,36,'123','/media/uploads/project_document/36/123',90,'2018-11-16 09:19:05',90,'2018-11-16 09:19:05','Y','Y'),
(54,36,'Abc','/media/uploads/project_document/36/Abc',90,'2018-11-15 09:11:01',90,'2018-11-15 09:11:01','Y','Y'),
(55,36,'dasda','/media/uploads/project_document/36/dasda',90,'2018-11-15 13:08:25',90,'2018-11-15 13:08:25','Y','Y'),
(56,36,'ee','/media/uploads/project_document/36/ee',90,'2018-11-15 13:12:50',90,'2018-11-15 13:12:50','Y','Y'),
(57,36,'eee','/media/uploads/project_document/36/eee',90,'2018-11-15 13:14:35',90,'2018-11-15 13:14:35','Y','Y'),
(58,36,'testttt','/media/uploads/project_document/36/testttt',90,'2018-11-15 13:15:37',90,'2018-11-15 13:15:37','Y','Y'),
(59,30,'Ggss','/media/uploads/project_document/30/Ggss',72,'2018-11-16 09:21:11',72,'2018-11-16 09:21:11','Y','N'),
(60,36,'New folder','/media/uploads/project_document/36/New folder',90,'2018-11-16 03:29:16',90,'2018-11-16 03:29:16','Y','Y'),
(61,36,'My','/media/uploads/project_document/36/My',90,'2018-11-16 03:29:31',90,'2018-11-16 03:29:31','Y','Y'),
(62,31,'Demo5','/media/uploads/project_document/31/Demo5',72,'2018-11-16 06:30:14',72,'2018-11-16 06:30:14','Y','Y'),
(63,30,'Test 6 ','/media/uploads/project_document/30/Test 6 ',72,'2018-11-19 11:11:56',72,'2018-11-19 11:11:56','Y','N'),
(64,36,'Default','/media/uploads/project_document/36/Default/',1,'2018-11-20 01:33:39',1,'2018-11-20 01:33:39','Y','N'),
(65,21,'test','/media/uploads/project_document/21/test',72,'2018-11-26 11:39:16',72,'2018-11-26 11:39:16','Y','N'),
(66,37,'Default','/media/uploads/project_document/37/Default/',1,'2018-11-30 02:14:46',1,'2018-11-30 02:14:46','Y','N'),
(67,1,'Shubham ','/media/uploads/project_document/1/Shubham ',72,'2018-12-05 02:22:02',72,'2018-12-05 02:22:02','Y','N'),
(68,24,'Default','/media/uploads/project_document/24/Default/',1,'2018-12-05 05:37:25',1,'2018-12-05 05:37:25','Y','N'),
(69,38,'Default','/media/uploads/project_document/38/Default/',1,'2018-12-05 08:03:51',1,'2018-12-05 08:03:51','Y','N');

/*Table structure for table `project_management` */

DROP TABLE IF EXISTS `project_management`;

CREATE TABLE `project_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `project_cost` varchar(255) NOT NULL,
  `project_size` varchar(255) NOT NULL,
  `project_estimated_days` varchar(255) NOT NULL,
  `project_number` varchar(255) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `architect_id` int(11) DEFAULT NULL,
  `construction_plan_dated` date DEFAULT NULL,
  `is_architect_ca` enum('Y','N') DEFAULT NULL,
  `landlord_id` int(11) DEFAULT NULL,
  `lender_id` int(11) DEFAULT NULL,
  `project_desc` text NOT NULL,
  `date_of_commencement` date NOT NULL,
  `date_of_substantial_completion` date NOT NULL,
  `date_of_completion` date NOT NULL,
  `project_physical_address` text NOT NULL,
  `project_state_id` int(11) NOT NULL,
  `project_city_id` int(11) NOT NULL,
  `project_zipcode` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `project_management` */

insert  into `project_management`(`id`,`project_name`,`project_cost`,`project_size`,`project_estimated_days`,`project_number`,`owner_id`,`architect_id`,`construction_plan_dated`,`is_architect_ca`,`landlord_id`,`lender_id`,`project_desc`,`date_of_commencement`,`date_of_substantial_completion`,`date_of_completion`,`project_physical_address`,`project_state_id`,`project_city_id`,`project_zipcode`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'Test','2323232','MEDIUM','100','4556161561',NULL,24,'2018-10-26','Y',3,2,'<p>Test</p>\r\n','2018-09-19','2018-09-19','2018-09-19','USA',1,1,'66651615',1,'2018-09-19 02:25:59',1,'2018-10-26 05:38:29','Y','N'),
(10,'ashcvj','5664','LARGE','2','cbh',NULL,20,'2018-10-26','Y',1,2,'<p>ds</p>\r\n','2018-09-19','2018-09-19','2018-09-19','asc',1,1,'56',1,'2018-09-19 03:14:27',1,'2018-10-26 05:38:55','N','N'),
(11,'sdvnjq','23','LARGE','65156','32',NULL,20,'2018-10-26','Y',1,2,'<p>dsvsdv</p>\r\n','2018-09-19','2018-09-19','2018-09-19','sd',1,1,'55',1,'2018-09-19 03:16:08',1,'2018-10-26 05:39:19','N','N'),
(21,'Shivalik','1456465145','LARGE','1561','5656',NULL,NULL,NULL,NULL,NULL,NULL,'<p>sdjb</p>\r\n','2018-09-19','2018-09-19','2018-09-19','asdc',1,1,'565656',1,'2018-09-19 07:49:13',1,'2018-09-19 07:49:13','Y','N'),
(22,'Shivaliks arcadwe','565156','MEDIUM','12561461','djvb',NULL,NULL,NULL,NULL,NULL,NULL,'<p>dfvjk</p>\r\n','2018-09-19','2018-09-19','2018-09-19','sdcv',1,1,'5656',1,'2018-09-19 07:50:21',1,'2018-09-19 07:50:21','Y','N'),
(24,'Test Project','1561561','MEDIUM','200','561561',NULL,35,'2018-12-05','N',3,4,'<p>sdfvdfv</p>\r\n','2018-09-29','2018-10-05','2018-10-06','cbh',1,1,'980015',1,'2018-09-19 09:41:57',1,'2018-12-05 05:37:25','Y','N'),
(25,'Test Project 2','156','LARGE','200','300',NULL,NULL,NULL,NULL,NULL,NULL,'<p>sdcvsdc</p>\r\n','2018-09-29','2018-09-27','2018-10-05','sdcvsd',1,1,'980015',1,'2018-09-19 09:43:45',1,'2018-09-19 09:57:01','Y','N'),
(26,'CCS Test 1','1561651611','Medium','300','CCS1212',1,9,'2018-10-03','Y',1,1,'<p>Test</p>\r\n','2018-10-03','2018-10-03','2018-10-03','USA',1,1,'15616515',1,'2018-10-03 07:08:12',1,'2018-10-03 08:44:07','Y','N'),
(30,'testdemo','25200','LARGE','45','123',1,20,'2018-10-31','Y',4,2,'<p>test</p>\r\n','2018-10-25','2018-10-29','2018-10-31','ahemdabad',2,52,'4520',72,'2018-10-23 05:26:00',72,'2018-10-23 05:26:00','Y','N'),
(31,'Checkdemo','1111','LARGE','65','425',3,33,'2018-11-13','Y',17,2,'<p>chack for project</p>\r\n','2018-11-13','2018-11-15','2018-11-13','Ahemdabad',6,5,'4523',72,'2018-10-23 05:32:49',72,'2018-10-23 05:32:49','Y','N'),
(32,'Testa','320232','Largr','2323','156156',NULL,20,'2018-10-24','N',3,2,'<p>Test</p>\r\n','2018-10-24','2018-10-24','2018-10-24','6515',2,52,'56115561',1,'2018-10-24 02:06:19',1,'2018-10-24 02:06:31','Y','N'),
(33,'Test project by admin','123655','Small','200','12313',NULL,20,'2018-10-29','Y',6,2,'<p>Test</p>\r\n','2018-10-29','2018-10-29','2018-10-29','USA',2,52,'5561515',1,'2018-10-29 09:46:45',1,'2018-10-29 09:51:57','Y','N'),
(34,'Test Project by david','123456','Large','23','12352',NULL,24,'2018-11-13','N',1,2,'<p>Test</p>\r\n','2018-11-13','2018-11-13','2018-11-13','USA',5,4,'61615616',89,'2018-11-12 23:29:16',89,'2018-11-12 23:29:16','Y','N'),
(35,'TEST1','156156','LARGE','23','15615611',NULL,20,'2018-11-14','N',3,2,'<p>TEST</p>\r\n','2018-11-14','2018-11-14','2018-11-14','Satelite',2,52,'980015',72,'2018-11-14 01:24:36',72,'2018-11-14 01:24:36','Y','N'),
(36,'Testing project','732377','Small','60','29108',NULL,20,'2018-11-29','Y',3,2,'<p><strong>TEST sdcs</strong></p>\r\n','2018-12-28','2018-12-27','2019-01-18','test',2,52,'73301',90,'2018-11-14 04:15:06',1,'2018-11-30 02:29:34','Y','N'),
(37,'Test Garry Project','200000','90 Days','20','99999',NULL,80,'2018-11-30','Y',18,2,'<p><strong>Lorem</strong></p>\r\n','2018-12-07','2018-12-08','2018-12-28','Tampaa',2,52,'22222222',1,'2018-11-30 02:14:46',1,'2018-11-30 03:47:02','Y','N'),
(38,'Project Test Name','2000000000','30 Days','1111111','111761237',NULL,97,'2018-12-12','Y',20,4,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n','2018-12-31','2019-01-31','2018-12-31','Physical Notes',1,1,'20050',1,'2018-12-05 08:03:51',1,'2018-12-05 08:04:06','Y','N');

/*Table structure for table `project_proposal` */

DROP TABLE IF EXISTS `project_proposal`;

CREATE TABLE `project_proposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `sub_contractor_total_cost` varchar(100) NOT NULL,
  `p_total_cost` varchar(255) NOT NULL,
  `project_size` varchar(255) NOT NULL,
  `cost_per_sf` varchar(255) NOT NULL,
  `estimated_design_duration_days` int(11) NOT NULL,
  `item_sub_total` varchar(100) NOT NULL,
  `overhead` varchar(100) NOT NULL,
  `fee` varchar(100) NOT NULL,
  `contractor_overhead` varchar(100) NOT NULL,
  `contractor_fee` varchar(100) NOT NULL,
  `item_total_cost` varchar(100) NOT NULL,
  `p_desc` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `project_proposal` */

insert  into `project_proposal`(`id`,`project_id`,`p_name`,`sub_contractor_total_cost`,`p_total_cost`,`project_size`,`cost_per_sf`,`estimated_design_duration_days`,`item_sub_total`,`overhead`,`fee`,`contractor_overhead`,`contractor_fee`,`item_total_cost`,`p_desc`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,21,'Test','11','11','LARGE','23',23,'11','11','11','11','11','11','<p>Test</p>\r\n',1,'2018-11-22 05:22:35',1,'2018-11-22 05:22:35','Y','N'),
(4,25,'Test1','11','1','SMALL','66',456,'1','11','11','11','11','1','<p>Test</p>\r\n',1,'2018-11-22 07:06:05',1,'2018-11-22 07:06:05','Y','N');

/*Table structure for table `project_proposal_item` */

DROP TABLE IF EXISTS `project_proposal_item`;

CREATE TABLE `project_proposal_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `project_proposal_id` int(11) NOT NULL,
  `sub_contractor_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `cost_sf` varchar(100) NOT NULL,
  `per_total` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `sub_contractor_estimate_cost` varchar(255) NOT NULL,
  `proposed_spread_per` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `project_proposal_item` */

insert  into `project_proposal_item`(`id`,`project_id`,`project_proposal_id`,`sub_contractor_id`,`item_id`,`cost`,`cost_sf`,`per_total`,`comment`,`sub_contractor_estimate_cost`,`proposed_spread_per`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,21,1,10,4,'100','200','100','2000','100','30',1,'2018-11-22 05:22:35',1,'2018-11-22 05:22:35','Y','N'),
(4,25,4,10,9,'233','12','123','12sdc','23','123',1,'2018-11-22 07:06:05',1,'2018-11-22 07:06:05','Y','N'),
(5,25,4,14,4,'10','3','23','www sdcs ','20','200',1,'2018-11-22 07:06:05',1,'2018-11-22 07:06:05','Y','N'),
(6,25,4,14,6,'10','3','23','q','100','200',1,'2018-11-22 07:06:05',1,'2018-11-22 07:06:05','Y','N');

/*Table structure for table `project_schedule_management` */

DROP TABLE IF EXISTS `project_schedule_management`;

CREATE TABLE `project_schedule_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `schedule_title` varchar(255) NOT NULL,
  `schedule_start_date` date NOT NULL,
  `schedule_end_date` date NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_schedule_project_id` (`project_id`),
  KEY `FK_schedule_created_by` (`created_by`),
  KEY `FK_schedule_updated_by` (`updated_by`),
  CONSTRAINT `FK_schedule_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_schedule_project_id` FOREIGN KEY (`project_id`) REFERENCES `project_management` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_schedule_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `project_schedule_management` */

insert  into `project_schedule_management`(`id`,`project_id`,`schedule_title`,`schedule_start_date`,`schedule_end_date`,`item_name`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,1,'Tests','2018-10-09','2018-10-18','3',1,'2018-10-15 06:00:52',1,'2018-10-16 08:31:02','Y','N'),
(2,11,'Testasxasx','2018-10-16','2018-11-15','4',1,'2018-10-16 06:31:42',1,'2018-10-16 08:45:59','Y','N'),
(3,37,'Test Garry Project Title','2018-12-04','2018-12-02','4',1,'2018-12-01 01:23:09',1,'2018-12-01 01:23:09','Y','N'),
(4,37,'New Title Projectt','2018-12-27','2019-01-01','6',1,'2018-12-01 01:33:44',1,'2018-12-01 01:34:20','N','N'),
(5,37,'Garry Project Test','2018-12-31','2019-01-31','1',1,'2018-12-05 08:41:49',1,'2018-12-05 08:41:49','Y','N');

/*Table structure for table `punch_list` */

DROP TABLE IF EXISTS `punch_list`;

CREATE TABLE `punch_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `project_manager_user_id` int(11) NOT NULL,
  `present` enum('Y','N') NOT NULL,
  `walkthrough_date` datetime NOT NULL,
  `superintendent_user_id` int(11) NOT NULL,
  `cell_phone` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('N','Y') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `punch_list` */

insert  into `punch_list`(`id`,`project_id`,`project_manager_user_id`,`present`,`walkthrough_date`,`superintendent_user_id`,`cell_phone`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,21,16,'Y','2018-09-20 00:00:00',17,'5463217899',1,'2018-09-20 02:41:48',1,'2018-09-20 02:41:48','Y','N'),
(2,1,16,'Y','2018-10-11 00:00:00',8,'651515654145',1,'2018-10-11 05:28:08',1,'2018-10-11 05:28:08','Y','N'),
(3,37,90,'Y','2018-11-30 00:00:00',98,'+19812093481',1,'2018-11-30 04:23:17',1,'2018-11-30 04:23:17','Y','N'),
(4,37,90,'Y','2018-12-31 00:00:00',98,'+18671289736',1,'2018-12-05 08:06:32',1,'2018-12-05 08:06:32','Y','N');

/*Table structure for table `punch_list_detail` */

DROP TABLE IF EXISTS `punch_list_detail`;

CREATE TABLE `punch_list_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `punch_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `subcontractor_id` int(11) NOT NULL,
  `gc_initial` varchar(255) NOT NULL,
  `owner_pm_initial` varchar(255) NOT NULL,
  `completed_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `punch_list_detail` */

insert  into `punch_list_detail`(`id`,`punch_id`,`location`,`description`,`subcontractor_id`,`gc_initial`,`owner_pm_initial`,`completed_date`,`created_date`,`created_by`,`updated_date`,`updated_by`,`is_active`,`is_delete`) values 
(1,1,'Ahemedabad, India','test description',2,'demo','test','2018-09-20','2018-09-20 02:41:48',1,'2018-09-20 02:41:48',1,'Y','N'),
(2,2,'csdc','SDCSD',10,'sdc','sdcs','2018-10-11','2018-10-11 05:28:08',1,'2018-10-11 05:28:08',1,'Y','N'),
(3,2,'csdc','SDCSD',18,'sdc','sdcs','2018-10-26','2018-10-11 05:28:08',1,'2018-10-11 05:28:08',1,'Y','N'),
(4,3,'Tampa','Tampa',10,'111','222','2018-11-30','2018-11-30 04:23:17',1,'2018-11-30 04:23:17',1,'Y','N'),
(5,3,'Tampa','Tampa',14,'333','444','2018-11-30','2018-11-30 04:23:17',1,'2018-11-30 04:23:17',1,'Y','N'),
(6,4,'Location Test','description Test',10,'11','11','2018-12-05','2018-12-05 08:06:32',1,'2018-12-05 08:06:32',1,'Y','N');

/*Table structure for table `review_comment_RFI` */

DROP TABLE IF EXISTS `review_comment_RFI`;

CREATE TABLE `review_comment_RFI` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rfi_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `rfi_desc` text NOT NULL,
  `requested_by_trade` varchar(255) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `date_submitted_for_response` datetime NOT NULL,
  `review_date_response_required_back` datetime NOT NULL,
  `review_current_status` enum('Open','Resolved') NOT NULL,
  `review_date_received_response` datetime NOT NULL,
  `rfi_notes` text NOT NULL,
  `architect_or_vendor_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `review_comment_RFI` */

/*Table structure for table `rfi` */

DROP TABLE IF EXISTS `rfi`;

CREATE TABLE `rfi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `request_for_information` text,
  `architect_id` int(11) DEFAULT NULL,
  `sub_contractor_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `project_number` varchar(255) NOT NULL,
  `project_location` text NOT NULL,
  `rfi_code` varchar(255) NOT NULL,
  `response` text NOT NULL,
  `responded_by` varchar(255) NOT NULL,
  `rfi_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `FK_rfi_created_by` (`created_by`),
  KEY `FK_rfi_updated_by` (`updated_by`),
  KEY `FK_rfi_project_id` (`project_id`),
  KEY `FK_rfi_client_id` (`client_id`),
  KEY `FK_rfi_architect_id` (`architect_id`),
  KEY `FK_rfi_subcontractor_id` (`sub_contractor_id`),
  CONSTRAINT `FK_rfi_architect_id` FOREIGN KEY (`architect_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rfi_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rfi_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rfi_project_id` FOREIGN KEY (`project_id`) REFERENCES `project_management` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rfi_subcontractor_id` FOREIGN KEY (`sub_contractor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rfi_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rfi` */

insert  into `rfi`(`id`,`client_id`,`request_for_information`,`architect_id`,`sub_contractor_id`,`project_id`,`project_number`,`project_location`,`rfi_code`,`response`,`responded_by`,`rfi_date`,`created_date`,`created_by`,`updated_date`,`updated_by`,`is_active`,`is_delete`) values 
(1,2,NULL,9,10,1,'4556161561','USA Miami Florida','RFI5bbb1d20eefd8','csc','asc','2018-10-08','2018-10-08 05:00:41',1,'2018-10-08 05:39:36',1,'Y','N'),
(2,2,NULL,4,18,24,'561561','cbh Miami Florida','RFI5bd3036bd6db6','test','test','2018-10-26','2018-10-26 08:07:26',1,'2018-10-29 04:37:25',1,'Y','N'),
(3,1,'test',12,14,25,'300','sdcvsd Miami Florida','RFI5be97fd088168','','test','2018-11-12','2018-11-12 08:28:48',1,'2018-11-12 08:28:48',1,'Y','N'),
(4,17,'Request',97,47,37,'99999','Tampaa Austin Texas','RFI5c01046ea4e54','Response','Responded By Abdulla','2018-12-01','2018-11-30 04:44:37',1,'2018-11-30 04:46:21',1,'Y','N'),
(5,17,'Test ResponseTest ResponseTest ResponseTest ResponseTest ResponseTest ResponseTest ResponseTest ResponseTest ResponseTest ResponseTest Response',97,47,37,'99999','Tampaa Austin Texas','RFI5c07d34b6c13c','Test Response','Test Responded By Admin','2018-12-31','2018-12-05 08:32:50',1,'2018-12-05 08:33:13',1,'Y','N');

/*Table structure for table `site_configuration` */

DROP TABLE IF EXISTS `site_configuration`;

CREATE TABLE `site_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) CHARACTER SET latin1 NOT NULL,
  `config_value` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '1',
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key` (`config_key`),
  KEY `created_by` (`created_by`,`updated_by`),
  KEY `fk_updated_by_site_configuration` (`updated_by`),
  CONSTRAINT `fk_created_by_site_configuration` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_updated_by_site_configuration` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Data for the table `site_configuration` */

insert  into `site_configuration`(`id`,`config_key`,`config_value`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`) values 
(21,'DEFAULT_PAGESIZE','10',1,'2018-09-18 08:30:32',1,'2018-09-18 08:30:32','Y'),
(30,'EMAIL_SMTP','email_smtp',1,'2017-11-28 07:07:45',1,'2017-11-28 07:07:45','Y'),
(31,'EMAIL_HOST','email_host',1,'2017-11-28 07:07:55',1,'2017-11-28 07:07:55','Y'),
(32,'EMAIL_USERNAME','email_username',1,'2017-11-28 07:08:08',1,'2017-11-28 07:08:08','Y'),
(33,'EMAIL_PASSWORD','email_password',1,'2017-11-28 07:08:18',1,'2017-11-28 07:08:18','Y'),
(34,'EMAIL_FROM','demo.xceltec1@gmail.com',1,'2018-08-20 08:07:57',1,'2018-08-20 08:07:57','Y'),
(35,'EMAIL_TO','email_to',1,'2017-11-28 07:17:45',1,'2017-11-28 07:17:45','Y'),
(36,'EMAIL_CC','email_cc',1,'2017-11-28 07:17:54',1,'2017-11-28 07:17:54','Y'),
(37,'EMAIL_BCC','email_bcc',1,'2017-11-28 07:18:02',1,'2017-11-28 07:18:02','Y'),
(38,'TIMEZONE','timezone',1,'2017-11-28 07:18:11',1,'2017-11-28 07:18:11','Y'),
(140,'PROJECT_MANAGER_USER_ID','9',1,'2018-09-19 17:19:30',1,'2018-09-19 17:19:34','Y'),
(141,'SUPERINTENDENT_USER_ID','10',1,'2018-09-19 17:36:51',1,'2018-09-19 17:36:55','Y'),
(142,'SUB_CONTRACTOR_USER_ID','11',1,'2018-09-20 01:33:36',1,'2018-09-20 01:33:36','Y'),
(143,'GENERAL_CONTRACTOR_USER_ID','3',1,'2018-09-20 01:34:37',1,'2018-09-20 01:34:37','Y'),
(144,'ARCHITECTURE_USER_ID','14',1,'2018-09-20 09:45:17',1,'2018-09-20 09:45:17','Y'),
(145,'VENDOR_USER_ID','12',1,'2018-09-28 06:06:25',1,'2018-09-28 06:06:25','Y'),
(146,'USER_IMAGE_PATH','/media/uploads/user_profile/',1,'2018-10-11 02:18:41',1,'2018-10-11 02:18:41','Y'),
(147,'SIGNUP_SUCCESS','Sign Up Successfully!!!',1,'2018-10-11 02:26:46',1,'2018-10-11 02:26:46','Y'),
(148,'INVALID_ACCESS','Invalid Access',1,'2018-10-11 02:27:08',1,'2018-10-11 02:27:08','Y'),
(149,'INVALID_INPUT','Invalid Input !!!',1,'2018-10-11 02:27:22',1,'2018-10-11 02:27:22','Y'),
(150,'EMAIL_EXIST','Email is already in use!!',1,'2018-10-11 02:27:43',1,'2018-10-11 02:27:43','Y'),
(151,'PASSWORD_NOT_MATCH','Password and confirm password not matched! ',1,'2018-10-11 02:28:01',1,'2018-10-11 02:28:01','Y'),
(152,'ERROR_SIGNUP','Something getting wrong please try after some time',1,'2018-10-11 02:42:39',1,'2018-10-11 02:42:39','Y'),
(153,'PASSWORD_CHANGE_SUCCESS','Password change successfully',1,'2018-10-11 07:22:16',1,'2018-10-11 07:22:16','Y'),
(154,'OLD_PASSWORD_NOT_MATCH','Old password not match',1,'2018-10-11 07:27:40',1,'2018-10-11 07:27:40','Y'),
(155,'USER_NOT_EXIST','User not exist',1,'2018-10-11 07:33:13',1,'2018-10-11 07:33:13','Y'),
(156,'LOGOUT_SUCCESS','Logout successfully',1,'2018-10-11 09:00:27',1,'2018-10-11 09:00:27','Y'),
(157,'FROM_EMAIL','demo.xceltec4@gmail.com',1,'2018-10-12 00:33:40',1,'2018-10-12 00:33:40','Y'),
(158,'PROJECT_DOCUMENT_PATH','/media/uploads/project_document/',1,'2018-10-12 06:13:50',1,'2018-10-12 06:13:50','Y'),
(159,'LOGIN_SUCCESS','Login successfully',1,'2018-10-12 06:59:17',1,'2018-10-12 06:59:17','Y'),
(160,'SERVER_ERROR','Unable to save data. Please try again!',1,'2018-10-12 07:07:02',1,'2018-10-12 07:07:02','Y'),
(161,'EMAIL_SENT_SUCCESS','Email sent succesfully',1,'2018-10-12 07:28:26',1,'2018-10-12 07:28:26','Y'),
(162,'EMAIL_SENT_ERROR','Email is not sent',1,'2018-10-12 07:28:57',1,'2018-10-12 07:28:57','Y'),
(163,'INVALID_PASSWORD','Password is wrong',1,'2018-10-12 07:51:08',1,'2018-10-12 07:51:08','Y'),
(164,'ACCOUNT_ACTIVATE','Acount is activate',1,'2018-10-12 08:15:16',1,'2018-10-12 08:15:16','Y'),
(165,'PROJECT_NOT_EXIST','Project is not exist',1,'2018-10-12 08:22:28',1,'2018-10-12 08:22:28','Y'),
(166,'UPLOAD_FILE','File upload is successfully',1,'2018-10-12 08:24:12',1,'2018-10-12 08:24:12','Y'),
(167,'EMAIL_NOT_MATCH','The email address that you have entered does not match any account.Please signup.',1,'2018-10-12 08:32:41',1,'2018-10-12 08:32:41','Y'),
(168,'FILE_SELECT','Please upload except zip file',1,'2018-10-13 07:00:09',1,'2018-10-13 07:00:09','Y'),
(169,'FOLDER_CREATE','Folder create successfully',1,'2018-10-13 08:36:51',1,'2018-10-13 08:36:51','Y'),
(170,'FOLDER_EXIST','Folder is exist',1,'2018-10-15 01:20:33',1,'2018-10-15 01:20:33','Y'),
(171,'FOLDER_DELETE','Folder delete successfully',1,'2018-10-15 02:17:08',1,'2018-10-15 02:17:08','Y'),
(172,'FOLDER_NOT_EXIST','Folder not exist',1,'2018-10-15 02:51:31',1,'2018-10-15 02:51:31','Y'),
(173,'EMAIL_NOT_EXIST','Email is not exist',1,'2018-10-15 07:23:41',1,'2018-10-15 07:23:41','Y'),
(174,'FOLDER_UPDATED','Folder rename successfully',1,'2018-10-18 06:19:14',1,'2018-10-18 06:19:14','Y'),
(175,'TOKEN_NOT_FOUND','Token not found!!',1,'2018-10-22 05:20:51',1,'2018-10-22 05:20:51','Y'),
(176,'USER_DEVICE_NOT_EXIST','User device not exist',1,'2018-10-22 06:53:29',1,'2018-10-22 06:53:29','Y'),
(177,'INVALID_DATA','Invalid Data',1,'2018-10-25 05:18:23',1,'2018-10-25 05:18:23','Y'),
(178,'DOCUMENT_NOT_FOUND','Document not existes!!!',1,'2018-11-04 23:55:35',1,'2018-11-04 23:55:35','Y'),
(179,'FOLDER_NOT_EXISTS','Folder Not Exists!!!!',1,'2018-11-13 00:03:25',1,'2018-11-13 00:03:25','Y'),
(180,'FILE_NOT_EXISTS','File Not Exists!!!',1,'2018-11-13 00:06:20',1,'2018-11-13 00:06:20','Y'),
(181,'DOWNLOADED_DOCUMENT_NOT_FOUND','There is no any document , you have downloaded!!',1,'2018-11-13 03:48:25',1,'2018-11-13 03:48:25','Y');

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `state` */

insert  into `state`(`id`,`state_name`,`country_id`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'Florida',1,1,'2018-08-29 06:29:30',1,'2018-08-29 06:29:30','Y','N'),
(2,'Texas',1,25,'2018-09-28 03:14:03',25,'2018-09-28 03:14:03','Y','N'),
(3,'Wasinghton',1,1,'2018-10-08 07:00:35',1,'2018-10-08 07:00:35','N','N'),
(4,'Alabama',1,1,'2018-10-18 00:55:02',1,'2018-10-18 00:55:02','Y','N'),
(5,'Alaska',1,1,'2018-10-18 00:55:17',1,'2018-10-18 00:55:17','Y','N'),
(6,'Arizona',1,1,'2018-10-18 00:55:32',1,'2018-10-18 00:55:32','Y','N'),
(7,'Arkansas',1,1,'2018-10-18 00:55:43',1,'2018-10-18 00:55:43','Y','N'),
(8,'California',1,1,'2018-10-18 00:55:56',1,'2018-10-18 00:55:56','Y','N'),
(9,'Colorado',1,1,'2018-10-18 00:56:16',1,'2018-10-18 00:56:16','Y','N'),
(10,'Connecticut',1,1,'2018-10-18 00:56:29',1,'2018-10-18 00:56:29','Y','N'),
(11,'Delaware',1,1,'2018-10-18 00:56:47',1,'2018-10-18 00:56:47','Y','N'),
(12,'Georgia',1,1,'2018-10-18 00:57:22',1,'2018-10-18 00:57:22','Y','N'),
(13,'Hawaii',1,1,'2018-10-18 00:57:34',1,'2018-10-18 00:57:34','Y','N'),
(14,'Idaho',1,1,'2018-10-18 00:57:43',1,'2018-10-18 00:57:43','Y','N'),
(15,'Illinois',1,1,'2018-10-18 00:57:59',1,'2018-10-18 00:57:59','Y','N'),
(16,'Indiana',1,1,'2018-10-18 00:58:09',1,'2018-10-18 00:58:09','Y','N'),
(17,'Iowa',1,1,'2018-10-18 00:58:18',1,'2018-10-18 00:58:18','Y','N'),
(18,'Kansas',1,1,'2018-10-18 00:58:27',1,'2018-10-18 00:58:27','Y','N'),
(19,'Kentucky',1,1,'2018-10-18 00:58:42',1,'2018-10-18 00:58:42','Y','N'),
(20,'Louisiana',1,1,'2018-10-18 00:58:55',1,'2018-10-18 00:58:55','Y','N'),
(21,'Maine',1,1,'2018-10-18 00:59:07',1,'2018-10-18 00:59:07','Y','N'),
(22,'Maryland',1,1,'2018-10-18 00:59:17',1,'2018-10-18 00:59:17','Y','N'),
(23,'Massachusetts',1,1,'2018-10-18 00:59:41',1,'2018-10-18 00:59:41','Y','N'),
(24,'Michigan',1,1,'2018-10-18 00:59:49',1,'2018-10-18 00:59:49','Y','N'),
(25,'Minnesota',1,1,'2018-10-18 01:00:02',1,'2018-10-18 01:00:02','Y','N'),
(26,'Mississippi',1,1,'2018-10-18 01:00:12',1,'2018-10-18 01:00:12','Y','N'),
(27,'Missouri',1,1,'2018-10-18 01:00:22',1,'2018-10-18 01:00:22','Y','N'),
(28,'Montana',1,1,'2018-10-18 01:00:33',1,'2018-10-18 01:00:33','Y','N'),
(29,'Nebraska',1,1,'2018-10-18 01:00:44',1,'2018-10-18 01:00:44','Y','N'),
(30,'Nevada',1,1,'2018-10-18 01:00:54',1,'2018-10-18 01:00:54','Y','N'),
(31,'New Hampshire',1,1,'2018-10-18 01:01:08',1,'2018-10-18 01:01:08','Y','N'),
(32,'New Jersey',1,1,'2018-10-18 01:01:17',1,'2018-10-18 01:01:17','Y','N'),
(33,'New Mexico',1,1,'2018-10-18 01:01:27',1,'2018-10-18 01:01:27','Y','N'),
(34,'New York',1,1,'2018-10-18 01:02:00',1,'2018-10-18 01:02:00','Y','N'),
(35,'North Carolina',1,1,'2018-10-18 01:02:09',1,'2018-10-18 01:02:09','Y','N'),
(36,'North Dakota',1,1,'2018-10-18 01:02:17',1,'2018-10-18 01:02:17','Y','N'),
(37,'Ohio',1,1,'2018-10-18 01:03:40',1,'2018-10-18 01:03:40','Y','N'),
(38,'Oklahoma',1,1,'2018-10-18 01:03:49',1,'2018-10-18 01:03:49','Y','N'),
(39,'Oregon',1,1,'2018-10-18 01:03:59',1,'2018-10-18 01:03:59','Y','N'),
(40,'Pennsylvania',1,1,'2018-10-18 01:04:11',1,'2018-10-18 01:04:11','Y','N'),
(41,'Rhode Island',1,1,'2018-10-18 01:04:19',1,'2018-10-18 01:04:19','Y','N'),
(42,'South Carolina',1,1,'2018-10-18 01:18:40',1,'2018-10-18 01:18:40','Y','N'),
(43,'South Dakota',1,1,'2018-10-18 01:18:56',1,'2018-10-18 01:18:56','Y','N'),
(44,'Tennessee',1,1,'2018-10-18 01:19:25',1,'2018-10-18 01:19:25','Y','N'),
(45,'Utah',1,1,'2018-10-18 01:19:47',1,'2018-10-18 01:19:47','Y','N'),
(46,'Vermont',1,1,'2018-10-18 01:19:55',1,'2018-10-18 01:19:55','Y','N'),
(47,'Virginia',1,1,'2018-10-18 01:20:02',1,'2018-10-18 01:20:02','Y','N'),
(48,'Washington',1,1,'2018-10-18 01:20:10',1,'2018-10-18 01:20:10','Y','N'),
(49,'West Virginia',1,1,'2018-10-18 02:10:50',1,'2018-10-18 02:10:50','Y','N'),
(50,'Wisconsin',1,1,'2018-10-18 02:11:00',1,'2018-10-18 02:11:00','Y','N'),
(51,'Wyoming',1,1,'2018-10-18 02:11:08',1,'2018-10-18 02:11:08','Y','N'),
(52,'Test1',1,1,'2018-10-23 07:31:23',1,'2018-10-23 07:31:23','N','Y'),
(53,'Test2',1,1,'2018-10-23 07:36:04',1,'2018-10-23 07:36:04','Y','Y'),
(54,'USAA',1,1,'2018-10-24 04:35:12',1,'2018-10-24 04:35:12','N','Y');

/*Table structure for table `subcontractor_item` */

DROP TABLE IF EXISTS `subcontractor_item`;

CREATE TABLE `subcontractor_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `subcontractor_item` */

insert  into `subcontractor_item`(`id`,`user_id`,`item_id`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(7,94,1,1,'2018-11-21 02:01:15',1,'2018-11-21 02:01:15','Y','N'),
(8,94,4,1,'2018-11-21 02:01:15',1,'2018-11-21 02:01:15','Y','N'),
(9,94,5,1,'2018-11-21 02:01:15',1,'2018-11-21 02:01:15','Y','N'),
(10,94,6,1,'2018-11-21 02:01:15',1,'2018-11-21 02:01:15','Y','N');

/*Table structure for table `submittal` */

DROP TABLE IF EXISTS `submittal`;

CREATE TABLE `submittal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `re` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `attention` text NOT NULL,
  `review_date_of_resubmittal` date NOT NULL,
  `attached_img` varchar(255) DEFAULT NULL,
  `under_separate_cover` varchar(255) NOT NULL,
  `under_separate_cover_via` varchar(255) NOT NULL,
  `shop_drawings` varchar(255) NOT NULL,
  `prints` varchar(255) NOT NULL,
  `plans` varchar(255) NOT NULL,
  `samples` varchar(255) NOT NULL,
  `specifications` varchar(255) NOT NULL,
  `copy_of_letter` varchar(255) NOT NULL,
  `change_order` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `for_approval` int(11) NOT NULL,
  `approved_as_submitted` varchar(255) NOT NULL,
  `resubmit` varchar(255) NOT NULL,
  `copies_for_approval` varchar(255) NOT NULL,
  `for_your_use` varchar(255) NOT NULL,
  `approved_as_noted` varchar(255) NOT NULL,
  `submit` varchar(255) NOT NULL,
  `copies_for_distribution` varchar(255) NOT NULL,
  `as_requested` varchar(255) NOT NULL,
  `returned_for_corrections` varchar(255) NOT NULL,
  `return` varchar(255) NOT NULL,
  `corrected_prints` varchar(255) NOT NULL,
  `review_comment` varchar(255) NOT NULL,
  `for_bids_due` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `submittal` */

insert  into `submittal`(`id`,`project_id`,`date`,`to_user_id`,`re`,`email`,`phone`,`from_user_id`,`attention`,`review_date_of_resubmittal`,`attached_img`,`under_separate_cover`,`under_separate_cover_via`,`shop_drawings`,`prints`,`plans`,`samples`,`specifications`,`copy_of_letter`,`change_order`,`other`,`for_approval`,`approved_as_submitted`,`resubmit`,`copies_for_approval`,`for_your_use`,`approved_as_noted`,`submit`,`copies_for_distribution`,`as_requested`,`returned_for_corrections`,`return`,`corrected_prints`,`review_comment`,`for_bids_due`,`remarks`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(3,22,'2018-11-29',3,'sd','asxc@sdc.gf','5625612',1,'asx','2018-11-29',NULL,'51','56','1','0','0','0','0','1','0','0',1,'0','0','0','0','0','0','1','0','0','0','0','0','xasx','xasxasx',1,'2018-11-29 03:26:38',1,'2018-11-29 06:08:45','Y','N'),
(4,37,'2018-12-31',98,'Regarding','kirsten@mailinator.com','+19812903809',1,'Attention','2018-12-31',NULL,'Seprate Cover','Under Cover','1','1','1','1','1','1','1','1',1,'1','1','0','0','1','1','1','1','1','1','1','1','Bids Due','Remarks',1,'2018-12-05 09:15:46',1,'2018-12-05 09:15:51','Y','N');

/*Table structure for table `submittal_item` */

DROP TABLE IF EXISTS `submittal_item`;

CREATE TABLE `submittal_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submittal_id` int(11) NOT NULL,
  `copies` varchar(255) NOT NULL,
  `item_date` date NOT NULL,
  `number` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `submittal_item` */

insert  into `submittal_item`(`id`,`submittal_id`,`copies`,`item_date`,`number`,`description`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(14,3,'vv','2018-11-30','asxax','asx',1,'2018-11-29 06:08:45',1,'2018-11-29 06:08:45','Y','N'),
(15,3,'asx','2018-11-30','xasxax','asxaxax',1,'2018-11-29 06:08:45',1,'2018-11-29 06:08:45','Y','N'),
(16,3,'vv','2018-11-30','asxax','asx',1,'2018-11-29 06:08:45',1,'2018-11-29 06:08:45','Y','N'),
(17,3,'asx','2018-11-30','xasxax','asxaxax',1,'2018-11-29 06:08:45',1,'2018-11-29 06:08:45','Y','N'),
(18,3,'ascasc','2018-12-01','asc','asc',1,'2018-11-29 06:08:45',1,'2018-11-29 06:08:45','Y','N'),
(21,4,'Copies','2018-12-18','234234','Description',1,'2018-12-05 09:15:51',1,'2018-12-05 09:15:51','Y','N'),
(22,4,'Copies  Ne','2018-12-27','14234','Description',1,'2018-12-05 09:15:51',1,'2018-12-05 09:15:51','Y','N');

/*Table structure for table `task_allocation` */

DROP TABLE IF EXISTS `task_allocation`;

CREATE TABLE `task_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_name` text NOT NULL,
  `priority` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_status` enum('INITIALISED','START','ONGOING','PENDING','COMPLETED') NOT NULL DEFAULT 'INITIALISED',
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  `is_delete` enum('Y','N') DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `task_allocation` */

insert  into `task_allocation`(`id`,`project_id`,`task_name`,`priority`,`role_id`,`user_id`,`task_status`,`description`,`start_date`,`due_date`,`is_active`,`is_delete`,`created_by`,`updated_by`,`created_date`,`updated_date`) values 
(1,1,'Test Task','MEDIUM',10,17,'INITIALISED','<p>Test</p>\r\n','2018-10-27','2018-11-02','Y','N',1,1,'2018-10-12 02:30:08','2018-10-12 04:45:21'),
(2,10,'Test Task1','MEDIUM',9,16,'INITIALISED','<p>Test</p>\r\n','2018-10-12','2018-10-12','Y','N',1,1,'2018-10-12 06:30:48','2018-10-12 06:30:48'),
(3,10,'Test Task1','MEDIUM',9,16,'INITIALISED','<p>Test</p>\r\n','2018-10-12','2018-10-12','Y','N',1,1,'2018-10-12 06:34:39','2018-10-12 06:34:39'),
(4,10,'Test Task1','HIGH',9,16,'INITIALISED','<p>Test</p>\r\n','2018-10-12','2018-10-12','Y','N',1,1,'2018-10-12 06:34:51','2018-10-12 06:42:13'),
(5,37,'Task Name','LOW',10,98,'INITIALISED','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n','2019-01-05','2018-12-31','Y','N',1,1,'2018-11-30 05:19:22','2018-11-30 05:19:22'),
(6,21,'Test Task','MEDIUM',3,3,'INITIALISED','<p>twestr</p>\r\n','2018-12-01','2018-12-08','Y','N',1,1,'2018-11-30 06:03:26','2018-11-30 06:03:26'),
(7,21,'Test Task','MEDIUM',3,3,'INITIALISED','<p>twestr</p>\r\n','2018-12-01','2018-12-08','Y','N',1,1,'2018-11-30 06:04:36','2018-11-30 06:04:36'),
(8,21,'Test Task','MEDIUM',3,3,'INITIALISED','<p>twestr</p>\r\n','2018-12-01','2018-12-08','Y','N',1,1,'2018-11-30 06:07:31','2018-11-30 06:07:31'),
(9,21,'Test Task','MEDIUM',3,3,'INITIALISED','<p>twestr</p>\r\n','2018-12-01','2018-12-08','Y','N',1,1,'2018-11-30 06:08:14','2018-11-30 06:08:14'),
(10,36,'Test Task Name','MEDIUM',9,90,'START','<p>Lorem Ipsummmmm</p>\r\n','2019-01-01','2019-04-06','Y','N',1,1,'2018-11-30 08:44:31','2018-11-30 08:46:41'),
(11,37,'Task Name Testtt','HIGH',11,10,'INITIALISED','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsummmmmmm</p>\r\n','2018-12-31','2019-01-31','Y','N',1,1,'2018-12-05 08:34:47','2018-12-05 08:35:22');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `business_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `address` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `team` */

insert  into `team`(`id`,`project_id`,`role_id`,`user_id`,`item_id`,`business_name`,`contact_name`,`email`,`phone`,`fax`,`address`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,22,11,94,6,'Test','test','999@f9f9.gh','969696969699','262DDDD','Satelite New City Florida 980015',1,'2018-11-24 02:08:18',1,'2018-11-24 02:16:29','Y','N'),
(2,1,10,72,NULL,'Test','test','samirkhan.pathan@xceltec.in','7069655759','262DDDD','Ahemdabad Indianapolis Indiana 12345',1,'2018-11-24 04:20:04',1,'2018-11-24 04:20:04','Y','N'),
(3,21,10,72,NULL,'csd','sdc','samirkhan.pathan@xceltec.in','7069655759','262DDDD','Ahemdabad Indianapolis Indiana 12345',1,'2018-11-24 04:20:21',1,'2018-11-24 04:20:21','Y','N'),
(4,24,10,72,NULL,'dc','dsc','samirkhan.pathan@xceltec.in','7069655759','262DDDD','Ahemdabad Indianapolis Indiana 12345',1,'2018-11-24 04:20:55',1,'2018-11-24 04:20:55','Y','N'),
(5,25,10,72,NULL,'Test','asxasx','samirkhan.pathan@xceltec.in','7069655759','262','Ahemdabad Indianapolis Indiana 12345',1,'2018-11-24 04:21:16',1,'2018-11-24 04:21:16','Y','N'),
(6,1,11,94,NULL,'Garry Businesss','Gary Kirsten','999@f9f9.gh','969696969699','1237901723','Satelite New City Florida 980015',1,'2018-11-30 03:39:04',1,'2018-11-30 04:04:29','Y','N'),
(7,37,10,98,NULL,'Kirsten Business','Kirsten Business','kirsten@mailinator.com','+19812903809','19287345','Test Miami Florida 19283',1,'2018-11-30 04:06:11',1,'2018-11-30 04:14:05','Y','N'),
(8,37,11,21,NULL,'Businesss','Businesss man','testsubcontractor@gmail.com','56516','1243124124','Satelite Miami Florida 980015',1,'2018-11-30 04:11:30',1,'2018-11-30 04:11:30','Y','N'),
(9,37,11,47,NULL,'Business Name Test','Aiyub Panara','Abbas@mailinator.com','+19781209387','123787797','Test Miami Florida 18273',1,'2018-12-05 08:43:31',1,'2018-12-05 08:43:36','Y','N'),
(10,38,10,72,NULL,'Test','test','samirkhan.pathan@xceltec.in','7069655759','262DDDD','Ahemdabad Indianapolis Indiana 12345',1,'2018-12-06 02:27:56',1,'2018-12-06 02:27:56','Y','Y');

/*Table structure for table `user_access` */

DROP TABLE IF EXISTS `user_access`;

CREATE TABLE `user_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `access` text NOT NULL,
  `is_admin` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `user_access` */

insert  into `user_access`(`id`,`name`,`access`,`is_admin`,`status`) values 
(3,'General Contractor(GC)','[{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"architect\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"landlord\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"owner-information\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"item-work\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"project\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\",\"export-excel\",\"export-pdf\"]},{\"module\":\"project-budget\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\",\"export-pdf\",\"export-one-pdf\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"task-allocation\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"rfi\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"action-item\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"punch-list\",\"act\":[\"index\",\"add\",\"view\"]},{\"module\":\"lender\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]}]',0,1),
(8,'Sub Admin','[{\"module\":\"contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-budget-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"payment-invoice-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"change-orders\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-schedule-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"action-items-list\",\"act\":[\"index\"]},{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]}]',0,1),
(9,'Project Manager','[{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"project\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\",\"export-excel\",\"export-pdf\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]}]',0,1),
(10,'Superintendent','[{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\",\"export-excel\",\"export-pdf\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]}]',0,1),
(11,'Sub Contractor','[{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-budget-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"change-orders\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]}]',0,1),
(12,'Supplier','[{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"architect\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"landlord\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"owner-information\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"item-work\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"project\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\",\"export-excel\",\"export-pdf\"]},{\"module\":\"project-budget\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\",\"export-pdf\",\"export-one-pdf\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"status\"]},{\"module\":\"task-allocation\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"rfi\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"action-item\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]},{\"module\":\"punch-list\",\"act\":[\"index\",\"add\",\"view\"]},{\"module\":\"lender\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"view\",\"status\"]}]',0,1),
(14,'Architecture','[{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project\",\"act\":[\"index\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]}]',0,1),
(25,'New Test Role','[{\"module\":\"client\",\"act\":[\"index\",\"status\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\"]},{\"module\":\"architect\",\"act\":[\"index\"]},{\"module\":\"landlord\",\"act\":[\"index\"]},{\"module\":\"owner-information\",\"act\":[\"index\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\"]},{\"module\":\"item-work\",\"act\":[\"index\"]},{\"module\":\"project\",\"act\":[\"index\",\"add\"]},{\"module\":\"project-budget\",\"act\":[\"index\"]},{\"module\":\"state\",\"act\":[\"index\"]},{\"module\":\"city\",\"act\":[\"index\"]},{\"module\":\"task-allocation\",\"act\":[\"index\"]},{\"module\":\"rfi\",\"act\":[\"index\"]},{\"module\":\"action-item\",\"act\":[\"index\"]},{\"module\":\"contractor-management\",\"act\":[\"index\"]},{\"module\":\"punch-list\",\"act\":[\"index\"]}]',0,1),
(26,'test1','[{\"module\":\"client\",\"act\":[\"index\",\"update\",\"delete\",\"status\"]}]',0,1),
(27,'superadmin','[{\"module\":\"contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"sub-contractor-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"construction-contract-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-budget-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"payment-invoice-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"change-orders\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"project-schedule-management\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"action-items-list\",\"act\":[\"index\"]},{\"module\":\"client\",\"act\":[\"index\",\"add\",\"update\",\"delete\",\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"city\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]},{\"module\":\"state\",\"act\":[\"index\",\"add\",\"update\",\"delete\"]}]',1,1);

/*Table structure for table `user_devices` */

DROP TABLE IF EXISTS `user_devices`;

CREATE TABLE `user_devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_device_id` varchar(255) NOT NULL,
  `user_access_token` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=latin1;

/*Data for the table `user_devices` */

insert  into `user_devices`(`id`,`user_id`,`user_device_id`,`user_access_token`,`ip_address`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,56,'11','1sb9l8skrIpF8Hiu4Q0rmcWsHA0IgD2P','192.168.1.126',56,'2018-10-22 04:58:56',56,'2018-10-22 06:31:00','Y','N'),
(2,56,'12','zUV5e3Nq7dRPCL3ji4vxzpoZBfgUfuTU','192.168.1.126',56,'2018-10-22 05:07:26',56,'2018-10-22 05:07:26','Y','N'),
(3,56,'13','2ypR4oT1le_wOrKR6DkqcRWf-yt_9Fx-','192.168.1.119',56,'2018-10-22 05:28:52',56,'2018-10-22 05:30:49','Y','N'),
(4,67,'14','WuYAnHMBicdiBXk99vhgNtiiqAaUtEb_','192.168.1.126',66,'2018-10-22 06:34:49',66,'2018-10-23 05:53:57','Y','N'),
(5,72,'16','RJWvGBzFl3QnN2tztT4_3ZTO7_-21pdY','192.168.1.126',72,'2018-10-23 06:00:39',72,'2018-10-24 06:01:34','Y','N'),
(6,72,'16','FufJDFFzr8kqFPuRhHgwDtw7QX4FsbB8','192.168.1.126',72,'2018-10-24 06:18:29',72,'2018-10-24 06:18:29','Y','N'),
(7,72,'16','Ro3Co4UesIo5LTSncWPnhF5My6PGBpKS','192.168.1.126',72,'2018-10-24 06:18:33',72,'2018-10-24 06:18:33','Y','N'),
(8,72,'18','TJS1gOmzMd9Ti1mhOPi6zn_aC6OmwqfC','192.168.1.126',72,'2018-10-24 06:18:47',72,'2018-10-24 06:18:47','Y','N'),
(9,76,'0f1646d2-bddf-19a8-3f3c-3d9e2f040234','GB4M5c8GR0HejjdT533lu7L6bpkiIkJl','49.34.94.169',76,'2018-10-24 11:51:35',76,'2018-10-24 11:51:35','Y','N'),
(10,76,'e55896f6-9d66-49f2-11e6-a69c899177ad','mebZLTKWXmcCOQL6aLxvqQYwkVR7DBI5','49.34.90.174',76,'2018-10-24 12:50:26',76,'2018-10-24 12:50:26','Y','N'),
(11,76,'c73cf68e-60ff-a0a8-312e-8e93e43ee646','bCQEayZFGogzy44MFG46-VrzJ4p9Uq_z','49.34.90.174',76,'2018-10-24 12:51:20',76,'2018-10-24 12:51:20','Y','N'),
(12,76,'b3812609-ef21-3162-a430-3a3511c77876','7AuOS85PM23ON-SfYdks7tIBA163Fs0v','49.34.90.174',76,'2018-10-24 12:52:23',76,'2018-10-24 12:52:23','Y','N'),
(13,76,'d910d25e-c51e-8c40-179a-10489a985b62','OitTzIRNKhK3MIaDXxzWn-WfZ6E3Kd-W','49.34.90.174',76,'2018-10-24 12:53:26',76,'2018-10-24 12:53:26','Y','N'),
(14,76,'03e95450-82f6-700f-d6f4-fb3164597b30','qRU5Pf9gQR1zF617iuaIy5Q332p1lo4U','49.34.90.174',76,'2018-10-24 12:53:59',76,'2018-10-24 12:53:59','Y','N'),
(15,76,'0083165f-dfd0-1af4-bbc1-f0e32644c398','C_xabANHHfGZaNIOlYDl16ch7QwYeZP6','49.34.90.174',76,'2018-10-24 12:57:52',76,'2018-10-24 12:57:52','Y','N'),
(16,76,'710dfdb8-0d69-fd5a-822c-cbd3cbea02f1','0Hcs3xpN1VzK8FziZzdzGGxVQd-09BJa','49.34.90.174',76,'2018-10-24 12:59:10',76,'2018-10-24 12:59:10','Y','N'),
(17,76,'89e6f8eb-aaaf-050b-21c1-6b3f8f35d637','iO11wUGW8bT3P2CtD0hmIOezIKf22M52','49.34.90.174',76,'2018-10-24 13:01:14',76,'2018-10-24 13:01:14','Y','N'),
(18,76,'5bf27fb6-a35f-7597-a6b0-6e25210bb03f','gBOrxkCo1n0M8QN8811a1BOmMDWXXoO7','49.34.90.174',76,'2018-10-24 13:06:57',76,'2018-10-24 13:06:57','Y','N'),
(19,76,'64c5f2c6-0eb3-d64b-f7a1-003cf041626d','bqR2uqxvmZd240ct5sO-rK529A6HPdVd','49.34.90.174',76,'2018-10-24 13:12:24',76,'2018-10-24 13:12:24','Y','N'),
(20,76,'14972e0c-aa1b-7ebc-2f64-8a357ab01c42','LNG4nigqXBcYWtuKoUVgmbzkvK_3WEuw','49.34.90.174',76,'2018-10-24 15:37:57',76,'2018-10-24 15:37:57','Y','N'),
(21,76,'b263c7c5-90ac-d431-a766-71b6eee7a051','7R5jyJF1Hv_kzlHONA_ZBb5sGr1jT88V','49.34.90.174',76,'2018-10-24 15:42:02',76,'2018-10-24 15:42:02','Y','N'),
(22,76,'d805ed4a-0280-c639-2f07-3588ccc599f0','XaiNDb7TV8wDNsb4IFpoaogL85RCYh44','49.34.90.174',76,'2018-10-24 15:49:11',76,'2018-10-24 15:49:11','Y','N'),
(23,76,'c69e4c7d-09c5-5bc4-45f8-583e8924880d','0d7IpkF0CS2cBK8zj6Dw2tdjWBISRdmw','49.34.90.174',76,'2018-10-24 15:50:45',76,'2018-10-24 15:50:45','Y','N'),
(24,76,'a5da9ed7-6452-f56c-2440-167d20868db8','DIDesDwI21cdkUOMrWT8vmUzk4XJ8LMO','49.34.90.253',76,'2018-10-25 11:47:49',76,'2018-10-25 11:47:49','Y','N'),
(25,76,'54d521f3-f47c-7996-124b-46b354c42818','G5Vpoz2Qwr3RELWG6NLNKupmDnIohsTY','49.34.90.253',76,'2018-10-25 11:49:04',76,'2018-10-25 11:49:04','Y','N'),
(26,76,'bdc6d257-4c75-4501-17fb-95e7b82a4462','rTpsrwoPk7heXd0ebg65hOblpZ-wkQ9k','49.34.90.253',76,'2018-10-25 12:00:27',76,'2018-10-25 12:00:27','Y','N'),
(27,76,'6558e2d8-15ff-aa52-059a-f06c01a22b9c','3CltUzgijZ69N9MB3z_I-RNlB0aSRulC','49.34.90.253',76,'2018-10-25 12:05:48',76,'2018-10-25 12:05:48','Y','N'),
(28,76,'e2fd3c10-4d60-a1c6-acd4-9317f9e94e18','nusko5Bzz_tJTrgq8SdR11_j_1BbxDMY','49.34.90.253',76,'2018-10-25 12:13:50',76,'2018-10-25 12:13:50','Y','N'),
(29,76,'1110969b-4a90-dcbd-4b31-37e3a2c4a116','-xGfQRVdldeEJ2JCdTFR0RXR2PVSYRZK','49.34.90.253',76,'2018-10-25 12:23:25',76,'2018-10-25 12:23:25','Y','N'),
(30,76,'f44da524-53cc-25bb-03d2-4c5d89affa57','BgQ3jZ4tM-_Duy3bTSz9KReOwl-otxO6','49.34.90.253',76,'2018-10-25 12:25:53',76,'2018-10-25 12:25:53','Y','N'),
(31,76,'9434e636-b3d9-047a-7e47-4f6b7159c56d','tUaUinWIePOdMCudjhN3DkdI-BLBvLO-','49.34.90.253',76,'2018-10-25 14:22:20',76,'2018-10-25 14:22:20','Y','N'),
(32,76,'9b7706d4-ab39-2125-a65a-548246b11f94','SBUsgZcqBhghT0z0vM8qAYJaxmSMnPuv','49.34.90.253',76,'2018-10-25 15:11:03',76,'2018-10-25 15:11:03','Y','N'),
(33,76,'bfc18cbc-238b-8268-7346-7dcefcd68c9a','3483B7tmdMHgvojThN2YSrchk6Er6uCh','49.34.90.253',76,'2018-10-25 15:12:55',76,'2018-10-25 15:12:55','Y','N'),
(34,76,'8b1ceed9-4110-5d89-dba3-725caa62751f','09f_4RgK0zxsG5le0VGWIqXp1_54aul8','49.34.90.253',76,'2018-10-25 15:15:03',76,'2018-10-25 15:15:03','Y','N'),
(35,76,'9729a481-16db-ef6e-71d3-1d9b98750f17','CXMbaBXGbxEdbqGMUoZg__JzPtYWcb96','49.34.90.253',76,'2018-10-25 15:20:42',76,'2018-10-25 15:20:42','Y','N'),
(36,76,'6872dd81-71aa-1ff1-2ad3-c9029ba7b655','GthueJhEXitMzWxF2Wszgn-lzjuaTSfg','49.34.90.253',76,'2018-10-25 15:23:32',76,'2018-10-25 15:23:32','Y','N'),
(37,76,'09add6a8-127e-6678-2d05-2a394b796190','gX5MyVeS1txmYk7rhmpRiksOAMspNdk9','49.34.90.253',76,'2018-10-25 15:28:57',76,'2018-10-25 15:28:57','Y','N'),
(38,76,'68ded802-d8c0-44e6-a4e1-9cb2ce3d0b64','yfUB4jS0KfdOLfedR-gx1Ic_W6JMbUUW','49.34.90.253',76,'2018-10-25 15:29:48',76,'2018-10-25 15:29:48','Y','N'),
(39,76,'6f37f52a-f43f-2091-bbf7-a73fe95fd4ff','vBy2QtoKwHse_sc4e8Cw1PAoBQ4RkQsE','49.34.90.253',76,'2018-10-25 15:33:14',76,'2018-10-25 15:33:14','Y','N'),
(40,76,'61c93d86-cb21-c0cf-6852-64d66001f7dd','VsT8yjuthXfKxFNkLtFoIXEjeSa6vqyg','49.34.85.106',76,'2018-10-26 08:51:18',76,'2018-10-26 08:51:18','Y','N'),
(41,79,'86a802b3-b074-040a-1621-dd0b689a26f4','m8rquP7SFEnaPbx6FsTWNMs_El4YPtYd','49.34.85.106',79,'2018-10-26 08:54:40',79,'2018-10-26 08:54:40','Y','N'),
(42,79,'aeef5d9f-dec5-9e32-4425-ca7096de9ad6','pmcih3Fa5Hzlwwxc-1hd1Q44hM94eeXG','49.34.85.106',79,'2018-10-26 09:13:20',79,'2018-10-26 09:13:20','Y','N'),
(43,79,'3c84138e-3fc2-c8f1-25be-a729217c07ad','HAN3Z37zVlxkKjgQ8UzK7y5DoEm4Vkat','49.34.85.106',79,'2018-10-26 09:19:04',79,'2018-10-26 09:19:04','Y','N'),
(44,79,'dbcb5c03-edc2-005d-4b5b-18e5fc389d1f','9Puz8ydl347siKU-cwVSF3yR8fEAqnjB','49.34.85.106',79,'2018-10-26 09:19:45',79,'2018-10-26 09:19:45','Y','N'),
(45,79,'86b11dc4-ad45-ebae-0daa-8a9e3d820b19','_PBK8mB5u29T6IDNOEdITeBmNwf5K3__','49.34.85.106',79,'2018-10-26 09:20:22',79,'2018-10-26 09:20:22','Y','N'),
(46,80,'1836bec0-2d27-1944-ae0d-34898de83649','uqP8nWf4EdaKCQYTF1_Zmi0fxJkIl5BJ','49.34.85.106',80,'2018-10-26 09:32:22',80,'2018-10-26 09:32:22','Y','N'),
(47,80,'e2f8f283-0d61-3b8e-514c-1ac15848d18b','bjjz7ehzpaaSwoHD6wsYGstp5OCjvV8Q','49.34.85.106',80,'2018-10-26 09:33:38',80,'2018-10-26 09:33:38','Y','N'),
(48,76,'b6dffdfd-4231-f045-1a5a-ba5b266d15ed','HWw1CMpRb0Ikux6yad-AkdVZe6u2e5Kr','49.34.85.106',76,'2018-10-26 09:34:15',76,'2018-10-26 09:34:15','Y','N'),
(49,76,'a7370a56-5b4f-1fac-360d-854b87e81b63','yPV9MFXgFTdZ-HDazb8gLX-FQk5bpiSX','49.34.85.106',76,'2018-10-26 09:36:52',76,'2018-10-26 09:36:52','Y','N'),
(50,76,'264da642-90c0-068a-c997-71b184d8b513','Jxzwb3IljUFPs4xz3v3n9jiL1x7ODNlt','49.34.85.106',76,'2018-10-26 09:38:47',76,'2018-10-26 09:38:47','Y','N'),
(51,76,'46dd9ec9-1909-9a29-0699-a13c5a37742b','QM6J_T-3cTDEltuCuoIxip5g0Kn8I-xH','49.34.85.106',76,'2018-10-26 09:39:35',76,'2018-10-26 09:39:35','Y','N'),
(52,72,'f2880996-275b-071e-1d64-d9658fe3a6c8','ChbMrFzcan5SyZ-YVlzp2Q5dcvOjPAHZ','49.34.85.106',72,'2018-10-26 09:46:49',72,'2018-10-26 09:46:49','Y','N'),
(53,72,'678019ac-c375-9302-e0a2-dca0d910fcfc','OAw05_tDRiv3JYxfvasIr9h2TvR7zVlW','49.34.85.106',72,'2018-10-26 10:35:19',72,'2018-10-26 10:35:19','Y','N'),
(54,76,'aef90b4d-f44f-5317-d001-cb8a4974444a','sL5NuKfL3HOckSK1QFuBPGpDxwDdH4Se','49.34.85.106',76,'2018-10-26 10:41:50',76,'2018-10-26 10:41:50','Y','N'),
(55,72,'76bb7f3e-1abb-c374-6931-329ec167b6e0','CN60gPnItnZ82JZ8-kVKgqAsaR65PP_z','49.34.85.106',72,'2018-10-26 10:43:34',72,'2018-10-26 10:43:34','Y','N'),
(56,76,'07d11581-b9a1-72a8-798d-a12a1e0ab8cc','2szF45AAFGp4huWtCWhPriUeMbGjVY2w','49.34.85.106',76,'2018-10-26 11:22:28',76,'2018-10-26 11:22:28','Y','N'),
(57,76,'8cea31bd-2ab9-2929-6288-4e162e3b79da','S5Aloproh6AbU2DBz7gtihdYcc_SD9z-','49.34.85.106',76,'2018-10-26 11:24:13',76,'2018-10-26 11:24:13','Y','N'),
(58,76,'290df046-99ec-aee1-17be-142c447be8f3','RTW12u3pYSApZX04MKNHR8FyOBLH2g3P','49.34.125.45',76,'2018-10-26 12:35:10',76,'2018-10-26 12:35:10','Y','N'),
(59,76,'d8f0a5ea-fc67-d12a-55a8-fb3a596d9c00','H8hSQHt7dYi45b4JSjj0zNAId9JEcyit','49.34.125.45',76,'2018-10-26 13:21:43',76,'2018-10-26 13:21:43','Y','N'),
(60,76,'3fed19c8-5751-2bd3-7a03-0ccbbd7cf20a','JgjXKkVnYOudtrflistTFr97afdswQJG','27.109.11.26',76,'2018-10-26 23:25:00',76,'2018-10-26 23:25:00','Y','N'),
(61,72,'18','3C6S5UsY0F9Ne698oIbvtsUogdmhIOZM','192.168.1.119',72,'2018-10-27 00:37:08',72,'2018-10-27 00:37:08','Y','N'),
(62,82,'18','0_QSYDLvP6CsxA5QXtEA8LjEcdvecvpc','192.168.1.126',82,'2018-10-27 00:58:44',82,'2018-10-27 00:58:44','Y','N'),
(63,76,'64fe6d9d-ff7b-a27f-f0ef-4d2466fc84e6','wICbYz28k8PgOwd4za0ffOV5kBzNAp-f','49.34.102.250',76,'2018-10-27 02:24:06',76,'2018-10-27 02:24:06','Y','N'),
(64,76,'94953f6b-9106-7b6d-8cf9-5c45d12f9316','TvznwzIh7GsCO_d9Lto2ybCDNKvjOIyx','49.34.102.250',76,'2018-10-27 02:24:06',76,'2018-10-27 02:24:06','Y','N'),
(65,76,'65a8884f-2802-0781-90a3-d0d866b674b2','l35fpu63dj3hP607EXEfJU9gNKoZtmPj','49.34.102.250',76,'2018-10-27 02:24:12',76,'2018-10-27 02:24:12','Y','N'),
(66,76,'e3653b1f-029f-be09-4c02-4e1e981f18b7','43-FDEUBSmEOuKEKCGwgK9u7OLAgQbY2','49.34.102.250',76,'2018-10-27 02:24:13',76,'2018-10-27 02:24:13','Y','N'),
(67,76,'98fa0821-5221-17b4-281a-293797616134','O0sI8c0hiPi61levbKqtWsS8dOzRFG-E','49.34.102.250',76,'2018-10-27 02:24:13',76,'2018-10-27 02:24:13','Y','N'),
(68,76,'8901a1a0-01ac-97f6-d2de-97b1517d2825','nyjWZZcd4_nPSb0V4exNNvA_QE8UDR29','49.34.102.250',76,'2018-10-27 02:24:14',76,'2018-10-27 02:24:14','Y','N'),
(69,76,'0f89ae02-7fce-e5a7-515f-e85391707d19','N2T684bUIpu0EqLYCDWvrSkHw1vBXDpt','49.34.102.250',76,'2018-10-27 02:24:15',76,'2018-10-27 02:24:15','Y','N'),
(70,76,'d4bad7f7-06cc-62fe-0acb-04731e9b566f','Q5uJd-HsV6ZODANNNlSiLuXjdN7zMcFu','49.34.102.250',76,'2018-10-27 02:24:15',76,'2018-10-27 02:24:15','Y','N'),
(71,76,'82dc570d-bbc2-e5a6-41cb-930e9234d09c','BFWYiWpw6V7gyzj1-56cJsEZvPjFV9aU','49.34.102.250',76,'2018-10-27 02:24:16',76,'2018-10-27 02:24:16','Y','N'),
(72,76,'67eea304-1887-bdbc-1dd3-46fad166d116','l6wZvyEspAypNR_Lmk85wPDdtKxfySIP','49.34.102.250',76,'2018-10-27 02:24:16',76,'2018-10-27 02:24:16','Y','N'),
(73,76,'3e51f10e-3ba0-1445-5f23-095f9f5beb8b','Eqr40zvQjDcqpzkrJ_1wRnDnrYMZpDYl','49.34.102.250',76,'2018-10-27 02:24:18',76,'2018-10-27 02:24:18','Y','N'),
(74,76,'1115690c-fccb-8074-92ce-d22f2bfa1413','g24194m-nXPKzdzaZP8LV8cx76dvSHIz','49.34.102.250',76,'2018-10-27 02:24:19',76,'2018-10-27 02:24:19','Y','N'),
(75,76,'7878a9f0-e7a2-745f-0172-1be4e74eb8f3','qPvpjT7FqfSVgEXFu8gnlJaGJM1NipTA','49.34.102.250',76,'2018-10-27 02:24:19',76,'2018-10-27 02:24:19','Y','N'),
(76,76,'982e9e4d-fe79-79f9-b2f4-6c31b84b6a60','0QvooVCm1wM6QCdgNU786fgAxaiVowS4','49.34.102.250',76,'2018-10-27 02:24:20',76,'2018-10-27 02:24:20','Y','N'),
(77,76,'c3cd1e4d-4f3b-5cbc-3f70-2e0cad0b2a64','LqxLCWQnik0KwAerz2GjbbGYq9aJzD5X','49.34.102.250',76,'2018-10-27 02:24:20',76,'2018-10-27 02:24:20','Y','N'),
(78,76,'faa584d0-1a53-87bc-5434-41f5f0932e98','8zIR1ZvacuO4-JCH0y7PIKCTd0zkCilX','49.34.102.250',76,'2018-10-27 02:24:20',76,'2018-10-27 02:24:20','Y','N'),
(79,76,'27a88b81-4899-92f2-dbb9-faf99c5a5f79','EbZeJJQvMC66WYSmMNjojXDNUNk2JRU8','49.34.102.250',76,'2018-10-27 02:24:21',76,'2018-10-27 02:24:21','Y','N'),
(80,76,'e15e118a-d139-e820-0b1d-0360f09d391f','CdzrZKGv7fg3RtA4lacdRpSMr9eVRPnJ','49.34.102.250',76,'2018-10-27 02:24:22',76,'2018-10-27 02:24:22','Y','N'),
(81,76,'7e0b315f-fbb2-08e3-eca6-c5daf638bb48','KIhxUs6PkdQoM88JCeZntlQzDdeja4lJ','49.34.102.250',76,'2018-10-27 02:24:22',76,'2018-10-27 02:24:22','Y','N'),
(82,76,'189b6789-73ca-6a23-cef6-155b576881dd','f3SQ4cziqjlFfFMwNaPTfyRpeqggGU-u','49.34.102.250',76,'2018-10-27 02:24:23',76,'2018-10-27 02:24:23','Y','N'),
(83,76,'5c8349ab-5c27-60c9-87ea-15b54ef58e28','gQ7gZh5IBRGPz3ecrDBQwWsuLITsbnGd','49.34.102.250',76,'2018-10-27 02:24:23',76,'2018-10-27 02:24:23','Y','N'),
(84,76,'75a9ce28-8067-0273-dc89-6083950b4731','z9L-ty8vlZPFxiH237GI8-vh8ODwEO3I','49.34.102.250',76,'2018-10-27 02:24:23',76,'2018-10-27 02:24:23','Y','N'),
(85,76,'ee472f3b-6be4-f616-4413-88e014cc9a4d','1gU0C1-rfxTLPk33L3wN5vBR54YLF99j','49.34.102.250',76,'2018-10-27 02:24:24',76,'2018-10-27 02:24:24','Y','N'),
(86,76,'bf669b85-c24b-5838-9a68-a0cbb7c8bb8f','zSujGJN1OLtMSOpVh2ICohF21ZDRcZ6l','49.34.102.250',76,'2018-10-27 02:24:24',76,'2018-10-27 02:24:24','Y','N'),
(87,76,'a791c84e-f290-f876-e0a5-1890db4168bb','tE-uxD63j-Ztbio8yF_dPxiq_UmQK60e','49.34.102.250',76,'2018-10-27 02:24:24',76,'2018-10-27 02:24:24','Y','N'),
(88,76,'bdf311ae-c1b5-64f6-14f9-1de863d87926','k0cw7Pps_Or1YMsKZL21zkMXP9qD5Opb','49.34.102.250',76,'2018-10-27 02:24:24',76,'2018-10-27 02:24:24','Y','N'),
(89,76,'8466296b-e682-2259-dec8-9f8d3b8e30f9','DIGDTzyaOjtIKaiHpC113_Za4ioS-idE','49.34.102.250',76,'2018-10-27 02:24:25',76,'2018-10-27 02:24:25','Y','N'),
(90,72,'824d6487-e261-f60a-9299-516d0d26436f','RJoAzosDzMzuKkcT7ouS0gALYfAJJEo9','49.34.120.64',72,'2018-10-27 06:39:11',72,'2018-10-27 06:39:11','Y','N'),
(91,72,'2da4f943-3d06-2f4f-d6fa-604eb0b7997e','gO2X7ndigR8fFVwyYraNURQgkI0Yo4Kt','49.34.120.64',72,'2018-10-27 06:39:31',72,'2018-10-27 06:39:31','Y','N'),
(92,72,'a808ed3c-7181-5ce7-638a-b74a2a344b27','xuKfnZwpnizaMijeoO70wnSYN743LVJu','49.34.120.64',72,'2018-10-27 06:40:24',72,'2018-10-27 06:40:24','Y','N'),
(93,72,'9cc1e6ea-4c55-5433-1fc1-a5141587030e','PZ9-vYW6jzDu6zYiBn3xLsv1-e4vSBWQ','49.34.120.64',72,'2018-10-27 06:42:59',72,'2018-10-27 06:42:59','Y','N'),
(94,76,'47d858df-2da2-86fd-ec30-2ed49617b088','LFE4yRp0ALFR41-QlvFpZtTf6NhedM91','49.34.120.64',76,'2018-10-27 07:01:14',76,'2018-10-27 07:01:14','Y','N'),
(95,72,'a8ef5326-2946-0b67-b4a6-737956f9d767','6j1dzHCOniDxvkefg2NPzk3f9KU8rjI4','49.34.120.64',72,'2018-10-27 07:03:19',72,'2018-10-27 07:03:19','Y','N'),
(96,76,'cd9646a5-c315-9381-7275-3f9d3884c2ae','Xln1XBfnW93lFhajABjFMb7UoZmPcumb','49.34.120.64',76,'2018-10-27 07:04:26',76,'2018-10-27 07:04:26','Y','N'),
(97,72,'4ee7a1b2-bde9-68c9-244c-cfd7f47ed9cd','VYPrGchyRR7n6WEbMdJBZg92XxDxIcqi','49.34.120.64',72,'2018-10-27 07:13:09',72,'2018-10-27 07:13:09','Y','N'),
(98,72,'ef57e012-4f4f-669e-d248-dad1368800a8','MLS47M2_jWieSZlAEnPN1eHQmWspGVfq','49.34.120.64',72,'2018-10-27 08:11:42',72,'2018-10-27 08:11:42','Y','N'),
(99,72,'9f7f0246-17ed-0263-2f02-5d9b37405751','qFuTsblSvHP-ADULlZ6QKzlHb3P2etlB','49.34.120.64',72,'2018-10-27 08:12:28',72,'2018-10-27 08:12:28','Y','N'),
(100,72,'e9893be3-8c94-fa36-61e0-ddb9afb38667','KM6QL8W_S9S9sQGGqmQCDl-aEb7_ooiU','49.34.120.64',72,'2018-10-27 08:16:15',72,'2018-10-27 08:16:15','Y','N'),
(101,72,'d19e4106-7404-20b3-711d-db0146aa93e0','O8M-I4bYB5hRaC4-1srRGRhMiyqhh2I5','49.34.120.64',72,'2018-10-27 08:17:25',72,'2018-10-27 08:17:25','Y','N'),
(102,72,'7d4e49ca-737e-6646-4a90-56a512c18a9a','G73QULAd4fAAhrq7k6pZxKwnHopwXKCK','49.34.120.64',72,'2018-10-27 08:23:47',72,'2018-10-27 08:23:47','Y','N'),
(103,72,'23336346-4456-2d0a-4bbb-2aedcd4dfee9','eLdR9hGNn3RlLB9TXvcSvIJ6nzFKEYTs','49.34.120.64',72,'2018-10-27 08:26:14',72,'2018-10-27 08:26:14','Y','N'),
(104,72,'637725b5-b32d-68cd-41e8-f48b37b0648f','FsI4wzuu0KjVSEELEW4SolagO-sAA-on','49.34.120.64',72,'2018-10-27 08:29:25',72,'2018-10-27 08:29:25','Y','N'),
(105,72,'724bbe25-9f06-67bb-90b9-cb7b4fa0797d','6Vv0Oem-YMT_jn1O8VqrV-V-E5lY6TxH','49.34.120.64',72,'2018-10-27 08:31:20',72,'2018-10-27 08:31:20','Y','N'),
(106,72,'630b5a5b-f516-9f7c-0aaa-147407cf0cfd','--McXYaaUNnWcpBz2YKdDfxKXLbKrOur','49.34.89.120',72,'2018-10-27 08:35:12',72,'2018-10-27 08:35:12','Y','N'),
(107,72,'d7b76d2b-5947-5360-047b-26485bb2cb4c','O5hHKb3II4gvZci5ueVDXf5Rf4-o-Psg','42.106.45.43',72,'2018-10-27 09:05:55',72,'2018-10-27 09:05:55','Y','N'),
(108,72,'ec048406-4394-b33b-8271-d81552af8edd','VLyShfoAEpJ8iVBEPVN-BdSG_Wfnrq3a','192.168.1.132',72,'2018-10-27 09:10:13',72,'2018-10-27 09:10:13','Y','N'),
(109,72,'b1722d7d-6a63-e623-57f1-d2c61ff5ff36','ETPJ2mel83lhCw_RPdNIkJG8t0xgexiz','49.34.64.112',72,'2018-10-27 09:33:46',72,'2018-10-27 09:33:46','Y','N'),
(110,72,'3f44832d-2ff3-645b-aa1d-7ae398fea3e7','ZEYB0vKBlqGjWnguvWw1ewQ8cPHD4n4K','49.34.112.61',72,'2018-10-27 11:32:11',72,'2018-10-27 11:32:11','Y','N'),
(111,80,'bb06dcf3-8610-3fe1-ea42-f40e0ce3c082','4jw3ZybLoSynDciuMT18mSkk7ktjq79l','49.34.112.61',80,'2018-10-27 11:49:34',80,'2018-10-27 11:49:34','Y','N'),
(112,72,'6c6f6a69-eeb6-0086-2fa8-5be20e04c666','RUnY4Rpv2x63fwlK5a_t6yZIQG3h-i9g','49.34.112.61',72,'2018-10-27 12:01:16',72,'2018-10-27 12:01:16','Y','N'),
(113,72,'2e384751-8cd6-de96-8956-b9d3b0ce2b89','RFpOtJsYkUShj8ZJwaleuOxf1TweQY9z','49.34.112.61',72,'2018-10-27 12:01:52',72,'2018-10-27 12:01:52','Y','N'),
(114,80,'aa9c3af0-550b-d67f-188d-5dc5a9c7a10c','nuA_oveYuh5J2ihxXGYUVGekbIax1vck','49.34.112.61',80,'2018-10-27 12:32:33',80,'2018-10-27 12:32:33','Y','N'),
(115,72,'78ed1ce6-9f3b-adfd-94bc-3928f334da13','smZGihusz9RqetnAGcDg73HOHsVgs1eg','49.34.112.61',72,'2018-10-27 13:57:13',72,'2018-10-27 13:57:13','Y','N'),
(116,72,'5290471f-d8a6-af19-f80d-38d487984461','n2BqXH3kzcf1eBIs0onmcnDlOdSyK1Ek','49.34.112.61',72,'2018-10-27 14:01:40',72,'2018-10-27 14:01:40','Y','N'),
(117,76,'f2a48fb9-1fa2-7d00-6771-415a2eedd859','Vi1jztEHqctJ99xTMJpzygduVEzSW6sO','49.34.112.61',76,'2018-10-27 14:02:30',76,'2018-10-27 14:02:30','Y','N'),
(118,72,'31a170e2-aed6-f13f-68e8-545e1858143f','tL0qK8KJiDOzApnSjRruzrloQgB4KDDa','49.34.112.61',72,'2018-10-27 14:26:47',72,'2018-10-27 14:26:47','Y','N'),
(119,76,'787442e4-07ee-944d-79af-df29a426526d','YzGSOKtEsvZC1JQ8vGw52kSnaORPp7aN','49.34.112.61',76,'2018-10-27 14:41:48',76,'2018-10-27 14:41:48','Y','N'),
(120,72,'95fcbd11-2e24-2734-55e7-1c38cf08294e','IZI0Q4IAJgbZoIrDLGo-SHtcpfESMCf6','49.34.112.61',72,'2018-10-27 14:44:53',72,'2018-10-27 14:44:53','Y','N'),
(121,72,'d4415de2-4617-f2a8-3815-de9f75598372','LNFXiEf5kg_ta0Qh6hwoYPGC-YdfWVCW','49.34.112.61',72,'2018-10-27 14:45:30',72,'2018-10-27 14:45:30','Y','N'),
(122,72,'c8bac6c4-716d-4b7c-5e47-4486552eb160','R1wok_IkI0ETGh1sJnbcFFwRS9ugZZPM','49.34.112.61',72,'2018-10-27 14:53:20',72,'2018-10-27 14:53:20','Y','N'),
(123,76,'13194346-2eb0-3ec5-af1c-8f70a3d6b95a','iTzprBqVl5e3HGek0QLfIsmZ0uQvDLZ-','43.250.158.52',76,'2018-10-28 06:12:16',76,'2018-10-28 06:12:16','Y','N'),
(124,76,'8306e4cd-f4c9-ba13-278a-61d5076cb06e','-IlSqMI-EKuZjPoQJd7XlBW_40CtikS1','43.250.158.52',76,'2018-10-28 06:13:40',76,'2018-10-28 06:13:40','Y','N'),
(125,72,'e0c5d61e-518f-b76d-879c-14c625a5cd2c','iVfhgtvWnuOGpGYdhD0FzadG1yFkYKgx','43.250.158.52',72,'2018-10-28 06:17:23',72,'2018-10-28 06:17:23','Y','N'),
(126,72,'ab4ae268-c469-dfaf-ab99-884cbaa9bab0','LNrVoncPj_XNPdSrR8dafgscUU5E81_7','43.250.158.52',72,'2018-10-28 06:21:32',72,'2018-10-28 06:21:32','Y','N'),
(127,72,'b232ce74-432b-a82b-9278-4515935be4b5','2UjOhN0z_HG9hkzKZMbtZYryjGaYfTED','43.250.158.52',72,'2018-10-28 06:25:23',72,'2018-10-28 06:25:23','Y','N'),
(128,72,'29a90261-d717-798d-2d77-7fa60140d965','so7AkM3rSaEMuNLOApSPxFVxvsbOcmQI','192.168.1.132',72,'2018-10-29 00:42:35',72,'2018-10-29 00:42:35','Y','N'),
(129,72,'56984d7e-08b2-1a1d-10e2-6397f7263b61','XLMLZTJ_iUBmGUYV3CdJykcW4Dmu4dis','157.32.213.133',72,'2018-10-29 01:26:06',72,'2018-10-29 01:26:06','Y','N'),
(130,76,'72c61692-d926-45ac-1f3b-4d465342f618','wbbe8lt0ByV4Uab3LLkDA1O0Fx4rCPf5','157.32.213.133',76,'2018-10-29 01:27:42',76,'2018-10-29 01:27:42','Y','N'),
(131,72,'e7f668cc-1298-e8a6-6bb8-ca097c12a6f2','qLba9HpI4vrXEIwWMsWoKlvz4F-zWLVO','192.168.1.132',72,'2018-10-29 09:58:21',72,'2018-10-29 09:58:21','Y','N'),
(132,72,'9671ecc5-0284-c8b0-0a7c-c4b91d7d1b9f','ojQGiIeC-reoqvzPmwW_E0w4LScNfeLF','75.115.157.150',72,'2018-10-29 10:26:20',72,'2018-10-29 10:26:20','Y','N'),
(133,76,'e4ee552d-5720-ff8e-9643-19316104f363','8ik0Ufy52FNJKt5pDnrxLkqeFqswOxEf','157.32.199.187',76,'2018-10-29 11:22:50',76,'2018-10-29 11:22:50','Y','N'),
(134,80,'6cfdecae-1252-47c3-327b-0a380a9d03d1','p0IARRjNOYCoI_zV58X-TtQPK4oyDY1V','157.32.199.187',80,'2018-10-29 11:26:48',80,'2018-10-29 11:26:48','Y','N'),
(135,79,'0b34f95d-cc73-347d-9549-c22bdb749bdf','bef_5DhkTxuaEEdMm4fJimL_Lw71RVPv','157.32.199.187',79,'2018-10-29 11:35:34',79,'2018-10-29 11:35:34','Y','N'),
(136,79,'4b9b1d04-1f65-af57-d057-a50eeef82fc6','cesodAV-Btp22qf15pTz8vtnrJNyDnAK','157.32.199.187',79,'2018-10-29 11:38:09',79,'2018-10-29 11:38:09','Y','N'),
(137,72,'557f5371-26d1-ce26-004b-0b8511f3e89b','-a6uZnuAscRs2NUdj5TcZAWGHFA1aZp2','157.32.199.187',72,'2018-10-29 11:46:13',72,'2018-10-29 11:46:13','Y','N'),
(138,72,'0ca42169-514f-ab7f-ccff-6470a3195486','7puqLWXrRg5UP-DIW6xK8EDhdnUYkDSr','157.32.199.187',72,'2018-10-29 11:52:47',72,'2018-10-29 11:52:47','Y','N'),
(139,72,'75d9c2b6-a0de-87d5-7073-aa8daf665ebd','1TFLuICY6Wyv1n4tKveTxDKmdBfaas0i','157.32.199.187',72,'2018-10-29 13:18:19',72,'2018-10-29 13:18:19','Y','N'),
(140,84,'9eeab14d-e3ff-c8cb-dbf4-3d561ee627ac','OBojhvZZ-lwnDE5FdL2Y8suB99VSEdbk','192.168.1.154',84,'2018-10-30 00:52:31',84,'2018-10-30 00:52:31','Y','N'),
(141,84,'b1770ad3-5143-c487-7807-61338a9fd53a','AunEFEJL5aCBCrw7SpFvotOT3pbkeba7','192.168.1.237',84,'2018-10-30 00:56:34',84,'2018-10-30 00:56:34','Y','N'),
(142,4,'18','46m7RIRXw0xXVebG5d7-QP6qKYZfqjfa','192.168.1.119',4,'2018-10-30 01:19:14',4,'2018-10-30 01:19:14','Y','N'),
(143,84,'27d08a1a-0670-5a77-2776-f30c91861ed3','gUke0Nu-pQiaze4MTZzUxV3wqM6aqj3a','192.168.1.237',84,'2018-10-30 01:43:48',84,'2018-10-30 01:43:48','Y','N'),
(144,84,'650f65ca-847c-cc68-34f7-22d79fcd827f','5F0wFyyd81uIW1bl_B4gvcXmPxJbNsKr','192.168.1.154',84,'2018-10-30 01:45:06',84,'2018-10-30 01:45:06','Y','N'),
(145,84,'8c257d89-97fc-91e8-64e0-8879863a2683','hv5I4uMT5YSK9COu5X5rHXKhmPtaYB2P','192.168.1.154',84,'2018-10-30 01:46:31',84,'2018-10-30 01:46:31','Y','N'),
(146,84,'24c37075-427c-a5ad-a2cf-6549f37efe5c','Uqhy43liQB4dYRzqWXK5kLaofBZwSyoq','192.168.1.237',84,'2018-10-30 01:46:48',84,'2018-10-30 01:46:48','Y','N'),
(147,84,'f81c55d2-8560-9e84-3276-25b1da3a04c2','nBigqErqrwxvvmvrkMfdoYmtZyr7UxR3','192.168.1.237',84,'2018-10-30 01:47:07',84,'2018-10-30 01:47:07','Y','N'),
(148,84,'110a6060-cdd3-c764-3861-ed52ecd20d16','pKCqZAUoRtwpLFpUhO4Yc1wSC1YZfhMp','192.168.1.237',84,'2018-10-30 01:51:15',84,'2018-10-30 01:51:15','Y','N'),
(149,76,'84090075-d1fc-6f84-e5b2-bb0246cbe371','PWZYvsWZ3EeUgHCUkEaMIISzdcM63BJH','10.254.82.81',76,'2018-10-30 12:46:41',76,'2018-10-30 12:46:41','Y','N'),
(150,72,'9688b079-604a-9947-8b78-5c790df6d940','oRMa4efkm-PeMN4D7nSQm4ZDIahj-eNp','10.254.82.81',72,'2018-10-30 13:18:52',72,'2018-10-30 13:18:52','Y','N'),
(151,72,'deb70c45-2182-8057-cff3-94490141b153','ZUWwZ47Geo8xcS_1_5u2N_KQWDVJsab3','157.32.201.21',72,'2018-10-30 23:29:18',72,'2018-10-30 23:29:18','Y','N'),
(152,72,'62b8f29c-3505-adda-3597-a5b226c5011c','g72IRfX9Oo4s245V_J1rgGcBwk3WvFC1','157.32.201.21',72,'2018-10-30 23:37:16',72,'2018-10-30 23:37:16','Y','N'),
(153,72,'9c60980d-0ffe-3eb5-df4f-0b8d8dcf87e0','EZ4DnIFFs-UMVrhiQqbdxUH_aeQq9ipj','192.168.1.132',72,'2018-10-31 01:26:47',72,'2018-10-31 01:26:47','Y','N'),
(154,72,'abcc8702-e9e5-4b0a-2ece-458719569015','q5tYJkLvnahV6jlCqVnP6dYBNWEaS54Y','157.32.253.105',72,'2018-10-31 01:29:17',72,'2018-10-31 01:29:17','Y','N'),
(155,72,'3af8d721-1206-be32-49b5-e2b5d7c6eea9','dQKNaxsGoey2Bmq3Rc_0kJp0AFisrmq9','157.32.253.105',72,'2018-10-31 01:29:44',72,'2018-10-31 01:29:44','Y','N'),
(156,72,'a9a9367d-685b-249c-901f-4d5e9c930ec2','oAipYPpdSc2E79sGT8JNmF0Dkn2hGHAr','157.32.235.107',72,'2018-10-31 09:08:40',72,'2018-10-31 09:08:40','Y','N'),
(157,72,'13db453b-0a26-1347-f3b1-73dc56e010b0','2GXynRb-4dS3hrFelaQRMwhhRie_9l8F','157.32.235.107',72,'2018-10-31 09:08:40',72,'2018-10-31 09:08:40','Y','N'),
(158,72,'20bc9b40-9256-f778-ed72-f0df2dd4302c','3O8he3LgYdwV8a3sry487wWBXE1-AGal','157.32.235.107',72,'2018-10-31 10:45:54',72,'2018-10-31 10:45:54','Y','N'),
(159,76,'50790f19-853c-aaed-56d6-d639d1af8ab9','4X2uUGo3Z8JvM8srzApvHtXvsQa9WUVe','157.32.235.107',76,'2018-10-31 10:46:20',76,'2018-10-31 10:46:20','Y','N'),
(160,72,'48240cdd-9897-7b18-3f10-5bd23d4bf93d','69RvER83HybydOclgTdVt5rd9xvM7Poh','157.32.243.171',72,'2018-10-31 11:28:53',72,'2018-10-31 11:28:53','Y','N'),
(161,72,'c65c6af4-e92b-18c2-0f0c-0065631ce6b6','IQyYQUn9kJDO2afxfw5KQZVv2dDYrwNA','157.32.243.171',72,'2018-10-31 14:55:28',72,'2018-10-31 14:55:28','Y','N'),
(162,72,'d657112f-ffb3-1587-85aa-196f3c0e22ca','gS9K5D3zDkkLoYvKULIJyFWf34ZdbItH','157.32.243.171',72,'2018-10-31 15:15:58',72,'2018-10-31 15:15:58','Y','N'),
(163,72,'f8c9b2b7-4683-c61b-6bf8-a1baf55f2eaa','y2PFOGlA_NN61xDBhxvFBIYbQfuxcg0v','27.109.11.26',72,'2018-11-01 01:31:13',72,'2018-11-01 01:31:13','Y','N'),
(164,72,'1faf455f-4e6a-09e3-f3d3-ebcad6192087','vOAAlV8Jt0g5eAVwlZXKgIMtIS0mI9qX','27.109.11.26',72,'2018-11-01 01:31:14',72,'2018-11-01 01:31:14','Y','N'),
(165,72,'af75c8ef-0d60-1f9c-8936-248e8669c877','Y6uKuqa9OaD2NCmGPhxqYRQKZAmD00ie','27.109.11.26',72,'2018-11-01 01:31:14',72,'2018-11-01 01:31:14','Y','N'),
(166,72,'448bd2c9-c8a8-b3a0-c3d9-5b27ebcde5de','mQd_Z2TEYR1WRBEhSJTNSw7U7glkofl0','27.109.11.26',72,'2018-11-01 01:31:14',72,'2018-11-01 01:31:14','Y','N'),
(167,72,'98bd1275-e9bc-bdfc-57e4-538ef5169845','lwBdV7mcQvlTIs3CsYGsRl63srYo5zqE','27.109.11.26',72,'2018-11-01 01:31:15',72,'2018-11-01 01:31:15','Y','N'),
(168,72,'a2c0d334-4ea4-17cd-f3b7-dac0a5fd0116','XQbnF8Wq-OVrdSf8s2bxkBGPuakauyR7','27.109.11.26',72,'2018-11-01 01:31:15',72,'2018-11-01 01:31:15','Y','N'),
(169,83,'d15b89c4-b906-2952-0e1a-5ae91450209d','VUfJzGIWR7rYjG0qAQpc6wKvlXHm_Cuc','192.168.1.202',83,'2018-11-01 02:11:51',83,'2018-11-01 02:11:51','Y','N'),
(170,83,'90d56703-ea5d-8c6a-7f89-db0136c8bd7f','hLNahD9VOCBc6nrwrQ_mIbV6P-LYPUHf','192.168.1.154',83,'2018-11-01 02:16:09',83,'2018-11-01 02:16:09','Y','N'),
(171,83,'b71c5395-bb09-9c71-1029-471242e88186','3NF2GE_1fDT2oI57U7efGaQ45BQ0Qu7a','192.168.1.202',83,'2018-11-01 02:39:40',83,'2018-11-01 02:39:40','Y','N'),
(172,72,'3119cedc-d10f-f99f-f513-2952174b0ccd','OSCYzRvtn5f2i_X5llyPFmh_MgDOFXEi','157.32.249.233',72,'2018-11-01 04:18:25',72,'2018-11-01 04:18:25','Y','N'),
(173,72,'82a5a380-b8e7-cf96-387f-7f0ec0d311f9','-ee5usM0JgoU5pVgZz7ClnZCtDWH3vzI','157.32.249.233',72,'2018-11-01 04:18:26',72,'2018-11-01 04:18:26','Y','N'),
(174,72,'20723d43-e00c-6945-ee77-7b18e28d7c1a','Vnisoz464Cn-0hWRMlkOlY2ZEdAy-g2d','157.32.243.151',72,'2018-11-01 11:47:44',72,'2018-11-01 11:47:44','Y','N'),
(175,72,'42b0dc19-8974-1c3d-07e4-86b83f20a4e0','p1oObq0-PrW8YQyVuYSG67SetLMvKJdL','157.32.243.151',72,'2018-11-01 11:47:44',72,'2018-11-01 11:47:44','Y','N'),
(176,72,'28f769ef-8b29-dd58-1cc7-ff6772acdd7f','6xLae0Y3-u1O_y--QUtohc32eYXeKfv1','10.254.81.238',72,'2018-11-01 12:20:09',72,'2018-11-01 12:20:09','Y','N'),
(177,72,'8a5f3ec4-0a8b-40d8-5a6e-66f8a6888568','SIs5Ytw52SMegIOqgQUnEYCQ-IO4mTxC','157.32.210.132',72,'2018-11-01 23:10:35',72,'2018-11-01 23:10:35','Y','N'),
(178,72,'bd9a8cff-f3af-1c27-58d2-dfd7effafa33','CDhZlnxjSNbKs1WLzRfPk1HMtkiLexuh','27.109.11.26',72,'2018-11-02 00:16:14',72,'2018-11-02 00:16:14','Y','N'),
(179,72,'8575cc66-2096-7375-c720-8ac2e12612c2','b7e9lqRyuBOp08fFfRIcNPNAxBBuKd3G','49.34.138.186',72,'2018-11-02 22:11:56',72,'2018-11-02 22:11:56','Y','N'),
(180,72,'cec3a9ab-1588-30d5-b4d1-2c46ee73d7c0','aL19sV6Mn_jHHalCqNxT9e_u4LPe_ZQr','49.34.130.89',72,'2018-11-05 12:31:59',72,'2018-11-05 12:31:59','Y','N'),
(181,4,'18','iPsRXLh_4OpGkEi2b6aXVHdLuVJV4WpO','192.168.1.123',4,'2018-11-06 01:55:27',4,'2018-11-06 01:55:27','Y','N'),
(182,72,'f5ffde32-7319-0e2e-1f56-bbfac5346097','3JbvLVJxxWyngOg2XeGErCDgyzeu3d5u','49.34.187.97',72,'2018-11-06 23:39:18',72,'2018-11-06 23:39:18','Y','N'),
(183,72,'a36033f9-9bb9-b5f8-a6a5-3eab15c87ce6','Jhoi5ih630eyHfLf5udqubNy9wH3M3uG','49.34.167.100',72,'2018-11-07 08:29:34',72,'2018-11-07 08:29:34','Y','N'),
(184,72,'285f61c3-c847-56d1-ac53-4aff83683e80','cSIpIS7GcLJqGEbnfydPJZB2yVZ_favn','49.34.167.100',72,'2018-11-07 08:29:35',72,'2018-11-07 08:29:35','Y','N'),
(185,72,'0a1675ba-f767-ec12-09af-5cbb4aa4e232','7_SJ5PJ6VEpur1glR7u4Td53gKbA6nmO','49.34.167.100',72,'2018-11-07 08:32:17',72,'2018-11-07 08:32:17','Y','N'),
(186,79,'bb1517ff-e29a-b798-1454-e5cc01eeb40c','2Bj7FKK7Vwoa8nWT6zmgT0wL-sUQXRty','49.34.167.100',79,'2018-11-07 08:34:25',79,'2018-11-07 08:34:25','Y','N'),
(187,72,'b04325f8-7326-12c8-3612-18e273c32c0b','kMb7hIQROAKaucFkyn4OgPUADp1jS6Sw','49.34.167.100',72,'2018-11-07 08:35:44',72,'2018-11-07 08:35:44','Y','N'),
(188,72,'467bf933-0351-dcf6-5414-d3d578690332','w6fPOlGBFI-i67XSeOzpc9l1Noi4sJ9p','49.34.167.100',72,'2018-11-07 08:39:38',72,'2018-11-07 08:39:38','Y','N'),
(189,72,'254b814d-a0ab-6ed7-43f9-fdeb5919dd9b','Hu4BYbPxZYRFuHbECpw1IjmEpdbQ1KJv','49.34.33.44',72,'2018-11-11 04:11:56',72,'2018-11-11 04:11:56','Y','N'),
(190,72,'22d12e21-202d-e079-32ed-1d6b9fa0ac3c','SJ6PSA8FYjqTYO03OwHwsz0pXvxy20l5','49.34.143.149',72,'2018-11-11 05:39:59',72,'2018-11-11 05:39:59','Y','N'),
(191,72,'a7daede6-789a-811b-3685-a32b2ca2da7b','-_Q94SPzUCmeXdgFCx4OLDGaGx2avhVo','49.34.143.149',72,'2018-11-11 06:21:29',72,'2018-11-11 06:21:29','Y','N'),
(192,72,'5a580f47-a114-ef18-f362-a983d4a1b751','5ew15Py8ku3mM7l7teLvAqHVpOC048Ov','49.34.165.194',72,'2018-11-12 09:08:15',72,'2018-11-12 09:08:15','Y','N'),
(193,72,'fb380a4d-b309-e3bf-1d8d-14a6448a2bd8','oxiq-5I0yTSf7LpAAIq9sOzJ_-RDv3_-','49.34.165.194',72,'2018-11-12 09:09:54',72,'2018-11-12 09:09:54','Y','N'),
(194,72,'22dd9dbf-69da-98d6-9491-ae523c889442','NIgSCU2f8Q6s-hovc1SFy9ocdHvHDLua','49.34.165.194',72,'2018-11-12 09:11:56',72,'2018-11-12 09:11:56','Y','N'),
(195,72,'5b3287d6-f7b4-34aa-98fe-8ab464470dea','XE_-HJk_gskzJcyeSl6pSFIKd9QLSgsf','49.34.153.164',72,'2018-11-12 11:01:18',72,'2018-11-12 11:01:18','Y','N'),
(196,72,'61aa2fdd-a3b3-a1eb-3f1e-0ea0ded83a02','69xUIy80UOV8M94j3v59gJbJEyPUKDUw','49.34.153.164',72,'2018-11-12 11:18:44',72,'2018-11-12 11:18:44','Y','N'),
(197,89,'776640c7-ed10-df9d-6179-0fba55ca2ba2','aT-2dpkv2EpV5Erm5jvpENO8d3z5VVpU','192.168.1.123',89,'2018-11-12 23:26:54',89,'2018-11-12 23:26:54','Y','N'),
(198,72,'18','CkZIqkeAO74OpxwDMvQ8Th-2I7CVVwCw','192.168.1.144',72,'2018-11-12 23:53:38',72,'2018-11-12 23:53:38','Y','N'),
(199,72,'e8eade7f-d304-0589-49cc-ccf01ec49046','op1wSHkVySpYFMfRN6cBR-cglDZvs1KW','192.168.1.144',72,'2018-11-13 00:08:06',72,'2018-11-13 00:08:06','Y','N'),
(200,72,'a713b68f-72ca-c330-8848-27eeb88b2255','5Ff3pBZEGl9IZbNOy7FinAgdiuLQWwV1','192.168.1.144',72,'2018-11-13 00:10:17',72,'2018-11-13 00:10:17','Y','N'),
(201,89,'238693d6-9bd4-b264-2015-7644f7a85077','LXm0IBiym3Gh_b6Sd3xlNOi6AIbtNiPM','192.168.1.144',89,'2018-11-13 00:16:58',89,'2018-11-13 00:16:58','Y','N'),
(202,89,'040d54ae-8607-53a1-4709-958fb5663e4d','GrpQyol666yeCrAfPFEJG976QK3aQ5gK','192.168.1.123',89,'2018-11-13 00:17:17',89,'2018-11-13 00:17:17','Y','N'),
(203,89,'e2660c9a-ccc1-f75a-c31c-4779ccca3184','O41ZOuYb4r0h_syV9x8aqvvkcQQeftuh','192.168.1.144',89,'2018-11-13 00:17:37',89,'2018-11-13 00:17:37','Y','N'),
(204,72,'18','kzbLoM0GuoWoqFliZXAOlxhWkhupHLM2','192.168.1.144',72,'2018-11-13 00:30:42',72,'2018-11-13 00:30:42','Y','N'),
(205,89,'18','A6q46PkyhIdxd3l8OIO6ZbdzH17i33t1','192.168.1.144',89,'2018-11-13 00:31:02',89,'2018-11-13 00:31:02','Y','N'),
(206,89,'84a247c0-0a3b-aee2-f9cc-692f80a594c4','qG76PEQwkz2vrOeAcRixNR5D-ca63tp7','192.168.1.144',89,'2018-11-13 06:13:49',89,'2018-11-13 06:13:49','Y','N'),
(207,72,'d4ce0afd-8f82-8d9f-f9d6-9ca5f91db23f','l1PR2i9VjHZjDQJ70vjmQJbfwG7hpZBR','49.34.132.102',72,'2018-11-13 09:22:00',72,'2018-11-13 09:22:00','Y','N'),
(208,72,'8545d35d-a30c-7acf-9bca-195348a251e5','fxslNtUKfVjWNNL9FUpwWcvqbhYQbu-0','49.34.132.102',72,'2018-11-13 09:52:33',72,'2018-11-13 09:52:33','Y','N'),
(209,89,'e039263e-aeb9-8401-215c-1bc603068afc','pLKycImITVvwtUwhJuD3Q4mA7Alk-sAG','49.34.132.102',89,'2018-11-13 10:06:23',89,'2018-11-13 10:06:23','Y','N'),
(210,72,'b6017e59-b299-1fc8-87a8-ddae1f86fd89','tH30bjEXKt9QU7br4bL00QnbTpGD7Eej','219.91.190.145',72,'2018-11-13 11:56:46',72,'2018-11-13 11:56:46','Y','N'),
(211,72,'1d6a7ec4-ea38-102c-eaec-aa88e81a8419','jSlPH3fOb7FuVYIS_pbqqwswLMoecQLx','49.34.175.192',72,'2018-11-13 12:50:13',72,'2018-11-13 12:50:13','Y','N'),
(212,72,'5511ff48-b7fb-15cf-9154-22f2746c6ead','bcN9YzjCbul1Ck8m67p-ozAxLO-nfkR8','49.34.175.192',72,'2018-11-13 13:10:41',72,'2018-11-13 13:10:41','Y','N'),
(213,72,'18cf3833-7bdf-178b-7890-0991c8a2f7ef','EkYBQoa9fSit9KKwm3nbmCSScl6GZapT','49.34.175.192',72,'2018-11-13 13:22:46',72,'2018-11-13 13:22:46','Y','N'),
(214,72,'39308acd-f495-0a4c-267e-ec38aecbf2fd','coAIesNJJ6aOmVIHqch8wkOsK1Siv7DD','219.91.190.145',72,'2018-11-13 13:26:44',72,'2018-11-13 13:26:44','Y','N'),
(215,72,'90aa594b-2813-a1ec-78c9-fda0754ffaf5','rwIR-PPqvERiOYDMcK8wHuITtyHEJvRV','49.34.190.186',72,'2018-11-13 14:02:24',72,'2018-11-13 14:02:24','Y','N'),
(216,72,'a3f1275b-09bf-70ca-773a-cd6cf80aae7b','jHH5nxPBeO5GLhUH8KxyXOj4YdmTsT61','49.34.190.186',72,'2018-11-13 14:04:41',72,'2018-11-13 14:04:41','Y','N'),
(217,72,'5dca40c1-3086-e83a-3807-abee414f7143','wIy8xKFfcine_XxAloWhdef5z8pp2umm','49.34.190.186',72,'2018-11-13 14:36:11',72,'2018-11-13 14:36:11','Y','N'),
(218,89,'b667e606-2f3f-c66f-0060-4d9d659d4f1e','3P1dhKJ1dLLREpCNKs_WhcIPf-z3qEmh','49.34.190.186',89,'2018-11-13 14:40:53',89,'2018-11-13 14:40:53','Y','N'),
(219,89,'e8eb26dc-48cb-1081-1ad3-1e5e648cad8b','zYtyboaBd_vOzKpqSFK0bnOxAvDXVCSm','49.34.190.186',89,'2018-11-13 14:55:41',89,'2018-11-13 14:55:41','Y','N'),
(220,72,'ffebac28-1c95-0d5c-c8bf-db5611675eca','BTNI8BB2PuvZXy2D2veW4xqnXnGeyZIf','49.34.190.186',72,'2018-11-13 15:44:01',72,'2018-11-13 15:44:01','Y','N'),
(221,72,'6a07b159-7925-3d39-4876-eeaeba35dd67','Q1-q_BZhzyq9BCVckktQou9PxPZSK4cy','49.34.190.186',72,'2018-11-13 15:46:48',72,'2018-11-13 15:46:48','Y','N'),
(222,89,'3ffe61fc-ca70-27fc-d83b-72fff16118fc','Oc_4pYY_VSvfAFp4GI4MNIb2P-3pT7Sx','49.34.190.186',89,'2018-11-13 15:47:24',89,'2018-11-13 15:47:24','Y','N'),
(223,83,'c208b50b-f120-eb74-3b59-a049147767fd','y7wVcD_nzUPT9cReMTk-jd3EHfgopIxM','192.168.1.182',83,'2018-11-13 23:53:20',83,'2018-11-13 23:53:20','Y','N'),
(224,72,'b874a923-6c08-8d2d-e062-9f0a14ebd7b5','XQ8Us3jJSqTGyCz_5Gnm3AWwWM69I80w','192.168.1.182',72,'2018-11-14 00:03:09',72,'2018-11-14 00:03:09','Y','N'),
(225,72,'8badb7f3-688e-ae13-4014-39bb6ccd1eb5','L-ACtXoa_L1z6tcXWOuoFRN23Xm8LSIK','192.168.1.157',72,'2018-11-14 00:16:09',72,'2018-11-14 00:16:09','Y','N'),
(226,83,'5a4a374f-7fff-f57d-7e7f-381be05bdc0a','SvNGa7-zkyFSxqyGODFeOEZj_tUKDhpt','192.168.1.157',83,'2018-11-14 00:24:38',83,'2018-11-14 00:24:38','Y','N'),
(227,90,'1de408bc-dbec-6607-3c23-ec7e279939d3','6fAny4BiPyVjRnMDE3_-3ka9Joj8bB-z','192.168.1.157',90,'2018-11-14 00:59:11',90,'2018-11-14 00:59:11','Y','N'),
(228,90,'9ce9b230-a7fe-4d54-921e-7b7481296a88','LeVKddV1OZvwmR1cmGaugxFxVpWx-SlJ','192.168.1.182',90,'2018-11-14 01:02:57',90,'2018-11-14 01:02:57','Y','N'),
(229,90,'e3d1e4ee-1590-8467-8ce8-1d83e40cd981','_FenJ0EgyMPd7Ko-4RW0qbWrbOXfTNwo','192.168.1.182',90,'2018-11-14 01:03:20',90,'2018-11-14 01:03:20','Y','N'),
(230,90,'f4ac0135-5c06-5b1f-6309-565c97049b84','DRfIxyUPhUs4tjAYVXm9fgwMeZn1P8WN','192.168.1.182',90,'2018-11-14 01:06:17',90,'2018-11-14 01:06:17','Y','N'),
(231,91,'3f1ca751-8762-b38e-59f4-054a99ea82be','IlASHb7B8HbAwVQvxqHRU1htN9WVexOs','192.168.1.182',91,'2018-11-14 01:07:52',91,'2018-11-14 01:07:52','Y','N'),
(232,72,'bba1ac72-5417-a54f-a852-66cdcf8f6101','pD4hncBvLWsYhbOdcdKiujREJhyEm8IV','49.34.189.95',72,'2018-11-14 01:09:28',72,'2018-11-14 01:09:28','Y','N'),
(233,72,'ea47557c-fbe8-970c-6b19-7c204c0e533f','YWZGO5XLZd39KzcnA6sp7KKs_XcW6zvC','42.106.40.37',72,'2018-11-14 01:09:38',72,'2018-11-14 01:09:38','Y','N'),
(234,91,'b041e1ef-a191-c03a-f4fe-9afc5d6a517f','ZBYwzh4JPX4YgtlMA4vhj-Fuku9aecRA','157.32.102.239',91,'2018-11-14 01:17:50',91,'2018-11-14 01:17:50','Y','N'),
(235,91,'bd841984-e99e-7e7e-5896-00537d52cebc','UfWY_BeixkyRBBpJQxTolmzHAYsfaCf8','157.32.102.239',91,'2018-11-14 01:19:25',91,'2018-11-14 01:19:25','Y','N'),
(236,72,'d3820920-b10b-d8dd-9481-46e80c85dbaf','7TB87W5PdzmXHcv2RF8O_t_UxFdOPt_H','157.32.54.7',72,'2018-11-14 01:21:30',72,'2018-11-14 01:21:30','Y','N'),
(237,90,'95c3b726-6926-bf4c-6fea-31e7852f6f42','HsZk8VDaOgnv--3_x0RLBvuVv6lGWtcP','192.168.1.182',90,'2018-11-14 01:26:43',90,'2018-11-14 01:26:43','Y','N'),
(238,72,'a12f8c93-f9b3-5d75-1b95-7fb2ab9ce920','qm8NyYf2OnZaiW3Q6CQYfBNOoxkDaK87','49.34.188.162',72,'2018-11-14 01:27:22',72,'2018-11-14 01:27:22','Y','N'),
(239,90,'1ec8b604-04f0-5102-1657-f3328866ba73','LotkRj2M26AQCl6sXjdOnXlNZHKBpwYJ','192.168.1.182',90,'2018-11-14 01:27:24',90,'2018-11-14 01:27:24','Y','N'),
(240,72,'b244cee4-a267-0986-59b3-1a2e9637b317','QU2IiESZ9XCXqoVruOrlosHBSqeHqZPw','192.168.1.182',72,'2018-11-14 01:28:16',72,'2018-11-14 01:28:16','Y','N'),
(241,89,'aaf4ffbb-b17b-a375-5d7f-03c006974918','5aX76VMNzb39WqpcxLD_mD3qN2tBidia','49.34.188.162',89,'2018-11-14 01:32:13',89,'2018-11-14 01:32:13','Y','N'),
(242,90,'2ff3ad89-273d-ba62-e6d4-3f3512e9288e','OkwRVYVQfvJWqaHaNxljHSW16ZJ8YDVC','192.168.1.182',90,'2018-11-14 02:20:48',90,'2018-11-14 02:20:48','Y','N'),
(243,90,'3d5dd95f-4f74-ff32-dd02-42472117ec97','2caHB1Lyew6dTnv_bFaVo8yhh0Utk12R','192.168.1.182',90,'2018-11-14 02:20:50',90,'2018-11-14 02:20:50','Y','N'),
(244,90,'78cdb84e-97ee-fd5f-579d-326404622dcf','ejZh6DgANKTIwa38zEfexJ4FEBuY6ijY','192.168.1.182',90,'2018-11-14 02:21:20',90,'2018-11-14 02:21:20','Y','N'),
(245,90,'dd911288-f0a8-6bf7-8e05-106f6c38e63e','kMJiNQpeftRAmBEIWJyM9RMbif40_W-0','192.168.1.1',90,'2018-11-14 03:23:52',90,'2018-11-14 03:23:52','Y','N'),
(246,90,'8b39f0e7-6ff0-37a5-dd69-cac15e54d617','hGSgv7rPs6hVNUzgH5uh185uh-ToC5Eg','192.168.1.1',90,'2018-11-14 03:23:52',90,'2018-11-14 03:23:52','Y','N'),
(247,90,'1c440908-454c-b57f-17b7-1cdb91703501','NFkfi8ORGl2VfZOjLI2msf_9-IH3unYf','192.168.1.1',90,'2018-11-14 03:23:52',90,'2018-11-14 03:23:52','Y','N'),
(248,90,'c53d9773-2b04-1cb1-6223-aadd8fc2b20c','s5-mKEt-UJiYAyet-Nt__UI8sftgoGUp','192.168.1.1',90,'2018-11-14 03:23:52',90,'2018-11-14 03:23:52','Y','N'),
(249,90,'abe13367-e872-be51-d595-75c2615538d4','cu-OeQAj0jg7ACpsTVxi_up81_sru9rm','192.168.1.182',90,'2018-11-14 03:25:19',90,'2018-11-14 03:25:19','Y','N'),
(250,72,'7ff0b4d6-4474-5f89-1be1-fc5f28bdc33a','LyFYvhz8w7NqVKjYdkNhYSUsw4IlGwVT','49.34.159.90',72,'2018-11-14 06:10:55',72,'2018-11-14 06:10:55','Y','N'),
(251,72,'ec903131-2e41-ddb8-704c-2da7425051db','P8QZvG2E2GDLjjNPDVQghDON9H5knWk0','123.201.68.204',72,'2018-11-14 11:35:03',72,'2018-11-14 11:35:03','Y','N'),
(252,72,'aab3728c-044e-389f-4a95-1c677e4429e6','FjsOKT3I8g1kJ-oiVdj90DwWxy352KOz','123.201.68.204',72,'2018-11-14 12:40:27',72,'2018-11-14 12:40:27','Y','N'),
(253,72,'5848e53a-a95f-0b54-ef9c-ea485a8055c6','n_e28XjfgrnTQD8l7i9w3WwNZKdWFgV2','49.34.132.11',72,'2018-11-14 14:56:06',72,'2018-11-14 14:56:06','Y','N'),
(254,72,'00d2b116-9847-77a8-fb3f-794b430e8870','m39NcWgZwHDAksHhniX67qVAl-2tbn_Q','49.34.132.11',72,'2018-11-14 14:56:18',72,'2018-11-14 14:56:18','Y','N'),
(255,72,'3cd829f5-7959-480c-f71c-875886e13b9a','XYKQ2fUzXL34Iu-diHo00-eCVAqVHjN5','49.34.132.11',72,'2018-11-14 14:57:37',72,'2018-11-14 14:57:37','Y','N'),
(256,72,'a62f3de2-84d6-a7e1-0f20-d3849401f783','8J9Ho2d8FCgJUoAxf1Esaa0Io5CDnF3B','49.34.132.11',72,'2018-11-14 15:07:45',72,'2018-11-14 15:07:45','Y','N'),
(257,72,'5ce009df-6559-5577-4568-2f83df42fd6c','tr9hBMINYfzBaw-MHDKoXD6HZAUEeUQW','49.34.165.175',72,'2018-11-14 23:43:04',72,'2018-11-14 23:43:04','Y','N'),
(258,72,'c2374f2f-dbfa-91f2-978c-49ce7e72d834','5Jsk5YZDTzTIxs3kWDKlKfecrLzOrtQU','49.34.165.175',72,'2018-11-14 23:43:31',72,'2018-11-14 23:43:31','Y','N'),
(259,90,'2fdedbd0-1aea-7b1e-15a5-c164dd5929f1','avoSItZXURpKHrViBNy2F-rHUojG2w-A','192.168.1.182',90,'2018-11-15 01:12:20',90,'2018-11-15 01:12:20','Y','N'),
(260,90,'7a2f39f9-bb9f-1820-228d-4a95fc9c4d7f','8sJmQgANdUjwL1skQ7RUFGGwAYETlb5O','192.168.1.182',90,'2018-11-15 01:12:20',90,'2018-11-15 01:12:20','Y','N'),
(261,90,'c80f8f35-604a-cbd8-ed98-b215e266adbc','mxwaaf6YJ1Bdo6rLrL1MG_FApF0EpAdK','192.168.1.182',90,'2018-11-15 01:12:57',90,'2018-11-15 01:12:57','Y','N'),
(262,90,'9bf9e276-2a5b-406d-0358-17e8391bb6df','D5DDKfLrZnve9Ff9JKniYkBEt4mUgAEi','192.168.1.182',90,'2018-11-15 01:16:51',90,'2018-11-15 01:16:51','Y','N'),
(263,90,'215c7603-43b3-c6b6-a1ec-f587e3056f5c','D3JjbjhOODc6IGcOojD2XL1-vRy3h2fT','192.168.1.182',90,'2018-11-15 01:30:23',90,'2018-11-15 01:30:23','Y','N'),
(264,72,'92ec7987-3122-7e40-eb1b-de3d1369c66b','QtuTGCx5vn5gMzF3APArYqVeUD-Ge4f2','49.34.144.220',72,'2018-11-15 01:34:55',72,'2018-11-15 01:34:55','Y','N'),
(265,72,'0a20da0c-d268-1b39-1f75-c22505006820','g8qUbVj2fZ666EQY60TLz-o3zqF0xFsU','49.34.144.220',72,'2018-11-15 01:44:09',72,'2018-11-15 01:44:09','Y','N'),
(266,90,'d1a7a82d-7080-6959-314c-9b3336e089a7','de2BReNE-5Gf5qERJQxIRUiIA_Bk50Ks','192.168.1.1',90,'2018-11-15 01:45:53',90,'2018-11-15 01:45:53','Y','N'),
(267,90,'55a99724-1c16-a02a-0529-300e69eb5f3a','0TPFJhqRbZKtZu5hRpQ8FpomaAckJqp0','192.168.1.1',90,'2018-11-15 01:46:06',90,'2018-11-15 01:46:06','Y','N'),
(268,90,'1e13b6f3-335c-04bf-59bf-525ffe1d6ac3','SDoVS1tCWCRAa29ydOjj-MBoYDoGPazn','49.34.144.220',90,'2018-11-15 02:14:04',90,'2018-11-15 02:14:04','Y','N'),
(269,90,'67d47169-f2d4-d599-e8f0-2d7365e2c951','Og38gukcBYjogoyUIl37bemBKbvwRkNd','49.34.144.220',90,'2018-11-15 02:14:04',90,'2018-11-15 02:14:04','Y','N'),
(270,90,'3893d7b6-e9a8-f0df-3080-79acc3c8566c','YhVVFeBK0TfywsI8c2MHi9_JFzJYuAQ6','49.34.144.220',90,'2018-11-15 02:21:59',90,'2018-11-15 02:21:59','Y','N'),
(271,72,'73a2e549-2129-ea77-ccc0-37c32666b4ef','H1LYDaGQIX1NzGajqbs-ODXJk8PikXAs','49.34.144.220',72,'2018-11-15 02:36:45',72,'2018-11-15 02:36:45','Y','N'),
(272,89,'75ffbf88-cb3a-535b-8e82-a75f73b6a56b','9OriyXH7pLzQxa-ObbK_EPqSkBTiYp59','49.34.144.220',89,'2018-11-15 02:37:17',89,'2018-11-15 02:37:17','Y','N'),
(273,72,'20577b42-a8ba-4417-2797-e1a05e1d12fa','bGpuFAvvviB3FayFOQOz6Lcv7VSAMyP6','49.34.144.220',72,'2018-11-15 02:37:45',72,'2018-11-15 02:37:45','Y','N'),
(274,72,'3a42695f-a718-50f5-dcf8-a4a5022cdb73','PKUnzY6hEzTvk9Qd3bA4UOLmHwoMyyYc','49.34.144.220',72,'2018-11-15 02:39:16',72,'2018-11-15 02:39:16','Y','N'),
(275,72,'0f57d3f6-2b42-d1cd-c3a6-3573c41923fe','jjaV0FGuJ4pzhmhiVaJIBMZra1x1Hsht','49.34.144.220',72,'2018-11-15 02:40:00',72,'2018-11-15 02:40:00','Y','N'),
(276,72,'3cc2c33d-d2de-bbf9-1015-c3e92c9b10bd','OSRg06ALEu_UID3wwDCVf1xYAEPku1mV','49.34.144.220',72,'2018-11-15 02:40:34',72,'2018-11-15 02:40:34','Y','N'),
(277,72,'a09df342-f1e6-1a12-a619-171b85fd769e','28d8qYL-Rr-RYJ0QmPHfXQajsdqhTkS3','49.34.144.220',72,'2018-11-15 02:41:16',72,'2018-11-15 02:41:16','Y','N'),
(278,72,'da6b46bf-949e-9833-9698-b68f58ce0ef2','rvLr_IU0hoC-VhGGh0rAS01FpcnDe-UW','49.34.144.220',72,'2018-11-15 02:41:43',72,'2018-11-15 02:41:43','Y','N'),
(279,72,'2fdd60c7-9ec9-688b-757b-d225eace14fb','APSSvZwQFbErDu2QdqF8z1a-AiW27kpV','49.34.144.220',72,'2018-11-15 02:43:34',72,'2018-11-15 02:43:34','Y','N'),
(280,90,'bf73bd04-ce52-975d-724e-7ad79dacdeea','uIy7svLVjhFvPvt1__Wyi4p83NS4cGsV','192.168.1.144',90,'2018-11-15 03:48:35',90,'2018-11-15 03:48:35','Y','N'),
(281,72,'38b46f97-0a68-59c1-5ca6-8ee31cff29a3','_lN7i3i2B9xUo-0yZ1yO4Pgxo-pe-WUT','192.168.1.144',72,'2018-11-15 04:07:50',72,'2018-11-15 04:07:50','Y','N'),
(282,90,'09097140-c2d2-1036-e6e6-a954bbbfe798','TpuvsBP6nYnjNC2VAcf3wjPYRf82tvAg','192.168.1.182',90,'2018-11-15 09:10:45',90,'2018-11-15 09:10:45','Y','N'),
(283,72,'8bf4e934-ae28-21b4-fb9c-850a35e9262a','Trnsrg457RSKuM9P_NF2_xfawra7an3Y','192.168.1.144',72,'2018-11-15 09:14:46',72,'2018-11-15 09:14:46','Y','N'),
(284,72,'1dcef1d8-09ab-1f12-b9f6-952a3ffd7afa','GG21VidZmqCE-Erz2azVrjqe9jIy-syK','192.168.1.144',72,'2018-11-15 09:16:11',72,'2018-11-15 09:16:11','Y','N'),
(285,89,'b4da6815-9766-e869-7dbf-1af1397cbc94','8E_y6f1z9jImJbhr7-mDA0W7gYayQyT3','192.168.1.144',89,'2018-11-15 09:16:46',89,'2018-11-15 09:16:46','Y','N'),
(286,90,'544ea7fd-20a5-5f5c-89d0-65046608114b','OjnIoZ3HSq-pPHsNec_Pr0547Ke1mwAL','192.168.1.144',90,'2018-11-15 09:17:12',90,'2018-11-15 09:17:12','Y','N'),
(287,89,'4ceb1e70-8342-d800-27b0-20f78718af9b','2tjAyfMJM0GmH4KpBlf7cMd6iewyN9_4','192.168.1.144',89,'2018-11-15 09:18:37',89,'2018-11-15 09:18:37','Y','N'),
(288,90,'4494663a-05af-42af-924a-434dc848e1d6','Z8KqPyPeV1UCrQ9FkxsrJYo-bRyqIPoy','192.168.1.144',90,'2018-11-15 09:18:53',90,'2018-11-15 09:18:53','Y','N'),
(289,90,'77fc7fd0-1b3c-f93a-c312-b6a4fa20684d','28A2ogBxktbFbl4UCShffvjkEV5Um85M','49.34.132.104',90,'2018-11-15 09:21:08',90,'2018-11-15 09:21:08','Y','N'),
(290,72,'0f7c2701-d355-51be-74b3-6251649f26a1','tTLhl_kKn0PfmSYBIh2Ou1SuKEHkaDDD','49.34.132.104',72,'2018-11-15 09:31:22',72,'2018-11-15 09:31:22','Y','N'),
(291,72,'b85fe1bf-7efb-b60e-76e6-45d435d9f5b2','tM7tTPG1kN2_j8F50q6bQ2HbTX36vqOP','49.34.162.171',72,'2018-11-15 10:43:37',72,'2018-11-15 10:43:37','Y','N'),
(292,72,'5edad311-650e-badc-bf6b-18183b9fcfe5','E5bvbfTTEzXtyQPCCzkcYW4-0NwpS6XO','49.34.162.171',72,'2018-11-15 10:51:48',72,'2018-11-15 10:51:48','Y','N'),
(293,90,'1b94ceff-9da3-8e9d-f3eb-3b1d9583ba6b','D-MW2eJdudwCXOnoDA7zzj1h6ZinFwO2','49.34.162.171',90,'2018-11-15 10:52:14',90,'2018-11-15 10:52:14','Y','N'),
(294,90,'672c3f21-ccff-153d-0bfc-12fb32ceebec','PnBKe1mNC7O2sptc_tl3CdtoZipUHL1u','49.34.162.171',90,'2018-11-15 10:52:35',90,'2018-11-15 10:52:35','Y','N'),
(295,72,'3924a220-c008-54a6-6936-829ab68422fd','epTsYirRZS2CB6WuRrNJuqsU7twEcT6U','49.34.162.171',72,'2018-11-15 10:53:49',72,'2018-11-15 10:53:49','Y','N'),
(296,72,'f4768f53-3c91-68ed-616f-9298fca0de85','hHPo_B5V-K8M-usJSgjI7duwYXpGBjLL','49.34.162.171',72,'2018-11-15 10:54:50',72,'2018-11-15 10:54:50','Y','N'),
(297,72,'56abd430-cc1b-7da2-97a3-6ddac7ab19c7','3znRx-8GA1AxtDFvZpVe9CBsgg4RWa8j','49.34.153.145',72,'2018-11-15 11:39:42',72,'2018-11-15 11:39:42','Y','N'),
(298,72,'ad0cc410-3555-dd46-4e89-f364fb704560','BLqydSpHLERhJQwqHDBLwHaLoxdBs25H','49.34.153.145',72,'2018-11-15 11:44:10',72,'2018-11-15 11:44:10','Y','N'),
(299,72,'fff10508-18da-ceca-a3dd-b2319ee28813','vDW1UfFYQ2A0GpUqOlapI2-IVM9w1o2h','49.34.153.145',72,'2018-11-15 11:44:35',72,'2018-11-15 11:44:35','Y','N'),
(300,72,'974939af-53a4-4f0d-e74f-9d2509c65136','y2CasUB4mRNrgeZsYkPrrXr432eISQ1V','49.34.153.145',72,'2018-11-15 11:51:24',72,'2018-11-15 11:51:24','Y','N'),
(301,72,'f7263900-738a-1ee0-856e-351ff3d3392a','n0sdSzGt6pzFeJWRqjPGUX_6Id4PTud3','49.34.153.145',72,'2018-11-15 11:51:43',72,'2018-11-15 11:51:43','Y','N'),
(302,72,'1e1aa290-cb74-e924-7de4-dc615f6dd9a7','mjRC0btwKsGKXu7H1P4UIta_tTxVAj92','49.34.153.145',72,'2018-11-15 11:51:58',72,'2018-11-15 11:51:58','Y','N'),
(303,90,'d9d32de9-c243-64a1-6bf5-88b59ad54e48','qKTfWdrGVWe9ix0cFi-zfFou4wPc5fx8','49.34.153.145',90,'2018-11-15 11:57:33',90,'2018-11-15 11:57:33','Y','N'),
(304,72,'2b60cfce-167f-3411-c710-8d5f0dd4cff0','dbFe4RcXIsXMsqhyHCnA63wtsO7E2f5C','49.34.153.145',72,'2018-11-15 11:58:42',72,'2018-11-15 11:58:42','Y','N'),
(305,72,'bdd33381-d020-3908-000f-7b6b440bd2ec','F-5gaezD3kyLQr9m3ObjzbICplhniq1h','49.34.153.145',72,'2018-11-15 12:08:54',72,'2018-11-15 12:08:54','Y','N'),
(306,72,'97416379-b8be-53ab-96dd-182819f47158','29207aubLG1O0Kj3aZXabhoufYJgASOT','49.34.153.145',72,'2018-11-15 12:09:22',72,'2018-11-15 12:09:22','Y','N'),
(307,72,'e6da6910-7493-7dfc-ff5d-820426a8a7d0','p7IQBTZwEuEhkwzHRUZMimNChvv6mHHC','49.34.153.145',72,'2018-11-15 12:14:29',72,'2018-11-15 12:14:29','Y','N'),
(308,72,'ea5a2eb6-2c33-200f-d526-b551ab9ab93b','qSMeXjxvW5M5CuAVkjvWPRDvomYht6Us','49.34.153.145',72,'2018-11-15 13:07:19',72,'2018-11-15 13:07:19','Y','N'),
(309,72,'70c656af-9b74-7406-6c53-d20ac6515915','y75s04sbTrmCF1gevY2f7LiukYyM7CGK','49.34.153.145',72,'2018-11-15 13:07:55',72,'2018-11-15 13:07:55','Y','N'),
(310,90,'02bb6cde-6eca-4fc6-1508-c608c5b34db0','ovn0Q74gGZ17yvCoAWBH3rDUoCTpFYvA','49.34.153.145',90,'2018-11-15 13:08:13',90,'2018-11-15 13:08:13','Y','N'),
(311,72,'580551a3-ed42-ff92-d595-a733339ca900','i8IABIToXYWavNj7YV1g2cdZ_8z7MHfa','49.34.153.145',72,'2018-11-15 13:10:42',72,'2018-11-15 13:10:42','Y','N'),
(312,90,'2073bf45-b560-931e-d2ff-f74984ed716b','UuxuscBYqnNB-mtbqOHdQgZZ9qTZK3cl','49.34.153.145',90,'2018-11-15 13:10:58',90,'2018-11-15 13:10:58','Y','N'),
(313,90,'b1e263f9-ec3e-127a-c388-56d7cf167f25','gju37rward9ZkcBhPDZ7rZW3g0hmdGX5','49.34.153.145',90,'2018-11-15 13:22:01',90,'2018-11-15 13:22:01','Y','N'),
(314,72,'ae69483a-9bf4-d1da-ba32-e4d1bfd67785','T6iJ9YeovrxNgz_I8SEG-yuTr9P1qmpI','49.34.130.75',72,'2018-11-15 13:58:39',72,'2018-11-15 13:58:39','Y','N'),
(315,89,'d5db5b3a-edeb-7a63-6b79-fa43e1d89311','fU10giO6XYk_sqlJnFGqHpc1edgerZXT','49.34.130.75',89,'2018-11-15 13:59:35',89,'2018-11-15 13:59:35','Y','N'),
(316,72,'cceca3c6-729f-93a4-33f1-f38942e8bae3','94Ft7At3zpoeVYQ2XcB_blDWVzJkkMRG','49.34.130.75',72,'2018-11-15 13:59:49',72,'2018-11-15 13:59:49','Y','N'),
(317,89,'64415073-c0f2-6fae-fb5b-c075f201c8ec','KnzYRsEuWKAWRyLNMjfEpFGOz19pTErg','49.34.130.75',89,'2018-11-15 14:01:44',89,'2018-11-15 14:01:44','Y','N'),
(318,72,'a391d625-fd86-35c5-cbfe-0bfea4cf4c24','bjBiI_RAUUChfWim08zwkR39p1hanYnl','49.34.130.75',72,'2018-11-15 14:02:00',72,'2018-11-15 14:02:00','Y','N'),
(319,72,'6c5a532a-8edb-aa8e-adad-808e90bdb243','yAuTWoV5d6VS-iiLP70KQh0PLIYpG-ac','49.34.130.75',72,'2018-11-15 14:02:32',72,'2018-11-15 14:02:32','Y','N'),
(320,72,'77d5d998-d6d4-7bc4-269d-4764bbe96dcf','YCXGF3R5SOIIdS-_q9jRAPticS85CBhO','49.34.130.75',72,'2018-11-15 14:05:46',72,'2018-11-15 14:05:46','Y','N'),
(321,72,'9f41be1e-bd47-eede-29a4-21893fb621cd','kQlyr4w91cmzGIj59vgRobzWrqu3xIxi','49.34.130.75',72,'2018-11-15 14:06:09',72,'2018-11-15 14:06:09','Y','N'),
(322,72,'e9ed1b14-e9ea-73fb-3f7d-29d86b14e8ad','7LsKGUlUeFTF9AyXlGk9ypk5zIsfJIGu','49.34.130.75',72,'2018-11-15 14:08:57',72,'2018-11-15 14:08:57','Y','N'),
(323,89,'1f132258-9f28-b69b-683d-df530c2e730b','aQO7KW8PdFs9_KNvfpuG8qS8yyC8AZ40','49.34.130.75',89,'2018-11-15 14:09:55',89,'2018-11-15 14:09:55','Y','N'),
(324,72,'9d249c5f-e6d6-81cd-6244-d1da748e1cc0','K_htS20HTEOC7mgiQx79s-wRnBwa0YaA','49.34.130.75',72,'2018-11-15 14:10:23',72,'2018-11-15 14:10:23','Y','N'),
(325,72,'6af97ad8-8c8f-c892-c5ac-718ea2668f03','0qpSTYtZiEv-sypZh1TPcrTtoVQp9IUp','49.34.130.75',72,'2018-11-15 14:11:51',72,'2018-11-15 14:11:51','Y','N'),
(326,72,'d19db1f4-14d8-f3c8-f149-58d565afcc75','JVZix6prTWfHgbHGNzsfP6hKTcNFWqvT','49.34.130.75',72,'2018-11-15 14:12:43',72,'2018-11-15 14:12:43','Y','N'),
(327,90,'4f86b8d5-5f9b-2349-762e-743a81426fb6','B_0c3VrsT7GV7-FBnC34B2WxA65nTiut','49.34.130.75',90,'2018-11-15 14:13:49',90,'2018-11-15 14:13:49','Y','N'),
(328,72,'6b6ad7c9-e56f-8f6f-b82d-cca34551cc97','miE7eq4euyuiISZe6RWBAjSxDKIqxQCu','49.34.130.75',72,'2018-11-15 14:15:11',72,'2018-11-15 14:15:11','Y','N'),
(329,72,'ab1dadff-aa91-412f-bfaa-093597287327','GFBdSzBcMHJbqx_sXCVbS0ib08nZLXT-','49.34.130.75',72,'2018-11-15 14:15:28',72,'2018-11-15 14:15:28','Y','N'),
(330,72,'3d188280-e959-c871-c95d-ed73cbd4aa9b','rkAKO0nw4a4UgkF2MHHfXF9iiiN6S3Uu','49.34.130.75',72,'2018-11-15 14:16:47',72,'2018-11-15 14:16:47','Y','N'),
(331,72,'b6ce29f2-6c49-31c7-cde6-b2171e22e3c9','66d_Xc3HCOZDYHnbqkVqR_BnLx4sv8u_','49.34.130.75',72,'2018-11-15 14:17:01',72,'2018-11-15 14:17:01','Y','N'),
(332,72,'c723b944-c343-48c6-2dc4-1b3f53f34aeb','supB2vF6KPLrqq95bPuPU1VB4QTl8qNp','49.34.130.75',72,'2018-11-15 14:17:34',72,'2018-11-15 14:17:34','Y','N'),
(333,72,'53f30f54-fcac-62ae-62a0-6920ad3832c0','AwzrBMaAof0hCihN_qFRg5XhGTqTxJ8k','49.34.130.75',72,'2018-11-15 14:28:52',72,'2018-11-15 14:28:52','Y','N'),
(334,91,'f36e749a-00f4-559e-6665-30fa59ac570f','LhUimfjOKenkjIan5ycVxh_bHuLF7hfO','192.168.1.144',91,'2018-11-16 00:18:58',91,'2018-11-16 00:18:58','Y','N'),
(335,90,'7736ff20-b8e3-036e-19b4-9d76b241d2be','KF_n-Eoy1aEUa3-k2ZcNIM7DYZRhCv8N','192.168.1.144',90,'2018-11-16 00:19:39',90,'2018-11-16 00:19:39','Y','N'),
(336,72,'bf648f79-9925-8534-ba3a-059f76321dca','X_hqd2qS55-BKFcpgcnxvhh7zuK9VgvH','192.168.1.144',72,'2018-11-16 00:20:14',72,'2018-11-16 00:20:14','Y','N'),
(337,91,'7e6bb345-2315-39e2-e52d-b7eee76c94c4','MQzdkctPseGshdlCKNgiM7HRQT7UQX3z','192.168.1.144',91,'2018-11-16 00:21:22',91,'2018-11-16 00:21:22','Y','N'),
(338,90,'5cf7953c-fd39-47d1-6653-ffdaa89bf1c3','AuKzwM8xFxrqbaLw3Kh4PHhhmAtkvKpY','192.168.1.180',90,'2018-11-16 00:53:56',90,'2018-11-16 00:53:56','Y','N'),
(339,90,'0d116a1f-a96e-e0ca-5ca7-f51579f0407f','l9V7aJPmOmAtyYTuzLVjQSNeJanDSyzo','192.168.1.180',90,'2018-11-16 01:28:14',90,'2018-11-16 01:28:14','Y','N'),
(340,90,'2c023a70-1a4b-40dc-5f23-68ebfaeb3a3f','IlNMMy-V3vFbESquDHASad8C2V1ZUrjv','192.168.1.157',90,'2018-11-16 01:30:46',90,'2018-11-16 01:30:46','Y','N'),
(341,89,'661ed451-299c-5039-44a0-b7c2dba54659','qtbItYFbB3Z_bkRE_6J8xix6MwzY3ICx','106.66.63.140',89,'2018-11-16 01:40:59',89,'2018-11-16 01:40:59','Y','N'),
(342,89,'3c76d789-fcc3-67c6-5e79-1f2c93ace206','cA_lXoyXE6LkoV6FZpqF9Roh6-Wh7EvO','106.77.129.58',89,'2018-11-16 01:48:14',89,'2018-11-16 01:48:14','Y','N'),
(343,89,'28cd3558-bfb0-57d3-5827-bf7dec3e8049','woVqRpcH6sSOjTD6f7ymPkUjhYlnaMdX','106.77.129.58',89,'2018-11-16 01:50:00',89,'2018-11-16 01:50:00','Y','N'),
(344,90,'eb8b9f62-07df-7115-e67b-9a846fa5b544','Uxwk2Z-ta6cOmB2eK-rg31x2K79yP80s','192.168.1.180',90,'2018-11-16 02:00:41',90,'2018-11-16 02:00:41','Y','N'),
(345,90,'fa8ab01b-be65-0a99-bd66-954b4d9e3634','-mbgRcJ5KT0yxnGDYkfNkp-MnKWH7YXU','192.168.1.157',90,'2018-11-16 02:22:02',90,'2018-11-16 02:22:02','Y','N'),
(346,90,'10b59b8e-33ec-68fc-a336-2d81f91357e5','Z2QsPoe01V4QMEDdqr6B2pTpMpt6cZtx','192.168.1.1',90,'2018-11-16 03:28:24',90,'2018-11-16 03:28:24','Y','N'),
(347,90,'cbea4974-05bb-03fc-2b33-62d8a9257b15','NlJsQckZW-ER9vkBkcbSTQIDmtJ2P2Cl','192.168.1.1',90,'2018-11-16 03:28:43',90,'2018-11-16 03:28:43','Y','N'),
(348,90,'73d85a3d-7b40-bab6-5548-0492fc622ca1','8SuF6hWYFxdfr-V5A3UmQktlvuc31_Q9','192.168.1.1',90,'2018-11-16 03:33:02',90,'2018-11-16 03:33:02','Y','N'),
(349,90,'e16a6126-0669-b009-052a-ea588c08d6b4','6l7piGTnCXC3Ryj51V4cbPthy2RZkOyn','192.168.1.181',90,'2018-11-16 03:37:07',90,'2018-11-16 03:37:07','Y','N'),
(350,90,'38e04f45-5568-f5f9-0ad1-b28cc15d6a1e','4TN-FUiR5ThZnPs4whYhZQgAwh_xV3ht','192.168.1.181',90,'2018-11-16 03:56:03',90,'2018-11-16 03:56:03','Y','N'),
(351,90,'064101d2-3ba9-3f3a-a3a0-38d254735748','KsojDV7RDQrghoIHvtbo6F7Rtd148RRB','192.168.1.181',90,'2018-11-16 03:58:57',90,'2018-11-16 03:58:57','Y','N'),
(352,90,'ff5d29ed-3e6b-9db2-5d8b-946ffa0fe9e4','rBidJVhRdeGBCVbdhkQxU2QTgpXnghWt','192.168.1.181',90,'2018-11-16 04:00:57',90,'2018-11-16 04:00:57','Y','N'),
(353,90,'6d8c9366-dca3-f9f3-9886-8290e27931e8','tw7LihFfT7gpZHYgSvC-6pEzjQaTsxRe','192.168.1.181',90,'2018-11-16 04:11:20',90,'2018-11-16 04:11:20','Y','N'),
(354,90,'8383dd71-f80c-6960-fd51-bc60986c4566','3NqVOkLLDzaEGLYUK5opIRlSTpBkhp4J','192.168.1.157',90,'2018-11-16 04:19:29',90,'2018-11-16 04:19:29','Y','N'),
(355,90,'0c8fdf74-3bcd-1e28-f43b-53680d0ad767','JZNwiJkRVAnWNI1ChzdxNKcDq1XyR_8b','192.168.1.181',90,'2018-11-16 05:34:09',90,'2018-11-16 05:34:09','Y','N'),
(356,72,'8dab265d-9900-8312-7f34-13865a60ce22','GeO3DqX3MX2mC9h1YpaZejouOwIHngUh','49.34.191.240',72,'2018-11-16 06:29:12',72,'2018-11-16 06:29:12','Y','N'),
(357,72,'4cb2de5e-cc9c-4e2f-2a65-b18c6b9073c6','PVAJ1XO4jONjRKL-G7SGY9xlJ_JF24l1','49.34.191.240',72,'2018-11-16 06:29:23',72,'2018-11-16 06:29:23','Y','N'),
(358,72,'14a3e73a-0c6a-d35f-2def-3db0c1f64598','vaXTFKDbCXXAHokp_k_rUOre9aZ0QYH8','49.34.191.240',72,'2018-11-16 06:29:23',72,'2018-11-16 06:29:23','Y','N'),
(359,72,'f297fa5a-5b0c-db4b-19d6-b86ddf14d7f9','uCCidg6kfjxbWuVE5M3Ei4iu1UR9yIss','192.168.1.5',72,'2018-11-16 07:17:29',72,'2018-11-16 07:17:29','Y','N'),
(360,90,'f56833bf-18a6-b02f-0065-c0a216b3234a','olJBN73dayJnCnRFutyrmDPOqaIpUgd_','192.168.1.5',90,'2018-11-16 07:19:51',90,'2018-11-16 07:19:51','Y','N'),
(361,89,'c1ab7540-d1c7-1bfb-96be-1f2d4e8c381a','fFdGseg60JQODCBMFUKFpfyaSv7idUSR','192.168.1.144',89,'2018-11-16 07:25:48',89,'2018-11-16 07:25:48','Y','N'),
(362,90,'7fadead1-d392-b3f5-fc3e-85d0c2307252','OfP_H8fwPTFVWjmrrpONmagtbSYCASQ0','192.168.1.5',90,'2018-11-16 07:41:06',90,'2018-11-16 07:41:06','Y','N'),
(363,90,'00d8a748-6888-3697-340b-f1a16763fa4d','S1kXsCHVK3Fxb6A4-0YhoHOuh4RI8Cc1','192.168.1.181',90,'2018-11-16 08:08:26',90,'2018-11-16 08:08:26','Y','N'),
(364,72,'91443c35-aa90-bcfb-3087-69a6ddb35ff9','y47jQriLBn5uuzqBfDHdSrwSFtV9i5Zg','49.34.128.109',72,'2018-11-16 09:08:17',72,'2018-11-16 09:08:17','Y','N'),
(365,90,'d6133ec4-d7d3-a63f-8751-5cf7632cef7e','aFTL0VjA-unJgemSedkViBhVdkPCF-Bh','192.168.1.1',90,'2018-11-16 09:11:59',90,'2018-11-16 09:11:59','Y','N'),
(366,72,'5d02c6cd-093e-e51f-5197-2f1248736f51','bmLOhq9A0Cx-SUjKQtkG4VLsKl0g4hD_','49.34.128.109',72,'2018-11-16 09:20:03',72,'2018-11-16 09:20:03','Y','N'),
(367,72,'3f12ceed-e614-1602-c940-889a9f336fd2','Fm1NuzsGKfx7ym1OLviislYoWUINx93F','49.34.177.69',72,'2018-11-16 12:00:14',72,'2018-11-16 12:00:14','Y','N'),
(368,72,'1e6b239f-bbec-51b1-533e-1817f1a12f65','KakpdtI76tBzufHUC7ZR3jRQOC5TjeqV','49.34.177.69',72,'2018-11-16 12:16:33',72,'2018-11-16 12:16:33','Y','N'),
(369,72,'33b87a25-2963-8df4-f1ca-8081534f9b64','eo2qxlCM1pUAmuRiB3BBAYCUdJybo-eZ','49.34.177.69',72,'2018-11-16 12:33:51',72,'2018-11-16 12:33:51','Y','N'),
(370,72,'594dabb0-102e-80b1-f351-f11175a4196a','Ykp-4h2Eign8g96dIDO8qqRVuuTdZcil','49.34.177.69',72,'2018-11-16 13:07:08',72,'2018-11-16 13:07:08','Y','N'),
(371,72,'13f1d963-60ef-abc9-f425-139d1824dd37','3X269-mfaCbnYp1tLSOM8IuBZQ15sPPk','49.34.177.69',72,'2018-11-16 13:42:40',72,'2018-11-16 13:42:40','Y','N'),
(372,72,'a4e95392-d8b5-4ae9-6741-4bcd479da4b7','UtzZCYpZ1KuDrWlYhcgUQqzHK5nubqJw','49.34.177.69',72,'2018-11-16 13:43:41',72,'2018-11-16 13:43:41','Y','N'),
(373,72,'e1d5126c-00b5-bd22-ce44-c6f2685706c2','ZARQVy4TIZYwfD5Kj_FnKU8rJDSwxl9B','49.34.177.69',72,'2018-11-16 13:44:31',72,'2018-11-16 13:44:31','Y','N'),
(374,72,'b2816104-ab8e-8d49-9fa2-e5cdb34f2c4a','BCtJY9lK5MymDV_7dXyaR-fecWDUTqqe','49.34.177.69',72,'2018-11-16 13:46:34',72,'2018-11-16 13:46:34','Y','N'),
(375,72,'2997ec8c-0aca-ea20-110a-6c083105cb3f','fcnrw8Ekz81DGM-1km4dsZQWsqF6Q5TQ','49.34.177.69',72,'2018-11-16 14:35:56',72,'2018-11-16 14:35:56','Y','N'),
(376,72,'1be33541-a95a-8b92-9634-8b0930a45768','wHMckDbj-Mcw5N0xZWUB35ADl_BnszhF','49.34.177.69',72,'2018-11-16 14:38:03',72,'2018-11-16 14:38:03','Y','N'),
(377,72,'f64e1aaf-f911-4e8a-5b78-4a830a78966b','_oHVsLpWUX6CBtEFnx5v4AjwdDHG5pGg','49.34.144.170',72,'2018-11-17 05:46:34',72,'2018-11-17 05:46:34','Y','N'),
(378,72,'4d0cbd52-d244-f992-be5e-76c1ddbb8826','kBNEg8p-qaLoeLOTic_Eld0rnET1XRVE','49.34.144.170',72,'2018-11-17 06:28:52',72,'2018-11-17 06:28:52','Y','N'),
(379,72,'cf8c9376-a575-e5b6-1ecf-506aa827bcee','r8Kc8vC_lwiyXx9JkCLPlgJlrKcYI2Ec','49.34.132.89',72,'2018-11-17 08:00:57',72,'2018-11-17 08:00:57','Y','N'),
(380,72,'70ccd666-0583-c072-a98a-4b778a83f217','gvtvqA-3k56B2tAWSYezDwP265lHsAOs','49.34.132.89',72,'2018-11-17 10:37:40',72,'2018-11-17 10:37:40','Y','N'),
(381,72,'ed1ba8d9-c9dc-9621-87ee-18a27f5409cc','1uV3zaQ7-K_Rolr72hAz4e_UdX_xDX4o','49.34.186.196',72,'2018-11-17 15:48:31',72,'2018-11-17 15:48:31','Y','N'),
(382,72,'2836a18d-e43a-201d-a187-f360873d2e7a','7vnDwjw6fj5uZwE05YZqyaccNLrztPuM','49.34.186.196',72,'2018-11-17 15:52:26',72,'2018-11-17 15:52:26','Y','N'),
(383,72,'5698996d-f50f-a041-cb3c-b10f01a11d05','nb2PlJY4lpYTiLgpWInVqZqFZDlu8ezI','49.34.167.221',72,'2018-11-18 05:14:47',72,'2018-11-18 05:14:47','Y','N'),
(384,72,'208f1d72-1039-4746-eb8d-6eac6b70552b','JntNsPv4rAmDxtU85A-8I51MeqlFHOUS','49.34.164.156',72,'2018-11-18 08:43:13',72,'2018-11-18 08:43:13','Y','N'),
(385,72,'cfc571da-3185-d4cd-6a22-a0cc328536a2','5qMUBHcNvHQXOh5tf-qW-7NuYAnseTbV','49.34.164.156',72,'2018-11-18 08:43:49',72,'2018-11-18 08:43:49','Y','N'),
(386,72,'3e3e4b55-3d40-9139-b5ad-1f1cc2baa631','z8_ddm9cO67suoqZtQFmRbOlRZk4fVHH','49.34.191.41',72,'2018-11-18 12:14:33',72,'2018-11-18 12:14:33','Y','N'),
(387,72,'c5a8916a-640d-2b9a-97e3-436f47600c9d','Q-LsxroLS-DJ7hLsfw2JRRJ5sD0mcsYQ','49.34.191.41',72,'2018-11-18 13:10:47',72,'2018-11-18 13:10:47','Y','N'),
(388,72,'8e501e85-190b-7cd6-e7f0-9f2f4d50424b','Ih7U7v09oIO_ARU0rxsCuQ2mjNpcOXa6','49.34.191.41',72,'2018-11-18 13:33:00',72,'2018-11-18 13:33:00','Y','N'),
(389,90,'b8cdd0d4-ca97-2749-27f9-8b8dfd420d1a','TGMuHe07s8Sl1evR8MDRjPQT-l97acU5','192.168.1.1',90,'2018-11-19 00:36:31',90,'2018-11-19 00:36:31','Y','N'),
(390,72,'8d7fec06-0516-766b-4fc6-5d1b67729cce','4dp-d0nbQAWPi57Y59Yzxia3oFd-OgKC','192.168.1.144',72,'2018-11-19 03:47:10',72,'2018-11-19 03:47:10','Y','N'),
(391,72,'53105af9-fe1a-ea46-2ade-563b66bea895','bhKIq9YMnrvuGvjLMqaYRdGgu-1SNOPe','192.168.1.144',72,'2018-11-19 03:55:29',72,'2018-11-19 03:55:29','Y','N'),
(392,72,'e7b1e35b-8cd7-f94d-0070-5cbdf86f0701','Derq10VspKsxwp-WChH8hvMrYlJbHrBC','192.168.1.144',72,'2018-11-19 03:56:07',72,'2018-11-19 03:56:07','Y','N'),
(393,72,'80a77e98-be8d-0da1-82b7-3645394af288','9_h80QDP3cxDV0NL8irKnMbapu7HXMNa','192.168.1.144',72,'2018-11-19 03:56:22',72,'2018-11-19 03:56:22','Y','N'),
(394,72,'bd6716e2-8313-d986-b432-f3c4c8210868','0g6oOWqcQlioOiBFbKA1CgPaF_gnbSei','192.168.1.144',72,'2018-11-19 03:58:54',72,'2018-11-19 03:58:54','Y','N'),
(395,72,'071d69e6-5874-f46d-a3a9-86efaf4f7a23','4wKVZ0jhAK9_C-vzEQ2cpdiFFbLd8SPu','192.168.1.144',72,'2018-11-19 03:59:29',72,'2018-11-19 03:59:29','Y','N'),
(396,90,'c5a88759-f8b0-9bd8-9b31-8aaa393462a4','Oauw_kYWvZQuzajFx9g4emjsJH1Ncps0','49.34.128.184',90,'2018-11-19 05:23:33',90,'2018-11-19 05:23:33','Y','N'),
(397,72,'247cccc5-6bdb-06c2-bfc6-e322f14ae3e7','4ib48nwfVDyjaC7kTvCTwjRLWqahtAWk','49.34.128.184',72,'2018-11-19 05:47:14',72,'2018-11-19 05:47:14','Y','N'),
(398,72,'34025bcd-1696-ec8d-00ee-81f4054543cd','VgwJWhGCJ08mQwZjzA4YfTL81WTclhtD','49.34.155.229',72,'2018-11-19 10:16:18',72,'2018-11-19 10:16:18','Y','N'),
(399,72,'00945f99-68ee-15ce-019a-411f7a55b9ad','aIFFMckKxnc4r8sU_UYRRbdcWnMmq3dk','49.34.139.225',72,'2018-11-19 10:53:44',72,'2018-11-19 10:53:44','Y','N'),
(400,72,'99812368-0eb6-7ea7-87a4-060dbf5a1766','mSAUAr8RqrBqpQno4KpZiki6KpKkyzPo','49.34.139.225',72,'2018-11-19 10:55:34',72,'2018-11-19 10:55:34','Y','N'),
(401,72,'fc2a2d37-8ce4-5ec8-6ba0-5b1b2b408299','-Bcthvc5m_q-YV-VHVWR3mcMCNq7WCC5','49.34.139.225',72,'2018-11-19 10:56:40',72,'2018-11-19 10:56:40','Y','N'),
(402,72,'234f1a7f-1b99-2987-eb70-7a93b522231b','TRffZVpYrtYPxvHjGy4-HrKvvUqWPIrq','49.34.139.225',72,'2018-11-19 11:04:51',72,'2018-11-19 11:04:51','Y','N'),
(403,89,'322fa0fa-5711-ed74-a18f-6d527bf19040','3J6ZLZFmJhIF2VwHj7T8RRNtlskYuoDf','106.77.68.124',89,'2018-11-20 02:18:44',89,'2018-11-20 02:18:44','Y','N'),
(404,89,'46cc61a7-cbab-6ec0-7094-48c76c1d1773','iD_1TiLzBdLhonfe6LYGz7zrlhrTcTAB','106.77.68.124',89,'2018-11-20 02:18:44',89,'2018-11-20 02:18:44','Y','N'),
(405,90,'d38fd6b9-7ccd-c51b-cbb4-71e378caa23d','Ykh1IGDdDG8ge-mWEus8-FE68Ey01xok','192.168.1.180',90,'2018-11-20 03:58:09',90,'2018-11-20 03:58:09','Y','N'),
(406,90,'16399c65-a559-368c-05b7-551958554448','mNvM1EvtcUpS7FhTF9Gj-2jLUUpCxoFd','192.168.1.176',90,'2018-11-20 04:04:28',90,'2018-11-20 04:04:28','Y','N'),
(407,72,'7bb8e001-2136-40be-b7f0-7710a09b7fd4','f2FgYMts5nI5JTcLAGnAsWJr7hzbVgZ9','157.32.159.153',72,'2018-11-20 10:43:34',72,'2018-11-20 10:43:34','Y','N'),
(408,72,'a40acf77-0ed4-1b96-5544-2eeb0a836472','z_ZkwbDazHyBE_gHR9pBrmGyaS1cL-nw','157.32.159.153',72,'2018-11-20 11:10:26',72,'2018-11-20 11:10:26','Y','N'),
(409,72,'9f82c709-16c3-925e-b7dc-1b9685c11d11','IRQSUWO5JPEQCqSJMDFsArt2e7Vwd_41','157.32.159.153',72,'2018-11-20 11:16:09',72,'2018-11-20 11:16:09','Y','N'),
(410,72,'1882b26f-a979-c3a4-61b7-2672c68b7641','-2cbSsz8W1rbaT6MR7mRpHAakeR6iuAb','157.32.159.153',72,'2018-11-20 11:22:29',72,'2018-11-20 11:22:29','Y','N'),
(411,72,'afb6176a-29d7-eeef-7c9c-ebc6f7538368','flyhUt5YqZ_e1mdP9U32DagIwDB4P-7n','157.32.159.153',72,'2018-11-20 11:48:05',72,'2018-11-20 11:48:05','Y','N'),
(412,72,'8561552e-e050-bcc3-3b7c-bc38c259a508','wNa4cge4iq6lkfwKaf0s2SQIGS4hLU1H','157.32.159.153',72,'2018-11-20 11:54:05',72,'2018-11-20 11:54:05','Y','N'),
(413,72,'2a5744d4-b9bc-7598-1088-4045fb1c067b','XPmvRngZ7_VZZqWa8fDsvIhGOrL5eMcX','157.32.159.153',72,'2018-11-20 12:07:56',72,'2018-11-20 12:07:56','Y','N'),
(414,72,'e91392f7-6098-c434-44fd-bfbcfb42abff','K-v2AvUqLSUwjhg9bmyokPyFPLIai_AU','157.32.159.153',72,'2018-11-20 12:46:42',72,'2018-11-20 12:46:42','Y','N'),
(415,72,'6f323588-085a-7590-2656-cca97528f71f','fX_0DtELEB76211Waz-Rbz-HAfDPWSqP','157.32.159.153',72,'2018-11-20 12:53:33',72,'2018-11-20 12:53:33','Y','N'),
(416,72,'a710d546-962b-8462-e26c-3ad34a5c53cf','E6zXfwv5WGGS_PMmsr91GnsUnuxPvTXk','157.32.159.153',72,'2018-11-20 13:01:32',72,'2018-11-20 13:01:32','Y','N'),
(417,72,'82c03090-7746-300d-54a1-de0a015a0fa5','ucAGQN85Ybgy0iJEoXLIbBXnv3zqJa0V','157.32.159.153',72,'2018-11-20 13:02:17',72,'2018-11-20 13:02:17','Y','N'),
(418,72,'676ff28b-4075-19a7-7551-8f49cd66e34a','moTwtqBnjZ0Y_r74QHZWg5vnHcD7nRQb','157.32.159.153',72,'2018-11-20 13:11:01',72,'2018-11-20 13:11:01','Y','N'),
(419,72,'2cb3c0a0-d7ef-d8d3-fe98-c11b965faf63','mTjv34YOuDyLWyBwEb0Ty4X3i78R1TQP','157.32.159.153',72,'2018-11-20 13:19:57',72,'2018-11-20 13:19:57','Y','N'),
(420,72,'a9dc96c4-3798-db3a-6149-b4de13c97501','IGhFizg1MBRAbRjloiUKaFql273VJfy8','157.32.159.153',72,'2018-11-20 13:20:51',72,'2018-11-20 13:20:51','Y','N'),
(421,72,'0a96a3dc-5b44-2baf-1387-83d90b952344','tD8Pzzc6gt6fQdP5pA3JK5HU7ybvQ-0d','157.32.159.153',72,'2018-11-20 13:21:35',72,'2018-11-20 13:21:35','Y','N'),
(422,72,'b29e6e59-4431-94de-41a2-f679fcda56bd','WsBcBTIY6PEWt5NWLMnxDuShyS-GuDE5','157.32.159.153',72,'2018-11-20 13:36:37',72,'2018-11-20 13:36:37','Y','N'),
(423,72,'8e8be1a4-5a64-49a6-77cb-a46209fa917c','qfT4FaY3EgvDsqU4JO_-zV99Q6ArTmeO','157.32.159.153',72,'2018-11-20 14:02:05',72,'2018-11-20 14:02:05','Y','N'),
(424,72,'b2655994-dd59-3ce0-7e3c-c4e15a8291d4','zMaQpgYd4ceaTpoR4dnL-10Eo6Yqp8qt','157.32.155.5',72,'2018-11-21 11:48:28',72,'2018-11-21 11:48:28','Y','N'),
(425,72,'2a410313-365a-34ed-d755-05132d91ee21','P4BZTbv1jUaIK93EnzRSJYSqRP8UT1H8','157.32.155.5',72,'2018-11-21 12:01:02',72,'2018-11-21 12:01:02','Y','N'),
(426,72,'5f28da13-b769-6c98-de2f-22383237abe9','mzRuT8pr26e_OJlWoReUDEcLZ8_5u2HV','157.32.131.121',72,'2018-11-21 14:31:09',72,'2018-11-21 14:31:09','Y','N'),
(427,72,'43c8fd02-d1ad-9d4b-32f5-12c75ec8d874','-sIjPEp_BBDagIC3YnXPNEAWeVHLUKEM','157.32.131.121',72,'2018-11-21 14:37:27',72,'2018-11-21 14:37:27','Y','N'),
(428,72,'2472ee59-bf30-7e22-0eb5-2e3a822cbcb7','fUYG7Xs7po2nHUHDR7ctIut7OMCIK9l1','157.32.131.121',72,'2018-11-21 14:45:31',72,'2018-11-21 14:45:31','Y','N'),
(429,89,'883915f2-f75a-a116-297a-2d476053910a','ZFsHFMtwNZpUaGa4nvN9Qki52zIdvmMt','27.109.11.26',89,'2018-11-23 00:14:26',89,'2018-11-23 00:14:26','Y','N'),
(430,72,'9acbd8ab-49b5-e1c8-afb8-b16748815dbe','6uoQ4MLFdzRAqTQnpDRHJjw9-0jA292p','157.32.131.13',72,'2018-11-23 10:38:11',72,'2018-11-23 10:38:11','Y','N'),
(431,72,'7053bdc4-eb00-a447-ccf5-cf7725c33943','zD6LAIIKseHNoM46Ziek2yuVi-qZEu0h','157.32.131.13',72,'2018-11-23 11:04:15',72,'2018-11-23 11:04:15','Y','N'),
(432,72,'5fea6625-9edb-4b01-bb41-dbac761748d8','kkkD67OAU4Whxt4QVmju27YNNGNXBqtx','157.32.131.13',72,'2018-11-23 11:12:33',72,'2018-11-23 11:12:33','Y','N'),
(433,72,'76fbe24a-cac0-a855-68d1-2e6b8a4e0b09','6LK1hsnxFUn0knMOIcRezaBPp8_QeWd-','157.32.131.13',72,'2018-11-23 11:27:56',72,'2018-11-23 11:27:56','Y','N'),
(434,72,'969f594d-6d79-5c9b-586b-c9dc9e3e56b4','g3YpD1G-21ronhvi2gY-3kL5hbCsJ8sV','157.32.131.13',72,'2018-11-23 12:00:12',72,'2018-11-23 12:00:12','Y','N'),
(435,72,'1f2b1225-7e26-569b-0bd5-9be6183d2d6a','IDz3lZ-bIuvfpgSj_EpeFFVcN1RGABko','157.32.131.13',72,'2018-11-23 12:13:38',72,'2018-11-23 12:13:38','Y','N'),
(436,72,'9a6425d7-d667-5a51-14dd-7e35390c8f80','6bUmy8N0J0cLfzzosw3OgM4j_8iBhWxY','157.32.131.13',72,'2018-11-23 12:15:27',72,'2018-11-23 12:15:27','Y','N'),
(437,72,'30a78eca-c2c6-4de2-5f3c-e75b9628f49c','wdwSmxM2QjisowQD0WYUBNB8whLsRWDR','157.32.131.13',72,'2018-11-23 12:16:19',72,'2018-11-23 12:16:19','Y','N'),
(438,72,'17827df8-d744-8a45-c2e7-5e185edd0157','OXMoMgiazcbWuhRdPzeUq1os-wi8CPMg','157.32.131.13',72,'2018-11-23 12:25:39',72,'2018-11-23 12:25:39','Y','N'),
(439,72,'00787592-e9b7-f3da-094f-03aaa1d45101','tlgJd_N3k0EAnT-yUjr1fWNW6L2g5kaA','192.168.1.1',72,'2018-11-24 04:22:37',72,'2018-11-24 04:22:37','Y','N'),
(440,72,'3b6ac341-341e-36d5-c078-2f4fe674bf40','7Xd_zBlvjfVh_9Uy0ueAXQ3z81k5vFyh','192.168.1.1',72,'2018-11-24 04:23:20',72,'2018-11-24 04:23:20','Y','N'),
(441,72,'f3ad7583-8c2d-7f55-2546-6809819019ac','5iDF0ZyI3_f7I8Ibuh7GEExQ_xvOi0IV','157.32.180.51',72,'2018-11-24 08:38:56',72,'2018-11-24 08:38:56','Y','N'),
(442,72,'cb0a5c20-7d4d-8187-77e1-5a717a1ccc2c','uhuPwZViLG-YJQJtjB4VdIJm_xvhuD0T','157.32.180.51',72,'2018-11-24 09:15:02',72,'2018-11-24 09:15:02','Y','N'),
(443,72,'c33801ad-8a4d-36b9-7c14-6903b9db6f4d','BwdQCOq_J7tClAHYD2uZMOVce2-2BLyd','157.32.180.51',72,'2018-11-24 09:17:23',72,'2018-11-24 09:17:23','Y','N'),
(444,72,'ab6cae2d-b491-89a1-1ccd-ecab3f21c405','Ux4xJEoF_miSDYsCpEwHRw8ScPDysBrE','157.32.180.51',72,'2018-11-24 09:20:27',72,'2018-11-24 09:20:27','Y','N'),
(445,72,'f861fc72-0d35-5769-f670-8717095629fd','1DQ1e6ZOgzdIttGTLnFvjU0WPX8YtPap','157.32.180.51',72,'2018-11-24 09:29:00',72,'2018-11-24 09:29:00','Y','N'),
(446,72,'754e736c-19d1-5d48-71f5-3718cc071263','jQBFw-1bWCMMChLP0UPIL4ijMnu08QV3','157.32.180.51',72,'2018-11-24 09:29:01',72,'2018-11-24 09:29:01','Y','N'),
(447,72,'5d4951ba-3d51-43e4-608a-c7c0b25629e6','pS3BxAS8Uw0Gk49kK0eZtCLWk7U59git','157.32.180.51',72,'2018-11-24 09:29:16',72,'2018-11-24 09:29:16','Y','N'),
(448,72,'3c779483-3cf0-de50-c059-88afc0257ea7','bpMAoFsW6ZFnVpY0E3VqFNt7H16EvIdw','157.32.180.51',72,'2018-11-24 09:29:51',72,'2018-11-24 09:29:51','Y','N'),
(449,72,'3f57a346-edb7-88c2-cc86-b5c1bcccb136','FNTUWaP98lsQIqG1QMUeWQwf8Ln2sfdu','157.32.180.51',72,'2018-11-24 09:30:14',72,'2018-11-24 09:30:14','Y','N'),
(450,72,'e2bac436-c011-448f-cf16-770d3380cc95','CQxL2TlUAKh50mopzubMuZzwz0Gxvx7Y','157.32.180.51',72,'2018-11-24 09:30:49',72,'2018-11-24 09:30:49','Y','N'),
(451,72,'6ccbd479-7a93-40c5-f6c2-311a7477764e','4ZIqR8OxhGh5m3jBGM5Eg0x66mAaLp2q','157.32.138.173',72,'2018-11-24 11:18:00',72,'2018-11-24 11:18:00','Y','N'),
(452,96,'1ba078ce-5857-4bf2-46a2-c9bc43f61360','fZ84eixWlOtO9VON6Z0J-7LDHHLidHT2','157.32.138.173',96,'2018-11-24 11:21:47',96,'2018-11-24 11:21:47','Y','N'),
(453,96,'6f04011b-1d37-6191-1bb3-3c039c08ed9c','e0jgy3JV86OqPIeavBwts_M8pVJNXayy','157.32.138.173',96,'2018-11-24 11:23:49',96,'2018-11-24 11:23:49','Y','N'),
(454,72,'25f752ac-2ae9-aa08-8ac5-94c828f9fe51','hFSdgqlzLJbcLPkE7Fby0By5kGOk8YrB','157.32.152.27',72,'2018-11-24 14:56:40',72,'2018-11-24 14:56:40','Y','N'),
(455,72,'9950d18b-c1a9-cc36-2764-6a1eed7d3c8c','JAfCfsbnbtvVIIjjeTTisjw9dc5PYw6q','157.32.182.42',72,'2018-11-24 21:36:25',72,'2018-11-24 21:36:25','Y','N'),
(456,72,'c8610a04-d12a-8a2b-6110-72c258af73d8','xS53CtAp4aSYxjGzBLYBfJ2t7P8Bk9kt','157.32.182.42',72,'2018-11-24 21:39:04',72,'2018-11-24 21:39:04','Y','N'),
(457,72,'bcd1093a-b59e-1d23-a15a-b6edcad485d2','p5WrYwAb9wGjS1zhm-qgug1Z4gS9GiNJ','157.32.182.42',72,'2018-11-24 21:59:19',72,'2018-11-24 21:59:19','Y','N'),
(458,72,'773db33d-752f-3434-f1ff-9793c70d0445','lTbWiYjMs2ogqP5BbnDl5fPSramdaZq9','157.32.185.244',72,'2018-11-25 10:59:19',72,'2018-11-25 10:59:19','Y','N'),
(459,72,'2abf71b4-0f83-f408-30a9-3f567c4153b1','5yUxizxbyG2pKFg_ESNv3Cil6WGO4p9D','157.32.185.244',72,'2018-11-25 13:40:15',72,'2018-11-25 13:40:15','Y','N'),
(460,89,'5d9da0ad-bda2-7e73-3759-33eddfa3424c','muZCzQZLK29ZIIgfLC9RMgTx5X4jpZct','27.109.11.26',89,'2018-11-26 07:46:46',89,'2018-11-26 07:46:46','Y','N'),
(461,89,'b3fe1428-bd51-7135-a7b5-587ca0623f73','U1P54yM0EHl2sGp7H2f0G5OVN8ZcbdWO','27.109.11.26',89,'2018-11-26 07:51:35',89,'2018-11-26 07:51:35','Y','N'),
(462,72,'b31866e7-acc2-6b81-a14f-f439528bdcfb','p7lObjKYzO6aYp5lcCJa5PAJba6rjj_P','27.109.11.26',72,'2018-11-26 08:12:14',72,'2018-11-26 08:12:14','Y','N'),
(463,72,'4c9d6e49-b180-c48b-72fd-e5239b309593','RDGLjolbckyV3lj9HjgdWgpMzaeAE0qe','157.32.27.56',72,'2018-11-26 09:10:07',72,'2018-11-26 09:10:07','Y','N'),
(464,72,'ed08b417-5bf4-8f50-c202-af4800339393','zLGGcUYj6Do5qbll4xQdsZ3mvbWxOCiG','157.32.27.56',72,'2018-11-26 09:13:25',72,'2018-11-26 09:13:25','Y','N'),
(465,72,'2e6cfa03-3ddd-f525-b9a3-bde54ff842d9','0TKZIgfpjGdrQb_CV_bSNVngs7FtMh4E','157.32.27.56',72,'2018-11-26 09:15:48',72,'2018-11-26 09:15:48','Y','N'),
(466,72,'8b30e6e0-65d0-8909-e96e-3147c61ad197','0_HL4PLKrfLDtjPYuUVvskpuh89halqb','157.32.27.56',72,'2018-11-26 09:16:30',72,'2018-11-26 09:16:30','Y','N'),
(467,89,'5f23316f-5ae5-7e1a-d580-efb6bd14ad62','Uqd34SY-KSASM55oPYNjO0uOhKthdFjP','157.32.27.56',89,'2018-11-26 09:22:56',89,'2018-11-26 09:22:56','Y','N'),
(468,72,'43b99055-7e1c-75f3-923b-7032644c6ffe','T2kRz6Gl-sMGV2QhgPtThWNFrIBUmA2o','157.32.27.56',72,'2018-11-26 09:40:57',72,'2018-11-26 09:40:57','Y','N'),
(469,72,'236ca986-5d34-7d88-b156-5885f2872e5a','0LNwNhN5U7MSrovzLOL6gg2jCkpNLnay','157.32.1.32',72,'2018-11-26 11:36:40',72,'2018-11-26 11:36:40','Y','N'),
(470,72,'fd3f0bbb-fece-8bd2-5c60-f47796430310','HmdK6u3IoCBHymlv8a9c3LYndfubQQiJ','157.32.103.130',72,'2018-11-26 11:42:03',72,'2018-11-26 11:42:03','Y','N'),
(471,72,'25bba360-75a9-5749-89a5-54605ba77fc3','KCwm_o8rLPhc9rS3pHNoNfulbhMzZNCw','157.32.99.82',72,'2018-11-26 12:53:32',72,'2018-11-26 12:53:32','Y','N'),
(472,89,'43529cf3-fc6b-615a-edcb-9a154f11f2cf','9468RqKBTa2t5qPxi_w0vJcdep99jOwn','27.109.11.26',89,'2018-11-27 02:20:08',89,'2018-11-27 02:20:08','Y','N'),
(473,72,'14458563-1e37-245c-4693-ac02170e27f4','9-diBhqA4UUiKQadnA4-X05S5byUJvjv','122.170.49.221',72,'2018-12-04 09:43:52',72,'2018-12-04 09:43:52','Y','N'),
(474,72,'f8f6fbde-bde6-f07f-8086-fea8deaa9681','JJ0GbJalMn_kMoWzPV0WR50GnKWhShYA','192.168.1.225',72,'2018-12-04 09:47:37',72,'2018-12-04 09:47:37','Y','N'),
(475,72,'9747b91e-0ca7-72f6-d2d6-505dffa62a1f','DFppVcgf5RaaoFrhjURS0GIkyFVdzqEp','192.168.1.222',72,'2018-12-04 09:53:40',72,'2018-12-04 09:53:40','Y','N'),
(476,99,'43d79084-0275-1a74-a577-ce7829d2d75d','gW9RS-fj5Xz_1_rHFqRkcM2YHzuU_0wu','192.168.1.1',99,'2018-12-05 01:52:52',99,'2018-12-05 01:52:52','Y','N'),
(477,90,'c6fcc4d8-8a50-19d2-b45a-ed85301c5650','GxN-jjh3f7MIUcOWt7WMmMoe9r4qW9_-','192.168.1.1',90,'2018-12-05 01:55:07',90,'2018-12-05 01:55:07','Y','N'),
(478,72,'a1b09483-1857-7291-f5dd-ab37e833a70b','uFAUIzyCdhG72bLLod4kEY2b4DK6S0T5','192.168.1.221',72,'2018-12-05 01:57:14',72,'2018-12-05 01:57:14','Y','N'),
(479,72,'86902b10-8377-38c2-1dae-f3a6910955b9','1abYaSCJvJ7Fd0OXf42-9ij0FuCk_u-v','157.32.234.125',72,'2018-12-05 06:07:10',72,'2018-12-05 06:07:10','Y','N'),
(480,72,'753b4de7-3307-1fff-8db9-c83f48db9bcb','2MMLNzSSDhS9zsC4UhaWiwMYPzEHuzX3','49.34.170.234',72,'2018-12-05 06:13:57',72,'2018-12-05 06:13:57','Y','N'),
(481,72,'d1181d40-43c1-c3c1-fd26-2f2db30aefac','xw4qhKqCk_B2n32ZlFm1U8l9A83Xo7ak','49.34.170.234',72,'2018-12-05 06:15:41',72,'2018-12-05 06:15:41','Y','N'),
(482,72,'bdd0dec3-de28-bc92-95c6-2af2e1caad1b','Zb59BKksJdN2lmh_tHvRw6BvIrPeXOlp','192.168.1.225',72,'2018-12-05 06:16:15',72,'2018-12-05 06:16:15','Y','N'),
(483,72,'3a69aa26-8014-eecb-bda6-bc6636e9175c','NLNoTQwwAAVp-lqCy1-V4CAzggko7XLr','49.34.170.234',72,'2018-12-05 06:30:24',72,'2018-12-05 06:30:24','Y','N'),
(484,72,'a6b836f1-c6ef-b675-63f9-79b3089dc248','si_OBvvaL0xIMNSdMNt0ZY6eLKJK-8u2','157.32.153.199',72,'2018-12-05 10:41:04',72,'2018-12-05 10:41:04','Y','N'),
(485,72,'b67b2f6c-fc4c-db76-3bcb-4a344f7f5035','XV6RQZgol5gHs4N7rORniPjWGthHAT-o','192.168.1.132',72,'2018-12-06 01:40:06',72,'2018-12-06 01:40:06','Y','N'),
(486,72,'f4549ee2-5e1b-bbcb-f62a-98b245b58596','1l3zlDqFBSErHAr8xJqOFQUyLHawdS04','192.168.1.132',72,'2018-12-06 02:27:18',72,'2018-12-06 02:27:18','Y','N');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`name`,`created_date`,`updated_date`,`is_delete`) values 
(1,'Admin','2018-08-29 18:35:53','2018-08-29 18:35:56','N'),
(2,'Architecture','2018-10-11 16:51:20','2018-10-11 16:51:24','N'),
(3,'Chief Chief','2018-10-11 16:51:53','2018-10-11 16:51:59','N'),
(4,'General Contractor(GC)','2018-10-11 16:52:24','2018-10-11 16:52:27','N'),
(5,'Project Manager','2018-10-11 16:53:10','2018-10-11 16:53:13','N'),
(6,'Sub Contractor','2018-10-11 16:53:55','2018-10-11 16:53:58','N'),
(7,'Superintendent','2018-10-11 16:54:33','2018-10-11 16:54:36','N'),
(8,'Vendor','2018-10-11 16:55:05','2018-10-11 16:55:10','N'),
(9,'HOD','2018-10-11 16:59:30','2018-10-11 16:59:33','N'),
(10,'superadmin','2018-10-11 16:59:53','2018-10-11 16:59:56','N'),
(11,'VIP','2018-10-11 17:00:33','2018-10-11 17:00:35','N'),
(12,'Test 1','2018-10-11 17:04:12','2018-10-11 17:04:14','N'),
(13,'new role','2018-10-11 17:05:31','2018-10-11 17:05:33','N'),
(14,'Onsite Developers','2018-10-11 17:06:24','2018-10-11 17:06:27','N');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL COMMENT '1:admin;2:user(project_manager);3:contractor;',
  `architect_firm` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `is_login` enum('Y','N') DEFAULT 'N',
  `zipcode` varchar(255) DEFAULT NULL,
  `address` text,
  `last_login` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_admin` enum('Y','N') DEFAULT 'N',
  `is_pwa` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`first_name`,`last_name`,`email`,`password`,`role`,`architect_firm`,`user_image`,`access_token`,`auth_key`,`password_reset_token`,`contact_number`,`city_id`,`state_id`,`is_login`,`zipcode`,`address`,`last_login`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`,`is_admin`,`is_pwa`) values 
(1,'Admin','Admin','Admin','admin@xceltec.in','2bba93f5fc1eff9ad023f2239791a8fe',27,'','5ba0e829c0b4c.png',NULL,'Zf0urUGjBZaKyapzlqs1hTilXO4iXEdJ','YwRtIHwg8ric4HuRKwVRRl2Tl9XXzC68_1542025498','123456',2,2,'N','20550','Testt','2018-12-06 04:09:27',1,'2018-08-20 12:13:12',1,'2018-10-19 08:31:39','Y','N','Y','N'),
(2,'Chirag','bvfb','dfbdfb','demo.xceltec5@gmail.com','e10adc3949ba59abbe56e057f20f883e',1,NULL,'5b8f829f89b6f.png',NULL,'sKJ2bSUTxPBT0TOX0hMzYw5AgyNCJ-bW','D034kuSG5K-MFFNusQD7-O7bQRXmP5rx_1539948421','561561561',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:08:05',1,'2018-09-05 03:15:43',1,'2018-09-11 01:20:03','Y','N','Y','N'),
(3,'Couch Construction Services','Couch Construction Services','LLC','CCS@gmail.com','e10adc3949ba59abbe56e057f20f883e',3,'','5ba0e0a134186.png',NULL,'LWa6CfsuSFRfQKZveqbPWXCb4T2PynIM','DLkRmmD1pMyIX2_hrqgRlxJRc8ESj_7E_1537269921','16961561561',52,2,'N','980015','Satelite','2018-09-18 07:25:21',1,'2018-09-18 07:25:21',1,'2018-12-03 05:44:29','Y','N','N','N'),
(4,NULL,'ADALBERTO ADALBERTO','ADALBERTO ADALBERTO','ADALBERTO@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5ba0e0e3989a7.png','iPsRXLh_4OpGkEi2b6aXVHdLuVJV4WpO','6LWuGkSv0SxduvjzP4tES6seGGitfQtt','PynZfsDcXFRi0wKt_JtmcdqsV0d5NpyS_1539777434','+18734298798327',NULL,NULL,'Y',NULL,NULL,'2018-09-18 07:26:27',1,'2018-09-18 07:26:27',1,'2018-11-06 01:55:27','Y','N','N','N'),
(5,NULL,'BERNARDO BERNARDO','BERNARDO BERNARDO','BERNARDO@mailintor.com','e10adc3949ba59abbe56e057f20f883e',7,NULL,'5ba0e11c260c7.png',NULL,'HQpNML51OZjsUzTVw9osvAXiVQxucxtc','GORRkpuyERG7bghyBeJyNt_NSI1THWMd_1537270044','+101982309081203',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:27:24',1,'2018-09-18 07:27:24',1,'2018-09-18 07:27:24','N','N','N','N'),
(6,NULL,'CHRISTOPER','CHRISTOPER ','CHRISTOPER@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5ba0e147b966f.png',NULL,'HWCyA1l9jZjMOenPWZ1VO4y5lHQRnHZf','HcgUV0pDjkUCSTcCDSqdQ0xwy5ZagXwU_1537270087','+197821093879018',5,6,'N','1234123','Test','2018-09-18 07:28:07',1,'2018-09-18 07:28:07',1,'2018-10-23 04:46:46','N','N','N','N'),
(7,NULL,'DOMINIQUE DOMINIQUE','DOMINIQUE DOMINIQUE','DOMINIQUE@mailinator.com','e10adc3949ba59abbe56e057f20f883e',7,NULL,'5ba0e17e5514e.png',NULL,'Ft94idf8HNHfJQqbhY2M3-LTw7uJR5RW','6YkfSC_2yyn2v9uWF7gM9CyqIG858WCB_1537270142','+198719823791231',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:29:02',1,'2018-09-18 07:29:02',1,'2018-09-18 07:29:02','Y','N','N','N'),
(8,NULL,'ELDRIDGE ELDRIDGE','ELDRIDGE ELDRIDGE','ELDRIDGE@mailinator.com','e10adc3949ba59abbe56e057f20f883e',10,NULL,'5ba0e1b060bcc.png',NULL,'YYpPAchkFxHuh69FDMy_frJb5rH4E1Yj','fzsbWSufRX3zbwAKfcXgn1EczMaFEKEv_1537270192','+111111111111111',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:29:52',1,'2018-09-18 07:29:52',1,'2018-09-18 07:29:52','Y','N','N','N'),
(9,NULL,'FERNANDO FERNANDO','FERNANDO FERNANDO','FERNANDO@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5ba0e1e78aae0.png',NULL,'fOth8pEJPLXHoMXs07TdUTRf6N9MzVC8','plTE7Slb7qGsWgGkdb29fl7bR0zunjrN_1537270247','+111111111111112',1,1,'N','980015','Satelite','2018-09-18 07:30:47',1,'2018-09-18 07:30:47',1,'2018-10-03 02:40:04','N','N','N','N'),
(10,NULL,'GREGORIO','GREGORIO','GREGORIO@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5ba0e2721f3b9.png',NULL,'VRVNlk6ywVwbpQvuoGI4WeDXeOY7zG4X','peBN7O8PP6kvMsAR90dJX2fC7Sf9TbMV_1537270386','+182437987128937',2,2,'N','20550','Test','2018-09-18 07:33:06',1,'2018-09-18 07:33:06',1,'2018-10-18 00:52:52','Y','N','N','N'),
(11,NULL,'HERSCHEL HERSCHEL','HERSCHEL HERSCHEL','HERSCHEL@mailinator.com','e10adc3949ba59abbe56e057f20f883e',10,NULL,'5ba0e3021f980.png',NULL,'CLWjeSbnwcrWdR_xNpqFpJYiUAd2zTDW','fI9IxWWSJhuuuhSjS3OON-NE1Em7npDg_1537270530','+198231908901283',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:35:30',1,'2018-09-18 07:35:30',1,'2018-09-18 07:35:30','Y','N','N','N'),
(12,NULL,'ISREAL ISREAL','ISREAL ISREAL','ISREAL@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5ba0e4d6a3dcc.png',NULL,'Qb-UCl11_q6X58RvOOSTzuvRgpMe7aWb','u9wMzO78CIQD15lMwVQh_tQMzlGU-zhq_1537270998','+198127349871231',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:43:19',1,'2018-09-18 07:43:18',1,'2018-09-18 07:43:18','Y','N','N','N'),
(13,NULL,'JAMISON JAMISON','JAMISON JAMISON','JAMISON@mailinator.com','e10adc3949ba59abbe56e057f20f883e',7,NULL,'5ba0e503a42d5.png',NULL,'rk3NBCVzhOGfWR3AbFJ1tKKeZyN4BIoA','kMBmUq7oCzSW--I9cn3SkmOSnho1Mv4V_1537271043','+197812093890123',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:44:03',1,'2018-09-18 07:44:03',1,'2018-09-18 07:44:03','Y','N','N','N'),
(14,NULL,'Abraham','Lincon','JULIAN@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5ba0e7a96fa07.png',NULL,'LosHGzQujQ05mB_OPDgXFfnphL3Gc-4F','ey6yT03C4uCn3qDqKP1aIcWyhavuqoSh_1537271095','+198172398718293',11,1,'N','182735','Test','2018-09-18 07:44:55',1,'2018-09-18 07:44:55',1,'2018-10-18 02:58:33','Y','N','N','N'),
(15,NULL,'KRISTOPHER KRISTOPHER','KRISTOPHER KRISTOPHER','KRISTOPHER@mailinator.com','e10adc3949ba59abbe56e057f20f883e',7,NULL,'5ba0e6440bd21.png',NULL,'qUc-_7FFlZz4oE7QaB9ytjK0w1CVBbcL','gevQqRooUQdIA6ft67d-08MiLr3Wobhx_1537271364','+191283908123712',NULL,NULL,'N',NULL,NULL,'2018-09-18 07:49:24',1,'2018-09-18 07:49:24',1,'2018-09-18 07:49:24','N','N','N','N'),
(16,NULL,'Monika','Patel','monika.timbadiya@xceltec.in','e10adc3949ba59abbe56e057f20f883e',9,NULL,'5ba236fff0ba2.png',NULL,'vG9Q4s66lPuBpNRNNc571GR7X_VZ7dXC','INwuCVNluNkhbNfae6ksX381uAekvi6M_1537357567','546321789',NULL,NULL,'N',NULL,NULL,'2018-10-29 10:17:49',1,'2018-09-19 07:46:07',1,'2018-09-19 07:46:07','Y','N','N','N'),
(17,NULL,'Apexa','Pandya','apexa.pandya@xceltec.in','e10adc3949ba59abbe56e057f20f883e',10,NULL,'5ba23bad338f3.png',NULL,'I922KLVw4Yhct0gvJ4oF7k9bIzJZdzlG','omMnN9KTcRyeAPhdjp4qYG-AuMY8nBn4_1537358765','563214789',NULL,NULL,'N',NULL,NULL,'2018-09-19 09:27:19',1,'2018-09-19 08:06:05',1,'2018-09-19 08:06:05','Y','N','N','N'),
(18,NULL,'Taylor','Swift','taylorswift@gmail.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5ba330bfe0013.png',NULL,'Lavy-87JuKE4Sd-lNm5nIagbdX5mXqtZ','w8aiI4MlkAjZTM_aDxxcUiQZmbh2hZpa_1537421503','4191489651156156',NULL,NULL,'N',NULL,NULL,'2018-09-20 01:31:43',1,'2018-09-20 01:31:43',1,'2018-09-20 01:31:43','Y','N','N','N'),
(19,NULL,'test','test','test@gmail.com','e10adc3949ba59abbe56e057f20f883e',12,NULL,'5ba33f13d5ecb.png',NULL,'LhgtdgsA7lk7d6dVB20DGaiUysIlSaSF','NRyCK34UOhvIqYhbzqL4Gz5NG-lLspAK_1537425171','4654154798765',NULL,NULL,'N',NULL,NULL,'2018-09-26 05:08:53',1,'2018-09-20 02:32:51',1,'2018-09-24 06:50:24','Y','N','N','N'),
(20,NULL,'Test ','Architect','testarchitect@gmail.com','e10adc3949ba59abbe56e057f20f883e',14,'Test','5ba88c5ed4419.png',NULL,'2RvmpoGHWX96Tpj0yTQ5hxdGhZqqHS1C','QQFbnRSkKtAAl0Zf7Zlduv0PD1kG0UUF_1537772638','51561515655662',1,1,'N','980015','Satelite','2018-09-25 00:57:02',1,'2018-09-24 03:03:58',1,'2018-10-04 02:24:56','Y','N','N','N'),
(21,NULL,'Test','Test','testsubcontractor@gmail.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bab6c6d0d95c.png',NULL,'oObw9QftrKg_X2yPJKPSpeW8LYkWKF9p','QN8_TZ_Xk7fb8PXfsKKAEXVMFwov2h4X_1537859295','56516',1,1,'N','980015','Satelite','2018-09-25 08:13:23',1,'2018-09-25 03:08:15',1,'2018-09-26 07:24:29','Y','N','N','N'),
(22,NULL,'Davidxc','David1','david@david.com','e10adc3949ba59abbe56e057f20f883e',12,NULL,'5bae02990a4e4.png',NULL,'_JWeYkADv74JjUKA3jWSXf1VkiHShhsP','ofTAX4aA4V7wfiOne0stPx-wUrFtTDmt_1537955158','515615656156',1,1,'N','980015','Satelite','2018-09-26 05:45:58',1,'2018-09-26 05:45:58',1,'2018-09-28 06:34:50','Y','N','N','N'),
(23,NULL,'Ronan','Ronan','Ronan@Ronan.Ronan','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bab70183768a.png',NULL,'ZgI1bY5jqQF5uCPZ3gMxT-TkfY3Xk_Z7','uGTdl2L2S5zzUvSh0sczzWjdtQ5Vmopb_1537962008','894561894651',1,1,'N','980015','Satelite','2018-09-26 07:40:08',1,'2018-09-26 07:40:08',1,'2018-09-26 07:40:08','Y','Y','N','N'),
(24,NULL,'David1','David1','david@david.david','e10adc3949ba59abbe56e057f20f883e',14,'CCS','5bab8999222b9.png',NULL,'KSCZC7qi7gAaiH3UiI2zObHXUgamWiXc','xWIqQZHvUx9eCyyQzEsuVpQ-uC3WYRP1_1537966856','16541656',1,1,'N','980015','Satelite','2018-09-27 03:23:58',1,'2018-09-26 09:00:56',1,'2018-10-03 06:48:31','Y','N','N','N'),
(25,NULL,'Chirag','Kakkad','ck@ck.com','e10adc3949ba59abbe56e057f20f883e',5,NULL,'5bac96bc579f4.png',NULL,'TkvEy-y-QE1fmsOZF1yeGJA2iTqkKa8b','eKcALqE_ANDD_-mbXwPXfe9hJ91rxgcW_1538037436','515615656151',1,1,'N','980015','Satelite','2018-10-13 01:53:48',1,'2018-09-27 04:37:16',1,'2018-09-27 04:37:16','Y','N','N','N'),
(26,NULL,'Ravi','Shah','ravi@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbb302c7fa25.png',NULL,'eYv2WDtloZPVG47pe1t62GSYsuU9GxnB','zD8Rf2WEE5JLP_WMus7Bo3kKJgi_RWVu_1538994220','+18905174644',1,1,'N','12312312','HASKJDHKJAHSDJKH ASDKJHAKJSDH KJHASDKJHKAJ SH DJKH AKJSHDKJAHSDKJ HAKJSH DKJAHSJKDH  KJASH DKJAH SDKJHAKJSHD KJHA SDKJHAKJSHDKJAHS DKJHA SKJDH AKJSDH KJASHD KJA YHSDKJHAKSJDHKJASHDKJAHSDKJ HASKJD HKJASH DKJHAS DKJHASD KJASDH KJAHSDKJH AKSD KJA HSDKJHA SKJDH ASDKHASKJDJHKJASHDJK ASDKJHAKSJHDJKKJKJCJK','2018-10-08 06:23:40',1,'2018-10-08 06:23:40',1,'2018-10-08 07:00:07','Y','Y','N','N'),
(27,NULL,'Jason','Holder','jason@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbb307b2f1ec.png',NULL,'fauFS6zFvXEYYVMNPy0cnd45HhwHV61E','TI8zihQ-bxMq0vGb-q1Z2-bxFENP2ljH_1538994299','+18905174655',1,1,'N','77777777','Test Address','2018-10-08 06:24:59',1,'2018-10-08 06:24:59',1,'2018-10-08 06:24:59','Y','N','N','N'),
(28,NULL,'Peter','Siddle','peter@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbb30d2242db.png',NULL,'lN2sthdkFOly8cGCwVUDtPUThuwIObMf','WZCmi8nbYNwN5kJEmAOORZAfGOpNZm8q_1538994386','+19719827398',1,1,'N','91823989','Address Test','2018-10-08 06:26:26',1,'2018-10-08 06:26:26',1,'2018-10-08 06:26:26','Y','N','N','N'),
(29,NULL,'Mathew','Wade','mathew@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbb310d06329.png',NULL,'n25D6YAEHxTqFF68zU-95X9rDg0zwXdj','c2xuz0xh_ZImCk9uyPzcuZuARgG5QwKt_1538994445','+18971289378',1,1,'N','91820938','New Address','2018-10-08 06:27:25',1,'2018-10-08 06:27:25',1,'2018-10-08 06:27:25','Y','N','N','N'),
(30,NULL,'Mitchel','starc','Mitchel@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbb321c3e137.png',NULL,'dQ88XZzv3rDRv7ekgJEcRRH92uuX6F07','XpOhAASxy_f1UorJz-_JESYcevi7vnGx_1538994716','+18712983798',1,1,'N','24523','Test New','2018-10-08 06:31:56',1,'2018-10-08 06:31:56',1,'2018-10-08 06:31:56','Y','N','N','N'),
(31,NULL,'DavidD','WarnerR','david@mailinator.com','fcea920f7412b5da7be0cf42b8c93759',11,NULL,'5bbb369045202.png',NULL,'vhqA074tOgKEVKg5PJvbm2Esk4_NUHTz','w7JQIE0oPRNnz4Tjhs4qEEjz_UPxNyla_1538994790','+19871298379',2,2,'N','11111111','Test Dallas','2018-10-08 06:33:10',1,'2018-10-08 06:33:10',1,'2018-10-08 07:00:18','Y','N','N','N'),
(32,NULL,'Test','Test','Test@test.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbb397972ea2.png',NULL,'MsygOw4D_KKW7p-INasdbhhn19PFSm9b','z4eiZJB7sxddhL68Eoqzbz-fyDEnN0l8_1538996601','+19872189347',2,2,'N','91278309','Test','2018-10-08 07:03:21',1,'2018-10-08 07:03:21',1,'2018-10-08 07:03:21','Y','Y','N','N'),
(33,NULL,'ADALBERTO','ADALBERTO','ADOLFO@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb3d1c21c38.png',NULL,'QfHjUopjpLbg5mytutNfKJsVCcAzPTcV','3daP3hGIbA4_XDx7nfR-XleKU1Pnb6yA_1538997233','+18866391085',1,1,'N','22222222','Address New','2018-10-08 07:13:53',1,'2018-10-08 07:13:53',1,'2018-10-08 07:18:52','Y','N','N','N'),
(34,NULL,'BRADFORD','BRADFORD','BRADFORD@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb3d5823de5.png',NULL,'kiKCxZibQNVW7tY_MwUz6dbG97lCfdvK','NhhTkWJnkMlWmBWKVSAhbfsxxsM80P1f_1538997592','+17128937981',2,2,'N','23123123','Test Address','2018-10-08 07:19:52',1,'2018-10-08 07:19:52',1,'2018-10-08 07:19:52','Y','N','N','N'),
(35,NULL,'CHARLES','CHARLES','CHARLES@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb3da05671f.png',NULL,'dy3r3F9Dvqz9-gH3RlCGo-N3QxlNAL7o','ZE1njI6rBe0R-RdlaMQU61sLEw_LYXkb_1538997664','+19872398478',1,1,'N','98120938','Test Adress','2018-10-08 07:21:04',1,'2018-10-08 07:21:04',1,'2018-10-08 07:21:04','Y','N','N','N'),
(36,NULL,'DONOVAN','DONOVAN','DONOVAN@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb3e58f0466.png',NULL,'6-unpgCEitQSG6XTaEzkiTq8SpgkJTLS','gsD3CaXjbR4O4k0DRCjwXKoOPgCSD6Zu_1538997848','+17898273489',1,1,'N','21312312','Test Adress','2018-10-08 07:24:08',1,'2018-10-08 07:24:08',1,'2018-10-08 07:24:08','Y','N','N','N'),
(37,NULL,'ELLSWORTH','ELLSWORTH','ELLSWORTH@mailinator.com','fcea920f7412b5da7be0cf42b8c93759',14,NULL,'5bbb3e807541d.png',NULL,'slE4U38q8pNjh_n-8UNbFfybK7MPHsBP','HY_M7xyUeu--eOPq28-ZYMozQNQ6RAqj_1538997888','+10821937190',2,2,'N','7218937','Test','2018-10-08 07:24:48',1,'2018-10-08 07:24:48',1,'2018-10-08 07:24:48','Y','N','N','N'),
(38,NULL,'FLORENTINO','FLORENTINO','FLORENTINO@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb3efdbc109.png',NULL,'zkKH2CymJwFYFKL3CwRiAChKr_rLDiKI','tXob_FPo-M6rJjPsUe8QtB7F1a0LSpu7_1538998013','+19812309890',2,2,'N','72334','Test','2018-10-08 07:26:53',1,'2018-10-08 07:26:53',1,'2018-10-08 07:26:53','Y','N','N','N'),
(39,NULL,'GARFIELD','GARFIELD','GARFIELD@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb3f2f1ddfc.png',NULL,'i0w2TMWOtAYxXXFQrh7538EnZJGRBKR7','hRCmTfqjf2C32L5qMtAAhgABQmbJyDn3_1538998063','+17809128730',2,2,'N','111111','Test New Address','2018-10-08 07:27:43',1,'2018-10-08 07:27:43',1,'2018-10-08 07:27:43','N','N','N','N'),
(40,NULL,'Test','Test','Test123@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb41b2acc2d.png',NULL,'cfaCZ5QCCYr-dQWZjly9xmlBVBw4IUh2','jqqEeSAMoB3uM8w944JwjnTAQHK32fqm_1538998706','+17982173489',2,2,'N','11111111','TEST','2018-10-08 07:38:26',1,'2018-10-08 07:38:26',1,'2018-10-08 07:38:26','Y','Y','N','N'),
(41,NULL,'ravi','shah','ravi123@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb42108714f.png',NULL,'jpmj-kSxrhqneSeRKAVOeZSzkzjkUIdg','OIl2Va_2OQDECtQLNP2tICW2ly3hrkO8_1538998800','+12222222222',2,2,'N','23456789','Testtttttttttttttttt','2018-10-08 07:40:00',1,'2018-10-08 07:40:00',1,'2018-10-08 07:40:00','Y','N','N','N'),
(42,NULL,'ravi','shah','ravi12345@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbb424da6396.png',NULL,'3XUYVx7etEV5IRRz3BWHoCj_ozH6W-P9','KQa7E_0mJ6WJsCeQCXvoJDV4CNmc4EQT_1538998861','+13333333333',2,2,'N','1234567','Testttttttttttttttttttttttttttttttttttttttt','2018-10-08 07:41:01',1,'2018-10-08 07:41:01',1,'2018-10-08 07:41:01','Y','N','N','N'),
(43,NULL,'sdc','sdc','cs@scsd.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbc8335744af.png',NULL,'TgEUVvbHLUDJt6LbN97ts30gTnnpxHb7','27v3UWIpvyb0Y6fbktygbpVT1cWroPZm_1539081013','156156156156',1,1,'N','980015','Satelite','2018-10-09 06:30:13',1,'2018-10-09 06:30:13',1,'2018-10-09 06:30:13','Y','N','N','N'),
(44,NULL,'ascxasc','sdcsdcsdc','david@davidd.david','e10adc3949ba59abbe56e057f20f883e',12,'','5bbc8615eb621.png',NULL,'P8E10oQYpqX4b0f0PcrExTIbad_zDXzT','XzfSF9xhHvowwp4xv35GzuZx0cxmuhbl_1539081749','+16541656',1,1,'N','980015','Satelite','2018-10-09 06:42:29',1,'2018-10-09 06:42:29',1,'2018-10-09 09:24:23','Y','N','N','N'),
(45,NULL,'Mathew','Hayden','hayden@mailinator.com','e10adc3949ba59abbe56e057f20f883e',17,'','5bbcacd40ffe4.png',NULL,'8OQqyYML7a1k61VhlF1rDv1GWrGdRXjc','b-c5oRL41N4-wYF8ZkZ_tAAZIjmfF6MX_1539091668','+17189273987',2,2,'N','23423423','Test','2018-10-09 09:27:48',1,'2018-10-09 09:27:48',1,'2018-10-09 09:27:54','Y','N','N','N'),
(46,NULL,'Vendor','Vendor','vendor@mailinator.com','e10adc3949ba59abbe56e057f20f883e',12,NULL,'5bbcaf7268145.png',NULL,'q0QqtrwxmvV3dQniplgUmoueSgGnLCwx','OrZpZ5FJWSq_AR4xz184Fa8XIE8ncDIn_1539092338','+18719287398',2,2,'N','76876876','test','2018-10-09 09:38:58',1,'2018-10-09 09:38:58',1,'2018-10-09 09:39:12','Y','N','N','N'),
(47,NULL,'Abbas','Ali','Abbas@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bbcafc3f095f.png',NULL,'A3fJBxcRs0NVnjTPeIvAariNPdHWzpYQ','Nva65-HQybvZWrvdSwEhcCzEIORrLG8l_1539092419','+19781209387',1,1,'N','18273','Test','2018-10-09 09:40:19',1,'2018-10-09 09:40:19',1,'2018-10-09 09:40:19','Y','N','N','N'),
(48,NULL,'Architect','Architect','Architect@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bbcafefc495c.png',NULL,'icIvryd5EpUJiWfG4ceoAOtoKOC08oqP','fvyu4r0AyS2ZKh7_Evvwdcyqkk5FrXnc_1539092463','+19872093847',2,2,'N','19283','Test','2018-10-17 02:44:42',1,'2018-10-09 09:41:03',1,'2018-10-16 06:20:02','Y','N','N','N'),
(49,NULL,'Justin','Langer','Justin@mailintor.com','e10adc3949ba59abbe56e057f20f883e',17,'','5bbdbaf37f9c2.png',NULL,'GC4y-5o-Xo9_aQn1z6jB3J8m1bCcO5KK','rPuteJ6Mh7SokbZVzb1cdg-_fD0jDmpu_1539160819','+10810923890',1,1,'N','87123','Test','2018-10-17 02:41:04',1,'2018-10-10 04:40:19',1,'2018-10-10 04:40:19','Y','N','N','N'),
(50,NULL,'Nathan','Lyon','demo.xceltec4@gmail.com','e10adc3949ba59abbe56e057f20f883e',1,'','5bbdbb838a7eb.png',NULL,'24SQTyE2GQ3tOEyfgMUz3v3KDbZuutm9','GYmPHC-x9P-sgpw7tIMbM4uL5s7dJur9_1539160963','+19810928309',2,2,'N','8791','Test','2018-10-10 05:31:23',1,'2018-10-10 04:42:43',1,'2018-10-10 04:42:43','Y','N','N','N'),
(51,'Chirag Kakkad',NULL,NULL,'chiragkakkad996@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1539239176_182541699.jpg','V2Fw8BQD2DmKOdgAk7gkhUbYHBByKcsW','XyI3RXqw5-H-MAWUj6BsiywZ8frJiB59','Q6shA7gSSkKButbiyqSMnllHHRFqR0vI_1539239176',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-11 02:26:16',1,'2018-10-11 02:26:16',1,'2018-10-11 02:26:16','Y','N','N','N'),
(53,'rushita kotadiya','rushita','kotadiya','rushita.kotadiya@xceltec.in','25d55ad283aa400af464c76d713c07ad',NULL,'','1539248420_243330494.png','CDhsOCTzY2D30s6nPXIXOUTm-VhugPH1','xkFiHGyGmvxEOk9C2zoSqC0ngIk2zehO','F60lWwbH2OLXd-DbmvsOwHNVXir4wN4r_1539265125',NULL,1,1,'Y','5412','Ahemdabad','2018-10-11 05:00:20',1,'2018-10-11 05:00:20',1,'2018-10-16 05:46:10','Y','N','N','N'),
(54,'bhumika patel',NULL,NULL,'bhumika@gmail.com','25f9e794323b453885f5181f1b624d0b',NULL,NULL,'1539256087_326151213.png','YJHutc8Gy3bGSQslWWX0ddNf249mBqMY','WeLvQZkvxkGODy3sRlk8jZLigXoydQUs','amlL6L-gFezsO-Niz_CH5_Khm0hASRNt_1539256087',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-11 07:08:07',1,'2018-10-11 07:08:07',1,'2018-10-11 07:08:07','Y','N','N','N'),
(55,'bhumika patel',NULL,NULL,'bhumikak@gmail.com','fcea920f7412b5da7be0cf42b8c93759',NULL,NULL,'1539340465_1186177125.jpg','WY9e7GMA1fLjTuFajLp9hfsGO6OEhSir','8qSgB7RyeOtOKstqdAcSbR_21u21IPAY','rcfNT2ryvgbtcq4s8glcwHJEw8ev-xjr_1539340465',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-12 06:34:25',1,'2018-10-12 06:34:25',1,'2018-10-12 06:34:25','Y','N','N','N'),
(57,'tests','tests','test','test@test.com','e10adc3949ba59abbe56e057f20f883e',11,'','5bc476fc89858.png',NULL,'DWm9E44YqVDSbM6WioGy-BYJ-4qZjMyj','L6Y69FRNQ2BOYusIycrnt4mWk5yalg7A_1539602172','123465879',1,1,'N','etsttest','Ahemdabad','2018-10-15 07:16:24',1,'2018-10-15 07:16:12',1,'2018-10-16 08:01:18','N','Y','N','N'),
(58,'demo','demo','demo','demo@gmail.com','e10adc3949ba59abbe56e057f20f883e',12,NULL,'5bc5d672894e6.png',NULL,'DPOMjjcTdPl1l7A6xHYEi2D3dN8Cmj4s','9u_AGxHH6Lb80MquSgPn06uUoOjeeaI6_1539692146','245123566324',2,2,'N','541235','ahemdabad','2018-10-16 08:15:46',1,'2018-10-16 08:15:46',1,'2018-10-17 05:07:51','Y','N','N','N'),
(59,'Dawyne','Dawyne','Jhoson','Dawyne@mailinator.com','e10adc3949ba59abbe56e057f20f883e',12,NULL,'5bc6de9ed1105.png',NULL,'yRoLZ0YdV5J_IaCMTCLtFdUzRl2dP6bU','i-goPnwtQEreog4UiSkEXX6DkI2urcPo_1539759774','190809182309',2,2,'N','asdasdas','Test','2018-10-17 03:02:54',1,'2018-10-17 03:02:54',1,'2018-10-17 03:10:20','N','Y','N','N'),
(60,'Chriss','Chriss','Morriss','Chris@mailinator.com','80b6cd0e086e662e46c0fbd1ba33ec6d',14,'','5bc6f7b5b60a8.png',NULL,'6b_uNptNSmD3BQQCuWJta6GjHsWxOErp',NULL,'198210934809',1,1,'N','21341231','YTasuydyuasdsss','2018-10-17 05:45:30',1,'2018-10-17 04:49:57',1,'2018-10-17 05:01:21','Y','N','N','N'),
(61,'New Contractorr','New Contractorr','New Contractorr','mathew@mail.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bc6fc5326894.png',NULL,'QfP3n1xbNoBhLFYOKoiMgLV58Q0-XsZ3','LWJpMT15A0k_VoTVJwzifNLP-fwCZh7g_1539767363','+18971289370',1,1,'N','71239888','Testttt','2018-10-17 05:09:23',1,'2018-10-17 05:09:23',1,'2018-10-17 05:11:12','N','N','N','N'),
(62,'pooja','pooja','dave','pooja.dave@mailinator.com','fcea920f7412b5da7be0cf42b8c93759',12,'','5bc82ee2316ac.png',NULL,'xY3sbxT8LngWGoJQb4gYdaIRkMfoJoaR',NULL,'565654454564',5,6,'N','45433343','B/406 Deve Aurum','2018-10-23 02:45:59',1,'2018-10-18 02:57:38',1,'2018-10-19 08:04:42','Y','Y','N','N'),
(64,'Zarin','Zarin','Zarin','zarin@mailinator.com','e10adc3949ba59abbe56e057f20f883e',25,'','5bc9ac90db139.png',NULL,'s2KwVsQFf0xUG1ZMD0VeAzv8e0WWhtS6','5gZE_EFWnr1HsJn5WrF1AbLj_RybXw0k_1539954023','171982379234',2,2,'N','91823','Test','2018-10-19 09:32:56',1,'2018-10-19 06:06:08',1,'2018-10-19 09:03:55','Y','N','N','N'),
(67,'keval shah',NULL,NULL,'keval.shah@xceltec.in','25d55ad283aa400af464c76d713c07ad',NULL,NULL,'1540207585_1580995504.png','WuYAnHMBicdiBXk99vhgNtiiqAaUtEb_','wMpk40CrLif2LqlYBPzCAsd8QZWExLWb','NtF74njFNgDr4x4LkZlBGWwSu9sFlYw8_1540207585',NULL,NULL,NULL,'Y',NULL,NULL,'2018-10-22 07:26:25',1,'2018-10-22 07:26:25',1,'2018-10-23 05:53:57','Y','N','N','N'),
(68,'Kethrin1','Kethrin1','halen1','Kethrin@mailiantor.com','e10adc3949ba59abbe56e057f20f883e',25,'','5bcec55ed8d8b.png',NULL,'O7borXUPXK04MufFTjzLYyu4AUqBhzEp','vESYEZ7JWv6ucSFDulJ29JQ_Hacd37K2_1540277552','187128937891',3,4,'N','30000','Testing Address','2018-10-23 02:52:32',1,'2018-10-23 02:52:32',1,'2018-10-23 02:53:39','N','Y','N','N'),
(69,'jason','jason','sathom','jasonnew@mailinator.com','e10adc3949ba59abbe56e057f20f883e',26,'','5bcec9fa623a2.png',NULL,'jma3ibTOcNH_pVo1OYpVzMgDsLwEN32T','6ekuSE6ubuWLlAOAYogfkUUK8kNShclu_1540278778','198712983798',51,51,'N','20098','Address','2018-10-23 03:12:58',1,'2018-10-23 03:12:58',1,'2018-10-23 03:12:58','Y','N','N','N'),
(70,'Abdullaaa','Abdullaaa','Alyefiiii','AbdullaAl@mailinator.com','e10adc3949ba59abbe56e057f20f883e',12,NULL,'5bcede53cd25f.png',NULL,'J0fc2i7-iNz7XTMiTF3LNBg6GWZa640e','tx3FX76hK-v_xxKoSyaiHOfe2J195THL_1540279767','111111111111',3,4,'N','989122','Testt','2018-10-23 03:29:27',1,'2018-10-23 03:29:27',1,'2018-10-23 04:39:47','Y','Y','N','N'),
(71,NULL,'Kiran1','Varghese1','Kiran@mailinator.com','e10adc3949ba59abbe56e057f20f883e',11,NULL,'5bcedf990d21a.png',NULL,'9sV9iXll-tFE9kn8QMGK-Q7m_rhGNpzn','R1AgawCWAuA9oUHZYhAeyAWwAxtfOPtT_1540284282','199999999999',19,19,'N','222222','Adresss','2018-10-23 04:44:42',1,'2018-10-23 04:44:42',1,'2018-10-23 04:45:13','Y','Y','N','N'),
(72,'Darshita','Darshita','Rakholiya','samirkhan.pathan@xceltec.in','e10adc3949ba59abbe56e057f20f883e',10,'','5bcee52d1e7de.png','1l3zlDqFBSErHAr8xJqOFQUyLHawdS04','oshgGoWu_hPApUuFsS2GaPWiyID6PtML','ipd6X5E9KyY0Mr8ZxBUNr25rzFaCqhES_1540285741','7069655759',16,16,'Y','12345','Ahemdabad','2018-11-14 01:23:23',1,'2018-10-23 05:09:01',1,'2018-12-06 02:27:18','Y','N','N','N'),
(73,'Ilangi1','Ilangi1','Shah1','Ilangi@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,NULL,'5bcee9d15c453.png',NULL,'DxDk06yVP-Q9coEKsfA_ldFFgl8DZGNa','fXsi7Zzi2JacwkWG6_U0Qt33t4_QCcAd_1540286498','19999926620',34,34,'N','222222','Testt','2018-10-23 05:21:38',1,'2018-10-23 05:21:38',1,'2018-10-23 05:29:00','Y','Y','N','N'),
(74,'riya',NULL,NULL,'riyapatel@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1540296747_254479473.jpg','UswHWzpv9ZcKNLox-ZwvA7uRZAh9HOSJ','rNavsCdVXHVTH9bO_rwcQbR8bfBlAPSq','QH7VnOJtJj1GLlaOFipoFacvxF1xf4g-_1540296747',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-23 08:12:27',1,'2018-10-23 08:12:27',1,'2018-10-23 08:12:27','Y','N','N','N'),
(75,'riya',NULL,NULL,'riyapatel65@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1540376375_398537812.png','cIBGlAy7m4VSw8gPfjDQFNABSlEfhzgV','HajDnlTr7asOCcEr_PQxSWXj-Hvj9Z_L','cXbrKKwwChmKB6xSYb_phmh0V2miKu2P_1540376375',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-24 06:19:35',1,'2018-10-24 06:19:35',1,'2018-10-24 06:19:35','Y','N','N','N'),
(76,'srtest',NULL,NULL,'stest@test.com','a141c47927929bc2d1fb6d336a256df4',NULL,NULL,'1540395678_1215154161.jpg','4X2uUGo3Z8JvM8srzApvHtXvsQa9WUVe','0zh93Rth1wk-bSuarXPeH1PI0wIYJSH6','N6_sp_n-zSyINjwkK-ZyKx2RnGDSle4u_1540395678',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-24 11:41:18',1,'2018-10-24 11:41:18',1,'2018-10-31 10:46:20','Y','N','N','N'),
(77,'qq',NULL,NULL,'qq@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1540447690_489993311.0816','DTr9N6G_mDjaoxkI6DK551lGdWxWYaW1','AbNOyYLlkMATKY_OShIoizc9QOf2uTBl','SW8NVEyliYE6P0J_CfP4zqh7LMxHcGk8_1540447690',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-25 02:08:10',1,'2018-10-25 02:08:10',1,'2018-10-25 02:08:10','Y','N','N','N'),
(78,'',NULL,NULL,'qqu@gmail.com','bc6786b9d531dd9c189a21c18ae08212',NULL,NULL,'1540447700_2116390901.0816','oJQNHqw1So28RmzTTShv98MFYeFrxG1C','AJNMFE4IWUV-Trc2-5xKGjdW4aEov8Gq','jBnaqyxqvrtM6Sk5qPUeb7OSrJT_zYhF_1540447700',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-25 02:08:20',1,'2018-10-25 02:08:20',1,'2018-10-25 02:08:20','Y','N','N','N'),
(79,'savan',NULL,NULL,'savanrajkotiya@gmail.com','e99a18c428cb38d5f260853678922e03',NULL,NULL,'1540558351_1565584013.jpg','2Bj7FKK7Vwoa8nWT6zmgT0wL-sUQXRty','uYoVa2moXA_Xi7y4Y5kGO1rJDoVvwfI-','I2Zo6J9ObF-bTzR_YlrtQ8uuR-OFqyba_1540558351',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-26 08:52:31',1,'2018-10-26 08:52:31',1,'2018-11-07 08:34:25','Y','N','N','Y'),
(80,'savan','savan','patel','140540107103@darshan.ac.in','f480a71122d4c2bb57dc3bdd363251bb',14,'','5bd317428f1a0.png','p0IARRjNOYCoI_zV58X-TtQPK4oyDY1V','2L0_Pl-cm6QNKVVfDKi0tzu98YEUP66M','MEg-0v1Rya4sxV3M-jMhkrbCFv8nb543_1540560706','56156151561',52,2,'Y','380015','Rajkot','2018-10-26 09:45:50',1,'2018-10-26 09:31:46',1,'2018-10-29 11:26:48','Y','N','N','Y'),
(82,'Darshita','Darshita','Rakholiya','darshita.rakholiya@xceltec.in','86e1a50ca74b223c9bd1fe25a9c1adda',9,'','1540616149_560364353.jpg','0_QSYDLvP6CsxA5QXtEA8LjEcdvecvpc','-0m_foe8bjIluz4CgHntKW5WEpJjMDfT','SZr6h6pWkh4rWhe0HjlpuYgJTFU_2aMa_1540616149','123664825825',52,2,'Y','61295146','USA','2018-10-27 00:55:49',1,'2018-10-27 00:55:49',1,'2018-10-27 05:18:35','Y','N','N','Y'),
(83,'shubham',NULL,NULL,'shubham.chandarana@xceltec.in','6a61e33cf7972da5c9d57588e6176761',NULL,NULL,'1540874998_1195297481.jpg','SvNGa7-zkyFSxqyGODFeOEZj_tUKDhpt','-ary0Za5B-KhYUaU_SEEGP2EeScrjaY7','zmPodJUSiLwbel1XR_sYI3ZpZODo6hRC_1540874998',NULL,NULL,NULL,'Y',NULL,NULL,'2018-11-14 00:41:14',1,'2018-10-30 00:49:58',1,'2018-11-14 00:24:38','Y','Y','N','N'),
(84,'shubhamkc',NULL,NULL,'chandaranashubham14@gmail.com','fcea920f7412b5da7be0cf42b8c93759',NULL,NULL,'1540875090_678220225.jpg','pKCqZAUoRtwpLFpUhO4Yc1wSC1YZfhMp','3MCgAJ4YCI-hR1KKNHIpdIzZ3-oNZ0QV','rwmANLHomdZUBq6B79xaYyvUkypjvMRw_1540875090',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-30 00:51:30',1,'2018-10-30 00:51:30',1,'2018-10-30 01:51:15','Y','N','N','N'),
(85,'31',NULL,NULL,'abc@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'1540875590_1743363303.jpg','zlQ89l7d6FYq7VBgI1oexg5eAm9qksMn','xyvD-i5FG_NxX31WNuA1Acaz0MDQe7ZQ','YdlvrW41bU7-Pxhf0MpKlBANSMQaPrFX_1540875590',NULL,NULL,NULL,'N',NULL,NULL,'2018-10-30 00:59:50',1,'2018-10-30 00:59:50',1,'2018-10-30 00:59:50','Y','N','N','N'),
(86,'Skc123456',NULL,NULL,'Shubham@xceltec.in','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,'X8tSfgKJdocEkpW8cBLCeFlHh7ZHgAPK','YvBhwVUxZGmoWqRst5vAijkLks0AYr_2','5xbEK9sn3TD7CqH60JI-CtX6QgZB1APP_1541051569',NULL,NULL,NULL,'N',NULL,NULL,'2018-11-01 01:52:49',1,'2018-11-01 01:52:49',1,'2018-11-01 01:52:49','Y','N','N','N'),
(87,'Skc123456',NULL,NULL,'Shubham@xceltec.in','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,'Hzzd70y7gS_GqsVSlNzMm3jVX3KRanuk','Zf3JXj1qHv5PcLYAj16lbm1pgyOoS96N','1IaNZHdN_s0Cr3tzJ20E5Dz1QeXEr1f4_1541051569',NULL,NULL,NULL,'N',NULL,NULL,'2018-11-01 01:52:49',1,'2018-11-01 01:52:49',1,'2018-11-01 01:52:49','Y','N','N','N'),
(88,'shubham',NULL,NULL,'sk@xceltec.in','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1541051622_1051499766.jpg','2COPQCyeUjgz7CP1cSfl2u7YZgHjlmUh','pm5fbmvup-S73sQRIsO-VBnVcdMGuOpp','RPZjvqCGBUpu_YokkBbp99wbdOwnXNie_1541051622',NULL,NULL,NULL,'N',NULL,NULL,'2018-11-01 01:53:42',1,'2018-11-01 01:53:42',1,'2018-11-01 01:53:42','Y','N','N','N'),
(89,'tesdt','tesdt','tesdt','david@david.davida','e10adc3949ba59abbe56e057f20f883e',25,'','5be03eebccfb4.png','9468RqKBTa2t5qPxi_w0vJcdep99jOwn','oZGDTzh8NIiu-iOf6asReNqpITwxBM4n','s4grhzi40hJM3PPmLRjBvZLaNdgm_vSj_1541422827','+1654165656',3,4,'N','980015','Satelite','2018-11-12 23:27:16',1,'2018-11-05 08:00:27',1,'2018-11-27 02:20:08','Y','N','N','N'),
(90,'shubham','shubham','chandarana','shubham.chandarana@xceltec.in','fcea920f7412b5da7be0cf42b8c93759',9,'','1542175049_296624306.jpg','GxN-jjh3f7MIUcOWt7WMmMoe9r4qW9_-','g7_xHWKpcvDQ_sQCmYIDB1d8LYc9Z6k_','sebt1LjKI30OORdhtkPKEbBTO-ws8SmK_1542175049','945569415618',52,2,'N','980015','Satelite','2018-11-14 04:06:09',1,'2018-11-14 00:57:29',1,'2018-12-05 01:55:07','Y','N','N','Y'),
(91,'Test',NULL,NULL,'Test@test.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1542175470_1070079605.jpg','MQzdkctPseGshdlCKNgiM7HRQT7UQX3z','UjKuDiDj8qsev8RfhY4dl0kaTtKtliVd','eiCyr6Snv4GvErxTKRwLFbxwj18LiAts_1542175470',NULL,NULL,NULL,'Y',NULL,NULL,'2018-11-14 01:04:30',1,'2018-11-14 01:04:30',1,'2018-11-16 00:21:22','Y','N','N','Y'),
(94,'as','as','sax','999@f9f9.gh','e10adc3949ba59abbe56e057f20f883e',11,'','5bf3c935c0240.png',NULL,'NAKCgrEtjMQcBE3jIadDFpIcKqcVI6fh','k1l5lKT2bB3WDnbkKPAFI0j0t14M_73S_1542703413','969696969699',53,1,'N','980015','Satelite','2018-11-20 03:43:33',1,'2018-11-20 03:43:33',1,'2018-11-24 01:59:54','Y','N','N','N'),
(95,'riya',NULL,NULL,'riyapatsel65aaa1@gddmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1543068563_1654157065.png','HEj9Li6C4T-jEkxOBFKSuNtn9uwqmrx-','Mcd37_XgBU8fS2rGWXBk46Hm4S6W-7mC','ZAiHQ1EfCJwBCc-rbh7T_N4QE7CW64w2_1543068563',NULL,NULL,NULL,'N',NULL,NULL,'2018-11-24 09:09:23',1,'2018-11-24 09:09:23',1,'2018-11-24 09:09:23','Y','N','N','Y'),
(96,'Sai',NULL,NULL,'Xyz@gmail.com','ce00a862921f76a72ef896ea77589b36',NULL,NULL,'1543076409_584841949.jpg','e0jgy3JV86OqPIeavBwts_M8pVJNXayy','WyQuhdgqHL289ErH_AMvzhqUV0gFEHQt','X5IrafsWuBvHfVI5dDDIu497mIMVhBDG_1543076409',NULL,NULL,NULL,'N',NULL,NULL,'2018-11-24 11:20:09',1,'2018-11-24 11:20:09',1,'2018-11-24 11:23:49','Y','N','N','Y'),
(97,'garry','garry','sobers','garry@mailinator.com','e10adc3949ba59abbe56e057f20f883e',14,'','5c0508d998a91.png',NULL,'AePlKPJkS_NwOCgIuWi4VUFGbqrM6d0d','mZqhzd0r1oigiDx0GTa9hjJi9GmiAvJi_1543560966','+18723847823',1,1,'N','21983490','Florida','2018-11-30 01:56:06',1,'2018-11-30 01:56:06',1,'2018-12-03 05:43:37','Y','N','N','N'),
(98,'Gary','Gary','Kirtsen','kirsten@mailinator.com','e10adc3949ba59abbe56e057f20f883e',10,'','5c0508ce0613c.png',NULL,'cF9Ol77rNud5A0cdbz13M5B0hC3-cY-L','UO9hs9tlcjpc3UsOdQOmBUmubGRGLXK__1543567045','+19812903809',1,1,'N','19283','Test','2018-11-30 03:37:25',1,'2018-11-30 03:37:25',1,'2018-12-03 05:43:26','Y','N','N','N'),
(99,'Shubham',NULL,NULL,'shubham.chandarana@xceltec.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1543992741_4294945.jpg','gW9RS-fj5Xz_1_rHFqRkcM2YHzuU_0wu','QFufU5cRlyTRobLp3eeuNOEYd4XvlUTI','cCmMySGxfoZ6_e6J1EZOZq71UVvAcz6g_1543992741',NULL,NULL,NULL,'N',NULL,NULL,'2018-12-05 01:52:21',1,'2018-12-05 01:52:21',1,'2018-12-05 01:52:51','Y','N','N','Y'),
(100,'David Gutta',NULL,NULL,'davidgutta@test.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'1544012826_993784009.jpg','XR3hCajRJrcCuVoXu71TuO7Qdjjur5ZM','FMwe3ntRoEE01OqrjeIci8YPgoaYQrRv','GLE0oHjWlGX51CDWz3Z526yoQ3YKJMR4_1544012826',NULL,NULL,NULL,'N',NULL,NULL,'2018-12-05 07:27:06',1,'2018-12-05 07:27:06',1,'2018-12-05 07:27:06','Y','N','N','Y');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
