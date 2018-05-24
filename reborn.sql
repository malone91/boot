/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_5522
Source Server Version : 50027
Source Host           : 127.0.0.1:5522
Source Database       : reborn

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2018-05-24 10:20:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '名字',
  `contact` varchar(255) default NULL COMMENT '联系方式',
  `telephone` varchar(255) default NULL COMMENT '电话号码',
  `email` varchar(30) default NULL COMMENT '电子邮件',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '乔丹', '010-123', '13621098798', '760080@qq.com', null);
INSERT INTO `customer` VALUES ('2', '马龙', '010-234', '13676545678', '760080@qq.com', null);

-- ----------------------------
-- Table structure for customer_test
-- ----------------------------
DROP TABLE IF EXISTS `customer_test`;
CREATE TABLE `customer_test` (
  `customer_id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '名字',
  `contact` varchar(255) default NULL COMMENT '联系方式',
  `telephone` varchar(255) default NULL COMMENT '电话号码',
  `email` varchar(30) default NULL COMMENT '电子邮件',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_test
-- ----------------------------
INSERT INTO `customer_test` VALUES ('1', '乔丹', '010-123', '13621098798', '760080@qq.com', null);
INSERT INTO `customer_test` VALUES ('2', '马龙', '010-234', '13676545678', '760080@qq.com', null);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(50) default NULL COMMENT '名称',
  `password` varchar(50) default NULL COMMENT '密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '1', '1erwr');
