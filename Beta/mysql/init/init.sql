/*
 Navicat Premium Data Transfer

 Source Server         : django
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.61.167:3306
 Source Schema         : beta

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 22/03/2020 00:50:30
*/

CREATE DATABASE /*!32312 IF NOT EXISTS*/`beta` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `beta`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 脚本分类', 7, 'add_label');
INSERT INTO `auth_permission` VALUES (26, 'Can change 脚本分类', 7, 'change_label');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 脚本分类', 7, 'delete_label');
INSERT INTO `auth_permission` VALUES (28, 'Can view 脚本分类', 7, 'view_label');
INSERT INTO `auth_permission` VALUES (29, 'Can add 导航栏', 8, 'add_navigation');
INSERT INTO `auth_permission` VALUES (30, 'Can change 导航栏', 8, 'change_navigation');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 导航栏', 8, 'delete_navigation');
INSERT INTO `auth_permission` VALUES (32, 'Can view 导航栏', 8, 'view_navigation');
INSERT INTO `auth_permission` VALUES (33, 'Can add 脚本', 9, 'add_script');
INSERT INTO `auth_permission` VALUES (34, 'Can change 脚本', 9, 'change_script');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 脚本', 9, 'delete_script');
INSERT INTO `auth_permission` VALUES (36, 'Can view 脚本', 9, 'view_script');
INSERT INTO `auth_permission` VALUES (37, 'Can add user task', 10, 'add_usertask');
INSERT INTO `auth_permission` VALUES (38, 'Can change user task', 10, 'change_usertask');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user task', 10, 'delete_usertask');
INSERT INTO `auth_permission` VALUES (40, 'Can view user task', 10, 'view_usertask');
INSERT INTO `auth_permission` VALUES (41, 'Can add task result', 11, 'add_taskresult');
INSERT INTO `auth_permission` VALUES (42, 'Can change task result', 11, 'change_taskresult');
INSERT INTO `auth_permission` VALUES (43, 'Can delete task result', 11, 'delete_taskresult');
INSERT INTO `auth_permission` VALUES (44, 'Can view task result', 11, 'view_taskresult');
INSERT INTO `auth_permission` VALUES (45, 'Can add crontab', 12, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (46, 'Can change crontab', 12, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (47, 'Can delete crontab', 12, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (48, 'Can view crontab', 12, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (49, 'Can add interval', 13, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (50, 'Can change interval', 13, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (51, 'Can delete interval', 13, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (52, 'Can view interval', 13, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (53, 'Can add periodic task', 14, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (54, 'Can change periodic task', 14, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (55, 'Can delete periodic task', 14, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (56, 'Can view periodic task', 14, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (57, 'Can add periodic tasks', 15, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (58, 'Can change periodic tasks', 15, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (59, 'Can delete periodic tasks', 15, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (60, 'Can view periodic tasks', 15, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (61, 'Can add solar event', 16, 'add_solarschedule');
INSERT INTO `auth_permission` VALUES (62, 'Can change solar event', 16, 'change_solarschedule');
INSERT INTO `auth_permission` VALUES (63, 'Can delete solar event', 16, 'delete_solarschedule');
INSERT INTO `auth_permission` VALUES (64, 'Can view solar event', 16, 'view_solarschedule');
INSERT INTO `auth_permission` VALUES (65, 'Can add clocked', 17, 'add_clockedschedule');
INSERT INTO `auth_permission` VALUES (66, 'Can change clocked', 17, 'change_clockedschedule');
INSERT INTO `auth_permission` VALUES (67, 'Can delete clocked', 17, 'delete_clockedschedule');
INSERT INTO `auth_permission` VALUES (68, 'Can view clocked', 17, 'view_clockedschedule');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `email` varchar(254) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$1f5vpZqfQVPI$y30+nnGsgy34gO6m10wOD2G5sFl2WUsuIsR5AG+bJoY=', '2020-03-22 00:40:13.977665', 1, 'admin', '', '', 'admin@qq.com', 1, 1, '2020-03-21 23:08:04.164088');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `object_repr` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_clockedschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
CREATE TABLE `django_celery_beat_clockedschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
CREATE TABLE `django_celery_beat_crontabschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `hour` varchar(96) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `day_of_month` varchar(124) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `timezone` varchar(63) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
CREATE TABLE `django_celery_beat_intervalschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
CREATE TABLE `django_celery_beat_periodictask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `task` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `args` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `kwargs` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) NULL DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `crontab_id` int(11) NULL DEFAULT NULL,
  `interval_id` int(11) NULL DEFAULT NULL,
  `solar_id` int(11) NULL DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `priority` int(10) UNSIGNED NULL DEFAULT NULL,
  `headers` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `clocked_id` int(11) NULL DEFAULT NULL,
  `expire_seconds` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce`(`crontab_id`) USING BTREE,
  INDEX `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce`(`interval_id`) USING BTREE,
  INDEX `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce`(`solar_id`) USING BTREE,
  INDEX `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce`(`clocked_id`) USING BTREE,
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
CREATE TABLE `django_celery_beat_periodictasks`  (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_beat_solarschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
CREATE TABLE `django_celery_beat_solarschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `latitude` decimal(9, 6) NOT NULL,
  `longitude` decimal(9, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq`(`event`, `latitude`, `longitude`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_celery_results_taskresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `status` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `content_type` varchar(128) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `result` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `meta` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `task_args` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `task_kwargs` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `task_name` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `worker` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `django_celery_results_taskresult_date_done_49edada6`(`date_done`) USING BTREE,
  INDEX `django_celery_results_taskresult_status_cbbed23a`(`status`) USING BTREE,
  INDEX `django_celery_results_taskresult_task_name_90987df3`(`task_name`) USING BTREE,
  INDEX `django_celery_results_taskresult_worker_f8711389`(`worker`) USING BTREE,
  INDEX `django_celery_results_taskresult_date_created_099f3424`(`date_created`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `model` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (17, 'django_celery_beat', 'clockedschedule');
INSERT INTO `django_content_type` VALUES (12, 'django_celery_beat', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (13, 'django_celery_beat', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (14, 'django_celery_beat', 'periodictask');
INSERT INTO `django_content_type` VALUES (15, 'django_celery_beat', 'periodictasks');
INSERT INTO `django_content_type` VALUES (16, 'django_celery_beat', 'solarschedule');
INSERT INTO `django_content_type` VALUES (11, 'django_celery_results', 'taskresult');
INSERT INTO `django_content_type` VALUES (7, 'index', 'label');
INSERT INTO `django_content_type` VALUES (8, 'index', 'navigation');
INSERT INTO `django_content_type` VALUES (9, 'index', 'script');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'user', 'usertask');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-03-21 23:06:24.206308');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-03-21 23:06:24.289387');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-03-21 23:06:24.891145');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-03-21 23:06:25.130135');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-21 23:06:25.139139');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-03-21 23:06:25.378436');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-03-21 23:06:25.520203');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-03-21 23:06:25.771142');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-03-21 23:06:25.808239');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-03-21 23:06:25.907522');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-03-21 23:06:25.909527');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-21 23:06:25.918550');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-03-21 23:06:26.296008');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-21 23:06:26.322077');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-03-21 23:06:26.349658');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-03-21 23:06:26.359686');
INSERT INTO `django_migrations` VALUES (17, 'django_celery_beat', '0001_initial', '2020-03-21 23:06:26.420682');
INSERT INTO `django_migrations` VALUES (18, 'django_celery_beat', '0002_auto_20161118_0346', '2020-03-21 23:06:26.802084');
INSERT INTO `django_migrations` VALUES (19, 'django_celery_beat', '0003_auto_20161209_0049', '2020-03-21 23:06:26.839185');
INSERT INTO `django_migrations` VALUES (20, 'django_celery_beat', '0004_auto_20170221_0000', '2020-03-21 23:06:26.863248');
INSERT INTO `django_migrations` VALUES (21, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2020-03-21 23:06:26.880276');
INSERT INTO `django_migrations` VALUES (22, 'django_celery_beat', '0006_auto_20180322_0932', '2020-03-21 23:06:27.025046');
INSERT INTO `django_migrations` VALUES (23, 'django_celery_beat', '0007_auto_20180521_0826', '2020-03-21 23:06:27.624443');
INSERT INTO `django_migrations` VALUES (24, 'django_celery_beat', '0008_auto_20180914_1922', '2020-03-21 23:06:27.642498');
INSERT INTO `django_migrations` VALUES (25, 'django_celery_beat', '0006_auto_20180210_1226', '2020-03-21 23:06:27.661044');
INSERT INTO `django_migrations` VALUES (26, 'django_celery_beat', '0006_periodictask_priority', '2020-03-21 23:06:27.688624');
INSERT INTO `django_migrations` VALUES (27, 'django_celery_beat', '0009_periodictask_headers', '2020-03-21 23:06:27.717698');
INSERT INTO `django_migrations` VALUES (28, 'django_celery_beat', '0010_auto_20190429_0326', '2020-03-21 23:06:28.237554');
INSERT INTO `django_migrations` VALUES (29, 'django_celery_beat', '0011_auto_20190508_0153', '2020-03-21 23:06:28.336171');
INSERT INTO `django_migrations` VALUES (30, 'django_celery_results', '0001_initial', '2020-03-21 23:06:28.563802');
INSERT INTO `django_migrations` VALUES (31, 'django_celery_results', '0002_add_task_name_args_kwargs', '2020-03-21 23:06:28.732219');
INSERT INTO `django_migrations` VALUES (32, 'django_celery_results', '0003_auto_20181106_1101', '2020-03-21 23:06:28.771333');
INSERT INTO `django_migrations` VALUES (33, 'django_celery_results', '0004_auto_20190516_0412', '2020-03-21 23:06:28.888146');
INSERT INTO `django_migrations` VALUES (34, 'index', '0001_initial', '2020-03-21 23:06:28.935295');
INSERT INTO `django_migrations` VALUES (35, 'sessions', '0001_initial', '2020-03-21 23:06:29.024283');
INSERT INTO `django_migrations` VALUES (36, 'user', '0001_initial', '2020-03-21 23:06:29.061884');
INSERT INTO `django_migrations` VALUES (37, 'django_celery_beat', '0012_periodictask_expire_seconds', '2020-03-22 00:02:19.580390');
INSERT INTO `django_migrations` VALUES (38, 'django_celery_results', '0005_taskresult_worker', '2020-03-22 00:02:19.604308');
INSERT INTO `django_migrations` VALUES (39, 'django_celery_results', '0006_taskresult_date_created', '2020-03-22 00:02:19.899450');
INSERT INTO `django_migrations` VALUES (40, 'django_celery_results', '0007_remove_taskresult_hidden', '2020-03-22 00:02:19.934586');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `session_data` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label`  (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `label_path` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`label_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for index_navigation
-- ----------------------------
DROP TABLE IF EXISTS `index_navigation`;
CREATE TABLE `index_navigation`  (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `nav_link` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`nav_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_navigation
-- ----------------------------
INSERT INTO `index_navigation` VALUES (1, '首页', '/');
INSERT INTO `index_navigation` VALUES (2, '官网', 'http://ms08067.com');

-- ----------------------------
-- Table structure for index_script
-- ----------------------------
DROP TABLE IF EXISTS `index_script`;
CREATE TABLE `index_script`  (
  `script_id` int(11) NOT NULL AUTO_INCREMENT,
  `script_name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `script_file` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `script_label_id` int(11) NOT NULL,
  PRIMARY KEY (`script_id`) USING BTREE,
  INDEX `index_script_script_label_id_b0481add_fk_index_label_label_id`(`script_label_id`) USING BTREE,
  CONSTRAINT `index_script_script_label_id_b0481add_fk_index_label_label_id` FOREIGN KEY (`script_label_id`) REFERENCES `index_label` (`label_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_usertask
-- ----------------------------
DROP TABLE IF EXISTS `user_usertask`;
CREATE TABLE `user_usertask`  (
  `userTask_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` datetime(6) NOT NULL,
  `userTask_task_id` int(11) NOT NULL,
  `userTask_user_id` int(11) NOT NULL,
  PRIMARY KEY (`userTask_id`) USING BTREE,
  INDEX `user_usertask_userTask_task_id_aaf21d58_fk_django_ce`(`userTask_task_id`) USING BTREE,
  INDEX `user_usertask_userTask_user_id_9c8724d2_fk_auth_user_id`(`userTask_user_id`) USING BTREE,
  CONSTRAINT `user_usertask_userTask_task_id_aaf21d58_fk_django_ce` FOREIGN KEY (`userTask_task_id`) REFERENCES `django_celery_results_taskresult` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_usertask_userTask_user_id_9c8724d2_fk_auth_user_id` FOREIGN KEY (`userTask_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
