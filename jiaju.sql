/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : jiaju

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-06-24 09:54:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_agent`
-- ----------------------------
DROP TABLE IF EXISTS `t_agent`;
CREATE TABLE `t_agent` (
  `agentId` varchar(40) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `contract` varchar(20) NOT NULL,
  `areaId` varchar(20) NOT NULL,
  PRIMARY KEY (`agentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_agent
-- ----------------------------

-- ----------------------------
-- Table structure for `t_area`
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `areaId` int(10) NOT NULL,
  `area` varchar(40) NOT NULL,
  PRIMARY KEY (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_area
-- ----------------------------

-- ----------------------------
-- Table structure for `t_company`
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `areaId` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `fixedPhone` varchar(20) DEFAULT NULL,
  `mobilePhone` varchar(20) NOT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `logo` varchar(20) DEFAULT NULL,
  `clickNumber` int(20) DEFAULT NULL,
  `rank` int(20) DEFAULT NULL,
  `isStick` int(1) DEFAULT NULL,
  `businessLicense` varchar(20) DEFAULT NULL,
  `agentId` varchar(20) NOT NULL,
  `star` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', 'q', 'q', 'q', '1', 'q', 'q', 'q', 'q', 'q', 'q', '1', '1', '1', 'q', '1', '1', '1');
INSERT INTO `t_company` VALUES ('2', '1', '222', '1', '2', '1', '1', '111', '1', '1', '修改信息.png', '0', '0', '0', null, '3', '5', '0');
INSERT INTO `t_company` VALUES ('3', '123', '123', '123', '2', '123', '123', '123', '123', '123', '123_logo.png', '0', '0', '0', '123_bl.png', '4', '5', '0');
INSERT INTO `t_company` VALUES ('4', '111', '111', '111', '4', '111', '111', '111', '111', '111', '111_logo.png', '0', '0', '0', '111_bl.png', '8', '5', '0');
INSERT INTO `t_company` VALUES ('5', '33', '33', '33', '2', '33', '33', '33', '33', '33', '33_logo.png', '0', '0', '0', '33_bl.png', '4', '5', '0');
INSERT INTO `t_company` VALUES ('6', '111', '111111', '111', '3', '111', '111', '11111111111', '111', '111', '111_logo.png', '0', '0', '0', '111_bl.png', '6', '5', '0');
INSERT INTO `t_company` VALUES ('7', '99', '999999', '99', '5', '999', '999', '99999999999', '999', '999', '99_logo.png', '0', '0', '0', '99_bl.png', '10', '5', '0');
INSERT INTO `t_company` VALUES ('8', 'liyu', '700407', 'liyu', '1', '1@qq.com', '123456', '13643719450', '123456', 'beijing', 'liyu_logo.png', '0', '0', '0', 'liyu_bl.png', '1', '5', '0');
INSERT INTO `t_company` VALUES ('9', '888', '888888', '888', '1', '888', '888', '88888888888', '888', '888', '888_logo.png', '0', '0', '0', '888_bl.png', '1', '5', '0');
INSERT INTO `t_company` VALUES ('10', '77', '7777777', '777', '1', '777', '777', '77777777777', '777', '777', '777_logo.png', '0', '0', '0', '777_bl.png', '1', '5', '0');
INSERT INTO `t_company` VALUES ('11', '55', '555555', '55', '1', '55', '55', '55555555555', '55', '55', '55_logo.png', '0', '0', '0', '55_bl.png', '1', '5', '0');
INSERT INTO `t_company` VALUES ('12', '1111', '111111', '1111', '1', '1111', '1111', '11111111111', '1111', '1111', '1111_logo.png', '0', '0', '0', '1111_bl.png', '1', '5', '0');
INSERT INTO `t_company` VALUES ('13', '123', '123123', '123', '1', '123', '123', '12345678912', '123', '123', '123_logo.png', '0', '0', '0', '123_bl.png', '1', '5', '0');
INSERT INTO `t_company` VALUES ('14', '345', '3453453', '345', '1', '345', '345', '34353453453', '345', '345', '345_logo.png', '0', '0', '0', '345_bl.png', '1', '5', '0');

-- ----------------------------
-- Table structure for `t_company_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_company_goods`;
CREATE TABLE `t_company_goods` (
  `cgName` varchar(40) NOT NULL,
  `classId` int(10) NOT NULL,
  `width` double(20,0) NOT NULL,
  `length` double(20,0) NOT NULL,
  `height` double(20,0) NOT NULL,
  `thickness` double(20,0) NOT NULL,
  `price` double(20,0) NOT NULL,
  `appearence` varchar(100) NOT NULL,
  `id` varchar(40) NOT NULL,
  `cgId` int(40) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cgId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company_goods
-- ----------------------------
INSERT INTO `t_company_goods` VALUES ('a', '1', '10', '10', '10', '10', '10', 'D:/tmp/123_logo.png', '1', '1');
INSERT INTO `t_company_goods` VALUES ('b', '1', '10', '10', '10', '10', '10', 'D:/tmp/123_logo.png', '1', '2');
INSERT INTO `t_company_goods` VALUES ('c', '1', '10', '10', '10', '10', '10', 'D:/tmp/123_logo.png', '1', '3');
INSERT INTO `t_company_goods` VALUES ('d', '2', '20', '20', '20', '20', '20', 'D:/tmp/d_logo.png', '1', '4');
INSERT INTO `t_company_goods` VALUES ('e', '3', '30', '30', '30', '30', '30', 'D:/tmp/e_logo.png', '1', '5');

-- ----------------------------
-- Table structure for `t_nationality`
-- ----------------------------
DROP TABLE IF EXISTS `t_nationality`;
CREATE TABLE `t_nationality` (
  `nationalityId` varchar(40) NOT NULL,
  `nationality` varchar(40) NOT NULL,
  PRIMARY KEY (`nationalityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nationality
-- ----------------------------

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderNumber` varchar(255) NOT NULL DEFAULT '',
  `total` double DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `oerderTime` datetime DEFAULT NULL,
  `agentId` int(11) DEFAULT NULL,
  `identifyingTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('aa0', '30', 'aa', '2016-06-11 13:32:53', '1', '2016-06-11 13:32:53', '1');

-- ----------------------------
-- Table structure for `t_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_goods`;
CREATE TABLE `t_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(255) DEFAULT NULL,
  `cgId` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_goods
-- ----------------------------
INSERT INTO `t_order_goods` VALUES ('1', 'aa0', '2', '3', '10', '30');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `sex` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nationalityId` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `identityCard` varchar(20) NOT NULL,
  `Mobilephone` varchar(20) NOT NULL,
  `shippingAddress` varchar(100) NOT NULL,
  `lastIp` varchar(40) NOT NULL,
  `lastTime` datetime DEFAULT NULL,
  `registerTime` datetime NOT NULL,
  `star` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '男', 'a', '1', 'aa', 'aa', 'aaa', 'aaa', 'aaa', 'aaa', null, '2016-06-03 01:16:40', '0', '0');
INSERT INTO `t_user` VALUES ('2', '男', 'c', '3', 'c', 'c', 'c', 'c', 'c', 'aaa', null, '2016-06-03 09:16:46', '0', '0');
INSERT INTO `t_user` VALUES ('3', '女', 'd', '4', 'd', 'd', 'd', 'd', 'd', 'aaa', null, '2016-06-03 10:09:27', '0', '0');
INSERT INTO `t_user` VALUES ('4', '男', 'e', '5', 'e', 'e', 'e', 'e', 'e', 'aaa', null, '2016-06-03 11:18:53', '0', '0');
INSERT INTO `t_user` VALUES ('5', '男', 'b', '2', 'b', 'b', 'b', 'b', 'b', 'aaa', null, '2016-06-03 11:21:54', '0', '0');
INSERT INTO `t_user` VALUES ('6', '男', 'f', '2', 'f', 'f', 'f', 'f', 'f', 'aaa', null, '2016-06-03 11:23:32', '0', '0');
INSERT INTO `t_user` VALUES ('7', '男', 'h', '6', 'h', 'h', 'h', 'h', 'h', 'aaa', null, '2016-06-03 11:24:33', '0', '0');
INSERT INTO `t_user` VALUES ('8', '男', 'q', '1', 'q', 'q', 'q', 'q', 'q', 'aaa', null, '2016-06-06 16:49:35', '0', '0');
INSERT INTO `t_user` VALUES ('9', '女', 'qq', '11', 'qq', 'qq', 'qqqq', 'q', 'q', 'aaa', null, '2016-06-06 16:50:18', '0', '0');
INSERT INTO `t_user` VALUES ('10', '女', 'zz', '1', 'zz', 'zz', 'zz', 'zz', 'zz', 'aaa', null, '2016-06-06 16:54:43', '0', '0');
INSERT INTO `t_user` VALUES ('11', '女', 'xxxx', '1', 'xxx', 'xxx', 'xxx', 'xxxxxx', 'xxxx', 'aaa', null, '2016-06-06 16:55:42', '0', '0');
INSERT INTO `t_user` VALUES ('12', '男', '333', '3', '333', '333333', '333_identityCard.png', '33333333333', '333', 'aaa', null, '2016-06-10 14:22:03', '0', '0');
