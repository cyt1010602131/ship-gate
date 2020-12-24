/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.31-log : Database - ship
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ship` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ship`;

/*Table structure for table `t_app` */

DROP TABLE IF EXISTS `t_app`;

CREATE TABLE `t_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(32) NOT NULL DEFAULT '' COMMENT '应用名称',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `context_path` varchar(32) NOT NULL DEFAULT '' COMMENT '路径上下文',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启，1开启0未开启',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `t_app_instance` */

DROP TABLE IF EXISTS `t_app_instance`;

CREATE TABLE `t_app_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL COMMENT '应用id',
  `version` varchar(32) NOT NULL DEFAULT '' COMMENT '版本号',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `port` int(11) NOT NULL DEFAULT '0' COMMENT '端口号',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `t_app_plugin` */

DROP TABLE IF EXISTS `t_app_plugin`;

CREATE TABLE `t_app_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL COMMENT '应用id',
  `plugin_id` int(11) NOT NULL COMMENT '插件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
