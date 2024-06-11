/*
 Navicat Premium Dump SQL

 Source Server         : 111
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : sedatabase

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 11/06/2024 17:23:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'sys_remark', '评论表', '', '', 'SysRemark', 'tree', 'element-ui', 'com.ruoyi.system', 'system', 'remark', '评论', 'ruoyi', '0', '/', '{\"treeCode\":\"remark_id\",\"treeName\":\"remark_name\",\"treeParentCode\":\"parent_id\",\"parentMenuId\":\"1\"}', 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21', NULL);
INSERT INTO `gen_table` VALUES (4, 'sys_dept', '部门表', NULL, NULL, 'SysDept', 'crud', '', 'com.ruoyi.system', 'system', 'dept', '部门', 'ruoyi', '0', '/', NULL, 'admin', '2024-05-10 23:41:08', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'sys_user_remark', '用户评论表', NULL, NULL, 'SysUserRemark', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'remark', '没用', 'ruoyi', '0', '/', '{\"parentMenuId\":1}', 'admin', '2024-05-12 01:23:17', '', '2024-05-12 01:24:42', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (14, 3, 'remark_id', 'id', 'bigint', 'Long', 'remarkId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (15, 3, 'parent_id', '父级id', 'bigint', 'Long', 'parentId', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 2, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (16, 3, 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 3, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (17, 3, 'remark_name', '名称', 'varchar(30)', 'String', 'remarkName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (18, 3, 'order_num', '显示顺序', 'int', 'Long', 'orderNum', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (19, 3, 'stat', '是否可编辑（只有3不可以）', 'int', 'Long', 'stat', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (20, 3, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (21, 3, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (22, 3, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (23, 3, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (24, 3, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (25, 3, 'remark_content', '评论内容', 'varchar(255)', 'String', 'remarkContent', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 12, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (26, 3, 'point', '得分', 'int', 'Long', 'point', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'select', 'sys_remark_point', 13, 'admin', '2024-05-10 22:52:14', '', '2024-05-11 16:07:21');
INSERT INTO `gen_table_column` VALUES (27, 4, 'dept_id', '部门id', 'bigint', 'Long', 'deptId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, 4, 'parent_id', '父部门id', 'bigint', 'Long', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, 4, 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, 4, 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, 4, 'order_num', '显示顺序', 'int', 'Long', 'orderNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, 4, 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, 4, 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, 4, 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, 4, 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, 4, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, 4, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, 4, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, 4, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, 4, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2024-05-10 23:41:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, 5, 'remark_id', '评论id', 'bigint', 'Long', 'remarkId', '1', '0', '0', '1', NULL, NULL, '1', 'EQ', 'input', '', 1, 'admin', '2024-05-12 01:23:17', '', '2024-05-12 01:24:42');
INSERT INTO `gen_table_column` VALUES (42, 5, 'user_id', '用户id', 'bigint', 'Long', 'userId', '1', '0', '0', '1', NULL, NULL, '1', 'EQ', 'input', '', 2, 'admin', '2024-05-12 01:23:17', '', '2024-05-12 01:24:42');
INSERT INTO `gen_table_column` VALUES (43, 5, 'like_or_report', '1表示点赞，2表示举报', 'smallint', 'Long', 'likeOrReport', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-05-12 01:23:17', '', '2024-05-12 01:24:42');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-05-08 17:19:31', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-05-08 17:19:31', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-05-08 17:19:31', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-05-08 17:19:31', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-05-08 17:19:31', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-05-08 17:19:31', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-08 17:19:30', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '少量举报', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-05-08 17:19:31', 'admin', '2024-05-14 21:31:20', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '大量举报', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-05-08 17:19:31', 'admin', '2024-05-14 21:31:30', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '一星', '2', 'sys_star', NULL, 'default', 'N', '0', 'admin', '2024-05-10 22:55:52', 'admin', '2024-05-10 23:40:10', NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '两星', '4', 'sys_star', NULL, 'default', 'N', '0', 'admin', '2024-05-10 22:56:12', 'admin', '2024-05-10 23:40:16', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '三星', '6', 'sys_star', NULL, 'default', 'N', '0', 'admin', '2024-05-10 22:56:24', 'admin', '2024-05-10 23:40:19', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '四星', '8', 'sys_star', NULL, 'default', 'N', '0', 'admin', '2024-05-10 22:56:32', 'admin', '2024-05-10 23:40:23', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 5, '五星', '10', 'sys_star', NULL, 'default', 'N', '0', 'admin', '2024-05-10 22:56:41', 'admin', '2024-05-10 23:40:27', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '举报数量', 'sys_notice_type', '0', 'admin', '2024-05-08 17:19:31', 'admin', '2024-05-14 21:31:51', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '得分类型', 'sys_star', '0', 'admin', '2024-05-10 22:54:31', '', NULL, '评论得分类型');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-05-08 17:19:31', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-05-08 17:19:31', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-05-08 17:19:31', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 295 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 17:45:35');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '192.168.43.64', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 17:54:55');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 20:31:38');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-08 20:37:06');
INSERT INTO `sys_logininfor` VALUES (104, 'common', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:37:17');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-08 20:37:25');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:37:27');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:37:35');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-05-08 20:37:42');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 20:37:47');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-08 20:40:50');
INSERT INTO `sys_logininfor` VALUES (111, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-08 20:40:58');
INSERT INTO `sys_logininfor` VALUES (112, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:41:01');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:41:07');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-08 20:41:14');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:41:17');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:41:29');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 20:41:36');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-08 20:41:50');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:41:57');
INSERT INTO `sys_logininfor` VALUES (120, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:42:48');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-08 20:42:53');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 20:43:03');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-08 20:43:06');
INSERT INTO `sys_logininfor` VALUES (124, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 20:43:14');
INSERT INTO `sys_logininfor` VALUES (125, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-08 20:44:55');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-08 20:45:01');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-08 20:45:04');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-09 16:15:10');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-09 16:21:59');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-09 16:22:07');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-09 16:45:04');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-09 16:45:09');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-09 16:45:14');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-09 16:45:18');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-10 20:32:17');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-10 21:40:44');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-11 00:27:44');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-11 01:58:24');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-11 14:38:06');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-11 15:51:36');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-11 22:24:44');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-11 22:24:47');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-11 23:35:44');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-05-12 00:27:04');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-12 00:27:08');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-12 00:27:12');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-12 01:22:22');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-12 02:16:18');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-12 17:19:27');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 00:45:05');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 01:28:01');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 15:40:10');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 16:41:19');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '192.168.43.206', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 17:36:36');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 21:41:50');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 00:37:53');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 01:13:01');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-14 01:42:31');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 01:42:36');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-14 19:50:23');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 19:50:25');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-14 22:25:36');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-14 22:25:39');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-14 22:25:41');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-15 00:46:36');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-15 00:46:38');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-15 00:46:43');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-15 00:46:46');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-15 10:30:51');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-05-15 11:10:19');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-15 11:10:26');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-16 16:47:44');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-16 17:30:26');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-16 22:06:04');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-17 16:58:24');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-17 19:14:59');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-17 23:10:44');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-17 23:10:50');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-18 21:44:43');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-18 21:44:47');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-20 17:13:21');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-20 20:57:02');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-20 21:55:06');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-21 15:20:43');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-21 15:53:08');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-21 16:40:06');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-21 16:40:09');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-21 17:33:58');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-21 17:34:01');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-21 19:22:00');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 16:07:17');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 17:47:44');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 17:47:51');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 17:52:37');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 17:53:06');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 17:58:07');
INSERT INTO `sys_logininfor` VALUES (197, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-08 17:58:17');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-08 17:58:24');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 17:58:28');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 17:59:09');
INSERT INTO `sys_logininfor` VALUES (201, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 17:59:22');
INSERT INTO `sys_logininfor` VALUES (202, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 17:59:53');
INSERT INTO `sys_logininfor` VALUES (203, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:00:11');
INSERT INTO `sys_logininfor` VALUES (204, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:00:20');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:00:31');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:01:30');
INSERT INTO `sys_logininfor` VALUES (207, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:01:39');
INSERT INTO `sys_logininfor` VALUES (208, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:04:58');
INSERT INTO `sys_logininfor` VALUES (209, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:05:03');
INSERT INTO `sys_logininfor` VALUES (210, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:10:07');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:10:35');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:12:01');
INSERT INTO `sys_logininfor` VALUES (213, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:12:12');
INSERT INTO `sys_logininfor` VALUES (214, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:12:20');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:12:42');
INSERT INTO `sys_logininfor` VALUES (216, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:13:10');
INSERT INTO `sys_logininfor` VALUES (217, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:15:03');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:15:11');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:16:44');
INSERT INTO `sys_logininfor` VALUES (220, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:16:54');
INSERT INTO `sys_logininfor` VALUES (221, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 18:17:40');
INSERT INTO `sys_logininfor` VALUES (222, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:17:53');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 18:18:05');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 19:01:26');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 19:01:32');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 19:04:34');
INSERT INTO `sys_logininfor` VALUES (227, '马嘉祺', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-08 19:04:46');
INSERT INTO `sys_logininfor` VALUES (228, '马嘉祺', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 19:04:49');
INSERT INTO `sys_logininfor` VALUES (229, '马嘉祺', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-08 20:48:04');
INSERT INTO `sys_logininfor` VALUES (230, '马嘉祺', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 20:48:09');
INSERT INTO `sys_logininfor` VALUES (231, '马嘉祺', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 21:12:49');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:13:04');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 21:28:18');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:28:38');
INSERT INTO `sys_logininfor` VALUES (235, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:29:12');
INSERT INTO `sys_logininfor` VALUES (236, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 21:36:47');
INSERT INTO `sys_logininfor` VALUES (237, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:36:54');
INSERT INTO `sys_logininfor` VALUES (238, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 21:37:15');
INSERT INTO `sys_logininfor` VALUES (239, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:37:59');
INSERT INTO `sys_logininfor` VALUES (240, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 21:38:03');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-08 21:38:21');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:38:23');
INSERT INTO `sys_logininfor` VALUES (243, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:38:45');
INSERT INTO `sys_logininfor` VALUES (244, '峡谷帅哥', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 21:51:39');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 21:51:50');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 22:01:58');
INSERT INTO `sys_logininfor` VALUES (247, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 22:02:21');
INSERT INTO `sys_logininfor` VALUES (248, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 22:06:39');
INSERT INTO `sys_logininfor` VALUES (249, '水军二号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 22:06:47');
INSERT INTO `sys_logininfor` VALUES (250, '水军二号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 22:20:30');
INSERT INTO `sys_logininfor` VALUES (251, '水军三号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 22:20:41');
INSERT INTO `sys_logininfor` VALUES (252, '水军三号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 22:26:46');
INSERT INTO `sys_logininfor` VALUES (253, '李祖超', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-08 22:26:58');
INSERT INTO `sys_logininfor` VALUES (254, '李祖超', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 22:27:00');
INSERT INTO `sys_logininfor` VALUES (255, '李祖超', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 22:29:32');
INSERT INTO `sys_logininfor` VALUES (256, '蔡朝晖', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 22:29:46');
INSERT INTO `sys_logininfor` VALUES (257, '蔡朝晖', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 22:33:50');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 22:34:00');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 01:05:35');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 01:06:07');
INSERT INTO `sys_logininfor` VALUES (261, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 01:06:20');
INSERT INTO `sys_logininfor` VALUES (262, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 01:10:40');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 01:10:52');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-10 19:08:38');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-10 19:11:43');
INSERT INTO `sys_logininfor` VALUES (266, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-10 19:14:40');
INSERT INTO `sys_logininfor` VALUES (267, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 19:14:44');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-10 19:15:10');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-06-10 19:15:15');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-10 19:15:17');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-06-10 22:06:33');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-06-10 22:06:37');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-10 22:06:44');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-10 22:07:04');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-10 22:07:20');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-10 22:10:06');
INSERT INTO `sys_logininfor` VALUES (277, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 22:24:19');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-06-11 00:41:49');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-06-11 00:42:00');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-11 00:42:05');
INSERT INTO `sys_logininfor` VALUES (281, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 00:45:14');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 09:19:39');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-06-11 09:20:12');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-11 09:20:15');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 10:28:00');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-06-11 10:30:45');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-11 10:30:53');
INSERT INTO `sys_logininfor` VALUES (288, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 11:03:40');
INSERT INTO `sys_logininfor` VALUES (289, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-11 11:03:47');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-11 11:04:01');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-11 11:04:18');
INSERT INTO `sys_logininfor` VALUES (292, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-11 11:49:36');
INSERT INTO `sys_logininfor` VALUES (293, '水军一号', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 11:49:57');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-11 11:53:24');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-05-09 17:26:07', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-05-09 17:26:07', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-05-09 17:26:07', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-05-09 17:26:07', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (107, '审核处理', 1, 4, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-05-09 17:26:07', 'admin', '2024-06-10 22:32:28', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-05-09 17:26:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '课程评价', 0, 0, 'courseevaluate', 'system/remark/index', NULL, 1, 0, 'C', '0', '0', 'system:remark:list', 'education', 'admin', '2024-05-11 19:23:22', 'admin', '2024-06-08 17:34:25', '评论菜单');
INSERT INTO `sys_menu` VALUES (2001, '评论查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:remark:query', '#', 'admin', '2024-05-11 19:23:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '评论新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:remark:add', '#', 'admin', '2024-05-11 19:23:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '评论修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:remark:edit', '#', 'admin', '2024-05-11 19:23:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '评论删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:remark:remove', '#', 'admin', '2024-05-11 19:23:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '评论导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:remark:export', '#', 'admin', '2024-05-11 19:23:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '点赞举报', 2000, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:remark:like', '#', 'admin', '2024-05-15 10:59:33', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (25, '水军一号:我是水军一号！李老师讲得好', '1', NULL, '0', 'zmjjkk', '2024-06-09 01:11:15', '', NULL, '318');
INSERT INTO `sys_notice` VALUES (27, '峡谷帅哥:老师在授课中，内容深且广，涵盖面广，能联系古今，结合时代背景。', '1', NULL, '0', 'zmjjkk', '2024-06-10 22:15:33', '', NULL, '314');
INSERT INTO `sys_notice` VALUES (29, '峡谷帅哥:大作业不会做www', '1', NULL, '0', 'zmjjkk', '2024-06-10 22:35:42', '', NULL, '310');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 573 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '创建表', 0, 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"ts\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', 0, NULL, '2024-05-08 20:32:12', 9);
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-08 22:14:48', 32);
INSERT INTO `sys_oper_log` VALUES (102, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-08 22:15:02', 24);
INSERT INTO `sys_oper_log` VALUES (103, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-08 22:15:08', 18);
INSERT INTO `sys_oper_log` VALUES (104, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-08 22:15:32', 16);
INSERT INTO `sys_oper_log` VALUES (105, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"ss\",\"roleId\":101,\"roleKey\":\"sss\",\"roleName\":\"sb\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-08 22:15:42', 15);
INSERT INTO `sys_oper_log` VALUES (106, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/05/09/b45b7d85bc832e372bae55f6ff0a591_20240509164215A001.jpg\",\"code\":200}', 0, NULL, '2024-05-09 16:42:15', 57);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_remark\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-09 17:16:36', 50);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_remark\"}', NULL, 0, NULL, '2024-05-09 17:16:42', 191);
INSERT INTO `sys_oper_log` VALUES (109, '岗位管理', 5, 'com.ruoyi.web.controller.system.SysPostController.export()', 'POST', 1, 'admin', '研发部门', '/system/post/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-05-10 20:58:59', 586);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:33:29', 67);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_remark\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:35:03', 68);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":3,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":4,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":5,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":6,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:44:11', 45);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":3,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:44:11\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":4,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:44:11\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":5,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:44:11\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":6,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:35:03\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"ins', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:49:54', 31);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:52:07', 14);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_remark\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:52:14', 45);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isR', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:53:40', 37);
INSERT INTO `sys_oper_log` VALUES (117, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"得分类型\",\"dictType\":\"sys_remark_point\",\"params\":{},\"remark\":\"评论得分类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:54:31', 17);
INSERT INTO `sys_oper_log` VALUES (118, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"两星\",\"dictSort\":0,\"dictType\":\"sys_remark_point\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:55:52', 14);
INSERT INTO `sys_oper_log` VALUES (119, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:55:52\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"一星\",\"dictSort\":0,\"dictType\":\"sys_remark_point\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:56:03', 15);
INSERT INTO `sys_oper_log` VALUES (120, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"两星\",\"dictSort\":0,\"dictType\":\"sys_remark_point\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:56:12', 15);
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"三星\",\"dictSort\":0,\"dictType\":\"sys_remark_point\",\"dictValue\":\"6\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:56:24', 13);
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"四星\",\"dictSort\":0,\"dictType\":\"sys_remark_point\",\"dictValue\":\"8\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:56:32', 12);
INSERT INTO `sys_oper_log` VALUES (123, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"五星\",\"dictSort\":0,\"dictType\":\"sys_remark_point\",\"dictValue\":\"10\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:56:41', 16);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:53:40\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:53:40\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:53:40\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 22:57:46', 29);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_remark\"}', NULL, 0, NULL, '2024-05-10 22:57:48', 213);
INSERT INTO `sys_oper_log` VALUES (126, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-10 23:07:02\",\"params\":{},\"parentId\":0,\"remarkId\":200,\"remarkName\":\"数据结构\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:07:03', 40);
INSERT INTO `sys_oper_log` VALUES (127, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-10 23:12:12\",\"params\":{},\"parentId\":0,\"point\":0,\"remarkContent\":\"1\",\"remarkId\":201,\"remarkName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:12:12', 12);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:57:46\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:57:46\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 22:57:46\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:13:05', 64);
INSERT INTO `sys_oper_log` VALUES (129, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-10 23:25:24\",\"params\":{},\"parentId\":0,\"point\":2,\"remarkContent\":\"是啥\",\"remarkId\":202,\"remarkName\":\"数据结构\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:25:24', 12);
INSERT INTO `sys_oper_log` VALUES (130, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-10 23:38:00\",\"params\":{},\"parentId\":0,\"point\":1,\"remarkContent\":\"1\",\"remarkId\":203,\"remarkName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:38:00', 12);
INSERT INTO `sys_oper_log` VALUES (131, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:55:52\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"一星\",\"dictSort\":1,\"dictType\":\"sys_remark_point\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:10', 16);
INSERT INTO `sys_oper_log` VALUES (132, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:56:12\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"两星\",\"dictSort\":2,\"dictType\":\"sys_remark_point\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:16', 15);
INSERT INTO `sys_oper_log` VALUES (133, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:56:24\",\"default\":false,\"dictCode\":102,\"dictLabel\":\"三星\",\"dictSort\":3,\"dictType\":\"sys_remark_point\",\"dictValue\":\"6\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:19', 14);
INSERT INTO `sys_oper_log` VALUES (134, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:56:32\",\"default\":false,\"dictCode\":103,\"dictLabel\":\"四星\",\"dictSort\":4,\"dictType\":\"sys_remark_point\",\"dictValue\":\"8\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:23', 14);
INSERT INTO `sys_oper_log` VALUES (135, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:56:41\",\"default\":false,\"dictCode\":104,\"dictLabel\":\"五星\",\"dictSort\":5,\"dictType\":\"sys_remark_point\",\"dictValue\":\"10\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:27', 15);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:13:05\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:13:05\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:13:05\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:46', 42);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:40:46\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:40:46\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:40:46\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:40:58', 28);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_dept\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-10 23:41:08', 62);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:40:58\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:40:58\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-10 23:40:58\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:38:35', 32);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:38:35\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:38:35\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:38:35\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:39:19', 36);
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_remark\"}', NULL, 0, NULL, '2024-05-11 00:39:22', 282);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-05-11 00:50:41', 9);
INSERT INTO `sys_oper_log` VALUES (143, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"\",\"createTime\":\"2024-05-10 23:38:01\",\"delFlag\":\"0\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"point\":6,\"remarkContent\":\"\",\"remarkId\":203,\"remarkName\":\"数据结构\",\"stat\":1,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:51:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:51:23', 29);
INSERT INTO `sys_oper_log` VALUES (144, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-11 00:51:46\",\"params\":{},\"parentId\":203,\"remarkId\":204,\"remarkName\":\"李春葆\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:51:46', 13);
INSERT INTO `sys_oper_log` VALUES (145, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/203', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:52:34', 16);
INSERT INTO `sys_oper_log` VALUES (146, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/204', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:52:37', 12);
INSERT INTO `sys_oper_log` VALUES (147, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-11 00:52:48\",\"params\":{},\"parentId\":0,\"remarkId\":205,\"remarkName\":\"数据库\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:52:48', 11);
INSERT INTO `sys_oper_log` VALUES (148, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-11 00:52:54\",\"params\":{},\"parentId\":205,\"remarkId\":206,\"remarkName\":\"刘斌\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:52:54', 13);
INSERT INTO `sys_oper_log` VALUES (149, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-11 00:53:15\",\"params\":{},\"parentId\":206,\"point\":10,\"remarkContent\":\"sb\",\"remarkId\":207}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:53:15', 11);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:55:35', 18);
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:55:43', 15);
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2003', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:55:50', 14);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2004', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:55:53', 14);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2005', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:55:55', 15);
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:55:57', 14);
INSERT INTO `sys_oper_log` VALUES (156, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-11 00:59:18\",\"params\":{},\"parentId\":0,\"remarkId\":208,\"remarkName\":\"操作系统\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 00:59:18', 12);
INSERT INTO `sys_oper_log` VALUES (157, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"\",\"createTime\":\"2024-05-11 00:53:15\",\"delFlag\":\"0\",\"orderNum\":0,\"params\":{},\"parentId\":206,\"point\":6,\"remarkContent\":\"sb\",\"remarkId\":207,\"remarkName\":\"\",\"updateBy\":\"\",\"updateTime\":\"2024-05-11 01:04:36\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 01:04:36', 11);
INSERT INTO `sys_oper_log` VALUES (158, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 01:25:37\",\"params\":{},\"parentId\":206,\"point\":8,\"remarkContent\":\"牛\",\"remarkId\":209}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 01:25:37', 36);
INSERT INTO `sys_oper_log` VALUES (159, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 02:32:00\",\"params\":{},\"parentId\":206,\"point\":4,\"remarkContent\":\"ss\",\"remarkId\":210,\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 02:32:00', 35);
INSERT INTO `sys_oper_log` VALUES (160, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:37:23\",\"params\":{},\"parentId\":206,\"point\":2,\"remarkContent\":\"1\",\"remarkId\":211,\"remarkName\":\"刘斌 - 你好\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:37:23', 42);
INSERT INTO `sys_oper_log` VALUES (161, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:49:33\",\"params\":{},\"parentId\":0,\"remarkId\":212,\"remarkName\":\"机组\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:49:34', 44);
INSERT INTO `sys_oper_log` VALUES (162, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:49:51\",\"params\":{},\"parentId\":212,\"remarkId\":213,\"remarkName\":\"机组\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:49:51', 19);
INSERT INTO `sys_oper_log` VALUES (163, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/212', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:51:25', 26);
INSERT INTO `sys_oper_log` VALUES (164, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/213', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:51:27', 12);
INSERT INTO `sys_oper_log` VALUES (165, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:52:46\",\"params\":{},\"parentId\":0,\"remarkId\":214,\"remarkName\":\"计组\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:52:46', 43);
INSERT INTO `sys_oper_log` VALUES (166, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:52:53\",\"params\":{},\"parentId\":214,\"remarkId\":215,\"remarkName\":\"计组\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:52:53', 14);
INSERT INTO `sys_oper_log` VALUES (167, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:53:01\",\"params\":{},\"parentId\":215,\"remarkId\":216,\"remarkName\":\"计组\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:53:01', 16);
INSERT INTO `sys_oper_log` VALUES (168, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/208', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:58:25', 20);
INSERT INTO `sys_oper_log` VALUES (169, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/214', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:58:27', 11);
INSERT INTO `sys_oper_log` VALUES (170, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/215', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:58:29', 9);
INSERT INTO `sys_oper_log` VALUES (171, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/216', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:58:31', 9);
INSERT INTO `sys_oper_log` VALUES (172, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 03:58:39\",\"params\":{},\"parentId\":0,\"remarkId\":217,\"remarkName\":\"机组\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 03:58:39', 29);
INSERT INTO `sys_oper_log` VALUES (173, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":217,\"remarkName\":\"才娘娘\"}', NULL, 1, '', '2024-05-11 03:58:48', 7);
INSERT INTO `sys_oper_log` VALUES (174, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":217,\"remarkName\":\"才娘娘\"}', NULL, 1, '', '2024-05-11 03:58:49', 3);
INSERT INTO `sys_oper_log` VALUES (175, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":217}', NULL, 1, '', '2024-05-11 03:59:03', 4);
INSERT INTO `sys_oper_log` VALUES (176, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":217,\"remarkName\":\"sss\"}', NULL, 1, '', '2024-05-11 03:59:06', 3);
INSERT INTO `sys_oper_log` VALUES (177, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":206,\"remarkName\":\"111\"}', NULL, 1, '', '2024-05-11 03:59:12', 3);
INSERT INTO `sys_oper_log` VALUES (178, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/217', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:01:25', 17);
INSERT INTO `sys_oper_log` VALUES (179, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:01:33\",\"params\":{},\"parentId\":0,\"remarkId\":218,\"remarkName\":\"ss\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:01:33', 14);
INSERT INTO `sys_oper_log` VALUES (180, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/218', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:02:42', 23);
INSERT INTO `sys_oper_log` VALUES (181, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:02:46\",\"params\":{},\"parentId\":0,\"remarkId\":219,\"remarkName\":\"sss\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:02:46', 28);
INSERT INTO `sys_oper_log` VALUES (182, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/219', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:03:56', 30);
INSERT INTO `sys_oper_log` VALUES (183, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:04:00\",\"params\":{},\"parentId\":0,\"remarkId\":220,\"remarkName\":\"sa\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:04:00', 29);
INSERT INTO `sys_oper_log` VALUES (184, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:04:10\",\"params\":{},\"parentId\":220,\"remarkId\":221,\"remarkName\":\"sa\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:04:10', 13);
INSERT INTO `sys_oper_log` VALUES (185, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/220', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:05:03', 24);
INSERT INTO `sys_oper_log` VALUES (186, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/221', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:05:05', 12);
INSERT INTO `sys_oper_log` VALUES (187, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:05:12\",\"params\":{},\"parentId\":0,\"remarkId\":222,\"remarkName\":\"计组\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:05:12', 28);
INSERT INTO `sys_oper_log` VALUES (188, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:05:25\",\"params\":{},\"parentId\":222,\"remarkId\":223,\"remarkName\":\"计组 - 才娘娘\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:05:25', 18);
INSERT INTO `sys_oper_log` VALUES (189, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:06:20\",\"params\":{},\"parentId\":223,\"point\":8,\"remarkContent\":\"水水水水水水水水水水水水水水水水水水水\",\"remarkId\":224,\"remarkName\":\"计组 - 才娘娘\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:06:20', 14);
INSERT INTO `sys_oper_log` VALUES (190, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:06:20\",\"delFlag\":\"0\",\"orderNum\":0,\"params\":{},\"parentId\":223,\"point\":8,\"remarkContent\":\"水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水\",\"remarkId\":224,\"remarkName\":\"计组 - 才娘娘\",\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 04:09:14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:09:14', 16);
INSERT INTO `sys_oper_log` VALUES (191, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 04:09:29\",\"params\":{},\"parentId\":0,\"remarkContent\":\"水水水水水水水水水水水水水水水水水水水杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀水水水水水水水水水水水水水水水水水水水\",\"remarkId\":225,\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:09:29', 14);
INSERT INTO `sys_oper_log` VALUES (192, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/225', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 04:09:40', 11);
INSERT INTO `sys_oper_log` VALUES (193, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:38:17\",\"params\":{},\"parentId\":0,\"remarkId\":226,\"remarkName\":\"操作系统\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:38:17', 25);
INSERT INTO `sys_oper_log` VALUES (194, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:38:25\",\"params\":{},\"parentId\":226,\"remarkId\":227,\"remarkName\":\"操作系统 - 李荣融\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:38:25', 16);
INSERT INTO `sys_oper_log` VALUES (195, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:38:44\",\"params\":{},\"parentId\":227,\"point\":4,\"remarkContent\":\"牛逼\",\"remarkId\":228,\"remarkName\":\"平均得分：null\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:38:44', 17);
INSERT INTO `sys_oper_log` VALUES (196, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:41:04\",\"params\":{},\"parentId\":0,\"remarkId\":229,\"remarkName\":\"计网\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:41:04', 39);
INSERT INTO `sys_oper_log` VALUES (197, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:41:13\",\"params\":{},\"parentId\":229,\"remarkId\":230,\"remarkName\":\"计网 - 王道\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:41:13', 14);
INSERT INTO `sys_oper_log` VALUES (198, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:41:21\",\"params\":{},\"parentId\":230,\"point\":4,\"remarkContent\":\"水水水水\",\"remarkId\":231,\"remarkName\":\"计网 - 王道\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:41:21', 20);
INSERT INTO `sys_oper_log` VALUES (199, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/231', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:42:28', 20);
INSERT INTO `sys_oper_log` VALUES (200, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/230', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:42:29', 12);
INSERT INTO `sys_oper_log` VALUES (201, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/229', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:42:32', 12);
INSERT INTO `sys_oper_log` VALUES (202, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:43:43\",\"params\":{},\"parentId\":0,\"remarkId\":232,\"remarkName\":\"计网\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:43:43', 38);
INSERT INTO `sys_oper_log` VALUES (203, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:43:53\",\"params\":{},\"parentId\":232,\"remarkId\":233,\"remarkName\":\"计网 - 王道\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:43:53', 14);
INSERT INTO `sys_oper_log` VALUES (204, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:44:07\",\"params\":{},\"parentId\":233,\"point\":6,\"remarkContent\":\"很垃圾\",\"remarkId\":234,\"remarkName\":\"计网 - 王道\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:44:07', 17);
INSERT INTO `sys_oper_log` VALUES (205, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:46:20\",\"params\":{},\"parentId\":233,\"point\":2,\"remarkContent\":\"sb\",\"remarkId\":235,\"remarkName\":\"计网 - 王道\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:46:20', 55);
INSERT INTO `sys_oper_log` VALUES (206, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:52:36\",\"params\":{},\"parentId\":233,\"point\":10,\"remarkContent\":\"sss\",\"remarkId\":236,\"remarkName\":\"sds\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:52:36', 42);
INSERT INTO `sys_oper_log` VALUES (207, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:53:07\",\"params\":{},\"parentId\":0,\"remarkId\":237,\"remarkName\":\"数据结构\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:53:07', 13);
INSERT INTO `sys_oper_log` VALUES (208, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/237', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:54:21', 21);
INSERT INTO `sys_oper_log` VALUES (209, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:54:27\",\"params\":{},\"parentId\":0,\"remarkId\":238,\"remarkName\":\"数据结构\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:54:27', 27);
INSERT INTO `sys_oper_log` VALUES (210, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:54:38\",\"params\":{},\"parentId\":238,\"remarkId\":239,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:54:38', 14);
INSERT INTO `sys_oper_log` VALUES (211, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:54:46\",\"params\":{},\"parentId\":239,\"point\":2,\"remarkContent\":\"垃圾\",\"remarkId\":240,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:54:47', 15);
INSERT INTO `sys_oper_log` VALUES (212, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/240', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:56:10', 23);
INSERT INTO `sys_oper_log` VALUES (213, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/239', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:56:12', 11);
INSERT INTO `sys_oper_log` VALUES (214, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/238', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:56:14', 11);
INSERT INTO `sys_oper_log` VALUES (215, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:56:23\",\"params\":{},\"parentId\":0,\"remarkId\":241,\"remarkName\":\"数据结构\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:56:23', 28);
INSERT INTO `sys_oper_log` VALUES (216, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 14:56:30\",\"params\":{},\"parentId\":241,\"remarkId\":242,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 14:56:30', 15);
INSERT INTO `sys_oper_log` VALUES (217, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":242,\"point\":2,\"remarkContent\":\"1\",\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', NULL, 0, NULL, '2024-05-11 14:56:36', 6);
INSERT INTO `sys_oper_log` VALUES (218, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:00:15\",\"params\":{},\"parentId\":239,\"point\":4,\"remarkContent\":\"1\",\"remarkId\":244,\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:00:15', 14);
INSERT INTO `sys_oper_log` VALUES (219, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/244', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:00:47', 21);
INSERT INTO `sys_oper_log` VALUES (220, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/243', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:00:49', 15);
INSERT INTO `sys_oper_log` VALUES (221, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/242', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:00:50', 13);
INSERT INTO `sys_oper_log` VALUES (222, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/241', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:01:03', 12);
INSERT INTO `sys_oper_log` VALUES (223, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:01:10\",\"params\":{},\"parentId\":0,\"remarkId\":245,\"remarkName\":\"数据结构\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:01:10', 28);
INSERT INTO `sys_oper_log` VALUES (224, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:01:16\",\"params\":{},\"parentId\":245,\"remarkId\":246,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:01:16', 16);
INSERT INTO `sys_oper_log` VALUES (225, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:01:22\",\"params\":{},\"parentId\":246,\"point\":4,\"remarkContent\":\"1\",\"remarkId\":247,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:01:22', 29);
INSERT INTO `sys_oper_log` VALUES (226, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:01:32\",\"params\":{},\"parentId\":246,\"point\":10,\"remarkId\":248,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:01:32', 26);
INSERT INTO `sys_oper_log` VALUES (227, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:01:43\",\"params\":{},\"parentId\":246,\"point\":4,\"remarkContent\":\"3\",\"remarkId\":249,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:01:43', 28);
INSERT INTO `sys_oper_log` VALUES (228, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/249', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:01', 20);
INSERT INTO `sys_oper_log` VALUES (229, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/248', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:03', 15);
INSERT INTO `sys_oper_log` VALUES (230, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/247', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:04', 10);
INSERT INTO `sys_oper_log` VALUES (231, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/246', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:06', 11);
INSERT INTO `sys_oper_log` VALUES (232, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/245', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:10', 11);
INSERT INTO `sys_oper_log` VALUES (233, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:12:16\",\"params\":{},\"parentId\":0,\"remarkId\":250,\"remarkName\":\"数据结构\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:16', 26);
INSERT INTO `sys_oper_log` VALUES (234, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:12:22\",\"params\":{},\"parentId\":250,\"remarkId\":251,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:12:22', 14);
INSERT INTO `sys_oper_log` VALUES (235, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":251,\"point\":10,\"remarkContent\":\"很好 无敌\",\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', NULL, 1, 'Mapper method \'com.ruoyi.system.mapper.SysRemarkMapper.selectAveragePointByRemarkName\' attempted to return null from a method with a primitive return type (int).', '2024-05-11 15:12:30', 10);
INSERT INTO `sys_oper_log` VALUES (236, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":251,\"point\":10,\"remarkContent\":\"很好 无敌\",\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', NULL, 1, 'Mapper method \'com.ruoyi.system.mapper.SysRemarkMapper.selectAveragePointByRemarkName\' attempted to return null from a method with a primitive return type (int).', '2024-05-11 15:12:34', 10);
INSERT INTO `sys_oper_log` VALUES (237, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/251', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:13:44', 21);
INSERT INTO `sys_oper_log` VALUES (238, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/250', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:13:46', 11);
INSERT INTO `sys_oper_log` VALUES (239, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:13:52\",\"params\":{},\"parentId\":0,\"remarkId\":252,\"remarkName\":\"数据结构\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:13:52', 26);
INSERT INTO `sys_oper_log` VALUES (240, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:13:58\",\"params\":{},\"parentId\":252,\"remarkId\":253,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:13:58', 14);
INSERT INTO `sys_oper_log` VALUES (241, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":253,\"point\":10,\"remarkContent\":\"讲得非常好\",\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', NULL, 1, 'Mapper method \'com.ruoyi.system.mapper.SysRemarkMapper.selectAveragePointByRemarkName\' attempted to return null from a method with a primitive return type (int).', '2024-05-11 15:14:08', 11);
INSERT INTO `sys_oper_log` VALUES (242, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":253,\"point\":10,\"remarkContent\":\"讲得非常好\",\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', NULL, 1, 'Mapper method \'com.ruoyi.system.mapper.SysRemarkMapper.selectAveragePointByRemarkName\' attempted to return null from a method with a primitive return type (int).', '2024-05-11 15:15:37', 14);
INSERT INTO `sys_oper_log` VALUES (243, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:16:43\",\"params\":{},\"parentId\":253,\"point\":4,\"remarkContent\":\"非常好\",\"remarkId\":254,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:16:43', 56);
INSERT INTO `sys_oper_log` VALUES (244, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 15:16:51\",\"params\":{},\"parentId\":253,\"point\":10,\"remarkContent\":\"非常烂\",\"remarkId\":255,\"remarkName\":\"数据结构 - 李春葆\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:16:51', 31);
INSERT INTO `sys_oper_log` VALUES (245, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/236', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:16:56', 15);
INSERT INTO `sys_oper_log` VALUES (246, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/235', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:16:59', 10);
INSERT INTO `sys_oper_log` VALUES (247, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/234', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:01', 14);
INSERT INTO `sys_oper_log` VALUES (248, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/233', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:03', 11);
INSERT INTO `sys_oper_log` VALUES (249, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/232', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:06', 10);
INSERT INTO `sys_oper_log` VALUES (250, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/228', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:08', 11);
INSERT INTO `sys_oper_log` VALUES (251, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/227', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:11', 13);
INSERT INTO `sys_oper_log` VALUES (252, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/226', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:15', 12);
INSERT INTO `sys_oper_log` VALUES (253, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/224', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:17', 8);
INSERT INTO `sys_oper_log` VALUES (254, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/223', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:19', 11);
INSERT INTO `sys_oper_log` VALUES (255, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/222', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:21', 11);
INSERT INTO `sys_oper_log` VALUES (256, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/211', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:24', 11);
INSERT INTO `sys_oper_log` VALUES (257, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/210', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:25', 11);
INSERT INTO `sys_oper_log` VALUES (258, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/209', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:27', 11);
INSERT INTO `sys_oper_log` VALUES (259, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/207', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:30', 12);
INSERT INTO `sys_oper_log` VALUES (260, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/206', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:32', 11);
INSERT INTO `sys_oper_log` VALUES (261, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/205', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 15:17:35', 10);
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"id\",\"columnId\":14,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:39:19\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父级id\",\"columnId\":15,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:39:19\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":16,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-11 00:39:19\",\"usableColumn\":false},{\"capJavaField\":\"RemarkName\",\"columnComment\":\"名称\",\"columnId\":17,\"columnName\":\"remark_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-10 22:52:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 16:07:21', 62);
INSERT INTO `sys_oper_log` VALUES (263, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 16:21:59\",\"params\":{},\"parentId\":0,\"remarkId\":256,\"remarkName\":\"计网\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 16:21:59', 22);
INSERT INTO `sys_oper_log` VALUES (264, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2024-05-11 16:22:44\",\"params\":{},\"parentId\":252,\"remarkId\":257,\"remarkName\":\"数据结构 - 李荣融\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 16:22:44', 13);
INSERT INTO `sys_oper_log` VALUES (265, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-11 22:50:41\",\"params\":{},\"parentId\":0,\"remarkId\":263,\"remarkName\":\"操作系统\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 22:50:41', 44);
INSERT INTO `sys_oper_log` VALUES (266, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-11 22:50:51\",\"params\":{},\"parentId\":263,\"remarkId\":264,\"remarkName\":\"操作系统 - 李荣融\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 22:50:51', 16);
INSERT INTO `sys_oper_log` VALUES (267, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-11 22:50:58\",\"params\":{},\"parentId\":263,\"remarkId\":265,\"remarkName\":\"操作系统 - 才娘娘\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 22:50:58', 14);
INSERT INTO `sys_oper_log` VALUES (268, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-11 23:36:12\",\"likeCnt\":0,\"params\":{},\"parentId\":265,\"point\":8,\"remarkContent\":\"讲的非常好\",\"remarkId\":266,\"remarkName\":\"操作系统 - 才娘娘\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 23:36:12', 24);
INSERT INTO `sys_oper_log` VALUES (269, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/260', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 00:43:09', 56);
INSERT INTO `sys_oper_log` VALUES (270, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/259', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 00:43:11', 12);
INSERT INTO `sys_oper_log` VALUES (271, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/262', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 00:43:13', 11);
INSERT INTO `sys_oper_log` VALUES (272, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/261', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 00:43:14', 11);
INSERT INTO `sys_oper_log` VALUES (273, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/258', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 00:43:16', 12);
INSERT INTO `sys_oper_log` VALUES (274, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_user_remark\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 01:23:18', 69);
INSERT INTO `sys_oper_log` VALUES (275, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"remark\",\"className\":\"SysUserRemark\",\"columns\":[{\"capJavaField\":\"RemarkId\",\"columnComment\":\"评论id\",\"columnId\":41,\"columnName\":\"remark_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-12 01:23:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"remarkId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户id\",\"columnId\":42,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-12 01:23:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"LikeOrReport\",\"columnComment\":\"1表示点赞，2表示举报\",\"columnId\":43,\"columnName\":\"like_or_report\",\"columnType\":\"smallint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-12 01:23:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"likeOrReport\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"没用\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":1}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":1},\"parentMenuId\":\"1\",\"sub\":false,\"tableComment\":\"用户评论表\",\"tableId\":5,\"tableName\":\"sys_user_remark\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 01:24:42', 27);
INSERT INTO `sys_oper_log` VALUES (276, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_user_remark\"}', NULL, 0, NULL, '2024-05-12 01:24:46', 189);
INSERT INTO `sys_oper_log` VALUES (277, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-12 18:31:48\",\"params\":{},\"parentId\":0,\"remarkId\":267,\"remarkName\":\"你好\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 18:31:48', 34);
INSERT INTO `sys_oper_log` VALUES (278, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-12 18:33:03\",\"params\":{},\"parentId\":267,\"remarkId\":268,\"remarkName\":\"你好 - 是啥1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-12 18:33:03', 16);
INSERT INTO `sys_oper_log` VALUES (279, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"去你妈的\",\"stat\":1}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'userId\' not found. Available parameters are [arg1, arg0, param1, param2]', '2024-05-13 22:01:51', 12);
INSERT INTO `sys_oper_log` VALUES (280, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":264,\"point\":6,\"stat\":1}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'userId\' not found. Available parameters are [arg1, arg0, param1, param2]', '2024-05-13 22:02:00', 0);
INSERT INTO `sys_oper_log` VALUES (281, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":264,\"point\":6,\"stat\":1}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'userId\' not found. Available parameters are [arg1, arg0, param1, param2]', '2024-05-13 22:02:13', 1);
INSERT INTO `sys_oper_log` VALUES (282, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-13 22:11:44\",\"params\":{},\"parentId\":0,\"remarkId\":269,\"remarkName\":\"数据库\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:11:44', 41);
INSERT INTO `sys_oper_log` VALUES (283, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-13 22:11:52\",\"params\":{},\"parentId\":269,\"remarkId\":270,\"remarkName\":\"数据库 - 刘斌\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:11:52', 14);
INSERT INTO `sys_oper_log` VALUES (284, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-13 22:11:59\",\"likeCnt\":0,\"params\":{},\"parentId\":270,\"point\":8,\"remarkContent\":\"一坨\",\"remarkId\":271,\"remarkName\":\"数据库 - 刘斌\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:11:59', 16);
INSERT INTO `sys_oper_log` VALUES (285, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":270,\"point\":8,\"remarkContent\":\"很帅\",\"remarkName\":\"数据库 - 刘斌\",\"stat\":3}', '{\"msg\":\"已存在符合条件的评论项，无法添加评论\",\"code\":500}', 0, NULL, '2024-05-13 22:12:11', 5);
INSERT INTO `sys_oper_log` VALUES (286, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-13 22:12:25\",\"likeCnt\":0,\"params\":{},\"parentId\":268,\"point\":8,\"remarkId\":272,\"remarkName\":\"你好 - 是啥1\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:12:25', 15);
INSERT INTO `sys_oper_log` VALUES (287, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-13 22:13:44\",\"likeCnt\":0,\"params\":{},\"parentId\":271,\"point\":4,\"remarkContent\":\"你无敌了呀\",\"remarkId\":273,\"reportCnt\":0,\"stat\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:13:44', 45);
INSERT INTO `sys_oper_log` VALUES (288, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":270,\"point\":6,\"remarkContent\":\"你无敌了呀\",\"remarkName\":\"数据库 - 刘斌\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-05-13 22:13:57', 9);
INSERT INTO `sys_oper_log` VALUES (289, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/273', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:27:41', 20);
INSERT INTO `sys_oper_log` VALUES (290, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/271', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:27:43', 11);
INSERT INTO `sys_oper_log` VALUES (291, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-13 22:27:51\",\"likeCnt\":0,\"params\":{},\"parentId\":270,\"point\":6,\"remarkContent\":\"若依:你无敌了呀\",\"remarkId\":274,\"remarkName\":\"数据库 - 刘斌\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-13 22:27:51', 39);
INSERT INTO `sys_oper_log` VALUES (292, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":270,\"point\":8,\"remarkContent\":\"你是？\",\"remarkName\":\"数据库 - 刘斌\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-05-13 22:28:07', 5);
INSERT INTO `sys_oper_log` VALUES (293, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":270,\"point\":10,\"remarkName\":\"数据库 - 刘斌\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-05-14 00:38:01', 14);
INSERT INTO `sys_oper_log` VALUES (294, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-08 17:19:32\",\"noticeContent\":\"<p>新版本内容是啥</p>\",\"noticeId\":1,\"noticeTitle\":\"温馨提醒：2018-07-01 若依新版本发布啦\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 20:45:15', 20);
INSERT INTO `sys_oper_log` VALUES (295, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"noticeTitle\":\"11\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:00:46', 12);
INSERT INTO `sys_oper_log` VALUES (296, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.removeing()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/next/10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:01:21', 21);
INSERT INTO `sys_oper_log` VALUES (297, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/14', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:24:03', 21);
INSERT INTO `sys_oper_log` VALUES (298, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/15', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:30:16', 31);
INSERT INTO `sys_oper_log` VALUES (299, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-08 17:19:31\",\"cssClass\":\"\",\"default\":true,\"dictCode\":14,\"dictLabel\":\"少量举报\",\"dictSort\":1,\"dictType\":\"sys_notice_type\",\"dictValue\":\"1\",\"isDefault\":\"Y\",\"listClass\":\"warning\",\"params\":{},\"remark\":\"通知\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:31:20', 16);
INSERT INTO `sys_oper_log` VALUES (300, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-08 17:19:31\",\"cssClass\":\"\",\"default\":false,\"dictCode\":15,\"dictLabel\":\"大量举报\",\"dictSort\":2,\"dictType\":\"sys_notice_type\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"success\",\"params\":{},\"remark\":\"公告\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:31:30', 14);
INSERT INTO `sys_oper_log` VALUES (301, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-08 17:19:31\",\"dictId\":7,\"dictName\":\"举报数量\",\"dictType\":\"sys_notice_type\",\"params\":{},\"remark\":\"通知类型列表\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:31:51', 44);
INSERT INTO `sys_oper_log` VALUES (302, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/16', '127.0.0.1', '内网IP', '{}', NULL, 1, 'For input string: \"你无敌了呀\"', '2024-05-14 21:45:42', 8);
INSERT INTO `sys_oper_log` VALUES (303, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/16', '127.0.0.1', '内网IP', '{}', NULL, 1, 'For input string: \"你无敌了呀\"', '2024-05-14 21:45:54', 4);
INSERT INTO `sys_oper_log` VALUES (304, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/16', '127.0.0.1', '内网IP', '{}', NULL, 1, 'For input string: \"你无敌了呀\"', '2024-05-14 21:46:03', 3);
INSERT INTO `sys_oper_log` VALUES (305, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/18', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 21:58:32', 31);
INSERT INTO `sys_oper_log` VALUES (306, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-14 22:00:10\",\"likeCnt\":0,\"params\":{},\"parentId\":270,\"point\":2,\"remarkContent\":\"若依:555\",\"remarkId\":275,\"remarkName\":\"数据库 - 刘斌\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:00:10', 26);
INSERT INTO `sys_oper_log` VALUES (307, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/272', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:00:22', 11);
INSERT INTO `sys_oper_log` VALUES (308, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.removeing()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/next/19', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:00:37', 11);
INSERT INTO `sys_oper_log` VALUES (309, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"审核处理\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":1,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:01:30', 17);
INSERT INTO `sys_oper_log` VALUES (310, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/275', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:02:07', 10);
INSERT INTO `sys_oper_log` VALUES (311, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/1', '127.0.0.1', '内网IP', '{}', NULL, 1, 'For input string: \"管理员\"', '2024-05-14 22:10:51', 3);
INSERT INTO `sys_oper_log` VALUES (312, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-14 22:13:10\",\"likeCnt\":0,\"params\":{},\"parentId\":270,\"point\":2,\"remarkContent\":\"若依:搜索\",\"remarkId\":276,\"remarkName\":\"数据库 - 刘斌\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:13:10', 18);
INSERT INTO `sys_oper_log` VALUES (313, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/21', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-14 22:19:00', 44);
INSERT INTO `sys_oper_log` VALUES (314, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/remark/index\",\"createTime\":\"2024-05-11 19:23:22\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"课程评价\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"remark\",\"perms\":\"system:remark:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 00:48:53', 25);
INSERT INTO `sys_oper_log` VALUES (315, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":270,\"point\":4,\"remarkContent\":\"真的sb\"}', '{\"msg\":\"评论内容包含不当关键词，无法添加评论\",\"code\":500}', 0, NULL, '2024-05-15 00:54:54', 12);
INSERT INTO `sys_oper_log` VALUES (316, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":270,\"remarkContent\":\"一废物老师\"}', '{\"msg\":\"评论内容包含不当关键词，无法添加评论\",\"code\":500}', 0, NULL, '2024-05-15 01:02:24', 9);
INSERT INTO `sys_oper_log` VALUES (317, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-15 01:10:44\",\"likeCnt\":0,\"params\":{},\"parentId\":270,\"point\":4,\"remarkContent\":\"若依:很好\",\"remarkId\":277,\"remarkName\":\"数据库 - 刘斌\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 01:10:44', 53);
INSERT INTO `sys_oper_log` VALUES (318, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/277', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 01:10:55', 15);
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"点赞举报\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2005,\"perms\":\"system:remark:like\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 10:58:20', 78);
INSERT INTO `sys_oper_log` VALUES (320, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 10:58:27', 52);
INSERT INTO `sys_oper_log` VALUES (321, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"点赞举报\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2000,\"perms\":\"system:remark:like\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 10:59:33', 40);
INSERT INTO `sys_oper_log` VALUES (322, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-15 11:14:34\",\"likeCnt\":0,\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"若依:lol\",\"remarkId\":278,\"remarkName\":\"操作系统 - 才娘娘\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 11:14:34', 72);
INSERT INTO `sys_oper_log` VALUES (323, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.removeing()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/next/22', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 11:14:56', 36);
INSERT INTO `sys_oper_log` VALUES (324, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/05/15/屏幕截图 2024-04-24 163031_20240515111554A001.png\",\"code\":200}', 0, NULL, '2024-05-15 11:15:55', 325);
INSERT INTO `sys_oper_log` VALUES (325, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"zmjjkk\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 11:16:03', 51);
INSERT INTO `sys_oper_log` VALUES (326, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"我是sb\"}', '{\"msg\":\"评论内容包含不当关键词，无法添加评论\",\"code\":500}', 0, NULL, '2024-05-15 11:23:21', 1);
INSERT INTO `sys_oper_log` VALUES (327, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"我是s*b\",\"remarkName\":\"操作系统 - 才娘娘\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-05-15 11:23:30', 14);
INSERT INTO `sys_oper_log` VALUES (328, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-15 11:14:34\",\"delFlag\":\"0\",\"likeCnt\":1,\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"我是s*b\",\"remarkId\":278,\"remarkName\":\"操作系统 - 才娘娘\",\"reportCnt\":1,\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-05-15 11:24:15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-15 11:24:15', 31);
INSERT INTO `sys_oper_log` VALUES (329, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"verygood！\",\"remarkName\":\"操作系统 - 才娘娘\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-05-16 18:07:16', 55);
INSERT INTO `sys_oper_log` VALUES (330, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-16 18:07:40\",\"likeCnt\":0,\"params\":{},\"parentId\":270,\"point\":10,\"remarkContent\":\"zmjjkk:verygood\",\"remarkId\":279,\"remarkName\":\"数据库 - 刘斌\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-16 18:07:40', 111);
INSERT INTO `sys_oper_log` VALUES (331, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/278', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-16 18:08:19', 19);
INSERT INTO `sys_oper_log` VALUES (332, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-05-16 18:08:31\",\"likeCnt\":0,\"params\":{},\"parentId\":265,\"point\":10,\"remarkContent\":\"zmjjkk:verygood\",\"remarkId\":280,\"remarkName\":\"操作系统 - 才娘娘\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-16 18:08:31', 68);
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-06-08 16:15:44', 52);
INSERT INTO `sys_oper_log` VALUES (334, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-06-08 16:16:00', 15);
INSERT INTO `sys_oper_log` VALUES (335, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/post/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":104,\"menuName\":\"岗位管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"post\",\"perms\":\"system:post:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:31:57', 93);
INSERT INTO `sys_oper_log` VALUES (336, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/post/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":104,\"menuName\":\"岗位管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"post\",\"perms\":\"system:post:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:32:24', 14);
INSERT INTO `sys_oper_log` VALUES (337, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dept/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":103,\"menuName\":\"部门管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:32:32', 19);
INSERT INTO `sys_oper_log` VALUES (338, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dict/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":105,\"menuName\":\"字典管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"dict\",\"perms\":\"system:dict:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:32:53', 15);
INSERT INTO `sys_oper_log` VALUES (339, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/config/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"参数设置\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":1,\"path\":\"config\",\"perms\":\"system:config:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:33:13', 14);
INSERT INTO `sys_oper_log` VALUES (340, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":108,\"menuName\":\"日志管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":1,\"path\":\"log\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:33:36', 12);
INSERT INTO `sys_oper_log` VALUES (341, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:34:13', 11);
INSERT INTO `sys_oper_log` VALUES (342, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 16:36:59', 42);
INSERT INTO `sys_oper_log` VALUES (343, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-06-08 17:13:58', 46);
INSERT INTO `sys_oper_log` VALUES (344, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/remark/index\",\"createTime\":\"2024-05-11 19:23:22\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"课程评价\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"courseevaluate\",\"perms\":\"system:remark:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 17:34:25', 32);
INSERT INTO `sys_oper_log` VALUES (345, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"小黄\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:35:14', 79);
INSERT INTO `sys_oper_log` VALUES (346, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"黄\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:35:30', 1);
INSERT INTO `sys_oper_log` VALUES (347, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 17:35:48\",\"likeCnt\":0,\"params\":{},\"parentId\":264,\"point\":4,\"remarkContent\":\"zmjjkk:好\",\"remarkId\":281,\"remarkName\":\"操作系统 - 李荣融\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 17:35:48', 126);
INSERT INTO `sys_oper_log` VALUES (348, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 17:35:59\",\"params\":{},\"parentId\":263,\"remarkContent\":\"\",\"remarkId\":282,\"remarkName\":\"操作系统 - 黄啊啊啊\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 17:35:59', 11);
INSERT INTO `sys_oper_log` VALUES (349, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"啊啊啊啊\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:36:09', 1);
INSERT INTO `sys_oper_log` VALUES (350, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 17:36:26\",\"likeCnt\":0,\"params\":{},\"parentId\":282,\"point\":6,\"remarkContent\":\"zmjjkk:好\",\"remarkId\":283,\"remarkName\":\"操作系统 - 黄啊啊啊\",\"reportCnt\":0,\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 17:36:26', 38);
INSERT INTO `sys_oper_log` VALUES (351, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 17:36:38\",\"params\":{},\"parentId\":263,\"remarkContent\":\"\",\"remarkId\":284,\"remarkName\":\"操作系统 - 就将计就计\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 17:36:38', 11);
INSERT INTO `sys_oper_log` VALUES (352, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"黄依照\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:36:48', 1);
INSERT INTO `sys_oper_log` VALUES (353, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"安抚哈哈看\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:11', 0);
INSERT INTO `sys_oper_log` VALUES (354, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"安抚哈哈看\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:13', 0);
INSERT INTO `sys_oper_log` VALUES (355, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"艾法尔范\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:17', 0);
INSERT INTO `sys_oper_log` VALUES (356, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"额分分无法\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:22', 0);
INSERT INTO `sys_oper_log` VALUES (357, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"额分分无法\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:22', 1);
INSERT INTO `sys_oper_log` VALUES (358, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"地恶狠狠\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:30', 1);
INSERT INTO `sys_oper_log` VALUES (359, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"问问分\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 17:37:39', 1);
INSERT INTO `sys_oper_log` VALUES (360, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/08/profile_20240608175053A002.jpg\",\"code\":200}', 0, NULL, '2024-06-08 17:50:54', 152);
INSERT INTO `sys_oper_log` VALUES (361, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/08/profile_20240608175053A001.jpg\",\"code\":200}', 0, NULL, '2024-06-08 17:50:54', 495);
INSERT INTO `sys_oper_log` VALUES (362, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleKey\":\"common\",\"roleName\":\"xiagushuaige\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"新增角色\'xiagushuaige\'失败，角色权限已存在\",\"code\":500}', 0, NULL, '2024-06-08 17:55:45', 18);
INSERT INTO `sys_oper_log` VALUES (363, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleKey\":\"common\",\"roleName\":\"xiagushuaige\",\"roleSort\":5,\"status\":\"0\"}', '{\"msg\":\"新增角色\'xiagushuaige\'失败，角色权限已存在\",\"code\":500}', 0, NULL, '2024-06-08 17:56:01', 8);
INSERT INTO `sys_oper_log` VALUES (364, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleKey\":\"common\",\"roleName\":\"hhh\",\"roleSort\":50,\"status\":\"0\"}', '{\"msg\":\"新增角色\'hhh\'失败，角色权限已存在\",\"code\":500}', 0, NULL, '2024-06-08 17:57:18', 9);
INSERT INTO `sys_oper_log` VALUES (365, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"峡谷帅哥\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":100,\"userName\":\"峡谷帅哥\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 17:58:02', 199);
INSERT INTO `sys_oper_log` VALUES (366, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 17:19:31\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2007],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:01:23', 37);
INSERT INTO `sys_oper_log` VALUES (367, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"111\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:04:25', 4);
INSERT INTO `sys_oper_log` VALUES (368, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"您好\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:04:36', 1);
INSERT INTO `sys_oper_log` VALUES (369, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"您好\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:05:14', 0);
INSERT INTO `sys_oper_log` VALUES (370, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"您好\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:05:15', 1);
INSERT INTO `sys_oper_log` VALUES (371, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"你哈哈哈\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:06:04', 1);
INSERT INTO `sys_oper_log` VALUES (372, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":263,\"remarkName\":\"你哈哈哈\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:06:06', 0);
INSERT INTO `sys_oper_log` VALUES (373, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 18:06:16\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":285,\"remarkName\":\"数据库\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:06:16', 8);
INSERT INTO `sys_oper_log` VALUES (374, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"params\":{},\"parentId\":269,\"remarkName\":\"老师\"}', NULL, 1, 'Cannot invoke \"String.toLowerCase()\" because \"content\" is null', '2024-06-08 18:06:23', 1);
INSERT INTO `sys_oper_log` VALUES (375, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, '峡谷帅哥', NULL, '/system/remark/285', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:06:52', 14);
INSERT INTO `sys_oper_log` VALUES (376, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 18:09:46\",\"params\":{},\"parentId\":267,\"remarkContent\":\"\",\"remarkId\":286,\"remarkName\":\"你好 - 那你\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:09:46', 22);
INSERT INTO `sys_oper_log` VALUES (377, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 18:09:51\",\"params\":{},\"parentId\":267,\"remarkContent\":\"\",\"remarkId\":287,\"remarkName\":\"你好 - 说是刷\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:09:51', 9);
INSERT INTO `sys_oper_log` VALUES (378, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-08 17:58:02\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2024-06-08 18:05:03\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"峡谷帅哥\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[3],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"峡谷帅哥\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:11:56', 41);
INSERT INTO `sys_oper_log` VALUES (379, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2000],\"params\":{},\"roleId\":3,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:13:02', 17);
INSERT INTO `sys_oper_log` VALUES (380, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2000,2001,2002,2003,2004,2005,2007],\"params\":{},\"roleId\":3,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:16:11', 26);
INSERT INTO `sys_oper_log` VALUES (381, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2000,2001,2002,2003,2004,2005,2007],\"params\":{},\"roleId\":3,\"roleKey\":\"tangren\",\"roleName\":\"唐人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:16:34', 19);
INSERT INTO `sys_oper_log` VALUES (382, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/23', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:18:32', 28);
INSERT INTO `sys_oper_log` VALUES (383, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/24', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:18:55', 18);
INSERT INTO `sys_oper_log` VALUES (384, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/267', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:20:03', 7);
INSERT INTO `sys_oper_log` VALUES (385, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/268', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:20:08', 7);
INSERT INTO `sys_oper_log` VALUES (386, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/286', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:20:13', 7);
INSERT INTO `sys_oper_log` VALUES (387, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/287', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:20:16', 5);
INSERT INTO `sys_oper_log` VALUES (388, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:24:14', 12);
INSERT INTO `sys_oper_log` VALUES (389, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 18:24:37', 11);
INSERT INTO `sys_oper_log` VALUES (390, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 22:14:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2000,2001,2002,2003,2004,2005,2007],\"params\":{},\"roleId\":3,\"roleKey\":\"tangren\",\"roleName\":\"学生\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 19:01:53', 114);
INSERT INTO `sys_oper_log` VALUES (391, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2007],\"params\":{},\"roleId\":102,\"roleKey\":\"teacher\",\"roleName\":\"教师\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 19:02:13', 50);
INSERT INTO `sys_oper_log` VALUES (392, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/role/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 19:02:50', 34);
INSERT INTO `sys_oper_log` VALUES (393, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"马嘉祺\",\"params\":{},\"postIds\":[],\"roleIds\":[102],\"status\":\"0\",\"userId\":101,\"userName\":\"马嘉祺\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 19:04:29', 136);
INSERT INTO `sys_oper_log` VALUES (394, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '马嘉祺', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"101\",\"createTime\":\"2024-06-08 19:05:03\",\"likeCnt\":0,\"params\":{},\"parentId\":264,\"remarkContent\":\"马嘉祺:wanb\",\"remarkId\":288,\"remarkName\":\"操作系统 - 李荣融\",\"reportCnt\":0,\"reservedPort3\":\"102\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 19:05:03', 75);
INSERT INTO `sys_oper_log` VALUES (395, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/263', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:20', 10);
INSERT INTO `sys_oper_log` VALUES (396, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/264', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:25', 11);
INSERT INTO `sys_oper_log` VALUES (397, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/265', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:32', 10);
INSERT INTO `sys_oper_log` VALUES (398, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/269', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:34', 9);
INSERT INTO `sys_oper_log` VALUES (399, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/270', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:38', 5);
INSERT INTO `sys_oper_log` VALUES (400, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/281', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:42', 6);
INSERT INTO `sys_oper_log` VALUES (401, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/284', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:45', 6);
INSERT INTO `sys_oper_log` VALUES (402, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/288', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:48', 6);
INSERT INTO `sys_oper_log` VALUES (403, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/283', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:51', 9);
INSERT INTO `sys_oper_log` VALUES (404, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/282', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:13:53', 5);
INSERT INTO `sys_oper_log` VALUES (405, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:14:08\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":289,\"remarkName\":\"机器学习\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:14:08', 18);
INSERT INTO `sys_oper_log` VALUES (406, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:14:19\",\"params\":{},\"parentId\":289,\"remarkContent\":\"\",\"remarkId\":290,\"remarkName\":\"机器学习 - 李祖超\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:14:19', 14);
INSERT INTO `sys_oper_log` VALUES (407, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:14:42\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":291,\"remarkName\":\"操作系统\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:14:42', 12);
INSERT INTO `sys_oper_log` VALUES (408, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:14:50\",\"params\":{},\"parentId\":291,\"remarkContent\":\"\",\"remarkId\":292,\"remarkName\":\"操作系统 - 郑鹏\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:14:50', 11);
INSERT INTO `sys_oper_log` VALUES (409, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:15:11\",\"params\":{},\"parentId\":291,\"remarkContent\":\"\",\"remarkId\":293,\"remarkName\":\"操作系统 - 李蓉蓉\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:15:11', 20);
INSERT INTO `sys_oper_log` VALUES (410, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:16:06\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":294,\"remarkName\":\"线性代数\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:16:06', 17);
INSERT INTO `sys_oper_log` VALUES (411, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:16:20\",\"params\":{},\"parentId\":294,\"remarkContent\":\"\",\"remarkId\":295,\"remarkName\":\"线性代数 - 江宁\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:16:20', 15);
INSERT INTO `sys_oper_log` VALUES (412, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:16:29\",\"params\":{},\"parentId\":294,\"remarkContent\":\"\",\"remarkId\":296,\"remarkName\":\"线性代数 - 黄正华\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:16:29', 12);
INSERT INTO `sys_oper_log` VALUES (413, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:16:37\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":297,\"remarkName\":\"CSAPP\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:16:37', 16);
INSERT INTO `sys_oper_log` VALUES (414, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:16:59\",\"params\":{},\"parentId\":297,\"remarkContent\":\"\",\"remarkId\":298,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:16:59', 13);
INSERT INTO `sys_oper_log` VALUES (415, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:19:40\",\"params\":{},\"parentId\":297,\"remarkContent\":\"\",\"remarkId\":299,\"remarkName\":\"CSAPP - 龚奕利\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:19:40', 15);
INSERT INTO `sys_oper_log` VALUES (416, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:20:04\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":300,\"remarkName\":\"计算机网络\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:20:04', 13);
INSERT INTO `sys_oper_log` VALUES (417, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:20:57\",\"params\":{},\"parentId\":300,\"remarkContent\":\"\",\"remarkId\":301,\"remarkName\":\"计算机网络 - 黄传河\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:20:57', 11);
INSERT INTO `sys_oper_log` VALUES (418, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:21:20\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"zmjjkk:李老师的课十分生动形象！\",\"remarkId\":302,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:21:20', 33);
INSERT INTO `sys_oper_log` VALUES (419, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:22:16\",\"likeCnt\":0,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"zmjjkk:郑老师的课十分深入\",\"remarkId\":303,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:22:16', 30);
INSERT INTO `sys_oper_log` VALUES (420, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:22:53\",\"likeCnt\":0,\"params\":{},\"parentId\":293,\"point\":10,\"remarkContent\":\"zmjjkk:教师的教学效果极佳，可以使同学在领略知识魅力的同时提高自己实际技能。\",\"remarkId\":304,\"remarkName\":\"操作系统 - 李蓉蓉\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:22:53', 27);
INSERT INTO `sys_oper_log` VALUES (421, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:24:03\",\"likeCnt\":0,\"params\":{},\"parentId\":295,\"point\":10,\"remarkContent\":\"zmjjkk:教师教学在书面浅显知识的基础上，进一步扩大了教学的知识的深度及广度，扩大了学生知识面，并且多方面培养学生的思考问题的能力\",\"remarkId\":305,\"remarkName\":\"线性代数 - 江宁\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:24:03', 26);
INSERT INTO `sys_oper_log` VALUES (422, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:24:17\",\"likeCnt\":0,\"params\":{},\"parentId\":296,\"point\":10,\"remarkContent\":\"zmjjkk:教师上课认真负责，专业基础极技能高深，非常注重学生的实际动手能力。老师常常告诫学生，书法要从心开始，勤于练习。\",\"remarkId\":306,\"remarkName\":\"线性代数 - 黄正华\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:24:17', 30);
INSERT INTO `sys_oper_log` VALUES (423, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:24:52\",\"likeCnt\":0,\"params\":{},\"parentId\":298,\"point\":10,\"remarkContent\":\"zmjjkk:教师教课内容广大博深，高质量，高效率。教课内容新颖，独特，有个性。\",\"remarkId\":307,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:24:52', 23);
INSERT INTO `sys_oper_log` VALUES (424, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:25:30\",\"likeCnt\":0,\"params\":{},\"parentId\":299,\"point\":10,\"remarkContent\":\"zmjjkk:教师授课表现出来的激情和精神可以深深吸引并打动学生，希望我们的老师可以继续创新，造出更多的精品课。\",\"remarkId\":308,\"remarkName\":\"CSAPP - 龚奕利\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:25:30', 27);
INSERT INTO `sys_oper_log` VALUES (425, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:25:58\",\"likeCnt\":0,\"params\":{},\"parentId\":301,\"point\":10,\"remarkContent\":\"zmjjkk:教师的知识渊博，因此讲授的很有深度，并且在书本知识上也有所扩展。\",\"remarkId\":309,\"remarkName\":\"计算机网络 - 黄传河\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:25:58', 36);
INSERT INTO `sys_oper_log` VALUES (426, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"shuaige@163.com\",\"nickName\":\"zmjjkk\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:27:27', 16);
INSERT INTO `sys_oper_log` VALUES (427, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:39:53\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":8,\"remarkContent\":\"峡谷帅哥:大作业不会做www\",\"remarkId\":310,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:39:53', 82);
INSERT INTO `sys_oper_log` VALUES (428, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:40:17\",\"likeCnt\":0,\"params\":{},\"parentId\":295,\"point\":10,\"remarkContent\":\"峡谷帅哥:江老师我的神！\",\"remarkId\":311,\"remarkName\":\"线性代数 - 江宁\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:40:17', 32);
INSERT INTO `sys_oper_log` VALUES (429, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:44:35\",\"likeCnt\":0,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"峡谷帅哥:郑老师讲课内容新颖，独特，有个性。教师授课表现出来的激情和精神可以深深吸引并打动学生，希望我们的老师可以继续创新，造出更多的精品课。\",\"remarkId\":312,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:44:35', 34);
INSERT INTO `sys_oper_log` VALUES (430, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:48:06\",\"likeCnt\":0,\"params\":{},\"parentId\":293,\"remarkContent\":\"峡谷帅哥:教课内容新颖，独特，有个性。教师授课表现出来的激情和精神可以深深吸引并打动学生，希望我们的老师可以继续创新，造出更多的精品课。\",\"remarkId\":313,\"remarkName\":\"操作系统 - 李蓉蓉\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:48:06', 37);
INSERT INTO `sys_oper_log` VALUES (431, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:49:33\",\"likeCnt\":0,\"params\":{},\"parentId\":296,\"point\":10,\"remarkContent\":\"峡谷帅哥:老师在授课中，内容深且广，涵盖面广，能联系古今，结合时代背景。\",\"remarkId\":314,\"remarkName\":\"线性代数 - 黄正华\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:49:33', 35);
INSERT INTO `sys_oper_log` VALUES (432, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:50:54\",\"likeCnt\":0,\"params\":{},\"parentId\":298,\"point\":10,\"remarkContent\":\"峡谷帅哥:课堂气氛轻松、活跃，积极激发学生的兴趣。\",\"remarkId\":315,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:50:54', 35);
INSERT INTO `sys_oper_log` VALUES (433, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:51:08\",\"likeCnt\":0,\"params\":{},\"parentId\":299,\"point\":10,\"remarkContent\":\"峡谷帅哥:课程设置合理，知识深度合适，实际操作多，教学效果好\",\"remarkId\":316,\"remarkName\":\"CSAPP - 龚奕利\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:51:09', 32);
INSERT INTO `sys_oper_log` VALUES (434, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '峡谷帅哥', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"100\",\"createTime\":\"2024-06-08 21:51:30\",\"likeCnt\":0,\"params\":{},\"parentId\":301,\"point\":10,\"remarkContent\":\"峡谷帅哥:教学内容新颖、独特、有自身特色，能很好地启发、驱动学生的思维\",\"remarkId\":317,\"remarkName\":\"计算机网络 - 黄传河\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:51:30', 36);
INSERT INTO `sys_oper_log` VALUES (435, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"水军一号\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":102,\"userName\":\"水军一号\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:54:32', 197);
INSERT INTO `sys_oper_log` VALUES (436, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"水军二号\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":103,\"userName\":\"水军二号\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:54:49', 88);
INSERT INTO `sys_oper_log` VALUES (437, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"水军三号\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":104,\"userName\":\"水军三号\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:56:20', 97);
INSERT INTO `sys_oper_log` VALUES (438, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-05-08 17:19:30\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"\",\"loginDate\":\"2024-05-08 20:43:14\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"审核\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:57:35', 29);
INSERT INTO `sys_oper_log` VALUES (439, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:58:26', 23);
INSERT INTO `sys_oper_log` VALUES (440, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"蔡朝晖\",\"params\":{},\"postIds\":[],\"roleIds\":[102],\"status\":\"0\",\"userId\":105,\"userName\":\"蔡朝晖\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:58:49', 97);
INSERT INTO `sys_oper_log` VALUES (441, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"李祖超\",\"params\":{},\"postIds\":[],\"roleIds\":[102],\"status\":\"0\",\"userId\":106,\"userName\":\"李祖超\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 21:59:20', 107);
INSERT INTO `sys_oper_log` VALUES (442, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-08 22:02:56\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"水军一号:我是水军一号！李老师讲得好\",\"remarkId\":318,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:02:58', 2351);
INSERT INTO `sys_oper_log` VALUES (443, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"我是水军一号！李老师讲得好\",\"remarkName\":\"机器学习 - 李祖超\",\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-06-08 22:02:58', 1344);
INSERT INTO `sys_oper_log` VALUES (444, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-08 22:03:48\",\"likeCnt\":0,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"水军一号:我是水军一号！郑老师讲得好\",\"remarkId\":319,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:03:48', 31);
INSERT INTO `sys_oper_log` VALUES (445, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-08 22:04:11\",\"likeCnt\":0,\"params\":{},\"parentId\":293,\"point\":10,\"remarkContent\":\"水军一号:我是水军一号！李老师讲得好\",\"remarkId\":320,\"remarkName\":\"操作系统 - 李蓉蓉\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:04:11', 27);
INSERT INTO `sys_oper_log` VALUES (446, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-08 22:06:27\",\"likeCnt\":0,\"params\":{},\"parentId\":301,\"point\":10,\"remarkContent\":\"水军一号:我是水军一号！黄老师与学生经常交流的\",\"remarkId\":321,\"remarkName\":\"计算机网络 - 黄传河\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:06:27', 27);
INSERT INTO `sys_oper_log` VALUES (447, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军二号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"103\",\"createTime\":\"2024-06-08 22:10:18\",\"likeCnt\":0,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"水军二号:我不是水军，郑老师在授课中，内容深且广，涵盖面广，能联系古今，结合时代背景\",\"remarkId\":322,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:10:18', 25);
INSERT INTO `sys_oper_log` VALUES (448, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军二号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"103\",\"createTime\":\"2024-06-08 22:11:12\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"水军二号:李老师的课还是不错的\",\"remarkId\":323,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:11:12', 28);
INSERT INTO `sys_oper_log` VALUES (449, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军二号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"103\",\"createTime\":\"2024-06-08 22:18:03\",\"likeCnt\":0,\"params\":{},\"parentId\":295,\"point\":10,\"remarkContent\":\"水军二号:江老师上课幽默风趣，让人简直走入了数学的天堂！\",\"remarkId\":324,\"remarkName\":\"线性代数 - 江宁\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:18:03', 46);
INSERT INTO `sys_oper_log` VALUES (450, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军二号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"103\",\"createTime\":\"2024-06-08 22:19:50\",\"likeCnt\":0,\"params\":{},\"parentId\":296,\"point\":10,\"remarkContent\":\"水军二号:黄老师赛高！\",\"remarkId\":325,\"remarkName\":\"线性代数 - 黄正华\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:19:50', 42);
INSERT INTO `sys_oper_log` VALUES (451, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军二号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"103\",\"createTime\":\"2024-06-08 22:20:12\",\"likeCnt\":0,\"params\":{},\"parentId\":298,\"point\":10,\"remarkContent\":\"水军二号:蔡老师是我在大学遇到的最认真负责的老师\",\"remarkId\":326,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:20:12', 28);
INSERT INTO `sys_oper_log` VALUES (452, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军三号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"104\",\"createTime\":\"2024-06-08 22:21:10\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"水军三号:李老师赛高！\",\"remarkId\":327,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:21:10', 32);
INSERT INTO `sys_oper_log` VALUES (453, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军三号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"104\",\"createTime\":\"2024-06-08 22:22:15\",\"likeCnt\":0,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"水军三号:郑老师真好，不卡我绩，只给我87呢\",\"remarkId\":328,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:22:15', 25);
INSERT INTO `sys_oper_log` VALUES (454, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军三号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"104\",\"createTime\":\"2024-06-08 22:24:02\",\"likeCnt\":0,\"params\":{},\"parentId\":298,\"point\":10,\"remarkContent\":\"水军三号:没有蔡老师，就没有我的今天！\",\"remarkId\":329,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:24:02', 23);
INSERT INTO `sys_oper_log` VALUES (455, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军三号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"104\",\"createTime\":\"2024-06-08 22:25:03\",\"likeCnt\":0,\"params\":{},\"parentId\":301,\"point\":10,\"remarkContent\":\"水军三号:课上黄老师很注意与学生的互动环节，尤其是老师互动的效果很好，语言也很生动、形象。\",\"remarkId\":330,\"remarkName\":\"计算机网络 - 黄传河\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:25:03', 27);
INSERT INTO `sys_oper_log` VALUES (456, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '李祖超', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"106\",\"createTime\":\"2024-06-08 22:28:17\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"remarkContent\":\"李祖超:感谢同学们的喜爱，同时也非常感谢给我提出宝贵建议的同学们，我会认真听取同学们的建议进行改进！！[抱拳][抱拳]\",\"remarkId\":331,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"102\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:28:17', 30);
INSERT INTO `sys_oper_log` VALUES (457, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '蔡朝晖', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"105\",\"createTime\":\"2024-06-08 22:32:34\",\"likeCnt\":0,\"params\":{},\"parentId\":298,\"remarkContent\":\"蔡朝晖:希望同学们在未来的生活学习中一帆风顺！！\",\"remarkId\":332,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reportCnt\":0,\"reservedPort3\":\"102\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:32:34', 29);
INSERT INTO `sys_oper_log` VALUES (458, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 22:34:55\",\"params\":{},\"parentId\":289,\"remarkContent\":\"\",\"remarkId\":333,\"remarkName\":\"机器学习 - 梁超\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:34:55', 58);
INSERT INTO `sys_oper_log` VALUES (459, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 22:36:07\",\"likeCnt\":0,\"params\":{},\"parentId\":333,\"point\":10,\"remarkContent\":\"zmjjkk:没上过梁老师的课，有同学能给一些建议吗\",\"remarkId\":334,\"remarkName\":\"机器学习 - 梁超\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:36:07', 28);
INSERT INTO `sys_oper_log` VALUES (460, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 21:21:20\",\"delFlag\":\"0\",\"likeCnt\":2,\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"zmjjkk:没上过李老师的课，李老师讲课怎么样啊xdm\",\"remarkId\":302,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 22:36:49\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:36:49', 9);
INSERT INTO `sys_oper_log` VALUES (461, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"103\",\"createTime\":\"2024-06-08 22:11:13\",\"delFlag\":\"0\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":10,\"remarkContent\":\"水军二号:这门课教材用啥来着\",\"remarkId\":323,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 22:37:03\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:37:03', 7);
INSERT INTO `sys_oper_log` VALUES (462, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-08 22:03:48\",\"delFlag\":\"0\",\"likeCnt\":1,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"水军一号:马上要上郑老师的课了，有点紧张呢\",\"remarkId\":319,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 22:38:47\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:38:47', 10);
INSERT INTO `sys_oper_log` VALUES (463, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"104\",\"createTime\":\"2024-06-08 22:22:16\",\"delFlag\":\"0\",\"likeCnt\":0,\"params\":{},\"parentId\":292,\"point\":10,\"remarkContent\":\"水军三号:郑老师真好，不卡我绩，只给我86呢\",\"remarkId\":328,\"remarkName\":\"操作系统 - 郑鹏\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 22:38:58\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:38:58', 7);
INSERT INTO `sys_oper_log` VALUES (464, '评论', 2, 'com.ruoyi.system.controller.SysRemarkController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"ancestors\":\"\",\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-08 22:06:28\",\"delFlag\":\"0\",\"likeCnt\":0,\"params\":{},\"parentId\":301,\"point\":10,\"remarkContent\":\"水军一号:黄老师的课听说很不错，刚选上\",\"remarkId\":321,\"remarkName\":\"计算机网络 - 黄传河\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 22:45:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:45:59', 6);
INSERT INTO `sys_oper_log` VALUES (465, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 22:46:10\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":335,\"remarkName\":\"音乐欣赏\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:46:10', 16);
INSERT INTO `sys_oper_log` VALUES (466, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 22:46:25\",\"params\":{},\"parentId\":335,\"remarkContent\":\"\",\"remarkId\":336,\"remarkName\":\"音乐欣赏 - 王渊\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:46:25', 11);
INSERT INTO `sys_oper_log` VALUES (467, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-08 22:46:45\",\"params\":{},\"parentId\":335,\"remarkContent\":\"\",\"remarkId\":337,\"remarkName\":\"音乐欣赏 - 江柏安\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-08 22:46:45', 12);
INSERT INTO `sys_oper_log` VALUES (468, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/337', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-09 01:11:25', 28);
INSERT INTO `sys_oper_log` VALUES (469, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/336', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-09 01:11:31', 7);
INSERT INTO `sys_oper_log` VALUES (470, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/335', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-09 01:11:40', 7);
INSERT INTO `sys_oper_log` VALUES (471, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/10/黄霄云_20240610190925A001.jpg\",\"code\":200}', 0, NULL, '2024-06-10 19:09:25', 175);
INSERT INTO `sys_oper_log` VALUES (472, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/10/黄霄云_20240610190931A002.jpg\",\"code\":200}', 0, NULL, '2024-06-10 19:09:31', 8);
INSERT INTO `sys_oper_log` VALUES (473, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/10/黄霄云_20240610190942A003.jpg\",\"code\":200}', 0, NULL, '2024-06-10 19:09:42', 12);
INSERT INTO `sys_oper_log` VALUES (474, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-10 19:30:02\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":338,\"remarkName\":\"音乐欣赏\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 19:30:02', 39);
INSERT INTO `sys_oper_log` VALUES (475, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-10 19:30:20\",\"params\":{},\"parentId\":338,\"remarkContent\":\"\",\"remarkId\":339,\"remarkName\":\"音乐欣赏 - 王源\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 19:30:20', 11);
INSERT INTO `sys_oper_log` VALUES (476, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/339', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 19:30:55', 8);
INSERT INTO `sys_oper_log` VALUES (477, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-10 19:30:58\",\"params\":{},\"parentId\":339,\"point\":10,\"remarkContent\":\"这门课好棒，人人100分\",\"remarkId\":340,\"reservedPort3\":\"3\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 19:30:58', 9);
INSERT INTO `sys_oper_log` VALUES (478, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-10 22:13:31\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":341,\"remarkName\":\"软件工程\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:13:32', 35);
INSERT INTO `sys_oper_log` VALUES (479, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/338', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:13:52', 12);
INSERT INTO `sys_oper_log` VALUES (480, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/341', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:13:55', 5);
INSERT INTO `sys_oper_log` VALUES (481, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-10 22:14:14\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":342,\"remarkName\":\"音乐欣赏\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:14:14', 16);
INSERT INTO `sys_oper_log` VALUES (482, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/340', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:14:20', 11);
INSERT INTO `sys_oper_log` VALUES (483, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-10 22:14:31\",\"params\":{},\"parentId\":342,\"remarkContent\":\"\",\"remarkId\":343,\"remarkName\":\"音乐欣赏 - 王渊\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:14:31', 16);
INSERT INTO `sys_oper_log` VALUES (484, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-10 22:15:00\",\"likeCnt\":0,\"params\":{},\"parentId\":343,\"point\":10,\"remarkContent\":\"zmjjkk:老师人很好，给分非常好\",\"remarkId\":344,\"remarkName\":\"音乐欣赏 - 王渊\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:15:00', 40);
INSERT INTO `sys_oper_log` VALUES (485, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-08 17:19:31\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2007],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"审核员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:19:02', 89);
INSERT INTO `sys_oper_log` VALUES (486, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.removeing()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/next/28', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:21:23', 6);
INSERT INTO `sys_oper_log` VALUES (487, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/26', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:22:11', 22);
INSERT INTO `sys_oper_log` VALUES (488, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-06-10 22:31:02', 2);
INSERT INTO `sys_oper_log` VALUES (489, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:17', 11);
INSERT INTO `sys_oper_log` VALUES (490, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:20', 12);
INSERT INTO `sys_oper_log` VALUES (491, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:25', 14);
INSERT INTO `sys_oper_log` VALUES (492, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:27', 14);
INSERT INTO `sys_oper_log` VALUES (493, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:30', 14);
INSERT INTO `sys_oper_log` VALUES (494, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:34', 12);
INSERT INTO `sys_oper_log` VALUES (495, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:36', 11);
INSERT INTO `sys_oper_log` VALUES (496, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:38', 16);
INSERT INTO `sys_oper_log` VALUES (497, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:40', 10);
INSERT INTO `sys_oper_log` VALUES (498, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:42', 10);
INSERT INTO `sys_oper_log` VALUES (499, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:45', 14);
INSERT INTO `sys_oper_log` VALUES (500, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:49', 8);
INSERT INTO `sys_oper_log` VALUES (501, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1026', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:51', 15);
INSERT INTO `sys_oper_log` VALUES (502, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1027', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:53', 9);
INSERT INTO `sys_oper_log` VALUES (503, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:55', 11);
INSERT INTO `sys_oper_log` VALUES (504, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:57', 11);
INSERT INTO `sys_oper_log` VALUES (505, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:31:59', 12);
INSERT INTO `sys_oper_log` VALUES (506, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1030', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:03', 14);
INSERT INTO `sys_oper_log` VALUES (507, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:07', 14);
INSERT INTO `sys_oper_log` VALUES (508, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:09', 12);
INSERT INTO `sys_oper_log` VALUES (509, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:11', 11);
INSERT INTO `sys_oper_log` VALUES (510, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1034', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:13', 13);
INSERT INTO `sys_oper_log` VALUES (511, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:16', 15);
INSERT INTO `sys_oper_log` VALUES (512, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"审核处理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:28', 14);
INSERT INTO `sys_oper_log` VALUES (513, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-05-09 17:26:07\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":108,\"menuName\":\"日志管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"log\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:32', 5);
INSERT INTO `sys_oper_log` VALUES (514, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/500', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-06-10 22:32:40', 2);
INSERT INTO `sys_oper_log` VALUES (515, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:45', 6);
INSERT INTO `sys_oper_log` VALUES (516, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1040', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:47', 15);
INSERT INTO `sys_oper_log` VALUES (517, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:49', 16);
INSERT INTO `sys_oper_log` VALUES (518, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/500', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:51', 9);
INSERT INTO `sys_oper_log` VALUES (519, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:56', 11);
INSERT INTO `sys_oper_log` VALUES (520, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:32:58', 12);
INSERT INTO `sys_oper_log` VALUES (521, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1044', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:00', 4);
INSERT INTO `sys_oper_log` VALUES (522, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1045', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:02', 12);
INSERT INTO `sys_oper_log` VALUES (523, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/501', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:04', 15);
INSERT INTO `sys_oper_log` VALUES (524, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:06', 9);
INSERT INTO `sys_oper_log` VALUES (525, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:29', 15);
INSERT INTO `sys_oper_log` VALUES (526, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:31', 11);
INSERT INTO `sys_oper_log` VALUES (527, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:34', 9);
INSERT INTO `sys_oper_log` VALUES (528, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/116', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-06-10 22:33:35', 4);
INSERT INTO `sys_oper_log` VALUES (529, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:38', 30);
INSERT INTO `sys_oper_log` VALUES (530, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:40', 12);
INSERT INTO `sys_oper_log` VALUES (531, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1060', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:41', 15);
INSERT INTO `sys_oper_log` VALUES (532, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/116', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:44', 15);
INSERT INTO `sys_oper_log` VALUES (533, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/117', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:33:55', 10);
INSERT INTO `sys_oper_log` VALUES (534, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/115', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:00', 14);
INSERT INTO `sys_oper_log` VALUES (535, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:03', 15);
INSERT INTO `sys_oper_log` VALUES (536, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/114', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:09', 11);
INSERT INTO `sys_oper_log` VALUES (537, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:11', 10);
INSERT INTO `sys_oper_log` VALUES (538, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/112', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:13', 12);
INSERT INTO `sys_oper_log` VALUES (539, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/111', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:15', 14);
INSERT INTO `sys_oper_log` VALUES (540, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:25', 11);
INSERT INTO `sys_oper_log` VALUES (541, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:27', 7);
INSERT INTO `sys_oper_log` VALUES (542, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:28', 11);
INSERT INTO `sys_oper_log` VALUES (543, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:30', 16);
INSERT INTO `sys_oper_log` VALUES (544, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:32', 11);
INSERT INTO `sys_oper_log` VALUES (545, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:34', 10);
INSERT INTO `sys_oper_log` VALUES (546, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/110', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:35', 15);
INSERT INTO `sys_oper_log` VALUES (547, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:40', 12);
INSERT INTO `sys_oper_log` VALUES (548, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:42', 10);
INSERT INTO `sys_oper_log` VALUES (549, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1046', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:44', 11);
INSERT INTO `sys_oper_log` VALUES (550, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:46', 14);
INSERT INTO `sys_oper_log` VALUES (551, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:34:50', 13);
INSERT INTO `sys_oper_log` VALUES (552, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-10 22:37:18\",\"likeCnt\":0,\"params\":{},\"parentId\":343,\"point\":10,\"remarkContent\":\"水军一号:很不错\",\"remarkId\":345,\"remarkName\":\"音乐欣赏 - 王渊\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:37:18', 20);
INSERT INTO `sys_oper_log` VALUES (553, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/345', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:37:33', 7);
INSERT INTO `sys_oper_log` VALUES (554, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/343', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:37:53', 10);
INSERT INTO `sys_oper_log` VALUES (555, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-10 22:38:00\",\"params\":{},\"parentId\":343,\"point\":10,\"remarkContent\":\"很不错\",\"remarkId\":346,\"reservedPort3\":\"3\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:38:00', 16);
INSERT INTO `sys_oper_log` VALUES (556, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/346', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:44:03', 9);
INSERT INTO `sys_oper_log` VALUES (557, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/344', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:44:06', 13);
INSERT INTO `sys_oper_log` VALUES (558, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/342', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-10 22:44:09', 5);
INSERT INTO `sys_oper_log` VALUES (559, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-11 00:44:12\",\"params\":{},\"parentId\":0,\"remarkContent\":\"\",\"remarkId\":347,\"remarkName\":\"123\",\"reservedPort3\":\"1\",\"stat\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:44:12', 15);
INSERT INTO `sys_oper_log` VALUES (560, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-11 00:44:26\",\"params\":{},\"parentId\":347,\"remarkContent\":\"\",\"remarkId\":348,\"remarkName\":\"123 - hyz\",\"reservedPort3\":\"1\",\"stat\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:44:26', 10);
INSERT INTO `sys_oper_log` VALUES (561, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-11 00:45:46\",\"likeCnt\":0,\"params\":{},\"parentId\":348,\"point\":8,\"remarkContent\":\"zmjjkk:好\",\"remarkId\":349,\"remarkName\":\"123 - hyz\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:45:46', 27);
INSERT INTO `sys_oper_log` VALUES (562, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-11 00:46:06\",\"likeCnt\":0,\"params\":{},\"parentId\":348,\"point\":6,\"remarkContent\":\"水军一号:很好\",\"remarkId\":350,\"remarkName\":\"123 - hyz\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:46:06', 26);
INSERT INTO `sys_oper_log` VALUES (563, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/30', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:46:49', 18);
INSERT INTO `sys_oper_log` VALUES (564, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/31', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:46:51', 13);
INSERT INTO `sys_oper_log` VALUES (565, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/348', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:47:01', 5);
INSERT INTO `sys_oper_log` VALUES (566, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/347', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 00:47:04', 8);
INSERT INTO `sys_oper_log` VALUES (567, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-11 10:32:20\",\"likeCnt\":0,\"params\":{},\"parentId\":301,\"point\":2,\"remarkContent\":\"zmjjkk:恶意评论\",\"remarkId\":351,\"remarkName\":\"计算机网络 - 黄传河\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 10:32:20', 25);
INSERT INTO `sys_oper_log` VALUES (568, '评论', 3, 'com.ruoyi.system.controller.SysRemarkController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/remark/351', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 10:32:40', 9);
INSERT INTO `sys_oper_log` VALUES (569, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, 'admin', '研发部门', '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"1\",\"createTime\":\"2024-06-11 10:32:48\",\"likeCnt\":0,\"params\":{},\"parentId\":290,\"point\":4,\"remarkContent\":\"zmjjkk:恶意评论\",\"remarkId\":352,\"remarkName\":\"机器学习 - 李祖超\",\"reportCnt\":0,\"reservedPort3\":\"1\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 10:32:48', 19);
INSERT INTO `sys_oper_log` VALUES (570, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"params\":{},\"parentId\":290,\"point\":4,\"remarkContent\":\"恶意评论\",\"remarkName\":\"机器学习 - 李祖超\",\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"您已经添加对该课程的评价，无法再次添加评论\",\"code\":500}', 0, NULL, '2024-06-11 11:51:54', 12);
INSERT INTO `sys_oper_log` VALUES (571, '评论', 1, 'com.ruoyi.system.controller.SysRemarkController.add()', 'POST', 1, '水军一号', NULL, '/system/remark', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"102\",\"createTime\":\"2024-06-11 11:52:58\",\"likeCnt\":0,\"params\":{},\"parentId\":298,\"point\":10,\"remarkContent\":\"水军一号:好\",\"remarkId\":353,\"remarkName\":\"CSAPP - 蔡朝晖\",\"reportCnt\":0,\"reservedPort3\":\"3\",\"stat\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 11:52:58', 15);
INSERT INTO `sys_oper_log` VALUES (572, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/32', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 11:54:18', 16);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-05-08 17:19:30', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-05-08 17:19:30', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-05-08 17:19:30', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-05-08 17:19:30', '', NULL, '');

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
  PRIMARY KEY (`remark_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 354 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_remark
-- ----------------------------
INSERT INTO `sys_remark` VALUES (289, 0, '', 1, '机器学习', '0', '1', '2024-06-08 21:14:08', '', NULL, '', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (290, 289, '', 2, '机器学习 - 李祖超', '0', '1', '2024-06-08 21:14:20', '', '2024-06-11 10:32:48', '评分：8.40', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (291, 0, '', 1, '操作系统', '0', '1', '2024-06-08 21:14:43', '', NULL, '', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (292, 291, '', 2, '操作系统 - 郑鹏', '0', '1', '2024-06-08 21:14:50', '', '2024-06-08 22:22:16', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (293, 291, '', 2, '操作系统 - 李蓉蓉', '0', '1', '2024-06-08 21:15:12', '', '2024-06-08 22:04:12', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (294, 0, '', 1, '线性代数', '0', '1', '2024-06-08 21:16:07', '', NULL, '', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (295, 294, '', 2, '线性代数 - 江宁', '0', '1', '2024-06-08 21:16:20', '', '2024-06-08 22:18:04', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (296, 294, '', 2, '线性代数 - 黄正华', '0', '1', '2024-06-08 21:16:30', '', '2024-06-08 22:19:50', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (297, 0, '', 1, 'CSAPP', '0', '1', '2024-06-08 21:16:37', '', NULL, '', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (298, 297, '', 2, 'CSAPP - 蔡朝晖', '0', '1', '2024-06-08 21:17:00', '', '2024-06-11 11:52:59', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (299, 297, '', 2, 'CSAPP - 龚奕利', '0', '1', '2024-06-08 21:19:41', '', '2024-06-08 21:51:09', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (300, 0, '', 1, '计算机网络', '0', '1', '2024-06-08 21:20:04', '', NULL, '', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (301, 300, '', 2, '计算机网络 - 黄传河', '0', '1', '2024-06-08 21:20:57', '', '2024-06-11 10:32:21', '评分：8.40', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (303, 292, '', 3, '操作系统 - 郑鹏', '0', '1', '2024-06-08 21:22:16', '', '2024-06-08 22:04:43', 'zmjjkk:郑老师的课十分深入', 10, 2, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (304, 293, '', 3, '操作系统 - 李蓉蓉', '0', '1', '2024-06-08 21:22:54', '', '2024-06-08 22:04:46', 'zmjjkk:教师的教学效果极佳，可以使同学在领略知识魅力的同时提高自己实际技能。', 10, 1, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (305, 295, '', 3, '线性代数 - 江宁', '0', '1', '2024-06-08 21:24:03', '', '2024-06-10 19:15:47', 'zmjjkk:教师教学在书面浅显知识的基础上，进一步扩大了教学的知识的深度及广度，扩大了学生知识面，并且多方面培养学生的思考问题的能力', 10, 2, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (306, 296, '', 3, '线性代数 - 黄正华', '0', '1', '2024-06-08 21:24:17', '', '2024-06-08 21:46:00', 'zmjjkk:教师上课认真负责，专业基础极技能高深，非常注重学生的实际动手能力。老师常常告诫学生，书法要从心开始，勤于练习。', 10, 1, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (307, 298, '', 3, 'CSAPP - 蔡朝晖', '0', '1', '2024-06-08 21:24:52', '', NULL, 'zmjjkk:教师教课内容广大博深，高质量，高效率。教课内容新颖，独特，有个性。', 10, 0, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (308, 299, '', 3, 'CSAPP - 龚奕利', '0', '1', '2024-06-08 21:25:30', '', NULL, 'zmjjkk:教师授课表现出来的激情和精神可以深深吸引并打动学生，希望我们的老师可以继续创新，造出更多的精品课。', 10, 0, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (309, 301, '', 3, '计算机网络 - 黄传河', '0', '1', '2024-06-08 21:25:59', '', NULL, 'zmjjkk:教师的知识渊博，因此讲授的很有深度，并且在书本知识上也有所扩展。', 10, 0, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (310, 290, '', 3, '机器学习 - 李祖超', '0', '100', '2024-06-08 21:39:54', '', '2024-06-10 22:35:42', '峡谷帅哥:大作业不会做www', 8, 3, 1, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (311, 295, '', 3, '线性代数 - 江宁', '0', '100', '2024-06-08 21:40:17', '', '2024-06-08 21:46:00', '峡谷帅哥:江老师我的神！', 10, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (312, 292, '', 3, '操作系统 - 郑鹏', '0', '100', '2024-06-08 21:44:35', '', '2024-06-10 22:12:35', '峡谷帅哥:郑老师讲课内容新颖，独特，有个性。教师授课表现出来的激情和精神可以深深吸引并打动学生，希望我们的老师可以继续创新，造出更多的精品课。', 10, 3, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (313, 293, '', 3, '操作系统 - 李蓉蓉', '0', '100', '2024-06-08 21:48:07', '', '2024-06-08 22:04:47', '峡谷帅哥:教课内容新颖，独特，有个性。教师授课表现出来的激情和精神可以深深吸引并打动学生，希望我们的老师可以继续创新，造出更多的精品课。', NULL, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (314, 296, '', 3, '线性代数 - 黄正华', '0', '100', '2024-06-08 21:49:34', '', '2024-06-10 22:15:33', '峡谷帅哥:老师在授课中，内容深且广，涵盖面广，能联系古今，结合时代背景。', 10, 0, 1, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (315, 298, '', 3, 'CSAPP - 蔡朝晖', '0', '100', '2024-06-08 21:50:54', '', '2024-06-08 22:04:49', '峡谷帅哥:课堂气氛轻松、活跃，积极激发学生的兴趣。', 10, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (316, 299, '', 3, 'CSAPP - 龚奕利', '0', '100', '2024-06-08 21:51:09', '', NULL, '峡谷帅哥:课程设置合理，知识深度合适，实际操作多，教学效果好', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (317, 301, '', 3, '计算机网络 - 黄传河', '0', '100', '2024-06-08 21:51:30', '', NULL, '峡谷帅哥:教学内容新颖、独特、有自身特色，能很好地启发、驱动学生的思维', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (318, 290, '', 3, '机器学习 - 李祖超', '0', '102', '2024-06-08 22:02:56', '', '2024-06-11 00:45:36', '水军一号:我是水军一号！李老师讲得好', 10, 3, 1, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (319, 292, '', 3, '操作系统 - 郑鹏', '0', '102', '2024-06-08 22:03:48', '', '2024-06-08 22:38:47', '水军一号:马上要上郑老师的课了，有点紧张呢', 10, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (320, 293, '', 3, '操作系统 - 李蓉蓉', '0', '102', '2024-06-08 22:04:12', '', '2024-06-08 22:04:47', '水军一号:我是水军一号！李老师讲得好', 10, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (321, 301, '', 3, '计算机网络 - 黄传河', '0', '102', '2024-06-08 22:06:28', '', '2024-06-08 22:45:59', '水军一号:黄老师的课听说很不错，刚选上', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (322, 292, '', 3, '操作系统 - 郑鹏', '0', '103', '2024-06-08 22:10:19', '', '2024-06-08 22:10:39', '水军二号:我不是水军，郑老师在授课中，内容深且广，涵盖面广，能联系古今，结合时代背景', 10, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (323, 290, '', 3, '机器学习 - 李祖超', '0', '103', '2024-06-08 22:11:13', '', '2024-06-08 22:37:03', '水军二号:这门课教材用啥来着', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (324, 295, '', 3, '线性代数 - 江宁', '0', '103', '2024-06-08 22:18:04', '', NULL, '水军二号:江老师上课幽默风趣，让人简直走入了数学的天堂！', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (325, 296, '', 3, '线性代数 - 黄正华', '0', '103', '2024-06-08 22:19:50', '', NULL, '水军二号:黄老师赛高！', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (326, 298, '', 3, 'CSAPP - 蔡朝晖', '0', '103', '2024-06-08 22:20:12', '', NULL, '水军二号:蔡老师是我在大学遇到的最认真负责的老师', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (327, 290, '', 3, '机器学习 - 李祖超', '0', '104', '2024-06-08 22:21:10', '', '2024-06-10 19:09:53', '水军三号:李老师赛高！', 10, 1, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (328, 292, '', 3, '操作系统 - 郑鹏', '0', '104', '2024-06-08 22:22:16', '', '2024-06-08 22:38:58', '水军三号:郑老师真好，不卡我绩，只给我86呢', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (329, 298, '', 3, 'CSAPP - 蔡朝晖', '0', '104', '2024-06-08 22:24:03', '', NULL, '水军三号:没有蔡老师，就没有我的今天！', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (330, 301, '', 3, '计算机网络 - 黄传河', '0', '104', '2024-06-08 22:25:04', '', NULL, '水军三号:课上黄老师很注意与学生的互动环节，尤其是老师互动的效果很好，语言也很生动、形象。', 10, 0, 0, NULL, NULL, '3');
INSERT INTO `sys_remark` VALUES (331, 290, '', 3, '机器学习 - 李祖超', '0', '106', '2024-06-08 22:28:18', '', '2024-06-10 19:11:19', '李祖超:感谢同学们的喜爱，同时也非常感谢给我提出宝贵建议的同学们，我会认真听取同学们的建议进行改进！！[抱拳][抱拳]', NULL, 100, 0, NULL, NULL, '102');
INSERT INTO `sys_remark` VALUES (332, 298, '', 3, 'CSAPP - 蔡朝晖', '0', '105', '2024-06-08 22:32:34', '', '2024-06-08 22:32:37', '蔡朝晖:希望同学们在未来的生活学习中一帆风顺！！', NULL, 1, 0, NULL, NULL, '102');
INSERT INTO `sys_remark` VALUES (333, 289, '', 2, '机器学习 - 梁超', '0', '1', '2024-06-08 22:34:55', '', '2024-06-08 22:36:07', '评分：10.00', NULL, 0, NULL, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (334, 333, '', 3, '机器学习 - 梁超', '0', '1', '2024-06-08 22:36:07', '', NULL, 'zmjjkk:没上过梁老师的课，有同学能给一些建议吗', 10, 0, 0, NULL, NULL, '1');
INSERT INTO `sys_remark` VALUES (353, 298, '', 3, 'CSAPP - 蔡朝晖', '0', '102', '2024-06-11 11:52:59', '', NULL, '水军一号:好', 10, 0, 0, NULL, NULL, '3');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-05-08 17:19:31', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '审核员', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-05-08 17:19:31', 'admin', '2024-06-10 22:19:02', '普通角色');
INSERT INTO `sys_role` VALUES (3, '学生', 'tangren', 3, '1', 0, 1, '0', '0', 'admin', '2024-05-08 22:14:48', 'admin', '2024-06-08 19:01:53', NULL);
INSERT INTO `sys_role` VALUES (101, 'sb', 'sss', 0, '1', 1, 1, '0', '2', 'admin', '2024-05-08 22:15:42', '', NULL, 'ss');
INSERT INTO `sys_role` VALUES (102, '教师', 'teacher', 4, '1', 1, 1, '0', '0', 'admin', '2024-06-08 19:02:12', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (3, 2000);
INSERT INTO `sys_role_menu` VALUES (3, 2001);
INSERT INTO `sys_role_menu` VALUES (3, 2002);
INSERT INTO `sys_role_menu` VALUES (3, 2003);
INSERT INTO `sys_role_menu` VALUES (3, 2004);
INSERT INTO `sys_role_menu` VALUES (3, 2005);
INSERT INTO `sys_role_menu` VALUES (3, 2007);
INSERT INTO `sys_role_menu` VALUES (102, 2000);
INSERT INTO `sys_role_menu` VALUES (102, 2001);
INSERT INTO `sys_role_menu` VALUES (102, 2002);
INSERT INTO `sys_role_menu` VALUES (102, 2003);
INSERT INTO `sys_role_menu` VALUES (102, 2004);
INSERT INTO `sys_role_menu` VALUES (102, 2005);
INSERT INTO `sys_role_menu` VALUES (102, 2007);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'zmjjkk', '00', 'shuaige@163.com', '15888888888', '0', '/profile/avatar/2024/06/10/黄霄云_20240610190942A003.jpg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-11 11:53:24', 'admin', '2024-05-08 17:19:30', '', '2024-06-11 11:53:24', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '审核', '00', '', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-05-08 20:43:14', 'admin', '2024-05-08 17:19:30', 'admin', '2024-06-08 21:57:35', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, '峡谷帅哥', '峡谷帅哥', '00', '', '', '0', '', '$2a$10$UJb2pL/.RrdOWaPWKQHVp.TLAO5c77.dXvK902yejW7GC3bwypipS', '0', '0', '127.0.0.1', '2024-06-08 21:38:45', 'admin', '2024-06-08 17:58:02', 'admin', '2024-06-08 21:38:45', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, '马嘉祺', '马嘉祺', '00', '', '', '0', '', '$2a$10$1xpOVKW4Rd.baMcrEKcBK.uzFnSzdT4PSIUxc3jD2mIWjpwt0I9ou', '0', '2', '127.0.0.1', '2024-06-08 20:48:09', 'admin', '2024-06-08 19:04:29', '', '2024-06-08 20:48:09', NULL);
INSERT INTO `sys_user` VALUES (102, NULL, '水军一号', '水军一号', '00', '', '', '0', '', '$2a$10$zSxEHO5AMPS0IQJ/qgGPPupy3EMCLiRE23eayma7GeSoVUF1lEzbS', '0', '0', '127.0.0.1', '2024-06-11 11:49:58', 'admin', '2024-06-08 21:54:32', '', '2024-06-11 11:49:57', NULL);
INSERT INTO `sys_user` VALUES (103, NULL, '水军二号', '水军二号', '00', '', '', '0', '', '$2a$10$vhemcKQF7jhMIYeyAAVYLOg74NNtxIU9/jSMPeaGwuGExbvglEdv.', '0', '0', '127.0.0.1', '2024-06-08 22:06:48', 'admin', '2024-06-08 21:54:49', '', '2024-06-08 22:06:47', NULL);
INSERT INTO `sys_user` VALUES (104, NULL, '水军三号', '水军三号', '00', '', '', '0', '', '$2a$10$41ytEWbWqf1ytfIGc/Mhl.tKQy5V2PheqVsEO60KD74hV9GSI1Wc6', '0', '0', '127.0.0.1', '2024-06-08 22:20:41', 'admin', '2024-06-08 21:56:20', '', '2024-06-08 22:20:41', NULL);
INSERT INTO `sys_user` VALUES (105, NULL, '蔡朝晖', '蔡朝晖', '00', '', '', '0', '', '$2a$10$dBhSFAuGKzwD9gcJu8zqQ.mIY2NkYpJ96jEJYXuPo5lNjhW1GorY2', '0', '0', '127.0.0.1', '2024-06-08 22:29:47', 'admin', '2024-06-08 21:58:49', '', '2024-06-08 22:29:46', NULL);
INSERT INTO `sys_user` VALUES (106, NULL, '李祖超', '李祖超', '00', '', '', '0', '', '$2a$10$f7W7bDuXEHyK6zLModbvL.A3G5sgvEw0Pawn.wz3p3Ktw0HW6VnDq', '0', '0', '127.0.0.1', '2024-06-08 22:27:01', 'admin', '2024-06-08 21:59:20', '', '2024-06-08 22:27:00', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_remark
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_remark`;
CREATE TABLE `sys_user_remark`  (
  `remark_id` bigint NOT NULL COMMENT '评论id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `like_or_report` smallint NOT NULL COMMENT '1表示点赞，2表示举报',
  PRIMARY KEY (`remark_id`, `user_id`, `like_or_report`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_remark
-- ----------------------------
INSERT INTO `sys_user_remark` VALUES (266, 1, 1);
INSERT INTO `sys_user_remark` VALUES (270, 1, 1);
INSERT INTO `sys_user_remark` VALUES (277, 1, 1);
INSERT INTO `sys_user_remark` VALUES (303, 100, 1);
INSERT INTO `sys_user_remark` VALUES (303, 102, 1);
INSERT INTO `sys_user_remark` VALUES (304, 102, 1);
INSERT INTO `sys_user_remark` VALUES (305, 100, 1);
INSERT INTO `sys_user_remark` VALUES (305, 102, 1);
INSERT INTO `sys_user_remark` VALUES (306, 100, 1);
INSERT INTO `sys_user_remark` VALUES (310, 1, 1);
INSERT INTO `sys_user_remark` VALUES (310, 1, 2);
INSERT INTO `sys_user_remark` VALUES (310, 100, 1);
INSERT INTO `sys_user_remark` VALUES (310, 102, 1);
INSERT INTO `sys_user_remark` VALUES (311, 100, 1);
INSERT INTO `sys_user_remark` VALUES (312, 1, 1);
INSERT INTO `sys_user_remark` VALUES (312, 100, 1);
INSERT INTO `sys_user_remark` VALUES (312, 102, 1);
INSERT INTO `sys_user_remark` VALUES (313, 102, 1);
INSERT INTO `sys_user_remark` VALUES (314, 1, 2);
INSERT INTO `sys_user_remark` VALUES (315, 102, 1);
INSERT INTO `sys_user_remark` VALUES (318, 1, 1);
INSERT INTO `sys_user_remark` VALUES (318, 102, 1);
INSERT INTO `sys_user_remark` VALUES (319, 102, 1);
INSERT INTO `sys_user_remark` VALUES (320, 102, 1);
INSERT INTO `sys_user_remark` VALUES (322, 103, 1);
INSERT INTO `sys_user_remark` VALUES (327, 1, 1);
INSERT INTO `sys_user_remark` VALUES (331, 1, 1);
INSERT INTO `sys_user_remark` VALUES (332, 105, 1);
INSERT INTO `sys_user_remark` VALUES (344, 1, 1);
INSERT INTO `sys_user_remark` VALUES (344, 1, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 3);
INSERT INTO `sys_user_role` VALUES (102, 3);
INSERT INTO `sys_user_role` VALUES (103, 3);
INSERT INTO `sys_user_role` VALUES (104, 3);
INSERT INTO `sys_user_role` VALUES (105, 102);
INSERT INTO `sys_user_role` VALUES (106, 102);

SET FOREIGN_KEY_CHECKS = 1;
