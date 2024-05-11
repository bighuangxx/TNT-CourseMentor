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

 Date: 11/05/2024 20:02:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_user_remark
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_remark`;
CREATE TABLE `sys_user_remark`  (
  `remark_id` bigint NOT NULL COMMENT '评论id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `like_or_report` smallint NULL DEFAULT NULL COMMENT '1表示点赞，2表示举报',
  PRIMARY KEY (`remark_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_remark
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
