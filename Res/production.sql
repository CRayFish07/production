/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : production

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2014-02-06 20:40:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for con_test
-- ----------------------------
DROP TABLE IF EXISTS `con_test`;
CREATE TABLE `con_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_test
-- ----------------------------

-- ----------------------------
-- Table structure for dgu2000
-- ----------------------------
DROP TABLE IF EXISTS `dgu2000`;
CREATE TABLE `dgu2000` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `fengchang` varchar(255) DEFAULT NULL,
  `xiangmuName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dateTime` varchar(255) DEFAULT NULL,
  `addTime` bigint(20) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dgu2000
-- ----------------------------
INSERT INTO `dgu2000` VALUES ('2', '192.168.0.90', '骑龙山', '大唐', '云南', '2014-02-06 01:03:11', '1391622882296', '1391623221127');
INSERT INTO `dgu2000` VALUES ('3', '192.168.0.3', '骑龙山', '大唐', '云南', '2014-02-06 01:37:42', '1391622882296', '1391690114274');
INSERT INTO `dgu2000` VALUES ('4', '192.168.0.4', '骑龙山', '大唐', '云南', '2014-02-06 01:38:23', '1391622882296', '1391622882296');
INSERT INTO `dgu2000` VALUES ('5', '192.168.0.5', '骑龙山', '大唐', '云南', '2014-02-06 18:28:39', '1391682519526', '1391682519526');
