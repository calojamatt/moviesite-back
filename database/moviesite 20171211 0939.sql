﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 7.3.131.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 11/12/2017 9:39:25 a. m.
-- Server version: 5.5.5-10.2.10-MariaDB
-- Client version: 4.1
--


-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE moviesite;

--
-- Drop table "users"
--
DROP TABLE IF EXISTS users;

--
-- Drop table "theatersmovies"
--
DROP TABLE IF EXISTS theatersmovies;

--
-- Drop table "theaters"
--
DROP TABLE IF EXISTS theaters;

--
-- Drop table "password_resets"
--
DROP TABLE IF EXISTS password_resets;

--
-- Drop table "movies"
--
DROP TABLE IF EXISTS movies;

--
-- Drop table "migrations"
--
DROP TABLE IF EXISTS migrations;

--
-- Set default database
--
USE moviesite;

--
-- Create table "migrations"
--
CREATE TABLE IF NOT EXISTS migrations (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  migration varchar(255) NOT NULL,
  batch int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Create table "movies"
--
CREATE TABLE IF NOT EXISTS movies (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  releasedate date NOT NULL,
  language varchar(50) NOT NULL,
  theaterid int(11) DEFAULT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP () ON UPDATE CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 22
AVG_ROW_LENGTH = 780
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Create table "password_resets"
--
CREATE TABLE IF NOT EXISTS password_resets (
  email varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  INDEX password_resets_email_index (email)
)
ENGINE = INNODB
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Create table "theaters"
--
CREATE TABLE IF NOT EXISTS theaters (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Create table "theatersmovies"
--
CREATE TABLE IF NOT EXISTS theatersmovies (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  idtheater int(11) NOT NULL,
  idmovie int(11) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Create table "users"
--
CREATE TABLE IF NOT EXISTS users (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  remember_token varchar(100) DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX users_email_unique (email)
)
ENGINE = INNODB
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci
ROW_FORMAT = DYNAMIC;

-- 
-- Dumping data for table migrations
--
INSERT INTO migrations VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_11_013120_create_movies_table', 1),
(4, '2017_12_11_013237_create_theathers_table', 2),
(5, '2017_12_11_013251_create_theathersmovies_table', 2);

-- 
-- Dumping data for table movies
--
INSERT INTO movies VALUES
(1, 'Prueba', '2017-12-10', 'English', 1, '2017-12-11 08:25:42', '2017-12-10 23:34:35'),
(2, 'BRAVE HEART', '2017-05-10', 'ENGLISH', 1, '2017-12-11 08:25:43', '2017-12-11 06:20:38'),
(3, 'BRAVE HEART', '2017-05-10', 'ENGLISH', 1, '2017-12-11 08:25:44', '2017-12-11 06:45:55'),
(4, 'BRAVE HEART', '2017-05-10', 'ENGLISH', 1, '2017-12-11 08:25:44', '2017-12-11 06:59:42'),
(5, 'Brave Heart', '2017-05-10', 'English', 1, '2017-12-11 08:25:45', '2017-12-11 07:10:45'),
(6, 'The Renevant', '2016-12-31', 'English', 1, '2017-12-11 08:25:45', '2017-12-11 07:12:02'),
(7, 'The Renevant', '2016-12-31', 'English', 1, '2017-12-11 08:25:45', '2017-12-11 07:12:06'),
(8, 'Superman', '2017-05-25', 'English', 2, '2017-12-11 08:25:46', '2017-12-11 07:14:44'),
(9, 'Spiderman', '2017-01-01', 'English', 2, '2017-12-11 08:25:47', '2017-12-11 07:15:51'),
(10, 'Batman', '2017-01-01', 'English', 2, '2017-12-11 08:25:47', '2017-12-11 07:25:09'),
(11, 'Linterna Verde', '2017-05-10', 'English', 2, '2017-12-11 08:25:47', '2017-12-11 07:34:04'),
(12, 'Carlos', '2017-05-10', 'English', 2, '2017-12-11 08:25:48', '2017-12-11 08:13:17'),
(13, 'BRAVE HEART', '2017-05-10', 'ENGLISH', 2, '2017-12-11 08:25:48', '2017-12-11 08:20:43'),
(14, 'CARLOS', '2017-05-10', 'ENGLISH', 3, '2017-12-11 08:25:49', '2017-12-11 08:21:04'),
(15, 'CARLOS', '2017-05-10', 'ENGLISH', 3, '2017-12-11 08:25:51', '2017-12-11 09:06:19'),
(16, 'About Time', '2017-04-20', 'English', 3, '2017-12-11 09:13:40', '2017-12-11 14:09:31'),
(17, 'Terminator', '2017-10-03', 'English', 3, '2017-12-11 09:13:44', '2017-12-11 14:12:32'),
(18, 'Terminator 2', '2017-05-10', 'English', 1, '2017-12-11 14:15:56', '2017-12-11 14:15:56'),
(19, 'Terminator 3', '2016-12-31', 'English', 1, '2017-12-11 14:17:06', '2017-12-11 14:17:06'),
(20, 'Transformer', '2016-05-20', 'English', 1, '2017-12-11 14:18:09', '2017-12-11 14:18:09'),
(21, 'Transformer 2', '2015-09-20', 'English', 2, '2017-12-11 14:19:25', '2017-12-11 14:19:25');

-- 
-- Dumping data for table password_resets
--
-- Table moviesite.password_resets does not contain any data (it is empty)

-- 
-- Dumping data for table theaters
--
INSERT INTO theaters VALUES
(1, 'Buenavista', 'barranquill', NULL, NULL),
(2, 'Prado', 'barranquilla', NULL, NULL);

-- 
-- Dumping data for table theatersmovies
--
-- Table moviesite.theatersmovies does not contain any data (it is empty)

-- 
-- Dumping data for table users
--
-- Table moviesite.users does not contain any data (it is empty)
-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
