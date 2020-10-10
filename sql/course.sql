/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : course

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-10-10 15:56:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_no` char(3) NOT NULL,
  `a_password` char(6) NOT NULL,
  PRIMARY KEY (`a_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('A01', '123456');

-- ----------------------------
-- Table structure for bulletin
-- ----------------------------
DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE `bulletin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bulletin
-- ----------------------------
INSERT INTO `bulletin` VALUES ('1', '欢迎使用学生自建选课系统！', '2020-09-21');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_no` char(8) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_time` date DEFAULT NULL,
  `c_comment` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk1` (`c_no`),
  CONSTRAINT `fk1` FOREIGN KEY (`c_no`) REFERENCES `create_course` (`c_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'C1234567', 'java', '2020-09-09', 'java程序课程设计，javaj作为当下最流行的语言之一.....');
INSERT INTO `course` VALUES ('2', 'S1234567', '英语', '2020-09-11', '12任535152 退给我');
INSERT INTO `course` VALUES ('3', 'C1234568', 'python', '2020-09-10', '埃德瓦多');
INSERT INTO `course` VALUES ('4', 'F1234657', '安卓设计', '2020-09-02', '121214');

-- ----------------------------
-- Table structure for create_course
-- ----------------------------
DROP TABLE IF EXISTS `create_course`;
CREATE TABLE `create_course` (
  `c_no` char(8) NOT NULL,
  `t_no` char(4) NOT NULL,
  `cc_time` date DEFAULT NULL,
  PRIMARY KEY (`c_no`),
  KEY `dafa` (`t_no`),
  CONSTRAINT `dafa` FOREIGN KEY (`t_no`) REFERENCES `teachter` (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of create_course
-- ----------------------------
INSERT INTO `create_course` VALUES ('C1234567', 'T001', '2020-09-10');
INSERT INTO `create_course` VALUES ('C1234568', 'T002', '2020-09-08');
INSERT INTO `create_course` VALUES ('F1234657', 'T002', '2020-09-08');
INSERT INTO `create_course` VALUES ('S1234567', 'T001', '2020-09-01');

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `s_no` varchar(6) NOT NULL,
  `s_password` varchar(6) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `k1` (`s_no`),
  CONSTRAINT `k1` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES ('1', '201501', '123456');
INSERT INTO `s` VALUES ('2', '201601', '123456');
INSERT INTO `s` VALUES ('3', '201701', '123456');
INSERT INTO `s` VALUES ('4', '201733', '123456');
INSERT INTO `s` VALUES ('5', '201801', '123456');
INSERT INTO `s` VALUES ('6', '201805', '123456');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_no` char(6) NOT NULL,
  `s_name` varchar(10) NOT NULL,
  `s_sex` varchar(1) DEFAULT NULL,
  `s_birthday` date DEFAULT NULL,
  `s_grade` int(11) DEFAULT NULL,
  `s_address` varchar(50) DEFAULT NULL,
  `s_phone` char(11) DEFAULT NULL,
  `s_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201501', '纪大奎', '男', '1989-03-10', '4', '广东', null, null);
INSERT INTO `student` VALUES ('201601', 'giao', '男', '1984-07-08', '3', '海南', '12412341234', null);
INSERT INTO `student` VALUES ('201701', '林有有', '男', '2000-07-19', '2', '江西省', '10987654321', 'chian@qq。com');
INSERT INTO `student` VALUES ('201733', '孙晓飞', '女', '1994-09-21', '1', '广西', null, null);
INSERT INTO `student` VALUES ('201801', '倪泽宫', '女', '1986-11-21', '1', '广东省', '12345678910', '66565@qq');
INSERT INTO `student` VALUES ('201805', '李小白', '男', '2003-07-30', '1', '北京', null, null);

-- ----------------------------
-- Table structure for stu_course
-- ----------------------------
DROP TABLE IF EXISTS `stu_course`;
CREATE TABLE `stu_course` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `s_no` char(6) NOT NULL,
  `c_no` char(8) NOT NULL,
  PRIMARY KEY (`scid`),
  KEY `s1` (`s_no`),
  KEY `s2` (`c_no`),
  CONSTRAINT `s1` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`),
  CONSTRAINT `s2` FOREIGN KEY (`c_no`) REFERENCES `create_course` (`c_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_course
-- ----------------------------
INSERT INTO `stu_course` VALUES ('1', '201501', 'C1234567');
INSERT INTO `stu_course` VALUES ('2', '201501', 'C1234568');
INSERT INTO `stu_course` VALUES ('3', '201701', 'F1234657');
INSERT INTO `stu_course` VALUES ('4', '201801', 'S1234567');
INSERT INTO `stu_course` VALUES ('5', '201801', 'F1234657');
INSERT INTO `stu_course` VALUES ('6', '201733', 'F1234657');

-- ----------------------------
-- Table structure for t
-- ----------------------------
DROP TABLE IF EXISTS `t`;
CREATE TABLE `t` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `t_password` char(6) NOT NULL,
  `t_no` char(4) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `hgj` (`t_no`),
  CONSTRAINT `hgj` FOREIGN KEY (`t_no`) REFERENCES `teachter` (`t_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t
-- ----------------------------
INSERT INTO `t` VALUES ('1', '123456', 'T001');
INSERT INTO `t` VALUES ('2', '123456', 'T002');

-- ----------------------------
-- Table structure for teachter
-- ----------------------------
DROP TABLE IF EXISTS `teachter`;
CREATE TABLE `teachter` (
  `t_no` char(4) NOT NULL,
  `t_name` varchar(10) NOT NULL,
  `t_office` varchar(20) DEFAULT NULL,
  `t_phone` char(11) DEFAULT NULL,
  `depart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachter
-- ----------------------------
INSERT INTO `teachter` VALUES ('T001', '标哥', '4-11', '', '计算机');
INSERT INTO `teachter` VALUES ('T002', '庆哥', '4-12', null, '计科');
