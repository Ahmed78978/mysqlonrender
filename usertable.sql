-- Adminer 4.7.2 MySQL dump
USE mysql;

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';

INSERT INTO `user` (`Host`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `Create_tablespace_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`, `plugin`, `authentication_string`, `password_expired`, `password_last_changed`, `password_lifetime`, `account_locked`, `Create_role_priv`, `Drop_role_priv`, `Password_reuse_history`, `Password_reuse_time`, `Password_require_current`, `User_attributes`) VALUES
('%',	'mysql',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'',	'',	'',	'',	0,	0,	0,	0,	'mysql_native_password',	'*6BBBCE515D547697124234BFE22540CE6CAD23A5',	'N',	'2024-03-31 17:14:31',	NULL,	'N',	'N',	'N',	NULL,	NULL,	NULL,	NULL),
('localhost',	'healthchecker',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'',	'',	'',	'',	0,	0,	0,	0,	'mysql_native_password',	'*36C82179AFA394C4B9655005DD2E482D30A4BDF7',	'N',	'2024-03-31 17:14:31',	NULL,	'N',	'N',	'N',	NULL,	NULL,	NULL,	NULL),
('localhost',	'mysql.infoschema',	'Y',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'',	'',	'',	'',	0,	0,	0,	0,	'caching_sha2_password',	'$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED',	'N',	'2024-03-31 17:14:27',	NULL,	'Y',	'N',	'N',	NULL,	NULL,	NULL,	NULL),
('localhost',	'mysql.session',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'Y',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'Y',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'',	'',	'',	'',	0,	0,	0,	0,	'caching_sha2_password',	'$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED',	'N',	'2024-03-31 17:14:27',	NULL,	'Y',	'N',	'N',	NULL,	NULL,	NULL,	NULL),
('localhost',	'mysql.sys',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'N',	'',	'',	'',	'',	0,	0,	0,	0,	'caching_sha2_password',	'$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED',	'N',	'2024-03-31 17:14:27',	NULL,	'Y',	'N',	'N',	NULL,	NULL,	NULL,	NULL),
('localhost',	'root',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'Y',	'',	'',	'',	'',	0,	0,	0,	0,	'mysql_native_password',	'*C5D886AEF1604CA35BB2BFD2A61C3CDB75C5A7E5',	'N',	'2024-03-31 17:14:31',	NULL,	'N',	'Y',	'Y',	NULL,	NULL,	NULL,	NULL);

-- 2024-03-31 18:46:36
