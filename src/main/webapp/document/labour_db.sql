/*
 Navicat Premium Data Transfer

 Source Server         : 工会数据库
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 192.168.189.3:3306
 Source Schema         : labour_db

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 09/11/2017 17:31:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for z_cost
-- ----------------------------
DROP TABLE IF EXISTS `z_cost`;
CREATE TABLE `z_cost`  (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_entry` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_money` double(10, 2) DEFAULT NULL,
  `co_operator` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_union` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_fortor` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`co_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for z_entry
-- ----------------------------
DROP TABLE IF EXISTS `z_entry`;
CREATE TABLE `z_entry`  (
  `en_id` int(11) NOT NULL AUTO_INCREMENT,
  `en_type` varbinary(8) DEFAULT NULL,
  `en_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`en_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of z_entry
-- ----------------------------
INSERT INTO `z_entry` VALUES (1, 0x30, '会员会费收入的70%');
INSERT INTO `z_entry` VALUES (2, 0x30, '校工会拨付的各项活动和奖励经费');
INSERT INTO `z_entry` VALUES (3, 0x30, '校工会拨付的各项补助经费');
INSERT INTO `z_entry` VALUES (4, 0x31, '开展的教职工教育活动');
INSERT INTO `z_entry` VALUES (5, 0x31, '开展的教职工文艺、体育和女工活动');
INSERT INTO `z_entry` VALUES (6, 0x31, '开展的宣传活动');
INSERT INTO `z_entry` VALUES (7, 0x31, '慰问困难教职工');
INSERT INTO `z_entry` VALUES (13, 0x30, '结余');
INSERT INTO `z_entry` VALUES (16, 0x31, '困难帮扶');

-- ----------------------------
-- Table structure for z_income
-- ----------------------------
DROP TABLE IF EXISTS `z_income`;
CREATE TABLE `z_income`  (
  `in_id` int(11) NOT NULL AUTO_INCREMENT,
  `in_entry` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `in_money` double(10, 2) DEFAULT NULL,
  `in_operator` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `in_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `in_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `in_union` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`in_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for z_user
-- ----------------------------
DROP TABLE IF EXISTS `z_user`;
CREATE TABLE `z_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `company` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identity` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of z_user
-- ----------------------------
INSERT INTO `z_user` VALUES (1, 'mahaiyan', '校工会', 'manage', '马海燕', '18603730018', '3693021');
INSERT INTO `z_user` VALUES (2, 'louguoqiang', '校工会', 'manage', '娄国强', '13503732305', '365365');
INSERT INTO `z_user` VALUES (3, 'liuguoyong', '校工会', 'cost', '刘国勇', '13937311890', 'liu790712');
INSERT INTO `z_user` VALUES (4, 'gongjunpeng', '校工会', 'manage', '龚俊鹏', '13072668686', '123');
INSERT INTO `z_user` VALUES (5, 'huyanzi', '生命科技学院分会', 'ordinary', '虎燕子', '13403738778', '123');
INSERT INTO `z_user` VALUES (6, 'zhangyinhui', '经济与管理学院分会', 'ordinary', '张慧辉', '13673730491', '123');
INSERT INTO `z_user` VALUES (7, 'liyin', '机电学院分会', 'ordinary', '李印', '13803734534', '123');
INSERT INTO `z_user` VALUES (8, 'fanyuefeng', '食品学院分会', 'ordinary', '樊跃锋', '13837392479', '123');
INSERT INTO `z_user` VALUES (9, 'liuhong', '动物科技学院分会', 'ordinary', '刘弘', '15036614917', '123');
INSERT INTO `z_user` VALUES (10, 'chensongling', '园艺园林学院分会', 'ordinary', '陈松玲', '13837398713', '123');
INSERT INTO `z_user` VALUES (11, 'lijunmin', '资源与环境学院分会', 'ordinary', '李军民', '13598651296', '123');
INSERT INTO `z_user` VALUES (12, 'liukeping', '信息工程学院分会', 'ordinary', '刘克平', '13937380669', '123');
INSERT INTO `z_user` VALUES (13, 'guochaojie', '化学化工学院分会', 'ordinary', '郭超杰', '13523844441', '123');
INSERT INTO `z_user` VALUES (14, 'lixiaoqiong', '文法学院分会', 'ordinary', '李小琼', '13781968232', '123');
INSERT INTO `z_user` VALUES (15, 'zhuhong', '教育科学学院分会', 'ordinary', '朱宏', '13569859486', '123');
INSERT INTO `z_user` VALUES (16, 'chenxiaoyu', '艺术学院分会', 'ordinary', '徐小玉', '15937322664', '123');
INSERT INTO `z_user` VALUES (18, 'hufuguang', '数学科学学院分会', 'ordinary', '胡付广', '13503448904', '123');
INSERT INTO `z_user` VALUES (19, 'wangxiujin', '外国语学院分会', 'ordinary', '王秀金', '13837311569', '123');
INSERT INTO `z_user` VALUES (20, 'duxingan', '体育学院分会', 'ordinary', '杜兴安', '13837375566', '123');
INSERT INTO `z_user` VALUES (21, 'sunxiying', '马克思主义教育学院分会', 'ordinary', '孙喜英', '13462224369', '123');
INSERT INTO `z_user` VALUES (22, 'dingfuku', '高等职业技术学院分会', 'ordinary', '丁福虎', '13462286415', '123');
INSERT INTO `z_user` VALUES (23, 'xiongrenjie', '新科学院分会', 'ordinary', '熊仁杰', '13503801780', '123');
INSERT INTO `z_user` VALUES (24, 'tianfulu', '机关一分会', 'ordinary', '田福禄', '13603732679', '123');
INSERT INTO `z_user` VALUES (25, 'anqiguo', '机关二分会', 'ordinary', '齐安国', '13849362681', '123');
INSERT INTO `z_user` VALUES (26, 'sunjuwen', '机关三分会', 'ordinary', '孙居文', '13937352157', '123');
INSERT INTO `z_user` VALUES (27, 'dengtianguo', '机关四分会', 'ordinary', '邓天福', '13613906205', '123');
INSERT INTO `z_user` VALUES (28, 'wangluwei', '机关五分会', 'ordinary', '王鲁伟', '13937329579', '123');
INSERT INTO `z_user` VALUES (29, 'magenxi', '离退休职工管理处分会', 'ordinary', '马根喜', '13703738703', '123');
INSERT INTO `z_user` VALUES (30, 'dijiufeng', '图书馆分会', 'ordinary', '狄九凤', '13639631158', '123');
INSERT INTO `z_user` VALUES (31, 'panxiaozheng', '校医院分会', 'ordinary', '潘小郑', '13849360066', '123');
INSERT INTO `z_user` VALUES (35, 'dengpeixi', '服装学院分会', 'ordinary', '邓沛栖', '13937322431', '123');

-- ----------------------------
-- View structure for balance
-- ----------------------------
DROP VIEW IF EXISTS `balance`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `balance` AS select `zi`.`in_union` AS `in_union`,`zi`.`income` AS `income`,ifnull(`zc`.`cost`,0) AS `IFNULL(zc.cost,0)`,(`zi`.`income` - ifnull(`zc`.`cost`,0)) AS `balance` from (((select `labour_db`.`z_income`.`in_union` AS `in_union`,sum(`labour_db`.`z_income`.`in_money`) AS `income` from `labour_db`.`z_income` group by `labour_db`.`z_income`.`in_union`)) `zi` left join (select `labour_db`.`z_cost`.`co_union` AS `co_union`,sum(`labour_db`.`z_cost`.`co_money`) AS `cost` from `labour_db`.`z_cost` group by `labour_db`.`z_cost`.`co_union`) `zc` on((`zi`.`in_union` = `zc`.`co_union`)));

SET FOREIGN_KEY_CHECKS = 1;
