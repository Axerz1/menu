drop database if exists wedish;
create database if not exists wedish charset=utf8;
use wedish;
SET FOREIGN_KEY_CHECKS=0;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dish`
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cook` varchar(20) NOT NULL,
  `dishname` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `price` double(5,0) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES ('1', 'administrator', '包子', '早餐', '2', '好吃大包子');
INSERT INTO `dish` VALUES ('2', 'administrator', '鱼香肉丝', '中餐', '8', '鱼肉+猪肉条');
INSERT INTO `dish` VALUES ('3', 'administrator', '炒河粉', '晚餐', '12', '河粉+肉+蛋');
