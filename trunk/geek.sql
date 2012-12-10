/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : geek

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-12-10 15:53:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gk_sqldata`
-- ----------------------------
DROP TABLE IF EXISTS `gk_sqldata`;
CREATE TABLE `gk_sqldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `dbname` varchar(20) NOT NULL COMMENT '数据库名称',
  `tablename` varchar(20) NOT NULL default '0' COMMENT '表字符',
  `tabletitle` varchar(20) NOT NULL COMMENT '表名称',
  `prefix` varchar(20) NOT NULL default '0' COMMENT '表前缀',
  `is_del` tinyint(1) NOT NULL default '0' COMMENT '是否删除',
  `ctime` datetime NOT NULL default '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gk_sqldata
-- ----------------------------
INSERT INTO `gk_sqldata` VALUES ('1', '22', '555', '22', '022', '22', '2012-12-10 11:17:07', '2012-12-10 11:17:07', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('2', '3333', '222', '333', '333', '0', '2012-12-10 11:13:54', '2012-12-10 11:13:54', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('3', '333', '333', '3333', '3333', '0', '2012-12-10 11:19:15', '2012-12-10 11:19:15', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('4', '55', '55', '55', '55', '0', '2012-12-10 11:19:51', '2012-12-10 11:19:51', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('5', '66', '66', '66', '66', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('6', '777', '777', '777', '777', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('7', '888', '888', '888', '888', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('8', '22', '22', '22', '22', '0', '2012-09-22 12:22:22', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `gk_sqldata` VALUES ('9', '', '0', '', '0', '0', '0000-00-00 00:00:00', '2012-12-10 13:24:30', '0', '0');

-- ----------------------------
-- Table structure for `gk_sqldata_field`
-- ----------------------------
DROP TABLE IF EXISTS `gk_sqldata_field`;
CREATE TABLE `gk_sqldata_field` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(20) NOT NULL default '0' COMMENT '字段名称',
  `type` varchar(20) NOT NULL default '0' COMMENT '字段类型',
  `length` varchar(20) NOT NULL default '0' COMMENT '字段长度',
  `is_null` tinyint(1) NOT NULL default '0' COMMENT '是否允许空值  1允许  0不允许',
  `default` varchar(20) NOT NULL default '0' COMMENT '字段默认值',
  `is_pri` tinyint(1) NOT NULL default '0' COMMENT '是否主键  0不是  1是',
  `is_del` tinyint(1) NOT NULL default '0' COMMENT '是否删除   0没有  1已删除',
  `action_id` int(11) NOT NULL default '0' COMMENT '列表ID',
  `uid` int(11) NOT NULL default '0' COMMENT '用户ID',
  `gid` int(11) NOT NULL default '0',
  `ctime` datetime NOT NULL default '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='字段配置信息表';

-- ----------------------------
-- Records of gk_sqldata_field
-- ----------------------------
INSERT INTO `gk_sqldata_field` VALUES ('1', '22', '22', '22', '22', '22', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `gk_sqldata_field` VALUES ('2', '11', '11', '11', '11', '11', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '2012-12-10 13:26:24');
INSERT INTO `gk_sqldata_field` VALUES ('3', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '2012-12-10 13:27:35');
