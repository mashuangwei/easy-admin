/*
 Navicat Premium Data Transfer

 Source Server         : 223
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 192.168.162.223:3306
 Source Schema         : master_db

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 15/04/2019 21:04:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alipay_config
-- ----------------------------
INSERT INTO `alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `pid` bigint(20) NOT NULL COMMENT '上级部门',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, 'eladmin', 0, '2019-03-25 09:14:05', b'1');
INSERT INTO `dept` VALUES (2, '研发部', 7, '2019-03-25 09:15:32', b'1');
INSERT INTO `dept` VALUES (5, '运维部', 7, '2019-03-25 09:20:44', b'1');
INSERT INTO `dept` VALUES (6, '测试部', 8, '2019-03-25 09:52:18', b'1');
INSERT INTO `dept` VALUES (7, '华南分部', 1, '2019-03-25 11:04:50', b'1');
INSERT INTO `dept` VALUES (8, '华北分部', 1, '2019-03-25 11:04:53', b'1');
INSERT INTO `dept` VALUES (9, '财务部', 7, '2019-03-25 11:05:34', b'1');
INSERT INTO `dept` VALUES (10, '行政部', 8, '2019-03-25 11:05:58', b'1');
INSERT INTO `dept` VALUES (11, '人事部', 8, '2019-03-25 11:07:58', b'1');
INSERT INTO `dept` VALUES (12, '市场部', 7, '2019-03-25 11:10:24', b'0');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, 'user_status', '用户状态');
INSERT INTO `dict` VALUES (4, 'dept_status', '部门状态');
INSERT INTO `dict` VALUES (5, 'job_status', '岗位状态');

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `dict_id` bigint(11) NULL DEFAULT NULL COMMENT '字典id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id`) USING BTREE,
  CONSTRAINT `FK5tpkputc6d9nboxojdbgnpmyb` FOREIGN KEY (`dict_id`) REFERENCES `dict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict_detail
-- ----------------------------
INSERT INTO `dict_detail` VALUES (1, '激活', 'true', '1', 1);
INSERT INTO `dict_detail` VALUES (2, '锁定', 'false', '2', 1);
INSERT INTO `dict_detail` VALUES (11, '正常', 'true', '1', 4);
INSERT INTO `dict_detail` VALUES (12, '停用', 'false', '2', 4);
INSERT INTO `dict_detail` VALUES (13, '正常', 'true', '1', 5);
INSERT INTO `dict_detail` VALUES (14, '停用', 'false', '2', 5);

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_config`;
CREATE TABLE `gen_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `cover` bit(1) NULL DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_config
-- ----------------------------
INSERT INTO `gen_config` VALUES (1, 'jie', b'0', 'eladmin-system', 'com.msw.modules.system', 'E:\\workspace\\me\\eladmin-qt\\src\\views\\system\\dictDetail', 'E:\\workspace\\me\\eladmin-qt\\src\\api');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` bit(1) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `sort` bigint(20) NOT NULL,
  `dept_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKmvhj0rogastlctflsxf1d6k3i`(`dept_id`) USING BTREE,
  CONSTRAINT `FKmvhj0rogastlctflsxf1d6k3i` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (2, '董事长秘书', b'1', '2019-03-29 14:01:30', 2, 1);
INSERT INTO `job` VALUES (8, '人事专员', b'1', '2019-03-29 14:52:28', 3, 11);
INSERT INTO `job` VALUES (10, '产品经理', b'0', '2019-03-29 14:55:51', 4, 2);
INSERT INTO `job` VALUES (11, '全栈开发', b'1', '2019-03-31 13:39:30', 6, 2);
INSERT INTO `job` VALUES (12, '软件测试', b'1', '2019-03-31 13:39:43', 5, 2);
INSERT INTO `job` VALUES (19, '董事长', b'1', '2019-03-31 14:58:15', 1, 1);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5050 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (4954, '2019-04-12 16:39:59', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 451, 'admin');
INSERT INTO `log` VALUES (4955, '2019-04-12 16:41:44', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 20, 'admin');
INSERT INTO `log` VALUES (4956, '2019-04-12 16:49:34', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 19, 'admin');
INSERT INTO `log` VALUES (4957, '2019-04-12 17:10:44', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 19, 'admin');
INSERT INTO `log` VALUES (4958, '2019-04-12 17:21:48', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 23, 'admin');
INSERT INTO `log` VALUES (4959, '2019-04-12 17:27:13', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 22, 'admin');
INSERT INTO `log` VALUES (4960, '2019-04-12 17:28:49', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 19, 'admin');
INSERT INTO `log` VALUES (4961, '2019-04-12 17:28:50', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 51, 'admin');
INSERT INTO `log` VALUES (4962, '2019-04-12 17:29:04', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 205, 'admin');
INSERT INTO `log` VALUES (4963, '2019-04-12 17:29:07', '查询权限', NULL, 'INFO', 'com.msw.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', 33, 'admin');
INSERT INTO `log` VALUES (4964, '2019-04-12 17:29:12', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 42, 'admin');
INSERT INTO `log` VALUES (4965, '2019-04-12 17:29:12', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 42, 'admin');
INSERT INTO `log` VALUES (4966, '2019-04-12 20:29:49', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 68, 'admin');
INSERT INTO `log` VALUES (4967, '2019-04-12 20:29:53', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 17, 'admin');
INSERT INTO `log` VALUES (4968, '2019-04-12 20:29:53', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 80, 'admin');
INSERT INTO `log` VALUES (4969, '2019-04-12 20:29:53', '查询用户', NULL, 'INFO', 'com.msw.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 202, 'admin');
INSERT INTO `log` VALUES (4970, '2019-04-12 20:29:55', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 15, 'admin');
INSERT INTO `log` VALUES (4971, '2019-04-12 20:29:56', '查询权限', NULL, 'INFO', 'com.msw.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', 7, 'admin');
INSERT INTO `log` VALUES (4972, '2019-04-12 20:29:58', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (4973, '2019-04-12 20:33:28', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 11, 'admin');
INSERT INTO `log` VALUES (4974, '2019-04-12 20:33:30', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 23, 'admin');
INSERT INTO `log` VALUES (4975, '2019-04-12 20:33:30', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 32, 'admin');
INSERT INTO `log` VALUES (4976, '2019-04-12 20:33:30', '查询用户', NULL, 'INFO', 'com.msw.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 38, 'admin');
INSERT INTO `log` VALUES (4977, '2019-04-13 13:21:07', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 873, 'admin');
INSERT INTO `log` VALUES (4978, '2019-04-13 13:21:11', '查询定时任务', NULL, 'INFO', 'com.msw.modules.quartz.rest.QuartzJobController.getJobs()', '{ resources: QuartzJob(id=null, jobName=null, beanName=null, methodName=null, params=null, cronExpression=null, isPause=false, remark=null, updateTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 75, 'admin');
INSERT INTO `log` VALUES (4979, '2019-04-13 13:21:17', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 11, 'admin');
INSERT INTO `log` VALUES (4980, '2019-04-13 13:21:19', '查询权限', NULL, 'INFO', 'com.msw.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', 39, 'admin');
INSERT INTO `log` VALUES (4981, '2019-04-13 13:34:30', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 12, 'admin');
INSERT INTO `log` VALUES (4982, '2019-04-13 13:34:30', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 43, 'admin');
INSERT INTO `log` VALUES (4983, '2019-04-13 13:34:32', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 4, 'admin');
INSERT INTO `log` VALUES (4984, '2019-04-15 10:52:21', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 758, 'admin');
INSERT INTO `log` VALUES (4985, '2019-04-15 10:52:35', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 106, 'admin');
INSERT INTO `log` VALUES (4986, '2019-04-15 10:52:35', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 124, 'admin');
INSERT INTO `log` VALUES (4987, '2019-04-15 10:52:35', '查询用户', NULL, 'INFO', 'com.msw.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 217, 'admin');
INSERT INTO `log` VALUES (4988, '2019-04-15 10:55:44', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 1, 'admin');
INSERT INTO `log` VALUES (4989, '2019-04-15 10:55:44', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 1, 'admin');
INSERT INTO `log` VALUES (4990, '2019-04-15 10:55:44', '查询用户', NULL, 'INFO', 'com.msw.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 17, 'admin');
INSERT INTO `log` VALUES (4991, '2019-04-15 16:33:18', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 84, 'admin');
INSERT INTO `log` VALUES (4992, '2019-04-15 16:33:22', '查询Redis缓存', NULL, 'INFO', 'com.msw.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', 44, 'admin');
INSERT INTO `log` VALUES (4993, '2019-04-15 16:33:28', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 95, 'admin');
INSERT INTO `log` VALUES (4994, '2019-04-15 16:33:30', '查询权限', NULL, 'INFO', 'com.msw.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', 34, 'admin');
INSERT INTO `log` VALUES (4995, '2019-04-15 16:33:33', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 29, 'admin');
INSERT INTO `log` VALUES (4996, '2019-04-15 16:35:56', '修改菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.update()', '{ resources: com.msw.modules.system.domain.Menu@3daae3b9 }', '127.0.0.1', 124, 'admin');
INSERT INTO `log` VALUES (4997, '2019-04-15 16:35:57', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 28, 'admin');
INSERT INTO `log` VALUES (4998, '2019-04-15 16:36:24', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 8, 'admin');
INSERT INTO `log` VALUES (4999, '2019-04-15 16:46:07', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5000, '2019-04-15 20:00:57', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 94, 'admin');
INSERT INTO `log` VALUES (5001, '2019-04-15 20:00:58', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 10, 'admin');
INSERT INTO `log` VALUES (5002, '2019-04-15 20:01:52', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 4, 'admin');
INSERT INTO `log` VALUES (5003, '2019-04-15 20:31:24', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 10, 'admin');
INSERT INTO `log` VALUES (5004, '2019-04-15 20:31:27', '查询字典详情', NULL, 'INFO', 'com.msw.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', 21, 'admin');
INSERT INTO `log` VALUES (5005, '2019-04-15 20:31:27', '查询部门', NULL, 'INFO', 'com.msw.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', 27, 'admin');
INSERT INTO `log` VALUES (5006, '2019-04-15 20:31:27', '查询用户', NULL, 'INFO', 'com.msw.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 35, 'admin');
INSERT INTO `log` VALUES (5007, '2019-04-15 20:31:29', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 8, 'admin');
INSERT INTO `log` VALUES (5008, '2019-04-15 20:31:31', '查询权限', NULL, 'INFO', 'com.msw.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', 10, 'admin');
INSERT INTO `log` VALUES (5009, '2019-04-15 20:31:43', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 4, 'admin');
INSERT INTO `log` VALUES (5010, '2019-04-15 20:31:44', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 3, 'admin');
INSERT INTO `log` VALUES (5011, '2019-04-15 20:33:15', '查询权限', NULL, 'INFO', 'com.msw.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', 8, 'admin');
INSERT INTO `log` VALUES (5012, '2019-04-15 20:33:45', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5013, '2019-04-15 20:35:21', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@8c38ed5 }', '127.0.0.1', 35, 'admin');
INSERT INTO `log` VALUES (5014, '2019-04-15 20:35:21', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 38, 'admin');
INSERT INTO `log` VALUES (5015, '2019-04-15 20:35:52', '修改菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.update()', '{ resources: com.msw.modules.system.domain.Menu@3bce77a8 }', '127.0.0.1', 2270, 'admin');
INSERT INTO `log` VALUES (5016, '2019-04-15 20:35:52', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 25, 'admin');
INSERT INTO `log` VALUES (5017, '2019-04-15 20:37:41', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5018, '2019-04-15 20:39:11', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5019, '2019-04-15 20:41:03', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 3, 'admin');
INSERT INTO `log` VALUES (5020, '2019-04-15 20:42:21', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@748e9d70 }', '127.0.0.1', 25, 'admin');
INSERT INTO `log` VALUES (5021, '2019-04-15 20:42:21', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 23, 'admin');
INSERT INTO `log` VALUES (5022, '2019-04-15 20:42:50', '修改菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.update()', '{ resources: com.msw.modules.system.domain.Menu@561cc9d2 }', '127.0.0.1', 39, 'admin');
INSERT INTO `log` VALUES (5023, '2019-04-15 20:42:51', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 68, 'admin');
INSERT INTO `log` VALUES (5024, '2019-04-15 20:45:04', '修改菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.update()', '{ resources: com.msw.modules.system.domain.Menu@6e943126 }', '127.0.0.1', 56, 'admin');
INSERT INTO `log` VALUES (5025, '2019-04-15 20:45:04', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 21, 'admin');
INSERT INTO `log` VALUES (5026, '2019-04-15 20:45:51', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@6f53037d }', '127.0.0.1', 22, 'admin');
INSERT INTO `log` VALUES (5027, '2019-04-15 20:45:51', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 24, 'admin');
INSERT INTO `log` VALUES (5028, '2019-04-15 20:46:33', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@20541f2a }', '127.0.0.1', 19, 'admin');
INSERT INTO `log` VALUES (5029, '2019-04-15 20:46:33', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 22, 'admin');
INSERT INTO `log` VALUES (5030, '2019-04-15 20:47:02', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@6774f8e7 }', '127.0.0.1', 23, 'admin');
INSERT INTO `log` VALUES (5031, '2019-04-15 20:47:02', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 21, 'admin');
INSERT INTO `log` VALUES (5032, '2019-04-15 20:47:13', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5033, '2019-04-15 20:47:20', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 12, 'admin');
INSERT INTO `log` VALUES (5034, '2019-04-15 20:47:20', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5035, '2019-04-15 20:47:55', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 21, 'admin');
INSERT INTO `log` VALUES (5036, '2019-04-15 20:48:02', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 3, 'admin');
INSERT INTO `log` VALUES (5037, '2019-04-15 20:48:13', '用户登录', NULL, 'INFO', 'com.msw.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', 8, 'admin');
INSERT INTO `log` VALUES (5038, '2019-04-15 20:48:13', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 2, 'admin');
INSERT INTO `log` VALUES (5039, '2019-04-15 20:49:30', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 65, 'admin');
INSERT INTO `log` VALUES (5040, '2019-04-15 20:49:45', '修改角色菜单', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', 454, 'admin');
INSERT INTO `log` VALUES (5041, '2019-04-15 20:49:50', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 60, 'admin');
INSERT INTO `log` VALUES (5042, '2019-04-15 20:51:08', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 11, 'admin');
INSERT INTO `log` VALUES (5043, '2019-04-15 20:51:36', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@4a1301 }', '127.0.0.1', 22, 'admin');
INSERT INTO `log` VALUES (5044, '2019-04-15 20:51:37', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 21, 'admin');
INSERT INTO `log` VALUES (5045, '2019-04-15 20:52:07', '新增菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.create()', '{ resources: com.msw.modules.system.domain.Menu@24607dd1 }', '127.0.0.1', 20, 'admin');
INSERT INTO `log` VALUES (5046, '2019-04-15 20:52:08', '查询菜单', NULL, 'INFO', 'com.msw.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', 23, 'admin');
INSERT INTO `log` VALUES (5047, '2019-04-15 20:52:10', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 3, 'admin');
INSERT INTO `log` VALUES (5048, '2019-04-15 20:52:15', '修改角色菜单', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', 44, 'admin');
INSERT INTO `log` VALUES (5049, '2019-04-15 20:52:24', '查询角色', NULL, 'INFO', 'com.msw.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', 48, 'admin');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `i_frame` bit(1) NULL DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `pid` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `sort` bigint(20) NOT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '2018-12-18 15:11:29', b'0', '系统管理', NULL, 0, 1, 'system', 'system');
INSERT INTO `menu` VALUES (2, '2018-12-18 15:14:44', b'0', '用户管理', 'system/user/index', 1, 2, 'peoples', 'user');
INSERT INTO `menu` VALUES (3, '2018-12-18 15:16:07', b'0', '角色管理', 'system/role/index', 1, 3, 'role', 'role');
INSERT INTO `menu` VALUES (4, '2018-12-18 15:16:45', b'0', '权限管理', 'system/permission/index', 1, 4, 'permission', 'permission');
INSERT INTO `menu` VALUES (5, '2018-12-18 15:17:28', b'0', '菜单管理', 'system/menu/index', 1, 5, 'menu', 'menu');
INSERT INTO `menu` VALUES (6, '2018-12-18 15:17:48', b'0', '系统监控', NULL, 0, 10, 'monitor', 'monitor');
INSERT INTO `menu` VALUES (7, '2018-12-18 15:18:26', b'0', '操作日志', 'monitor/log/index', 6, 11, 'log', 'logs');
INSERT INTO `menu` VALUES (8, '2018-12-18 15:19:01', b'0', '系统缓存', 'monitor/redis/index', 6, 13, 'redis', 'redis');
INSERT INTO `menu` VALUES (9, '2018-12-18 15:19:34', b'0', 'SQL监控', 'monitor/sql/index', 6, 14, 'sqlMonitor', 'druid');
INSERT INTO `menu` VALUES (10, '2018-12-19 13:38:16', b'0', '组件管理', NULL, 0, 50, 'zujian', 'components');
INSERT INTO `menu` VALUES (11, '2018-12-19 13:38:49', b'0', '图标库', 'components/IconSelect', 10, 51, 'icon', 'icon');
INSERT INTO `menu` VALUES (12, '2018-12-24 20:37:35', b'0', '实时控制台', 'monitor/log/msg', 6, 16, 'codeConsole', 'msg');
INSERT INTO `menu` VALUES (14, '2018-12-27 10:13:09', b'0', '邮件工具', 'tools/email/index', 36, 24, 'email', 'email');
INSERT INTO `menu` VALUES (15, '2018-12-27 11:58:25', b'0', '富文本', 'components/Editor', 10, 52, 'fwb', 'tinymce');
INSERT INTO `menu` VALUES (16, '2018-12-28 09:36:53', b'0', '图床管理', 'tools/picture/index', 36, 25, 'image', 'pictures');
INSERT INTO `menu` VALUES (17, '2018-12-28 15:09:49', b'1', '项目地址', '', 0, 0, 'github', 'https://github.com/elunez/eladmin');
INSERT INTO `menu` VALUES (18, '2018-12-31 11:12:15', b'0', '七牛云存储', 'tools/qiniu/index', 36, 26, 'qiniu', 'qiniu');
INSERT INTO `menu` VALUES (19, '2018-12-31 14:52:38', b'0', '支付宝工具', 'tools/aliPay/index', 36, 27, 'alipay', 'aliPay');
INSERT INTO `menu` VALUES (21, '2019-01-04 16:22:03', b'0', '多级菜单', '', 0, 900, 'menu', 'nested');
INSERT INTO `menu` VALUES (22, '2019-01-04 16:23:29', b'0', '二级菜单1', 'nested/menu1/index', 21, 999, 'menu', 'menu1');
INSERT INTO `menu` VALUES (23, '2019-01-04 16:23:57', b'0', '二级菜单2', 'nested/menu2/index', 21, 999, 'menu', 'menu2');
INSERT INTO `menu` VALUES (24, '2019-01-04 16:24:48', b'0', '三级菜单1', 'nested/menu1/menu1-1', 22, 999, 'menu', 'menu1-1');
INSERT INTO `menu` VALUES (27, '2019-01-07 17:27:32', b'0', '三级菜单2', 'nested/menu1/menu1-2', 22, 999, 'menu', 'menu1-2');
INSERT INTO `menu` VALUES (28, '2019-01-07 20:34:40', b'0', '定时任务', 'system/timing/index', 36, 21, 'timing', 'timing');
INSERT INTO `menu` VALUES (30, '2019-01-11 15:45:55', b'0', '代码生成', 'generator/index', 36, 22, 'dev', 'generator');
INSERT INTO `menu` VALUES (32, '2019-01-13 13:49:03', b'0', '异常日志', 'monitor/log/errorLog', 6, 12, 'error', 'errorLog');
INSERT INTO `menu` VALUES (33, '2019-03-08 13:46:44', b'0', 'Markdown', 'components/MarkDown', 10, 53, 'markdown', 'markdown');
INSERT INTO `menu` VALUES (34, '2019-03-08 15:49:40', b'0', 'Yaml编辑器', 'components/YamlEdit', 10, 54, 'dev', 'yaml');
INSERT INTO `menu` VALUES (35, '2019-03-25 09:46:00', b'0', '部门管理', 'system/dept/index', 1, 6, 'dept', 'dept');
INSERT INTO `menu` VALUES (36, '2019-03-29 10:57:35', b'0', '系统工具', '', 0, 20, 'sys-tools', 'sys-tools');
INSERT INTO `menu` VALUES (37, '2019-03-29 13:51:18', b'0', '岗位管理', 'system/job/index', 1, 7, 'Steve-Jobs', 'job');
INSERT INTO `menu` VALUES (38, '2019-03-29 19:57:53', b'0', '接口文档', 'tools/swagger/index', 36, 23, 'swagger', 'swagger2');
INSERT INTO `menu` VALUES (39, '2019-04-10 11:49:04', b'0', '字典管理', 'system/dict/index', 1, 8, 'dictionary', 'dict');
INSERT INTO `menu` VALUES (40, '2019-04-15 20:35:21', b'0', '公共管理', '', 0, 100, 'kucuntongji', 'publicmanage');
INSERT INTO `menu` VALUES (41, '2019-04-15 20:42:21', b'0', '项目管理', 'publicmanage/project/index', 40, 101, 'project-fill', 'project');
INSERT INTO `menu` VALUES (42, '2019-04-15 20:45:51', b'0', '应用管理', 'publicmanage/app/index', 40, 102, 'shujutongji', 'app');
INSERT INTO `menu` VALUES (43, '2019-04-15 20:46:33', b'0', '接口管理', 'publicmanage/api/index', 40, 103, 'fumianyuqing', 'api');
INSERT INTO `menu` VALUES (44, '2019-04-15 20:47:02', b'0', '数据源', 'publicmanage/database/index', 40, 104, 'redis', 'database');
INSERT INTO `menu` VALUES (45, '2019-04-15 20:51:36', b'0', '用例管理', '', 0, 120, 'paidantixing', 'casemanage');
INSERT INTO `menu` VALUES (46, '2019-04-15 20:52:07', b'0', '基础用例', 'casemanage/basecase/index', 45, 121, 'appstore', 'basecase');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '别名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `pid` int(11) NOT NULL COMMENT '上级权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '超级管理员', '2018-12-03 12:27:48', 'ADMIN', 0);
INSERT INTO `permission` VALUES (2, '用户管理', '2018-12-03 12:28:19', 'USER_ALL', 0);
INSERT INTO `permission` VALUES (3, '用户查询', '2018-12-03 12:31:35', 'USER_SELECT', 2);
INSERT INTO `permission` VALUES (4, '用户创建', '2018-12-03 12:31:35', 'USER_CREATE', 2);
INSERT INTO `permission` VALUES (5, '用户编辑', '2018-12-03 12:31:35', 'USER_EDIT', 2);
INSERT INTO `permission` VALUES (6, '用户删除', '2018-12-03 12:31:35', 'USER_DELETE', 2);
INSERT INTO `permission` VALUES (7, '角色管理', '2018-12-03 12:28:19', 'ROLES_ALL', 0);
INSERT INTO `permission` VALUES (8, '角色查询', '2018-12-03 12:31:35', 'ROLES_SELECT', 7);
INSERT INTO `permission` VALUES (10, '角色创建', '2018-12-09 20:10:16', 'ROLES_CREATE', 7);
INSERT INTO `permission` VALUES (11, '角色编辑', '2018-12-09 20:10:42', 'ROLES_EDIT', 7);
INSERT INTO `permission` VALUES (12, '角色删除', '2018-12-09 20:11:07', 'ROLES_DELETE', 7);
INSERT INTO `permission` VALUES (13, '权限管理', '2018-12-09 20:11:37', 'PERMISSION_ALL', 0);
INSERT INTO `permission` VALUES (14, '权限查询', '2018-12-09 20:11:55', 'PERMISSION_SELECT', 13);
INSERT INTO `permission` VALUES (15, '权限创建', '2018-12-09 20:14:10', 'PERMISSION_CREATE', 13);
INSERT INTO `permission` VALUES (16, '权限编辑', '2018-12-09 20:15:44', 'PERMISSION_EDIT', 13);
INSERT INTO `permission` VALUES (17, '权限删除', '2018-12-09 20:15:59', 'PERMISSION_DELETE', 13);
INSERT INTO `permission` VALUES (18, '缓存管理', '2018-12-17 13:53:25', 'REDIS_ALL', 0);
INSERT INTO `permission` VALUES (19, '新增缓存', '2018-12-17 13:53:44', 'REDIS_CREATE', 18);
INSERT INTO `permission` VALUES (20, '缓存查询', '2018-12-17 13:54:07', 'REDIS_SELECT', 18);
INSERT INTO `permission` VALUES (21, '缓存编辑', '2018-12-17 13:54:26', 'REDIS_EDIT', 18);
INSERT INTO `permission` VALUES (22, '缓存删除', '2018-12-17 13:55:04', 'REDIS_DELETE', 18);
INSERT INTO `permission` VALUES (23, '图床管理', '2018-12-27 20:31:49', 'PICTURE_ALL', 0);
INSERT INTO `permission` VALUES (24, '查询图片', '2018-12-27 20:32:04', 'PICTURE_SELECT', 23);
INSERT INTO `permission` VALUES (25, '上传图片', '2018-12-27 20:32:24', 'PICTURE_UPLOAD', 23);
INSERT INTO `permission` VALUES (26, '删除图片', '2018-12-27 20:32:45', 'PICTURE_DELETE', 23);
INSERT INTO `permission` VALUES (29, '菜单管理', '2018-12-28 17:34:31', 'MENU_ALL', 0);
INSERT INTO `permission` VALUES (30, '菜单查询', '2018-12-28 17:34:41', 'MENU_SELECT', 29);
INSERT INTO `permission` VALUES (31, '菜单创建', '2018-12-28 17:34:52', 'MENU_CREATE', 29);
INSERT INTO `permission` VALUES (32, '菜单编辑', '2018-12-28 17:35:20', 'MENU_EDIT', 29);
INSERT INTO `permission` VALUES (33, '菜单删除', '2018-12-28 17:35:29', 'MENU_DELETE', 29);
INSERT INTO `permission` VALUES (35, '定时任务管理', '2019-01-08 14:59:57', 'JOB_ALL', 0);
INSERT INTO `permission` VALUES (36, '任务查询', '2019-01-08 15:00:09', 'JOB_SELECT', 35);
INSERT INTO `permission` VALUES (37, '任务创建', '2019-01-08 15:00:20', 'JOB_CREATE', 35);
INSERT INTO `permission` VALUES (38, '任务编辑', '2019-01-08 15:00:33', 'JOB_EDIT', 35);
INSERT INTO `permission` VALUES (39, '任务删除', '2019-01-08 15:01:13', 'JOB_DELETE', 35);
INSERT INTO `permission` VALUES (40, '部门管理', '2019-03-29 17:06:55', 'DEPT_ALL', 0);
INSERT INTO `permission` VALUES (41, '部门查询', '2019-03-29 17:07:09', 'DEPT_SELECT', 40);
INSERT INTO `permission` VALUES (42, '部门创建', '2019-03-29 17:07:29', 'DEPT_CREATE', 40);
INSERT INTO `permission` VALUES (43, '部门编辑', '2019-03-29 17:07:52', 'DEPT_EDIT', 40);
INSERT INTO `permission` VALUES (44, '部门删除', '2019-03-29 17:08:14', 'DEPT_DELETE', 40);
INSERT INTO `permission` VALUES (45, '岗位管理', '2019-03-29 17:08:52', 'USERJOB_ALL', 0);
INSERT INTO `permission` VALUES (46, '岗位查询', '2019-03-29 17:10:27', 'USERJOB_SELECT', 45);
INSERT INTO `permission` VALUES (47, '岗位创建', '2019-03-29 17:10:55', 'USERJOB_CREATE', 45);
INSERT INTO `permission` VALUES (48, '岗位编辑', '2019-03-29 17:11:08', 'USERJOB_EDIT', 45);
INSERT INTO `permission` VALUES (49, '岗位删除', '2019-03-29 17:11:19', 'USERJOB_DELETE', 45);
INSERT INTO `permission` VALUES (50, '字典管理', '2019-04-10 16:24:51', 'DICT_ALL', 0);
INSERT INTO `permission` VALUES (51, '字典查询', '2019-04-10 16:25:16', 'DICT_SELECT', 50);
INSERT INTO `permission` VALUES (52, '字典创建', '2019-04-10 16:25:29', 'DICT_CREATE', 50);
INSERT INTO `permission` VALUES (53, '字典编辑', '2019-04-10 16:27:19', 'DICT_EDIT', 50);
INSERT INTO `permission` VALUES (54, '字典删除', '2019-04-10 16:27:30', 'DICT_DELETE', 50);

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '上传日期',
  `delete_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除的URL',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片名称',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片高度',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片宽度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_config`;
CREATE TABLE `qiniu_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_content`;
CREATE TABLE `qiniu_content`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型：私有或公开',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '上传或同步的时间',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '创建或更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------
INSERT INTO `quartz_job` VALUES (1, 'visitsTask', '0 0 0 * * ?', b'0', '更新访客记录', 'run', NULL, '每日0点创建新的访客记录', '2019-01-08 14:53:31');
INSERT INTO `quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '2019-01-13 14:20:50');
INSERT INTO `quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', '2019-04-09 16:16:44');

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------
INSERT INTO `quartz_log` VALUES (1, 'visitsTask', '2019-04-15 09:38:42', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 7616);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '2018-11-23 11:04:37', '管理员', '系统所有权', '全部');
INSERT INTO `role` VALUES (2, '2018-11-23 13:09:06', '普通用户', '用于测试菜单与权限', '自定义');

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts`  (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
  INDEX `FK7qg6itn5ajdoa9h9o78v9ksur`(`dept_id`) USING BTREE,
  CONSTRAINT `FK7qg6itn5ajdoa9h9o78v9ksur` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrg1ci4cxxfbja0sb0pddju7k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_depts
-- ----------------------------
INSERT INTO `roles_depts` VALUES (2, 7);

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
  INDEX `FKcngg2qadojhi3a651a5adkvbq`(`role_id`) USING BTREE,
  CONSTRAINT `FKcngg2qadojhi3a651a5adkvbq` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKq1knxf8ykt26we8k331naabjx` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES (1, 1);
INSERT INTO `roles_menus` VALUES (2, 1);
INSERT INTO `roles_menus` VALUES (3, 1);
INSERT INTO `roles_menus` VALUES (4, 1);
INSERT INTO `roles_menus` VALUES (5, 1);
INSERT INTO `roles_menus` VALUES (6, 1);
INSERT INTO `roles_menus` VALUES (7, 1);
INSERT INTO `roles_menus` VALUES (8, 1);
INSERT INTO `roles_menus` VALUES (9, 1);
INSERT INTO `roles_menus` VALUES (10, 1);
INSERT INTO `roles_menus` VALUES (11, 1);
INSERT INTO `roles_menus` VALUES (12, 1);
INSERT INTO `roles_menus` VALUES (14, 1);
INSERT INTO `roles_menus` VALUES (15, 1);
INSERT INTO `roles_menus` VALUES (16, 1);
INSERT INTO `roles_menus` VALUES (17, 1);
INSERT INTO `roles_menus` VALUES (18, 1);
INSERT INTO `roles_menus` VALUES (19, 1);
INSERT INTO `roles_menus` VALUES (21, 1);
INSERT INTO `roles_menus` VALUES (22, 1);
INSERT INTO `roles_menus` VALUES (23, 1);
INSERT INTO `roles_menus` VALUES (24, 1);
INSERT INTO `roles_menus` VALUES (27, 1);
INSERT INTO `roles_menus` VALUES (28, 1);
INSERT INTO `roles_menus` VALUES (30, 1);
INSERT INTO `roles_menus` VALUES (32, 1);
INSERT INTO `roles_menus` VALUES (33, 1);
INSERT INTO `roles_menus` VALUES (34, 1);
INSERT INTO `roles_menus` VALUES (35, 1);
INSERT INTO `roles_menus` VALUES (36, 1);
INSERT INTO `roles_menus` VALUES (37, 1);
INSERT INTO `roles_menus` VALUES (38, 1);
INSERT INTO `roles_menus` VALUES (39, 1);
INSERT INTO `roles_menus` VALUES (40, 1);
INSERT INTO `roles_menus` VALUES (41, 1);
INSERT INTO `roles_menus` VALUES (42, 1);
INSERT INTO `roles_menus` VALUES (43, 1);
INSERT INTO `roles_menus` VALUES (44, 1);
INSERT INTO `roles_menus` VALUES (45, 1);
INSERT INTO `roles_menus` VALUES (46, 1);
INSERT INTO `roles_menus` VALUES (1, 2);
INSERT INTO `roles_menus` VALUES (2, 2);
INSERT INTO `roles_menus` VALUES (3, 2);
INSERT INTO `roles_menus` VALUES (4, 2);
INSERT INTO `roles_menus` VALUES (5, 2);
INSERT INTO `roles_menus` VALUES (6, 2);
INSERT INTO `roles_menus` VALUES (10, 2);
INSERT INTO `roles_menus` VALUES (11, 2);
INSERT INTO `roles_menus` VALUES (12, 2);
INSERT INTO `roles_menus` VALUES (15, 2);
INSERT INTO `roles_menus` VALUES (16, 2);
INSERT INTO `roles_menus` VALUES (17, 2);
INSERT INTO `roles_menus` VALUES (18, 2);
INSERT INTO `roles_menus` VALUES (19, 2);
INSERT INTO `roles_menus` VALUES (21, 2);
INSERT INTO `roles_menus` VALUES (22, 2);
INSERT INTO `roles_menus` VALUES (23, 2);
INSERT INTO `roles_menus` VALUES (24, 2);
INSERT INTO `roles_menus` VALUES (27, 2);
INSERT INTO `roles_menus` VALUES (33, 2);
INSERT INTO `roles_menus` VALUES (34, 2);
INSERT INTO `roles_menus` VALUES (35, 2);
INSERT INTO `roles_menus` VALUES (36, 2);
INSERT INTO `roles_menus` VALUES (37, 2);
INSERT INTO `roles_menus` VALUES (38, 2);

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `permission_id` bigint(20) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `FKboeuhl31go7wer3bpy6so7exi`(`permission_id`) USING BTREE,
  CONSTRAINT `FK4hrolwj4ned5i7qe8kyiaak6m` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKboeuhl31go7wer3bpy6so7exi` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES (1, 1);
INSERT INTO `roles_permissions` VALUES (2, 3);
INSERT INTO `roles_permissions` VALUES (2, 4);
INSERT INTO `roles_permissions` VALUES (2, 8);
INSERT INTO `roles_permissions` VALUES (2, 14);
INSERT INTO `roles_permissions` VALUES (2, 23);
INSERT INTO `roles_permissions` VALUES (2, 24);
INSERT INTO `roles_permissions` VALUES (2, 25);
INSERT INTO `roles_permissions` VALUES (2, 26);
INSERT INTO `roles_permissions` VALUES (2, 30);
INSERT INTO `roles_permissions` VALUES (2, 41);
INSERT INTO `roles_permissions` VALUES (2, 46);

-- ----------------------------
-- Table structure for tb_api
-- ----------------------------
DROP TABLE IF EXISTS `tb_api`;
CREATE TABLE `tb_api`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_url` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `param_type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `json_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `createor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKd0svk11ra1heiiojtmyfvwvs7`(`app_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_api
-- ----------------------------
INSERT INTO `tb_api` VALUES (1, '/add/user', 'post', 'json', '{\"name\": \"lili\"}', 3, '2019-01-15 20:45:30', '2019-01-15 20:46:02', 'msw');
INSERT INTO `tb_api` VALUES (2, '/add/user/api', 'post', 'form-data', '{}', 2, '2019-01-18 11:44:02', '2019-01-18 11:44:02', 'msw');
INSERT INTO `tb_api` VALUES (3, '/baidu', 'get', 'x-www-form-urlencoded', NULL, 4, '2019-01-23 20:31:48', '2019-01-23 20:31:48', 'admin');
INSERT INTO `tb_api` VALUES (4, '/core/pay', 'get', 'json', NULL, 1, '2019-02-15 16:02:23', '2019-02-15 16:02:23', 'admin');
INSERT INTO `tb_api` VALUES (5, '/order/query', 'get', 'json', '{\n    \"name\": \"测试\",\n    \"age\": 29\n}', 2, '2019-02-18 16:10:24', '2019-02-18 20:56:27', 'admin');
INSERT INTO `tb_api` VALUES (6, '/go/beijing', 'put', 'json', '{\r\n    \"price\": 3000,\r\n    \"address\":\"海南\"\r\n}', 5, '2019-02-19 10:52:49', '2019-02-19 10:56:12', 'admin');
INSERT INTO `tb_api` VALUES (7, '的撒大声地', 'get', 'json', '{\r\n    \"pfrt\": 234\r\n}', 1, '2019-02-19 21:27:17', '2019-02-19 22:10:15', 'admin');
INSERT INTO `tb_api` VALUES (8, '/paydorder', 'get', 'none', '', 1, '2019-02-22 11:19:15', '2019-03-01 11:18:50', 'admin');
INSERT INTO `tb_api` VALUES (9, 'wwwdd', 'get', 'none', '', 2, '2019-04-10 15:44:22', '2019-04-10 15:44:22', 'admin');

-- ----------------------------
-- Table structure for tb_app
-- ----------------------------
DROP TABLE IF EXISTS `tb_app`;
CREATE TABLE `tb_app`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_app
-- ----------------------------
INSERT INTO `tb_app` VALUES (1, '账务系统', 'https://192.168.165.122', 'admin', '2019-01-15 15:48:57', '2019-01-15 15:52:52');
INSERT INTO `tb_app` VALUES (2, '核心支付', '192.165.2.110', 'admin', '2019-01-15 15:54:07', '2019-01-15 15:54:07');
INSERT INTO `tb_app` VALUES (3, 'ui测试系统', '192.165.2.111', 'admin', '2019-01-22 20:05:45', '2019-01-22 20:05:45');
INSERT INTO `tb_app` VALUES (4, '测试系统', '192.165.2.112', 'admin', '2019-01-22 20:06:05', '2019-01-22 20:07:00');
INSERT INTO `tb_app` VALUES (5, '拦截系统', '192.165.2.113', 'admin', '2019-01-22 20:07:20', '2019-01-22 20:07:20');
INSERT INTO `tb_app` VALUES (6, '对账系统', '192.165.2.114', 'admin', '2019-01-22 20:07:37', '2019-01-22 20:07:37');
INSERT INTO `tb_app` VALUES (7, '风控系统', '192.165.2.115', 'msw', '2019-01-22 21:17:05', '2019-01-22 21:17:05');
INSERT INTO `tb_app` VALUES (8, '业务流程平台', '192.165.2.116', 'msw', '2019-01-22 21:17:41', '2019-01-22 21:17:41');

-- ----------------------------
-- Table structure for tb_case
-- ----------------------------
DROP TABLE IF EXISTS `tb_case`;
CREATE TABLE `tb_case`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用例名称',
  `project_id` bigint(20) NULL DEFAULT NULL COMMENT '项目id',
  `module_id` bigint(20) NULL DEFAULT NULL COMMENT '模块id',
  `execute_flag` bit(1) NULL DEFAULT NULL COMMENT '0：执行，1：不执行',
  `case_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用例类型，0：http用例，1：dubbo用例',
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用例状态：成功;失败;未执行;执行中;忽略',
  `createor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_case
-- ----------------------------
INSERT INTO `tb_case` VALUES (1, '批量支付', 21, 1, b'1', 'http', '接口测试', '成功', 'admin', '2019-02-20 10:48:05', '2019-02-20 10:58:01');
INSERT INTO `tb_case` VALUES (2, '招行绑卡', 22, 2, b'1', 'dubbo', '绑卡测试', '失败', 'admin', '2019-02-20 10:37:09', '2019-02-20 10:35:58');
INSERT INTO `tb_case` VALUES (3, '解绑', 23, 3, b'0', 'http', '测试', '忽略', 'admin', '2019-02-20 11:05:21', '2019-02-20 11:05:21');
INSERT INTO `tb_case` VALUES (5, '退款测试', 22, NULL, b'0', 'dubbo', 'withdraw', '忽略', 'admin', '2019-02-27 15:24:08', '2019-03-01 11:22:31');
INSERT INTO `tb_case` VALUES (6, '批量支付', 20, 0, b'1', 'dubbo', '快捷批量支付', '忽略', 'admin', '2019-03-04 10:43:14', '2019-03-04 10:43:14');

-- ----------------------------
-- Table structure for tb_datasource
-- ----------------------------
DROP TABLE IF EXISTS `tb_datasource`;
CREATE TABLE `tb_datasource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `datasource_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `createor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `password` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `port` int(11) NULL DEFAULT NULL,
  `url` varchar(124) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `database_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `oracle_type` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1087913359125594115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_expire_result
-- ----------------------------
DROP TABLE IF EXISTS `tb_expire_result`;
CREATE TABLE `tb_expire_result`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expect_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rule` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '=;!=;<=;>=;>;<;contains;not exist;exist;empty;not contain;not empty',
  `valid_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'header；body；code；cookie；time',
  `key_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型：Object、Array、String、Number、Boolean、Variable',
  `result` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '断言执行结果：成功；失败；新建',
  `function` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对expect_value处理的方法，比如sql、md5等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_header_form
-- ----------------------------
DROP TABLE IF EXISTS `tb_header_form`;
CREATE TABLE `tb_header_form`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `okey` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ovalue` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `api_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKb6n5vak6lmfencctowmdo8o5v`(`api_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_header_form
-- ----------------------------
INSERT INTO `tb_header_form` VALUES (1, 'content-type', 'json', 1, '编码类型', 1);
INSERT INTO `tb_header_form` VALUES (2, 'coding', 'utf-8', 1, '编码格式', 1);
INSERT INTO `tb_header_form` VALUES (3, 'form', 'url-from', 1, '表单', 1);
INSERT INTO `tb_header_form` VALUES (4, 'c++', 'lang', 4, 'swit', 1);
INSERT INTO `tb_header_form` VALUES (5, 'address', '杭州', 1, '地址', 2);
INSERT INTO `tb_header_form` VALUES (6, 'hobby', '足球', 1, '爱好', 2);
INSERT INTO `tb_header_form` VALUES (7, 'content-type', 'json', 2, '编码类型', 1);
INSERT INTO `tb_header_form` VALUES (8, 'coding', 'utf-8', 2, '编码格式', 1);
INSERT INTO `tb_header_form` VALUES (9, 'form', 'url-from', 2, '表单', 1);
INSERT INTO `tb_header_form` VALUES (10, 'name', 'yuanyuan', 2, '姓名', 0);
INSERT INTO `tb_header_form` VALUES (11, 'address', '杭州', 2, '地址', 2);
INSERT INTO `tb_header_form` VALUES (12, 'hobby', '足球', 2, '爱好', 2);
INSERT INTO `tb_header_form` VALUES (13, 'content-type', 'json', 3, '编码类型', 1);
INSERT INTO `tb_header_form` VALUES (14, 'coding', 'utf-8', 3, '编码格式', 1);
INSERT INTO `tb_header_form` VALUES (15, 'form', 'url-from', 3, '表单', 1);
INSERT INTO `tb_header_form` VALUES (16, 'name', 'yuanyuan', 3, '姓名', 0);
INSERT INTO `tb_header_form` VALUES (17, 'address', '杭州', 3, '地址', 2);
INSERT INTO `tb_header_form` VALUES (18, 'hobby', '足球', 3, '爱好', 2);
INSERT INTO `tb_header_form` VALUES (20, 'score', '100', 0, 'good', 2);
INSERT INTO `tb_header_form` VALUES (21, '姓名', '丽丽', 3, '名字', 2);
INSERT INTO `tb_header_form` VALUES (22, 'salary', '3000', 3, 'ε＝ε＝ε＝(#>д<)ﾉ', 2);
INSERT INTO `tb_header_form` VALUES (23, '价格', '200', 1, '试试', 1);
INSERT INTO `tb_header_form` VALUES (24, '1', '1', 2, '1', 1);
INSERT INTO `tb_header_form` VALUES (25, 'price', '10', 2, '价格', 1);
INSERT INTO `tb_header_form` VALUES (26, 'height', '120', 2, '体重', 0);
INSERT INTO `tb_header_form` VALUES (27, 'size', '132', 3, '面积', 1);
INSERT INTO `tb_header_form` VALUES (32, 'da', 'ds', 3, 'dfd', 1);
INSERT INTO `tb_header_form` VALUES (36, 'mz', 'linzhiling', 3, 'mz', 0);
INSERT INTO `tb_header_form` VALUES (37, 'qq', 'qq', 3, 'qq', 0);
INSERT INTO `tb_header_form` VALUES (38, 'ee', 'ee', 3, 'ee', 0);
INSERT INTO `tb_header_form` VALUES (39, '66', '66', 3, '66', 2);
INSERT INTO `tb_header_form` VALUES (40, 'a', 'a', 3, 'a', 1);
INSERT INTO `tb_header_form` VALUES (41, 'java', 'lang', 4, 'swit', 1);
INSERT INTO `tb_header_form` VALUES (42, 'hobbys', '足球', 4, '我的爱好', 0);
INSERT INTO `tb_header_form` VALUES (43, 'python', 'lang', 4, '语言', 1);
INSERT INTO `tb_header_form` VALUES (44, 'number', '19', 5, '数量', 2);
INSERT INTO `tb_header_form` VALUES (45, 'lvyou', '旅游', 6, '去哪里旅游', 1);
INSERT INTO `tb_header_form` VALUES (46, 'charset', 'utf-8', 6, '编码', 0);
INSERT INTO `tb_header_form` VALUES (49, 'sd', 'fs', 5, 'fds', 1);
INSERT INTO `tb_header_form` VALUES (50, 'sdf', 'sd', 7, 'sa', 0);
INSERT INTO `tb_header_form` VALUES (51, 'vc', 'gfg', 7, 'fgfg', 1);
INSERT INTO `tb_header_form` VALUES (52, 'age', '11', 8, '年龄', 2);
INSERT INTO `tb_header_form` VALUES (54, '啊', '23', 8, '都是', 1);
INSERT INTO `tb_header_form` VALUES (60, '请求', '112', 8, '1', 1);
INSERT INTO `tb_header_form` VALUES (61, 'ddss', 'dsd', 9, 'sdds', 0);
INSERT INTO `tb_header_form` VALUES (62, 'eew', 'wee', 9, '', 1);

-- ----------------------------
-- Table structure for tb_param
-- ----------------------------
DROP TABLE IF EXISTS `tb_param`;
CREATE TABLE `tb_param`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `api_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfv1qjyvu1qugl28leqndw997l`(`api_id`) USING BTREE,
  CONSTRAINT `FKfv1qjyvu1qugl28leqndw997l` FOREIGN KEY (`api_id`) REFERENCES `tb_api` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_param
-- ----------------------------
INSERT INTO `tb_param` VALUES (1, 'age', '12', 1, '年龄');
INSERT INTO `tb_param` VALUES (2, 'count', '33', 1, '统计');
INSERT INTO `tb_param` VALUES (3, 'height', 'football', 1, '身高');
INSERT INTO `tb_param` VALUES (4, 'hobby', 'basketball', 1, '爱好');

-- ----------------------------
-- Table structure for tb_person
-- ----------------------------
DROP TABLE IF EXISTS `tb_person`;
CREATE TABLE `tb_person`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `adress` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_person
-- ----------------------------
INSERT INTO `tb_person` VALUES (1, 'msw', 13, 'beijing');
INSERT INTO `tb_person` VALUES (2, 'xiaowei', 18, 'shanghai');

-- ----------------------------
-- Table structure for tb_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE `tb_project`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_share` bit(1) NULL DEFAULT NULL COMMENT '0: 私有 1：公有',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_project
-- ----------------------------
INSERT INTO `tb_project` VALUES (1, 'easy', 'msw', '测试', b'0', '2019-01-07 17:56:30', '2019-01-07 17:56:46');
INSERT INTO `tb_project` VALUES (2, 'et', 'xiaowei', '支付', b'0', '2019-01-07 19:52:45', '2019-01-07 19:52:50');
INSERT INTO `tb_project` VALUES (3, 'at', 'lili', '收单', b'0', '2019-01-07 19:53:35', '2019-01-07 19:53:38');
INSERT INTO `tb_project` VALUES (4, '单点登录测试', '林志玲1', '核心支付项目', b'0', '2019-01-10 15:44:29', '2019-01-07 20:31:21');
INSERT INTO `tb_project` VALUES (6, '性能测试', '林志玲1', '核心支付项目', b'0', '2019-01-09 15:44:36', '2019-01-07 20:31:53');
INSERT INTO `tb_project` VALUES (7, 'corepay', '林志玲3', '核心支付项目', b'0', '2019-01-07 20:33:55', '2019-01-07 20:39:52');
INSERT INTO `tb_project` VALUES (8, '性能测试', '林志玲3', '不不不v ', b'0', '2019-01-07 20:40:42', '2019-01-07 20:42:19');
INSERT INTO `tb_project` VALUES (10, '支付平台', '林志玲3', '不不不v ', b'0', '2019-01-03 15:44:43', '2019-01-08 09:28:00');
INSERT INTO `tb_project` VALUES (11, '登录系统', '高圆圆', '愉快测试', b'0', '2019-01-08 09:33:13', '2019-01-10 15:43:36');
INSERT INTO `tb_project` VALUES (12, '账户测试', '人人天123天', 'paysigan', b'0', '2019-01-08 11:30:17', '2019-01-08 11:30:17');
INSERT INTO `tb_project` VALUES (13, '测试平台', 'msw', '基本功能测试', b'0', '2019-01-10 16:25:24', '2019-01-10 16:25:24');
INSERT INTO `tb_project` VALUES (14, '前端平台', 'admin', '北京.我来了', b'0', '2019-01-10 16:57:41', '2019-01-10 17:04:42');
INSERT INTO `tb_project` VALUES (15, '拳王', 'admin', '游戏', b'0', '2019-01-10 20:11:14', '2019-01-10 20:11:14');
INSERT INTO `tb_project` VALUES (16, '洱海', 'msw', '一日游', b'0', '2019-01-14 10:09:08', '2019-01-14 10:09:08');
INSERT INTO `tb_project` VALUES (17, '蚂蚁', 'admin', '动物', b'0', '2019-01-16 17:52:32', '2019-01-22 17:52:05');
INSERT INTO `tb_project` VALUES (18, '世界杯', 'admin', '足球比赛1', b'0', '2019-01-08 17:52:36', '2019-01-22 17:52:10');
INSERT INTO `tb_project` VALUES (19, 'devops', 'admin', '111112', b'0', '2019-01-22 14:50:06', '2019-01-22 14:51:44');
INSERT INTO `tb_project` VALUES (20, '跨境结算', 'admin', '是的', b'1', '2019-01-22 14:52:14', '2019-01-22 17:52:03');
INSERT INTO `tb_project` VALUES (21, '理财产品', 'admin', '模特', b'1', '2019-01-22 15:08:29', '2019-01-22 17:52:16');
INSERT INTO `tb_project` VALUES (22, '钱包测试', 'admin', '3333', b'1', '2019-01-22 15:36:36', '2019-01-01 17:52:20');
INSERT INTO `tb_project` VALUES (23, '余额宝测试', 'admin', '4444', b'1', '2019-01-22 15:44:13', '2019-01-08 17:52:24');
INSERT INTO `tb_project` VALUES (24, '会计系统', 'admin', '2222', b'1', '2019-01-22 15:46:23', '2019-01-01 17:52:28');
INSERT INTO `tb_project` VALUES (25, '天气系统', 'admin', '8878', b'1', '2019-01-22 15:50:44', '2019-01-18 17:52:39');
INSERT INTO `tb_project` VALUES (26, '安全系统', 'admin', '122', b'1', '2019-01-22 16:03:31', '2019-01-19 17:52:43');
INSERT INTO `tb_project` VALUES (27, 'OA平台', 'admin', 'trtr', b'1', '2019-01-22 16:03:46', '2019-01-13 17:52:46');
INSERT INTO `tb_project` VALUES (28, '兼容性测试', 'admin', 'fdfdf', b'1', '2019-01-22 17:16:56', '2019-01-06 17:52:50');
INSERT INTO `tb_project` VALUES (29, '极限测试', 'admin', '5445', b'0', '2019-01-22 17:21:43', '2019-03-01 11:16:47');
INSERT INTO `tb_project` VALUES (30, 'tthg', 'admin', '5445999', b'1', '2019-01-22 17:23:41', '2019-01-22 17:24:32');
INSERT INTO `tb_project` VALUES (31, 'aaf', 'admin', 'dddf', b'1', '2019-01-22 17:26:39', '2019-01-22 17:26:39');
INSERT INTO `tb_project` VALUES (32, 'asewe', 'admin', 'eer', b'1', '2019-01-22 17:26:44', '2019-01-22 17:26:44');
INSERT INTO `tb_project` VALUES (33, 'ewea', 'admin', 'aesw', b'1', '2019-01-22 17:26:51', '2019-01-22 17:26:51');
INSERT INTO `tb_project` VALUES (34, 'aaa', 'admin', 'aa', NULL, '2019-04-15 20:50:32', '2019-04-15 20:50:32');

-- ----------------------------
-- Table structure for tb_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_step`;
CREATE TABLE `tb_step`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `step_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `step_type` varbinary(16) NULL DEFAULT NULL COMMENT '步骤类型： http;dubbo;sql;ui',
  `retry` int(8) NULL DEFAULT NULL COMMENT '重试次数',
  `description` varbinary(32) NULL DEFAULT NULL COMMENT '400;404;500;200等',
  `execute_result` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成功;失败;忽略;初始化',
  `sleep_time` int(8) NULL DEFAULT NULL COMMENT '暂停时间，单位毫秒',
  `step_index` int(8) NULL DEFAULT 1 COMMENT '步骤顺序',
  `execute_flag` int(8) NULL DEFAULT NULL COMMENT '0：不执行，1：执行',
  `case_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_step_hf
-- ----------------------------
DROP TABLE IF EXISTS `tb_step_hf`;
CREATE TABLE `tb_step_hf`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` bit(1) NULL DEFAULT NULL COMMENT '0：header；1：form',
  `step_id` bigint(20) NULL DEFAULT NULL,
  `function` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '函数名称，比如md5、rsa、随机字符串等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_step_param
-- ----------------------------
DROP TABLE IF EXISTS `tb_step_param`;
CREATE TABLE `tb_step_param`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `step_id` bigint(20) NULL DEFAULT NULL,
  `function` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '函数名称，比如md5、rsa、随机字符串等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_step_sql
-- ----------------------------
DROP TABLE IF EXISTS `tb_step_sql`;
CREATE TABLE `tb_step_sql`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sql` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `datasource_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint(20) NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `last_password_reset_time` datetime(0) NULL DEFAULT NULL COMMENT '最后修改密码的日期',
  `dept_id` bigint(20) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id`) USING BTREE,
  INDEX `FKfftoc2abhot8f2wu6cl9a5iky`(`job_id`) USING BTREE,
  CONSTRAINT `FK5rwmryny6jthaaxkogownknqp` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfftoc2abhot8f2wu6cl9a5iky` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'https://i.loli.net/2019/04/04/5ca5b971e1548.jpeg', '2018-08-23 09:11:56', 'admin@eladmin.net', 1, 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2019-04-04 16:00:46', 2, '18888888888', 11);
INSERT INTO `user` VALUES (3, 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2018-12-27 20:05:26', 'test@eladmin.net', 1, 'e10adc3949ba59abbe56e057f20f883e', 'test', '2019-04-01 09:15:24', 2, '17777777777', 12);
INSERT INTO `user` VALUES (5, 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2019-04-02 10:07:12', 'hr@eladmin.net', 1, 'e10adc3949ba59abbe56e057f20f883e', 'hr', NULL, 11, '15555555555', 8);

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKq4eq273l04bpu4efj0jd0jb98`(`role_id`) USING BTREE,
  CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (3, 2);
INSERT INTO `users_roles` VALUES (5, 2);

-- ----------------------------
-- Table structure for verification_code
-- ----------------------------
DROP TABLE IF EXISTS `verification_code`;
CREATE TABLE `verification_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `status` bit(1) NULL DEFAULT NULL COMMENT '状态：1有效、0过期',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码类型：email或者短信',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收邮箱或者手机号码',
  `scenes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务名称：如重置邮箱、重置密码等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_counts` bigint(20) NULL DEFAULT NULL,
  `pv_counts` bigint(20) NULL DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_11aksgq87euk9bcyeesfs4vtp`(`date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES (20, '2019-04-12 16:39:38', '2019-04-12', 1, 2, 'Fri');
INSERT INTO `visits` VALUES (21, '2019-04-13 13:20:48', '2019-04-13', 1, 2, 'Sat');
INSERT INTO `visits` VALUES (22, '2019-04-15 09:38:42', '2019-04-15', 1, 4, 'Mon');

SET FOREIGN_KEY_CHECKS = 1;
