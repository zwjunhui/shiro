/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.49 : Database - shiro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiro` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiro`;

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(256) NOT NULL COMMENT 'url地址',
  `NAME` varchar(64) NOT NULL COMMENT 'url描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`ID`,`URL`,`NAME`) values (1,'/user','user:user'),(2,'/user/add','user:add'),(3,'/user/delete','user:delete');

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(64) NOT NULL COMMENT '角色名称',
  `MEMO` varchar(64) NOT NULL COMMENT '角色描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`ID`,`NAME`,`MEMO`) values (1,'admin','超级管理员'),(2,'test','测试账户');

/*Table structure for table `t_role_permission` */

DROP TABLE IF EXISTS `t_role_permission`;

CREATE TABLE `t_role_permission` (
  `RID` int(11) NOT NULL COMMENT '角色id',
  `PID` int(11) NOT NULL COMMENT '权限id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

insert  into `t_role_permission`(`RID`,`PID`) values (1,2),(1,3),(2,1),(1,1);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(64) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `STATUS` varchar(1) NOT NULL COMMENT '是否有效 1：有效  0：锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`ID`,`USERNAME`,`PASSWORD`,`CREATE_TIME`,`STATUS`) values (1,'mrbird','42ee25d1e43e9f57119a00d0a39e5250','2017-12-11 17:20:21','1'),(2,'tester','243e29429b340192700677d48c09d992','2017-12-11 10:52:48','1'),(3,'admin','1fedc5a36d03c185065dd2b323886aa5','2019-07-15 17:26:08','1');

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `USER_ID` int(11) NOT NULL COMMENT '用户id',
  `RID` int(11) NOT NULL COMMENT '角色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`USER_ID`,`RID`) values (1,1),(2,2),(3,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
