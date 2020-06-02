/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : shiro0319

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-14 13:30:59
*/

SET FOREIGN_KEY_CHECKS=0;
create database shiro0319;
use shiro0319;
-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(30) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  `percode` varchar(30) DEFAULT NULL,
  `parentid` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '商品管理', 'menu', '', '', null);
INSERT INTO `permission` VALUES ('2', '商品添加', 'permission', '/ware/addware', 'ware:create', '1');
INSERT INTO `permission` VALUES ('3', '商品删除', 'permission', '/ware/delware', 'ware:delete', '1');
INSERT INTO `permission` VALUES ('4', '商品查看', 'permission', '/ware/warelist', 'ware:select', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '普通用户');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `roleid` int(4) DEFAULT NULL,
  `permissionid` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '1', '4');
INSERT INTO `role_permission` VALUES ('5', '2', '4');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('1', '张三', '14', '2004-05-20', '男');
INSERT INTO `studentinfo` VALUES ('2', '李四', '6', '2012-08-01', '男');
INSERT INTO `studentinfo` VALUES ('3', '王红', '40', '1978-06-01', '女');
INSERT INTO `studentinfo` VALUES ('4', '大刘', '20', '1998-10-15', '男');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` varchar(50) DEFAULT NULL,
  `testname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('key1', 'hello2');
INSERT INTO `test` VALUES ('key1', 'hello1');
INSERT INTO `test` VALUES ('key1', 'hello1');
INSERT INTO `test` VALUES ('key1', 'hello1');
INSERT INTO `test` VALUES ('key2', 'hello2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `usercode` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'a66abb5684c45962d887564f08346e8d', 'admin');
INSERT INTO `user` VALUES ('2', 'zhangsan', '123456', 'zhangsan');
INSERT INTO `user` VALUES ('3', 'lisi', '1b539b60601b934441308049a9526e7d', 'lisi');
INSERT INTO `user` VALUES ('4', 'shiro', 'a66abb5684c45962d887564f08346e8d', 'admin');
INSERT INTO `user` VALUES ('5', 'zhangsan', '123456', 'zhangsan');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` int(4) DEFAULT NULL,
  `roleid` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
INSERT INTO `user_role` VALUES ('2', '2', '2');
INSERT INTO `user_role` VALUES ('3', '3', '2');

-- ----------------------------
-- Table structure for wareinfo
-- ----------------------------
DROP TABLE IF EXISTS `wareinfo`;
CREATE TABLE `wareinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `warename` varchar(20) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wareinfo
-- ----------------------------
INSERT INTO `wareinfo` VALUES ('14', 'jume', '2.00');
INSERT INTO `wareinfo` VALUES ('20', '李闯版葫芦娃', '2.00');
INSERT INTO `wareinfo` VALUES ('21', '三娃娃', '20.00');
