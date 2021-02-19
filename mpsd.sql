/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : mpsd

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 19/02/2021 14:15:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action_events
-- ----------------------------
DROP TABLE IF EXISTS `action_events`;
CREATE TABLE `action_events`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `batch_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint UNSIGNED NOT NULL,
  `target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NULL DEFAULT NULL,
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `original` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `changes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_events_actionable_type_actionable_id_index`(`actionable_type`, `actionable_id`) USING BTREE,
  INDEX `action_events_batch_id_model_type_model_id_index`(`batch_id`, `model_type`, `model_id`) USING BTREE,
  INDEX `action_events_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of action_events
-- ----------------------------
INSERT INTO `action_events` VALUES (1, '92b87be2-e4ce-4d1a-ba16-06c53327f705', 1, 'Create', 'App\\Models\\Meeting', 1, 'App\\Models\\Meeting', 1, 'App\\Models\\Meeting', 1, '', 'finished', '', '2021-02-13 09:01:41', '2021-02-13 09:01:41', NULL, '{\"updated_at\":\"2021-02-13T10:01:41.000000Z\",\"created_at\":\"2021-02-13T10:01:41.000000Z\",\"id\":1}');
INSERT INTO `action_events` VALUES (2, '92b87bee-8b89-44dc-a821-c9eb69d889fb', 1, 'Update', 'App\\Models\\Meeting', 1, 'App\\Models\\Meeting', 1, 'App\\Models\\Meeting', 1, '', 'finished', '', '2021-02-13 09:01:48', '2021-02-13 09:01:48', '[]', '[]');
INSERT INTO `action_events` VALUES (3, '92b87bf3-feea-4657-b066-56a6f272f89b', 1, 'Delete', 'App\\Models\\Meeting', 1, 'App\\Models\\Meeting', 1, 'App\\Models\\Meeting', 1, '', 'finished', '', '2021-02-13 09:01:52', '2021-02-13 09:01:52', NULL, NULL);
INSERT INTO `action_events` VALUES (4, '92c05919-f211-4c78-87c5-80b5c6b9c2a3', 1, 'Create', 'App\\Models\\decision', 1, 'App\\Models\\decision', 1, 'App\\Models\\decision', 1, '', 'finished', '', '2021-02-17 06:51:02', '2021-02-17 06:51:02', NULL, '{\"updated_at\":\"2021-02-17T07:51:02.000000Z\",\"created_at\":\"2021-02-17T07:51:02.000000Z\",\"id\":1}');
INSERT INTO `action_events` VALUES (5, '92c0591e-9068-4642-87d8-543a2aed6544', 1, 'Update', 'App\\Models\\decision', 1, 'App\\Models\\decision', 1, 'App\\Models\\decision', 1, '', 'finished', '', '2021-02-17 06:51:05', '2021-02-17 06:51:05', '[]', '[]');
INSERT INTO `action_events` VALUES (6, '92c05923-3057-4faa-a00f-75bbcfdbd3e7', 1, 'Delete', 'App\\Models\\decision', 1, 'App\\Models\\decision', 1, 'App\\Models\\decision', 1, '', 'finished', '', '2021-02-17 06:51:08', '2021-02-17 06:51:08', NULL, NULL);
INSERT INTO `action_events` VALUES (7, '92c05a30-6561-47ec-a035-c35f1019cdbf', 1, 'Create', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 06:54:04', '2021-02-17 06:54:04', NULL, '{\"name\":\"Test\",\"email\":\"anthony.marsh@live.com.au\",\"updated_at\":\"2021-02-17T07:54:04.000000Z\",\"created_at\":\"2021-02-17T07:54:04.000000Z\",\"id\":2}');
INSERT INTO `action_events` VALUES (8, '92c05a3d-e9b4-4159-9d01-6d6a3c37088e', 1, 'Delete', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2021-02-17 06:54:13', '2021-02-17 06:54:13', NULL, NULL);
INSERT INTO `action_events` VALUES (9, '92c06738-4df8-42ff-833c-37b132c8b1e7', 1, 'Create', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:30:31', '2021-02-17 07:30:31', NULL, '{\"type\":\"A\",\"location\":\"pct\",\"datetime\":\"2020-11-16 08:00:00\",\"documents\":\"https:\\/\\/www.mornpen.vic.gov.au\\/files\\/assets\\/public\\/new-website-documents\\/about-us\\/meetings-amp-minutes\\/2020\\/minutes-2020\\/annual-council-meeting-16-november-2020.pdf\",\"updated_at\":\"2021-02-17T08:30:31.000000Z\",\"created_at\":\"2021-02-17T08:30:31.000000Z\",\"id\":2}');
INSERT INTO `action_events` VALUES (10, '92c068fd-6ef4-45c6-8b46-251761643769', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:35:28', '2021-02-17 07:35:28', '{\"stream\":null}', '{\"stream\":\"https:\\/\\/youtu.be\\/nPhUy8SZWrI\"}');
INSERT INTO `action_events` VALUES (11, '92c069b2-7e97-4d11-91db-b1882519ce0f', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:37:26', '2021-02-17 07:37:26', '[]', '[]');
INSERT INTO `action_events` VALUES (12, '92c06a04-acc2-4271-b9f1-4774ca55026f', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:38:20', '2021-02-17 07:38:20', '[]', '[]');
INSERT INTO `action_events` VALUES (13, '92c06a2e-34dd-4a8f-a678-3e9ef6c91936', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:38:47', '2021-02-17 07:38:47', '[]', '[]');
INSERT INTO `action_events` VALUES (14, '92c06a30-7e7b-4253-824b-6a4952fbbe9c', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:38:49', '2021-02-17 07:38:49', '[]', '[]');
INSERT INTO `action_events` VALUES (15, '92c06ae1-841b-460f-94d5-ff33cc47ef4a', 1, 'Create', 'App\\Models\\councillor', 1, 'App\\Models\\councillor', 1, 'App\\Models\\councillor', 1, '', 'finished', '', '2021-02-17 07:40:45', '2021-02-17 07:40:45', NULL, '{\"name\":\"Cr Anthony Marsh\",\"updated_at\":\"2021-02-17T08:40:45.000000Z\",\"created_at\":\"2021-02-17T08:40:45.000000Z\",\"id\":1}');
INSERT INTO `action_events` VALUES (16, '92c06b1c-8410-474f-bdbc-0303ed6a73c2', 1, 'Delete', 'App\\Models\\councillor', 1, 'App\\Models\\councillor', 1, 'App\\Models\\councillor', 1, '', 'finished', '', '2021-02-17 07:41:24', '2021-02-17 07:41:24', NULL, NULL);
INSERT INTO `action_events` VALUES (17, '92c06b37-ef55-4be0-9808-b22da79adf6a', 1, 'Create', 'App\\Models\\councillor', 2, 'App\\Models\\councillor', 2, 'App\\Models\\councillor', 2, '', 'finished', '', '2021-02-17 07:41:42', '2021-02-17 07:41:42', NULL, '{\"name\":\"Cr Antonella Celi\",\"updated_at\":\"2021-02-17T08:41:42.000000Z\",\"created_at\":\"2021-02-17T08:41:42.000000Z\",\"id\":2}');
INSERT INTO `action_events` VALUES (18, '92c06b3e-dcd9-48f8-8b70-de9bdf474b4f', 1, 'Create', 'App\\Models\\councillor', 3, 'App\\Models\\councillor', 3, 'App\\Models\\councillor', 3, '', 'finished', '', '2021-02-17 07:41:46', '2021-02-17 07:41:46', NULL, '{\"name\":\"Cr Lisa Dixon\",\"updated_at\":\"2021-02-17T08:41:46.000000Z\",\"created_at\":\"2021-02-17T08:41:46.000000Z\",\"id\":3}');
INSERT INTO `action_events` VALUES (19, '92c06b48-8143-4820-b17a-34b7f88941f2', 1, 'Create', 'App\\Models\\councillor', 4, 'App\\Models\\councillor', 4, 'App\\Models\\councillor', 4, '', 'finished', '', '2021-02-17 07:41:52', '2021-02-17 07:41:52', NULL, '{\"name\":\"Cr Hugh Fraser\",\"updated_at\":\"2021-02-17T08:41:52.000000Z\",\"created_at\":\"2021-02-17T08:41:52.000000Z\",\"id\":4}');
INSERT INTO `action_events` VALUES (20, '92c06b50-bf7d-4134-bd7a-13e4f526254e', 1, 'Create', 'App\\Models\\councillor', 5, 'App\\Models\\councillor', 5, 'App\\Models\\councillor', 5, '', 'finished', '', '2021-02-17 07:41:58', '2021-02-17 07:41:58', NULL, '{\"name\":\"Cr David Gill\",\"updated_at\":\"2021-02-17T08:41:58.000000Z\",\"created_at\":\"2021-02-17T08:41:58.000000Z\",\"id\":5}');
INSERT INTO `action_events` VALUES (21, '92c06b5c-07e8-4325-abcd-22677fc0b94f', 1, 'Create', 'App\\Models\\councillor', 6, 'App\\Models\\councillor', 6, 'App\\Models\\councillor', 6, '', 'finished', '', '2021-02-17 07:42:05', '2021-02-17 07:42:05', NULL, '{\"name\":\"Cr Steve Holland\",\"updated_at\":\"2021-02-17T08:42:05.000000Z\",\"created_at\":\"2021-02-17T08:42:05.000000Z\",\"id\":6}');
INSERT INTO `action_events` VALUES (22, '92c06b64-1486-40b8-995b-49761da7076e', 1, 'Create', 'App\\Models\\councillor', 7, 'App\\Models\\councillor', 7, 'App\\Models\\councillor', 7, '', 'finished', '', '2021-02-17 07:42:10', '2021-02-17 07:42:10', NULL, '{\"name\":\"Cr Debra Mar\",\"updated_at\":\"2021-02-17T08:42:10.000000Z\",\"created_at\":\"2021-02-17T08:42:10.000000Z\",\"id\":7}');
INSERT INTO `action_events` VALUES (23, '92c06b6d-025d-4405-b2b3-1a61161da396', 1, 'Create', 'App\\Models\\councillor', 8, 'App\\Models\\councillor', 8, 'App\\Models\\councillor', 8, '', 'finished', '', '2021-02-17 07:42:16', '2021-02-17 07:42:16', NULL, '{\"name\":\"Cr Anthony Marsh\",\"updated_at\":\"2021-02-17T08:42:16.000000Z\",\"created_at\":\"2021-02-17T08:42:16.000000Z\",\"id\":8}');
INSERT INTO `action_events` VALUES (24, '92c06b79-930c-4adf-99d6-33a8611ef80e', 1, 'Create', 'App\\Models\\councillor', 9, 'App\\Models\\councillor', 9, 'App\\Models\\councillor', 9, '', 'finished', '', '2021-02-17 07:42:25', '2021-02-17 07:42:25', NULL, '{\"name\":\"Cr Kerri McCafferty\",\"updated_at\":\"2021-02-17T08:42:25.000000Z\",\"created_at\":\"2021-02-17T08:42:25.000000Z\",\"id\":9}');
INSERT INTO `action_events` VALUES (25, '92c06b91-ce6e-4d9a-9abd-20e63cc4dd2d', 1, 'Create', 'App\\Models\\councillor', 10, 'App\\Models\\councillor', 10, 'App\\Models\\councillor', 10, '', 'finished', '', '2021-02-17 07:42:40', '2021-02-17 07:42:40', NULL, '{\"name\":\"Cr Paul Mecurio\",\"updated_at\":\"2021-02-17T08:42:40.000000Z\",\"created_at\":\"2021-02-17T08:42:40.000000Z\",\"id\":10}');
INSERT INTO `action_events` VALUES (26, '92c06b9d-0589-4e8f-88e3-c1857b7d5a1b', 1, 'Create', 'App\\Models\\councillor', 11, 'App\\Models\\councillor', 11, 'App\\Models\\councillor', 11, '', 'finished', '', '2021-02-17 07:42:48', '2021-02-17 07:42:48', NULL, '{\"name\":\"Cr Despi O\'Connor\",\"updated_at\":\"2021-02-17T08:42:48.000000Z\",\"created_at\":\"2021-02-17T08:42:48.000000Z\",\"id\":11}');
INSERT INTO `action_events` VALUES (27, '92c06baa-b6e8-4742-aa45-74a29c960de2', 1, 'Create', 'App\\Models\\councillor', 12, 'App\\Models\\councillor', 12, 'App\\Models\\councillor', 12, '', 'finished', '', '2021-02-17 07:42:57', '2021-02-17 07:42:57', NULL, '{\"name\":\"Cr Sarah Race\",\"updated_at\":\"2021-02-17T08:42:57.000000Z\",\"created_at\":\"2021-02-17T08:42:57.000000Z\",\"id\":12}');
INSERT INTO `action_events` VALUES (29, '92c06c51-6312-4f01-b20a-eca155c3f984', 1, 'Update', 'App\\Models\\councillor', 12, 'App\\Models\\councillor', 12, 'App\\Models\\councillor', 12, '', 'finished', '', '2021-02-17 07:44:46', '2021-02-17 07:44:46', '{\"ward\":null}', '{\"ward\":\"nepean\"}');
INSERT INTO `action_events` VALUES (30, '92c06c70-d2b0-4327-87df-3da4f0050f58', 1, 'Update', 'App\\Models\\councillor', 11, 'App\\Models\\councillor', 11, 'App\\Models\\councillor', 11, '', 'finished', '', '2021-02-17 07:45:07', '2021-02-17 07:45:07', '{\"ward\":null}', '{\"ward\":\"briars\"}');
INSERT INTO `action_events` VALUES (31, '92c06c76-97cc-489e-bc75-8b479115d68d', 1, 'Update', 'App\\Models\\councillor', 10, 'App\\Models\\councillor', 10, 'App\\Models\\councillor', 10, '', 'finished', '', '2021-02-17 07:45:10', '2021-02-17 07:45:10', '{\"ward\":null}', '{\"ward\":\"watson\"}');
INSERT INTO `action_events` VALUES (32, '92c06c7b-c7b5-41c6-8f5f-d09e327e6c94', 1, 'Update', 'App\\Models\\councillor', 9, 'App\\Models\\councillor', 9, 'App\\Models\\councillor', 9, '', 'finished', '', '2021-02-17 07:45:14', '2021-02-17 07:45:14', '{\"ward\":null}', '{\"ward\":\"seawinds\"}');
INSERT INTO `action_events` VALUES (33, '92c06c80-abaa-42eb-8d2d-580d9bae82c2', 1, 'Update', 'App\\Models\\councillor', 8, 'App\\Models\\councillor', 8, 'App\\Models\\councillor', 8, '', 'finished', '', '2021-02-17 07:45:17', '2021-02-17 07:45:17', '{\"ward\":null}', '{\"ward\":\"briars\"}');
INSERT INTO `action_events` VALUES (34, '92c06c89-7f0c-4ba1-b856-5956dd0d0b65', 1, 'Update', 'App\\Models\\councillor', 7, 'App\\Models\\councillor', 7, 'App\\Models\\councillor', 7, '', 'finished', '', '2021-02-17 07:45:23', '2021-02-17 07:45:23', '{\"ward\":null}', '{\"ward\":\"seawinds\"}');
INSERT INTO `action_events` VALUES (35, '92c06c8e-b044-41ac-9b71-81b80ee6081f', 1, 'Update', 'App\\Models\\councillor', 6, 'App\\Models\\councillor', 6, 'App\\Models\\councillor', 6, '', 'finished', '', '2021-02-17 07:45:26', '2021-02-17 07:45:26', '{\"ward\":null}', '{\"ward\":\"briars\"}');
INSERT INTO `action_events` VALUES (36, '92c06c94-1d69-450b-8e7a-cf9f3f9a6683', 1, 'Update', 'App\\Models\\councillor', 5, 'App\\Models\\councillor', 5, 'App\\Models\\councillor', 5, '', 'finished', '', '2021-02-17 07:45:30', '2021-02-17 07:45:30', '{\"ward\":null}', '{\"ward\":\"redhill\"}');
INSERT INTO `action_events` VALUES (37, '92c06c99-98b0-4208-a2c1-c5aba7acfd3c', 1, 'Update', 'App\\Models\\councillor', 4, 'App\\Models\\councillor', 4, 'App\\Models\\councillor', 4, '', 'finished', '', '2021-02-17 07:45:33', '2021-02-17 07:45:33', '{\"ward\":null}', '{\"ward\":\"nepean\"}');
INSERT INTO `action_events` VALUES (38, '92c06cac-6ec6-4cb9-9bf2-d11ae51c7658', 1, 'Update', 'App\\Models\\councillor', 3, 'App\\Models\\councillor', 3, 'App\\Models\\councillor', 3, '', 'finished', '', '2021-02-17 07:45:46', '2021-02-17 07:45:46', '{\"ward\":null}', '{\"ward\":\"cerberus\"}');
INSERT INTO `action_events` VALUES (39, '92c06cb2-3691-4860-a777-c821fbc456e9', 1, 'Update', 'App\\Models\\councillor', 2, 'App\\Models\\councillor', 2, 'App\\Models\\councillor', 2, '', 'finished', '', '2021-02-17 07:45:49', '2021-02-17 07:45:49', '{\"ward\":null}', '{\"ward\":\"seawinds\"}');
INSERT INTO `action_events` VALUES (40, '92c06e19-620e-4cd2-a22d-1ab07de19df9', 1, 'Update', 'App\\Models\\councillor', 12, 'App\\Models\\councillor', 12, 'App\\Models\\councillor', 12, '', 'finished', '', '2021-02-17 07:49:45', '2021-02-17 07:49:45', '[]', '[]');
INSERT INTO `action_events` VALUES (42, '92c06f11-9ed1-4cf1-96b8-f719b653b194', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 07:52:28', '2021-02-17 07:52:28', '{\"type\":\"A\",\"location\":\"pct\"}', '{\"type\":\"annual\",\"location\":\"peninsula community theatre\"}');
INSERT INTO `action_events` VALUES (43, '92c071c6-a266-449b-9157-61e3c8ffaf27', 1, 'Create', 'App\\Models\\decision', 2, 'App\\Models\\decision', 2, 'App\\Models\\decision', 2, '', 'finished', '', '2021-02-17 08:00:02', '2021-02-17 08:00:02', NULL, '{\"updated_at\":\"2021-02-17T09:00:02.000000Z\",\"created_at\":\"2021-02-17T09:00:02.000000Z\",\"id\":2}');
INSERT INTO `action_events` VALUES (44, '92c07239-6d89-4ec7-a8fc-5068ef0cf728', 1, 'Update', 'App\\Models\\decision', 2, 'App\\Models\\decision', 2, 'App\\Models\\decision', 2, '', 'finished', '', '2021-02-17 08:01:17', '2021-02-17 08:01:17', '[]', '[]');
INSERT INTO `action_events` VALUES (45, '92c072a2-2a1e-4f25-ba82-c33910608785', 1, 'Delete', 'App\\Models\\decision', 2, 'App\\Models\\decision', 2, 'App\\Models\\decision', 2, '', 'finished', '', '2021-02-17 08:02:26', '2021-02-17 08:02:26', NULL, NULL);
INSERT INTO `action_events` VALUES (46, '92c072b0-c67e-47a0-8ed4-9987521d4f27', 1, 'Update', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 08:02:35', '2021-02-17 08:02:35', '[]', '[]');
INSERT INTO `action_events` VALUES (47, '92c08349-0157-4ff1-95cf-34dbfce7cfaf', 1, 'Delete', 'App\\Models\\representative', 12, 'App\\Models\\representative', 12, 'App\\Models\\representative', 12, '', 'finished', '', '2021-02-17 08:48:59', '2021-02-17 08:48:59', NULL, NULL);
INSERT INTO `action_events` VALUES (48, '92c0834b-a04d-4485-ad03-8fc3f95e171c', 1, 'Delete', 'App\\Models\\representative', 11, 'App\\Models\\representative', 11, 'App\\Models\\representative', 11, '', 'finished', '', '2021-02-17 08:49:01', '2021-02-17 08:49:01', NULL, NULL);
INSERT INTO `action_events` VALUES (49, '92c0834d-274a-4f16-a855-b79a7d25219d', 1, 'Delete', 'App\\Models\\representative', 10, 'App\\Models\\representative', 10, 'App\\Models\\representative', 10, '', 'finished', '', '2021-02-17 08:49:02', '2021-02-17 08:49:02', NULL, NULL);
INSERT INTO `action_events` VALUES (50, '92c0834e-82b6-4ca4-b2b6-7cc34972135e', 1, 'Delete', 'App\\Models\\representative', 9, 'App\\Models\\representative', 9, 'App\\Models\\representative', 9, '', 'finished', '', '2021-02-17 08:49:03', '2021-02-17 08:49:03', NULL, NULL);
INSERT INTO `action_events` VALUES (51, '92c08352-1cfd-4475-835b-d0f799dbe8e0', 1, 'Delete', 'App\\Models\\representative', 8, 'App\\Models\\representative', 8, 'App\\Models\\representative', 8, '', 'finished', '', '2021-02-17 08:49:05', '2021-02-17 08:49:05', NULL, NULL);
INSERT INTO `action_events` VALUES (52, '92c08354-0bef-47b8-b85c-11576dd99865', 1, 'Delete', 'App\\Models\\representative', 7, 'App\\Models\\representative', 7, 'App\\Models\\representative', 7, '', 'finished', '', '2021-02-17 08:49:06', '2021-02-17 08:49:06', NULL, NULL);
INSERT INTO `action_events` VALUES (53, '92c08355-bd4a-4f9a-b6c7-530011a64548', 1, 'Delete', 'App\\Models\\representative', 6, 'App\\Models\\representative', 6, 'App\\Models\\representative', 6, '', 'finished', '', '2021-02-17 08:49:08', '2021-02-17 08:49:08', NULL, NULL);
INSERT INTO `action_events` VALUES (54, '92c08357-8d58-4d26-9054-81ca6d07f119', 1, 'Delete', 'App\\Models\\representative', 5, 'App\\Models\\representative', 5, 'App\\Models\\representative', 5, '', 'finished', '', '2021-02-17 08:49:09', '2021-02-17 08:49:09', NULL, NULL);
INSERT INTO `action_events` VALUES (55, '92c08359-079c-4a8a-a582-9235ed07a3b1', 1, 'Delete', 'App\\Models\\representative', 4, 'App\\Models\\representative', 4, 'App\\Models\\representative', 4, '', 'finished', '', '2021-02-17 08:49:10', '2021-02-17 08:49:10', NULL, NULL);
INSERT INTO `action_events` VALUES (56, '92c0835a-92b3-4f77-88a9-c73dde3a9ede', 1, 'Delete', 'App\\Models\\representative', 3, 'App\\Models\\representative', 3, 'App\\Models\\representative', 3, '', 'finished', '', '2021-02-17 08:49:11', '2021-02-17 08:49:11', NULL, NULL);
INSERT INTO `action_events` VALUES (57, '92c0835d-5f3d-47c1-9361-b0433608bc53', 1, 'Delete', 'App\\Models\\representative', 2, 'App\\Models\\representative', 2, 'App\\Models\\representative', 2, '', 'finished', '', '2021-02-17 08:49:13', '2021-02-17 08:49:13', NULL, NULL);
INSERT INTO `action_events` VALUES (58, '92c083ac-0793-442f-812e-d039c7a53421', 1, 'Create', 'App\\Models\\representative', 13, 'App\\Models\\representative', 13, 'App\\Models\\representative', 13, '', 'finished', '', '2021-02-17 08:50:04', '2021-02-17 08:50:04', NULL, '{\"name\":\"John Smith\",\"area\":\"paris\",\"updated_at\":\"2021-02-17T09:50:04.000000Z\",\"created_at\":\"2021-02-17T09:50:04.000000Z\",\"id\":13}');
INSERT INTO `action_events` VALUES (59, '92c083b4-aa51-475b-b944-65431f2665a2', 1, 'Create', 'App\\Models\\representative', 14, 'App\\Models\\representative', 14, 'App\\Models\\representative', 14, '', 'finished', '', '2021-02-17 08:50:10', '2021-02-17 08:50:10', NULL, '{\"name\":\"Jane Doe\",\"area\":\"sydney\",\"updated_at\":\"2021-02-17T09:50:10.000000Z\",\"created_at\":\"2021-02-17T09:50:10.000000Z\",\"id\":14}');
INSERT INTO `action_events` VALUES (60, '92c083b7-18ee-4e5c-923c-a3a72f773609', 1, 'Create', 'App\\Models\\representative', 15, 'App\\Models\\representative', 15, 'App\\Models\\representative', 15, '', 'finished', '', '2021-02-17 08:50:11', '2021-02-17 08:50:11', NULL, '{\"name\":null,\"area\":null,\"updated_at\":\"2021-02-17T09:50:11.000000Z\",\"created_at\":\"2021-02-17T09:50:11.000000Z\",\"id\":15}');
INSERT INTO `action_events` VALUES (61, '92c083bf-fe2e-459c-9b28-ba87e59c4cb6', 1, 'Delete', 'App\\Models\\representative', 15, 'App\\Models\\representative', 15, 'App\\Models\\representative', 15, '', 'finished', '', '2021-02-17 08:50:17', '2021-02-17 08:50:17', NULL, NULL);
INSERT INTO `action_events` VALUES (62, '92c083d4-9fc2-4c92-906e-1a5f902201e2', 1, 'Create', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-17 08:50:31', '2021-02-17 08:50:31', NULL, '{\"name\":\"Michael Smith\",\"area\":\"newyork\",\"updated_at\":\"2021-02-17T09:50:31.000000Z\",\"created_at\":\"2021-02-17T09:50:31.000000Z\",\"id\":16}');
INSERT INTO `action_events` VALUES (63, '92c085ee-0997-4ef6-9977-2a6238a64662', 1, 'Delete', 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, 'App\\Models\\Meeting', 2, '', 'finished', '', '2021-02-17 08:56:23', '2021-02-17 08:56:23', NULL, NULL);
INSERT INTO `action_events` VALUES (64, '92c08607-4f7f-4def-928b-dda734fee357', 1, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2021-02-17 08:56:40', '2021-02-17 08:56:40', '{\"email\":\"anthony.marsh@live.com\"}', '{\"email\":\"anthony@local\"}');
INSERT INTO `action_events` VALUES (65, '92c08635-f358-4dd7-811d-fae695be1247', 1, 'Create', 'App\\Models\\Meeting', 3, 'App\\Models\\Meeting', 3, 'App\\Models\\Meeting', 3, '', 'finished', '', '2021-02-17 08:57:10', '2021-02-17 08:57:10', NULL, '{\"type\":\"annual\",\"location\":\"newyork\",\"datetime\":\"2021-02-24T01:00:00.000000Z\",\"documents\":null,\"stream\":null,\"updated_at\":\"2021-02-17T09:57:10.000000Z\",\"created_at\":\"2021-02-17T09:57:10.000000Z\",\"id\":3}');
INSERT INTO `action_events` VALUES (66, '92c08cee-21cd-4cc2-9113-ee0d7cb84249', 1, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2021-02-17 09:15:57', '2021-02-17 09:15:57', '{\"name\":\"Anthony Marsh\",\"email\":\"anthony@local\",\"password\":\"$2y$10$ANlrMRGwq3Yv1iMKnEFz4.pKs0WzayiOfK8tnm470Yu4SBoOn7UvC\"}', '{\"name\":\"John Smith\",\"email\":\"john@local\",\"password\":\"$2y$10$z6qHUbY9ByspxTkx9T9J5.Wkq4iuTSEsr.gYwP4MUbl3NMYouQkBm\"}');
INSERT INTO `action_events` VALUES (67, '92c3b19e-d298-4892-a3e6-461f30d4d98b', 1, 'Create', 'App\\Models\\decision', 3, 'App\\Models\\decision', 3, 'App\\Models\\decision', 3, '', 'finished', '', '2021-02-18 23:46:02', '2021-02-18 23:46:02', NULL, '{\"meeting_id\":3,\"type\":\"two\",\"description\":\"abc\",\"mover\":\"13\",\"seconder\":\"14\",\"opposer\":\"16\",\"peoplespeak\":\"[\\\"14\\\",\\\"13\\\",\\\"16\\\"]\",\"votefor\":\"[\\\"13\\\"]\",\"voteagainst\":\"[\\\"14\\\"]\",\"abstain\":\"[\\\"16\\\"]\",\"updated_at\":\"2021-02-18T23:46:02.000000Z\",\"created_at\":\"2021-02-18T23:46:02.000000Z\",\"id\":3}');
INSERT INTO `action_events` VALUES (68, '92c3b1e4-5003-4e65-84ee-ee2745fd6077', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-18 23:46:48', '2021-02-18 23:46:48', '{\"avatar\":null}', '{\"avatar\":\"ZTTreQaqf5pSqJ3EODXLt1Rnzv2OLiIwbJGyid91.png\"}');
INSERT INTO `action_events` VALUES (69, '92c3b288-f7ee-4abc-8f68-730b0a8aa6b8', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-18 23:48:35', '2021-02-18 23:48:35', '{\"avatar\":\"ZTTreQaqf5pSqJ3EODXLt1Rnzv2OLiIwbJGyid91.png\"}', '{\"avatar\":\"YELJZD3FRn4qsuk2CSyIpvpNJApUsIaTE71VYHwn.png\"}');
INSERT INTO `action_events` VALUES (70, '92c3b3e9-264a-452f-8dad-f3b01672a911', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-18 23:52:26', '2021-02-18 23:52:26', '{\"avatar\":\"YELJZD3FRn4qsuk2CSyIpvpNJApUsIaTE71VYHwn.png\"}', '{\"avatar\":\"TBpGw2eVQm4MddMLjc4WiGQHtfrUpuTrYOsMhCPj.png\"}');
INSERT INTO `action_events` VALUES (71, '92c3b44c-a1c9-4f8f-a5d1-26fd30c46d66', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-18 23:53:31', '2021-02-18 23:53:31', '{\"avatar\":\"\"}', '{\"avatar\":\"6s5kigu0v54GTvjGq8rdvk7oOIvVDepzfkW0Wm12.png\"}');
INSERT INTO `action_events` VALUES (72, '92c3b495-a114-41cc-a8c2-99b81ff7f220', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-18 23:54:19', '2021-02-18 23:54:19', '{\"avatar\":\"6s5kigu0v54GTvjGq8rdvk7oOIvVDepzfkW0Wm12.png\"}', '{\"avatar\":\"NpowGDlwIr8pAKda05cGhGfdffukhmJJ9RVbM7cT.png\"}');
INSERT INTO `action_events` VALUES (73, '92c400e2-18c5-4941-8c47-f4f29d894e9a', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-19 03:27:40', '2021-02-19 03:27:40', '{\"avatar\":\"NpowGDlwIr8pAKda05cGhGfdffukhmJJ9RVbM7cT.png\"}', '{\"avatar\":\"RJn377j44pxgGUmhyM10dtXY9tjt8VaKa07MMPrC.png\"}');
INSERT INTO `action_events` VALUES (74, '92c4024d-b87e-4bff-a397-2910c6cf5bbd', 1, 'Update', 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, 'App\\Models\\representative', 16, '', 'finished', '', '2021-02-19 03:31:38', '2021-02-19 03:31:38', '{\"avatar\":\"RJn377j44pxgGUmhyM10dtXY9tjt8VaKa07MMPrC.png\"}', '{\"avatar\":\"wsERDsSfEXno3pMUsMtaTnrY5vjkmFao1L54fZcy.png\"}');

-- ----------------------------
-- Table structure for decisions
-- ----------------------------
DROP TABLE IF EXISTS `decisions`;
CREATE TABLE `decisions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meeting_id` int NULL DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `mover` int NULL DEFAULT NULL,
  `seconder` int NULL DEFAULT NULL,
  `opposer` int NULL DEFAULT NULL,
  `peoplespeak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `votefor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `voteagainst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `abstain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of decisions
-- ----------------------------
INSERT INTO `decisions` VALUES (3, 3, 'two', 'abc', 13, 14, 16, '[\"14\",\"13\",\"16\"]', '[\"13\"]', '[\"14\"]', '[\"16\"]', '2021-02-18 23:46:02', '2021-02-18 23:46:02');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for meetings
-- ----------------------------
DROP TABLE IF EXISTS `meetings`;
CREATE TABLE `meetings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `datetime` datetime(0) NULL DEFAULT NULL,
  `location` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `documents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `stream` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meetings
-- ----------------------------
INSERT INTO `meetings` VALUES (3, 'annual', '2021-02-24 01:00:00', 'newyork', NULL, NULL, '2021-02-17 08:57:10', '2021-02-17 08:57:10');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for representatives
-- ----------------------------
DROP TABLE IF EXISTS `representatives`;
CREATE TABLE `representatives`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of representatives
-- ----------------------------
INSERT INTO `representatives` VALUES (13, 'John Smith', 'paris', NULL, '2021-02-17 08:50:04', '2021-02-17 08:50:04');
INSERT INTO `representatives` VALUES (14, 'Jane Doe', 'sydney', NULL, '2021-02-17 08:50:10', '2021-02-17 08:50:10');
INSERT INTO `representatives` VALUES (16, 'Michael Smith', 'newyork', 'wsERDsSfEXno3pMUsMtaTnrY5vjkmFao1L54fZcy.png', '2021-02-17 08:50:31', '2021-02-19 03:31:38');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'John Smith', 'john@local', NULL, '$2y$10$z6qHUbY9ByspxTkx9T9J5.Wkq4iuTSEsr.gYwP4MUbl3NMYouQkBm', NULL, '2021-02-13 08:45:43', '2021-02-17 09:15:57');

SET FOREIGN_KEY_CHECKS = 1;
