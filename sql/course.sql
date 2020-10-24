/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : course

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 24/10/2020 14:28:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
BEGIN;
INSERT INTO `admin` VALUES ('A01', '123456');
COMMIT;

-- ----------------------------
-- Table structure for bulletin
-- ----------------------------
DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE `bulletin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `memo` text CHARACTER SET utf8,
  `creationTime` datetime(6) DEFAULT CURRENT_TIMESTAMP(6),
  `flag` char(1) DEFAULT '0' COMMENT '0代表全体，1代表老师，2代表学生',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bulletin
-- ----------------------------
BEGIN;
INSERT INTO `bulletin` VALUES (1, '系统开通', '欢迎大家使用GDUF选课系统！！', '2020-10-20 23:28:15.233964', '0');
INSERT INTO `bulletin` VALUES (2, '老师通知', '这次是老师接受的公告', '2020-10-22 22:03:49.776211', '1');
INSERT INTO `bulletin` VALUES (3, '学生通知', '这里是学生接受的通知', '2020-10-22 22:04:20.313398', '2');
INSERT INTO `bulletin` VALUES (4, '老师', '老师请尝试开课操作！！！', '2020-10-23 12:53:54.523849', '1');
INSERT INTO `bulletin` VALUES (5, '老师！', '老师请登录！！', '2020-10-23 12:54:54.746038', '1');
INSERT INTO `bulletin` VALUES (10, '告全体', '学校即将举行70周年校庆，同学老师们可以到北苑操场观礼。', '2020-10-24 10:33:34.773261', '0');
INSERT INTO `bulletin` VALUES (11, '告全体', '学校即将举行体侧', '2020-10-24 10:37:17.328455', '0');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `c_no` char(8) CHARACTER SET utf8 NOT NULL,
  `s_no` char(6) CHARACTER SET utf8 NOT NULL,
  `cTime` datetime(6) DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`cmid`),
  KEY `kj` (`c_no`),
  KEY `gs` (`s_no`),
  CONSTRAINT `gs` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`),
  CONSTRAINT `kj` FOREIGN KEY (`c_no`) REFERENCES `course` (`c_no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (1, '标哥讲课风格幽默强推！！', 'C1234567', '201501', '2020-10-18 19:42:29.000000');
INSERT INTO `comment` VALUES (2, 'java这门课流行性很强，老师讲课负责，平时分也高', 'C1234567', '201701', '2020-10-07 19:42:29.000000');
INSERT INTO `comment` VALUES (3, '英语日后非常实用，推荐大家选择，毕竟要四级的，老师也不错！！', 'S1234567', '201801', '2020-10-01 19:42:29.000000');
INSERT INTO `comment` VALUES (4, '老师幽默风趣，强推！！！', 'S1234567', '201733', '2020-10-23 19:42:29.000000');
INSERT INTO `comment` VALUES (5, '很好！！', 'C1234567', '201701', '2020-10-13 19:42:29.000000');
INSERT INTO `comment` VALUES (6, '十分不错啊！！', 'C1234567', '135436', '2020-10-23 19:42:29.368971');
INSERT INTO `comment` VALUES (7, '我好喜欢这老师还有这课！！', 'S1234567', '938315', '2020-09-09 19:42:29.000000');
COMMIT;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_no` char(8) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `ac_time` varchar(10) DEFAULT NULL,
  `c_comment` varchar(80) DEFAULT NULL,
  `t_no` char(4) DEFAULT NULL,
  `hc_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk1` (`c_no`),
  KEY `asf` (`t_no`),
  CONSTRAINT `asf` FOREIGN KEY (`t_no`) REFERENCES `teacher` (`t_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES (1, 'C1234567', 'java', '2020上学期', 'java程序课程设计，javaj作为当下最流行的语言之一.....', 'T001', '周一第一节');
INSERT INTO `course` VALUES (2, 'S1234567', '英语', '2020上学期', '为了提高大家对英语的兴趣，特意开设这门课', 'T001', '周二第二节');
INSERT INTO `course` VALUES (3, 'C1234568', 'python', '2020上学期', 'python实用性强，方便', 'T002', '周三第三节');
INSERT INTO `course` VALUES (4, 'F1234657', '安卓设计', '2020上学期', '安卓设计小程序！！', 'T002', '周四第四节');
INSERT INTO `course` VALUES (5, 'F1836518', '电影艺术', '2020上学期', '欣赏电影的人性和思想，提高大家的眼界。', 'T293', '周三第五节');
INSERT INTO `course` VALUES (6, 'H2847913', '篮球', '2020上学期', '篮球运动十分热门，能起到很好的锻炼！', 'T298', '周三第三节');
INSERT INTO `course` VALUES (7, 'K1275391', '大学语文', '2020上学期', '提高写作水平', 'T141', '周一第二节');
INSERT INTO `course` VALUES (8, 'S2938592', '红色旅游文化', '2020上学期', '了解革命文化', 'T103', '周二第二节');
INSERT INTO `course` VALUES (9, 'V1941595', '统计学', '2020上学期', '简单应用统计原理', 'T523', '周二第二节');
INSERT INTO `course` VALUES (10, 'Y2942948', '法律知识日常应用', '2020上学期', '了解日常小法律知识，维护个人权利', 'T348', '周一第一节');
INSERT INTO `course` VALUES (11, 'R1975391', '交易员实训', '2020上学期', '模拟股票', 'T141', '周四第四节');
INSERT INTO `course` VALUES (12, 'T0249282', '区块链', '2020上学期', '了解金融基本知识', 'T141', '周五第七节');
INSERT INTO `course` VALUES (13, 'A1419374', '中国政治发展', '2020上学期', '了解中国近代政治制度的变迁', 'T103', '周五第七节');
INSERT INTO `course` VALUES (14, 'H2372737', '生命哲学', '2020上学期', '哲学的意义', 'T003', '周一第五节');
INSERT INTO `course` VALUES (15, 'L4875384', '影视鉴赏', '2020上学期', '影视中的手法', 'T003', '周二第七节');
INSERT INTO `course` VALUES (16, 'R3485734', '大学生生活规划', '2020上学期', '学会规划生活', 'T348', '周三第一节');
INSERT INTO `course` VALUES (17, 'V2834732', '酒店管理', '2020上学期', '学会管理人员与运营', 'T001', '周五第一节');
INSERT INTO `course` VALUES (18, 'C1834728', '逻辑学', '2020上学期', '逻辑方法的应用', 'T348', '周二第七节');
INSERT INTO `course` VALUES (19, 'A0394834', 'Ps', '2020上学期', 'PS技术', 'T523', '周一第三节');
INSERT INTO `course` VALUES (20, 'L9374824', '多媒体', '2020上学期', '视频剪辑', 'T293', '周五第四节');
COMMIT;

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `s_no` varchar(6) NOT NULL,
  `s_password` varchar(6) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `k1` (`s_no`),
  CONSTRAINT `k1` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
BEGIN;
INSERT INTO `stu` VALUES (1, '201501', '123456');
INSERT INTO `stu` VALUES (2, '201601', '123456');
INSERT INTO `stu` VALUES (3, '201701', '123456');
INSERT INTO `stu` VALUES (4, '201733', '123456');
INSERT INTO `stu` VALUES (5, '201801', '123456');
INSERT INTO `stu` VALUES (6, '201805', '123456');
INSERT INTO `stu` VALUES (9, '501896', '111');
INSERT INTO `stu` VALUES (10, '205083', '111');
INSERT INTO `stu` VALUES (11, '199735', '111');
INSERT INTO `stu` VALUES (12, '089683', '111');
COMMIT;

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
  CONSTRAINT `s2` FOREIGN KEY (`c_no`) REFERENCES `course` (`c_no`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_course
-- ----------------------------
BEGIN;
INSERT INTO `stu_course` VALUES (1, '201501', 'C1234567');
INSERT INTO `stu_course` VALUES (2, '201501', 'C1234568');
INSERT INTO `stu_course` VALUES (3, '201701', 'F1234657');
INSERT INTO `stu_course` VALUES (4, '201801', 'S1234567');
INSERT INTO `stu_course` VALUES (5, '201801', 'F1234657');
INSERT INTO `stu_course` VALUES (6, '201733', 'F1234657');
INSERT INTO `stu_course` VALUES (7, '201733', 'F1234657');
INSERT INTO `stu_course` VALUES (8, '056873', 'C1234567');
INSERT INTO `stu_course` VALUES (9, '056873', 'S1234567');
INSERT INTO `stu_course` VALUES (10, '083736', 'F1234657');
INSERT INTO `stu_course` VALUES (11, '083736', 'F1836518');
INSERT INTO `stu_course` VALUES (12, '135436', 'F1836518');
INSERT INTO `stu_course` VALUES (13, '938315', 'C1234567');
INSERT INTO `stu_course` VALUES (14, '201241', 'C1234567');
INSERT INTO `stu_course` VALUES (15, '353464', 'C1234567');
INSERT INTO `stu_course` VALUES (16, '235254', 'C1234567');
INSERT INTO `stu_course` VALUES (17, '235252', 'C1234567');
INSERT INTO `stu_course` VALUES (18, '201601', 'C1234567');
INSERT INTO `stu_course` VALUES (19, '317461', 'C1234567');
INSERT INTO `stu_course` VALUES (20, '353464', 'C1234567');
INSERT INTO `stu_course` VALUES (22, '353464', 'C1234567');
INSERT INTO `stu_course` VALUES (23, '437374', 'C1234567');
INSERT INTO `stu_course` VALUES (24, '542527', 'C1234567');
INSERT INTO `stu_course` VALUES (25, '984339', 'C1234567');
INSERT INTO `stu_course` VALUES (26, '345365', 'C1234567');
INSERT INTO `stu_course` VALUES (29, '201701', 'C1234567');
INSERT INTO `stu_course` VALUES (30, '632732', 'C1234567');
INSERT INTO `stu_course` VALUES (31, '698455', 'F1836518');
INSERT INTO `stu_course` VALUES (32, '201601', 'S1234567');
INSERT INTO `stu_course` VALUES (33, '201241', 'S1234567');
INSERT INTO `stu_course` VALUES (34, '363574', 'S1234567');
INSERT INTO `stu_course` VALUES (35, '246262', 'S1234567');
INSERT INTO `stu_course` VALUES (36, '201701', 'S1234567');
INSERT INTO `stu_course` VALUES (37, '317461', 'S1234567');
INSERT INTO `stu_course` VALUES (38, '083736', 'S1234567');
INSERT INTO `stu_course` VALUES (39, '135436', 'S1234567');
INSERT INTO `stu_course` VALUES (40, '201601', 'S1234567');
INSERT INTO `stu_course` VALUES (41, '172327', 'S1234567');
INSERT INTO `stu_course` VALUES (42, '938315', 'S1234567');
INSERT INTO `stu_course` VALUES (43, '201501', 'S1234567');
INSERT INTO `stu_course` VALUES (44, '134213', 'S1234567');
INSERT INTO `stu_course` VALUES (45, '201701', 'S1234567');
INSERT INTO `stu_course` VALUES (46, '938315', 'S1234567');
INSERT INTO `stu_course` VALUES (47, '487658', 'S1234567');
INSERT INTO `stu_course` VALUES (50, '201501', 'F1836518');
INSERT INTO `stu_course` VALUES (52, '201501', 'T0249282');
INSERT INTO `stu_course` VALUES (53, '897654', 'C1234567');
INSERT INTO `stu_course` VALUES (54, '083736', 'C1234567');
INSERT INTO `stu_course` VALUES (56, '487658', 'C1234567');
INSERT INTO `stu_course` VALUES (57, '487658', 'S1234567');
INSERT INTO `stu_course` VALUES (58, '235254', 'S1234567');
INSERT INTO `stu_course` VALUES (59, '349573', 'S1234567');
INSERT INTO `stu_course` VALUES (61, '363515', 'S1234567');
INSERT INTO `stu_course` VALUES (62, '235254', 'S1234567');
INSERT INTO `stu_course` VALUES (63, '246262', 'S1234567');
INSERT INTO `stu_course` VALUES (64, '435734', 'S1234567');
INSERT INTO `stu_course` VALUES (65, '897654', 'S1234567');
INSERT INTO `stu_course` VALUES (67, '202027', 'C1234567');
INSERT INTO `stu_course` VALUES (68, '213524', 'C1234567');
INSERT INTO `stu_course` VALUES (69, '345365', 'S1234567');
COMMIT;

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
BEGIN;
INSERT INTO `student` VALUES ('056873', '四凤', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('083736', '小明', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('089683', '111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('134213', '玲玲', '女', NULL, 2, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('135436', '韩信', '男', NULL, 4, '湖北', NULL, NULL);
INSERT INTO `student` VALUES ('172327', '小天', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('199735', '111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('201241', '王国', '男', '2003-11-20', 1, '广西', NULL, NULL);
INSERT INTO `student` VALUES ('201501', '纪大奎', '男', '1989-03-10', 4, '广东', NULL, NULL);
INSERT INTO `student` VALUES ('201601', 'giao', '男', '1984-07-08', 3, '海南', '12412341234', NULL);
INSERT INTO `student` VALUES ('201701', '林有有', '男', '2000-07-19', 2, '江西省', '10987654321', 'chian@qq。com');
INSERT INTO `student` VALUES ('201733', '孙晓飞', '女', '1994-09-21', 1, '广西', NULL, NULL);
INSERT INTO `student` VALUES ('201801', '倪泽宫', '女', '1986-11-21', 1, '广东省', '12345678910', '66565@qq');
INSERT INTO `student` VALUES ('201805', '李小白', '男', '2003-07-30', 1, '北京', NULL, NULL);
INSERT INTO `student` VALUES ('202027', '林一', '女', '2000-06-15', 1, '广东肇庆', NULL, NULL);
INSERT INTO `student` VALUES ('202065', '张萨', '女', '2005-02-20', 1, '江西', NULL, NULL);
INSERT INTO `student` VALUES ('202352', '张思', '女', '2002-03-23', 1, '福建', NULL, NULL);
INSERT INTO `student` VALUES ('205083', '111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('205646', '林发', '男', '2001-07-01', 1, '广西', NULL, NULL);
INSERT INTO `student` VALUES ('206565', '夫安尔', '女', '2001-03-08', 1, '广西', NULL, NULL);
INSERT INTO `student` VALUES ('213524', '王继发', '男', NULL, 1, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('235252', '琪琪', '女', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('235254', '建国', '男', NULL, 2, '北京', NULL, NULL);
INSERT INTO `student` VALUES ('238525', '临元', '男', NULL, 4, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('239587', '林王', '男', NULL, 2, '北京', NULL, NULL);
INSERT INTO `student` VALUES ('246262', '林海', '男', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('252525', '小晖', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('259546', '晓玲', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('317461', 'Jiogs', '女', NULL, 2, '四川', NULL, NULL);
INSERT INTO `student` VALUES ('345365', '米莱迪', '女', NULL, 3, '西藏', NULL, NULL);
INSERT INTO `student` VALUES ('349573', '欢欢', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('353464', '家伙', '女', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('363515', '小胡', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('363574', '发几', '男', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('374737', '一一', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('435734', '玄机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('437374', '小彪', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('487658', '散散', '女', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('501896', '111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('542527', '小英', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('632732', '长工风', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('698455', '田哥', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('738235', '浩元', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('897654', '李白', '男', NULL, 1, '湖南', NULL, NULL);
INSERT INTO `student` VALUES ('938315', '小林', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('954324', '小安', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('984339', '玲珑', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tea
-- ----------------------------
DROP TABLE IF EXISTS `tea`;
CREATE TABLE `tea` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `t_password` char(6) NOT NULL,
  `t_no` char(4) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `hgj` (`t_no`),
  CONSTRAINT `hgj` FOREIGN KEY (`t_no`) REFERENCES `teacher` (`t_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tea
-- ----------------------------
BEGIN;
INSERT INTO `tea` VALUES (1, '123456', 'T001');
INSERT INTO `tea` VALUES (2, '123456', 'T002');
INSERT INTO `tea` VALUES (3, '123456', 'T003');
INSERT INTO `tea` VALUES (4, '123456', 'T004');
INSERT INTO `tea` VALUES (5, '123456', 'T103');
INSERT INTO `tea` VALUES (6, '123456', 'T298');
INSERT INTO `tea` VALUES (7, '123456', 'T348');
INSERT INTO `tea` VALUES (11, 'laoshi', 'C566');
INSERT INTO `tea` VALUES (12, 'laoshi', 'D945');
INSERT INTO `tea` VALUES (13, '123456', 'H208');
INSERT INTO `tea` VALUES (14, '111', 'H618');
INSERT INTO `tea` VALUES (15, '111', 'C696');
INSERT INTO `tea` VALUES (16, '111', 'F694');
INSERT INTO `tea` VALUES (17, '111', 'F504');
INSERT INTO `tea` VALUES (18, '111', 'B055');
COMMIT;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_no` char(4) NOT NULL,
  `t_name` varchar(10) NOT NULL,
  `t_office` varchar(20) DEFAULT NULL,
  `t_phone` char(11) DEFAULT NULL,
  `depart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES ('B055', '111', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('C566', 'laoshi', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('C696', '111', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('D945', 'laoshi', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('F504', '111', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('F694', '111', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('H208', '郭艺辉', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('H618', '111', NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('T001', '标哥', '4-11', '13264957251', '计算机');
INSERT INTO `teacher` VALUES ('T002', '庆哥', '4-12', '19846685657', '计科');
INSERT INTO `teacher` VALUES ('T003', '李奥', '1201', '16494656552', '互联网');
INSERT INTO `teacher` VALUES ('T004', '张大', '2-01', '15494746774', '外文院');
INSERT INTO `teacher` VALUES ('T103', '庄明', 'B2-1', '13694525885', '马克思院');
INSERT INTO `teacher` VALUES ('T141', '叶萱', 'A2-5', '1359445745', '金融院');
INSERT INTO `teacher` VALUES ('T293', '张心', '2011', '16497532548', '财经院');
INSERT INTO `teacher` VALUES ('T298', '倪嘎', '2352', '19465231231', '体育学院');
INSERT INTO `teacher` VALUES ('T348', '林天', 'C211', '12845734857', '法学院');
INSERT INTO `teacher` VALUES ('T523', '李思', 'B021', '19496535449', '数学院');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
