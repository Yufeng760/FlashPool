/*
Navicat MySQL Data Transfer

Source Server         : Demo
Source Server Version : 50723
Source Host           : 127.0.0.1:3306
Source Database       : flashpool

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-11-25 21:28:49
*/
CREATE DATABASE flashpool CHARACTER SET utf8 COLLATE utf8_general_ci;  /*创建flashpool数据库*/
USE flashpool;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `A_id` int(11) NOT NULL AUTO_INCREMENT,
  `A_name` varchar(15) DEFAULT NULL,
  `A_pw` varchar(20) DEFAULT NULL,
  `A_nickname` varchar(20) DEFAULT NULL,
  `A_type` char(1) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `C_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `C_text_loc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `T_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`T_id`,`user_id`),
  KEY `FKjby6aprc2rh3sxi3qu46jb22q` (`user_id`),
  CONSTRAINT `FKbrrrrybe0pb34spg1vtv4t4gn` FOREIGN KEY (`T_id`) REFERENCES `topic` (`T_id`),
  CONSTRAINT `FKjby6aprc2rh3sxi3qu46jb22q` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`T_id`) REFERENCES `topic` (`T_id`),
  CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `N_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `T_id` int(11) DEFAULT NULL,
  `N_title` varchar(90) DEFAULT NULL,
  `N_text_loc` varchar(255) DEFAULT NULL,
  `N_img_loc` varchar(255) DEFAULT NULL,
  `N_attach_loc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`N_id`),
  KEY `FKe1itwc2kfdnytx2n5b8clcnf3` (`T_id`),
  KEY `FKmoddtnuw3yy6ct34xnw6u0boh` (`user_id`),
  CONSTRAINT `FKe1itwc2kfdnytx2n5b8clcnf3` FOREIGN KEY (`T_id`) REFERENCES `topic` (`T_id`),
  CONSTRAINT `FKmoddtnuw3yy6ct34xnw6u0boh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `note_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `note_ibfk_2` FOREIGN KEY (`T_id`) REFERENCES `topic` (`T_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `R_id` int(11) NOT NULL AUTO_INCREMENT,
  `N_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `R_text_loc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`R_id`),
  KEY `FKk0y0yg6q5ftx4m25a8bq0sy35` (`N_id`),
  KEY `FKapyyxlgntertu5okpkr685ir9` (`user_id`),
  CONSTRAINT `FKapyyxlgntertu5okpkr685ir9` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKk0y0yg6q5ftx4m25a8bq0sy35` FOREIGN KEY (`N_id`) REFERENCES `note` (`N_id`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`N_id`) REFERENCES `note` (`N_id`),
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------

-- ----------------------------
-- Table structure for super_admin
-- ----------------------------
DROP TABLE IF EXISTS `super_admin`;
CREATE TABLE `super_admin` (
  `SA_id` int(11) NOT NULL AUTO_INCREMENT,
  `SA_name` varchar(15) DEFAULT NULL,
  `SA_pw` varchar(20) DEFAULT NULL,
  `SA_nickname` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`SA_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of super_admin
-- ----------------------------
INSERT INTO `super_admin` VALUES ('1', 'ajuanjuan', '12345', '李淑娟');
INSERT INTO `super_admin` VALUES ('2', 'yufeng760', '12345', '王鹏飞');
INSERT INTO `super_admin` VALUES ('3', 'rainsilver', '12345', '曹振飞');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `T_id` int(11) NOT NULL AUTO_INCREMENT,
  `T_name` varchar(30) DEFAULT NULL,
  `T_intro_loc` varchar(255) DEFAULT NULL,
  `T_introImg_loc` varchar(255) DEFAULT NULL,
  `T_follow_num` int(11) DEFAULT NULL,
  `T_note_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`T_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) DEFAULT NULL,
  `user_mobile` varchar(11) DEFAULT NULL,
  `user_pw` varchar(20) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL,
  `user_sex` char(3) DEFAULT NULL,
  `user_real_name` varchar(30) DEFAULT NULL,
  `user_email` varchar(320) DEFAULT NULL,
  `user_nickname` varchar(24) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_intro` varchar(100) DEFAULT NULL,
  `user_city` varchar(15) DEFAULT NULL,
  `user_birth` date DEFAULT NULL,
  `user_career` varchar(30) DEFAULT NULL,
  `user_topic_num` int(11) DEFAULT NULL,
  `user_note_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKn8pl63y4abe7n0ls6topbqjh2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
