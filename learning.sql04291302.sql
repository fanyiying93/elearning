/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : learning

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-04-29 13:02:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `course_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `price` double DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('37', '17', '2016-04-29 12:57:24', '精品课程', '精品课程test', '120', '2016042913001876.flv');

-- ----------------------------
-- Table structure for `leaveinfo`
-- ----------------------------
DROP TABLE IF EXISTS `leaveinfo`;
CREATE TABLE `leaveinfo` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_user_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `leave_content` varchar(250) DEFAULT '',
  `replay_content` varchar(250) DEFAULT NULL,
  `leave_time` timestamp NULL DEFAULT NULL,
  `replay_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveinfo
-- ----------------------------
INSERT INTO `leaveinfo` VALUES ('7', '16', '17', 'test', 'test2', '2016-04-29 00:06:56', '2016-04-29 08:07:12');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `course_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT NULL,
  `price` double(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('14', '37', '17', '16', '2016-04-29 12:58:03', '120', '精品课程', '2016042912572468.flv');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `balance` double DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tell` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'test', '3', '520', '3', '112');
INSERT INTO `user` VALUES ('16', '1', '1', '2', '1', '0', '2', '2');
INSERT INTO `user` VALUES ('17', '1', '1', '1', '2', '120', '1', '1');
INSERT INTO `user` VALUES ('18', '2', '2', '2', '2', '0', '2', '2');
INSERT INTO `user` VALUES ('19', '2', '2', '2', '1', '0', '2', '2');
