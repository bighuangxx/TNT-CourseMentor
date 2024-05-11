/*
 Navicat Premium Data Transfer

 Source Server         : ppp
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : dafeng

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 11/05/2024 20:01:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_remark
-- ----------------------------
DROP TABLE IF EXISTS `sys_remark`;
CREATE TABLE `sys_remark`  (
  `remark_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父级id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `stat` int NULL DEFAULT NULL COMMENT '是否可编辑（只有3不可以）',
  `remark_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名称',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `point` float NULL DEFAULT NULL COMMENT '得分',
  `like_cnt` int NULL DEFAULT 0 COMMENT '点赞数',
  `report_cnt` int NULL DEFAULT NULL COMMENT '举报数',
  `reserved_port1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留接口',
  `reserved_port2` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留接口',
  `reserved_port3` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留接口',
  PRIMARY KEY (`remark_id` DESC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_remark
-- ----------------------------
INSERT INTO `sys_remark` VALUES (262, 261, '', NULL, '', '0', '', '2024-05-11 19:31:30', '', '2024-05-11 19:31:36', '永远的神', 10, 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_remark` VALUES (261, 258, '', NULL, '彭智勇', '0', '', '2024-05-11 19:31:23', '', NULL, '', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_remark` VALUES (260, 259, '', NULL, '', '0', '', '2024-05-11 19:30:53', '', NULL, '哦牛批还有这种老师', 10, 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_remark` VALUES (259, 258, '', NULL, '刘斌', '0', '', '2024-05-11 19:30:31', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_remark` VALUES (258, 0, '', NULL, '数据库', '0', '', '2024-05-11 19:30:19', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
