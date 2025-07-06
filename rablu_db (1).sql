-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2024 at 05:33 AM
-- Server version: 8.3.0
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rablu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliated_college`
--

DROP TABLE IF EXISTS `affiliated_college`;
CREATE TABLE IF NOT EXISTS `affiliated_college` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `college_name` varchar(255) NOT NULL,
  `college_type` enum('Government College','Aided College','Private College') NOT NULL,
  `estd_year` varchar(4) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fax_no` varchar(15) NOT NULL,
  `website` varchar(128) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departmental_news`
--

DROP TABLE IF EXISTS `departmental_news`;
CREATE TABLE IF NOT EXISTS `departmental_news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL DEFAULT '1',
  `headline` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `isexternal` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_members`
--

DROP TABLE IF EXISTS `faculty_members`;
CREATE TABLE IF NOT EXISTS `faculty_members` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `academic_profile` varchar(255) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_archives`
--

DROP TABLE IF EXISTS `fuel_archives`;
CREATE TABLE IF NOT EXISTS `fuel_archives` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ref_id` int UNSIGNED NOT NULL,
  `table_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `version` smallint UNSIGNED NOT NULL,
  `version_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `archived_user_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_archives`
--

INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(1, 2, 'fuel_navigation', 'null', 1, '2024-09-30 10:15:52', 1),
(2, 10, 'fuel_navigation', 'null', 1, '2024-09-30 10:16:34', 1),
(3, 14, 'fuel_navigation', 'null', 1, '2024-09-30 10:17:08', 1),
(4, 12, 'fuel_navigation', 'null', 1, '2024-09-30 10:17:41', 1),
(5, 13, 'fuel_navigation', 'null', 1, '2024-09-30 10:18:20', 1),
(6, 16, 'fuel_navigation', 'null', 1, '2024-09-30 10:18:47', 1),
(7, 83, 'fuel_navigation', 'null', 1, '2024-09-30 10:19:22', 1),
(8, 83, 'fuel_navigation', 'null', 2, '2024-09-30 10:19:40', 1),
(9, 85, 'fuel_navigation', 'null', 1, '2024-09-30 10:21:27', 1),
(10, 31, 'fuel_navigation', 'null', 1, '2024-09-30 10:23:44', 1),
(11, 31, 'fuel_navigation', 'null', 2, '2024-09-30 10:24:37', 1),
(12, 89, 'fuel_navigation', 'null', 1, '2024-09-30 10:25:25', 1),
(13, 108, 'fuel_navigation', '{\"id\":108}', 1, '2024-09-30 10:26:16', 1),
(14, 1, 'user_role', 'null', 1, '2024-09-30 12:27:58', 1),
(15, 36, 'fuel_pages', '{\"id\":\"36\",\"variables\":[{\"id\":\"1905\",\"page_id\":\"36\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/About-University\",\"page_published\":\"yes\"},{\"id\":\"1906\",\"page_id\":\"36\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/About-University\",\"page_published\":\"yes\"},{\"id\":\"1904\",\"page_id\":\"36\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Madhya Pradesh Paramedical Council\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/About-University\",\"page_published\":\"yes\"},{\"id\":\"1902\",\"page_id\":\"36\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/About-University\",\"page_published\":\"yes\"},{\"id\":\"1903\",\"page_id\":\"36\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/About-University\",\"page_published\":\"yes\"},{\"id\":\"1901\",\"page_id\":\"36\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"About University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/About-University\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 06:47:40', 1),
(16, 25, 'fuel_pages', '{\"id\":\"25\",\"variables\":[{\"id\":\"1911\",\"page_id\":\"25\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1912\",\"page_id\":\"25\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1910\",\"page_id\":\"25\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Madhya Pradesh Paramedical Council\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1908\",\"page_id\":\"25\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1909\",\"page_id\":\"25\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1907\",\"page_id\":\"25\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Mission & Vision\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 06:48:23', 1),
(17, 35, 'fuel_pages', '{fuel_block(\'act-n-regulation\\/act-n-regulation\')}&lt;\\/p&gt;\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Photo-Gallery\",\"page_published\":\"yes\"},{\"id\":\"1918\",\"page_id\":\"35\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Photo-Gallery\",\"page_published\":\"yes\"},{\"id\":\"1916\",\"page_id\":\"35\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Photo Gallery\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Photo-Gallery\",\"page_published\":\"yes\"},{\"id\":\"1914\",\"page_id\":\"35\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Photo-Gallery\",\"page_published\":\"yes\"},{\"id\":\"1915\",\"page_id\":\"35\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Photo-Gallery\",\"page_published\":\"yes\"},{\"id\":\"1913\",\"page_id\":\"35\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Photo Gallery\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Photo-Gallery\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 06:49:13', 1),
(18, 38, 'fuel_pages', '{fuel_block(\'act-n-regulation\\/act-n-regulation\')}&lt;\\/p&gt;\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1924\",\"page_id\":\"38\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1922\",\"page_id\":\"38\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"VC Message\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1920\",\"page_id\":\"38\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1921\",\"page_id\":\"38\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1919\",\"page_id\":\"38\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"VC Message\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 06:49:57', 1),
(19, 38, 'fuel_pages', '{fuel_block(\'act-n-regulation\\/act-n-regulation\')}&lt;\\/p&gt;\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1930\",\"page_id\":\"38\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1928\",\"page_id\":\"38\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"VC Message\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1926\",\"page_id\":\"38\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1927\",\"page_id\":\"38\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"},{\"id\":\"1925\",\"page_id\":\"38\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"VC Message\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/vc-message\",\"page_published\":\"yes\"}]}', 2, '2024-10-03 06:50:16', 1),
(20, 48, 'fuel_pages', '{fuel_block(\'act-n-regulation\\/act-n-regulation\')}&lt;\\/p&gt;\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Administration\",\"page_published\":\"yes\"},{\"id\":\"1936\",\"page_id\":\"48\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Administration\",\"page_published\":\"yes\"},{\"id\":\"1934\",\"page_id\":\"48\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Administration\",\"page_published\":\"yes\"},{\"id\":\"1932\",\"page_id\":\"48\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Administration\",\"page_published\":\"yes\"},{\"id\":\"1933\",\"page_id\":\"48\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Administration\",\"page_published\":\"yes\"},{\"id\":\"1931\",\"page_id\":\"48\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Administration\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Administration\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 06:51:33', 1),
(21, 40, 'fuel_pages', '{\"id\":\"40\",\"variables\":[{\"id\":\"1941\",\"page_id\":\"40\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1942\",\"page_id\":\"40\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1940\",\"page_id\":\"40\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1938\",\"page_id\":\"40\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1939\",\"page_id\":\"40\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1937\",\"page_id\":\"40\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Admission\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 06:52:19', 1),
(22, 40, 'fuel_pages', '{\"id\":\"40\",\"variables\":[{\"id\":\"1947\",\"page_id\":\"40\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1948\",\"page_id\":\"40\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1946\",\"page_id\":\"40\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Admission\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1944\",\"page_id\":\"40\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1945\",\"page_id\":\"40\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1943\",\"page_id\":\"40\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Admission\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"}]}', 2, '2024-10-03 06:52:26', 1),
(23, 16, 'fuel_pages', '{\"id\":\"16\",\"variables\":[{\"id\":\"1953\",\"page_id\":\"16\",\"name\":\"body\",\"scope\":\"\",\"value\":\"<h4><strong>Rani Avanti Bai Lodhi University&lt;\\/strong&gt;&lt;\\/h4&gt;\\r\\n\\r\\n</strong></h4><p><strong><strong>Address:\\u00a0 &lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n</strong></strong></p><p><strong><strong><strong>Phone:  &lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n</strong></strong></strong></p><p><strong><strong><strong><strong>Email :-  &lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n</strong></strong></strong></strong></p><p><strong><strong><strong><strong>\\u00a0&lt;\\/p&gt;\\r\\n\\r\\n\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"contact-us\",\"page_published\":\"yes\"},{\"id\":\"1954\",\"page_id\":\"16\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"contact-us\",\"page_published\":\"yes\"},{\"id\":\"1952\",\"page_id\":\"16\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Contact Us\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"contact-us\",\"page_published\":\"yes\"},{\"id\":\"1950\",\"page_id\":\"16\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"contact-us\",\"page_published\":\"yes\"},{\"id\":\"1951\",\"page_id\":\"16\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"contact-us\",\"page_published\":\"yes\"},{\"id\":\"1949\",\"page_id\":\"16\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Contact Us\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"contact-us\",\"page_published\":\"yes\"}]}</strong></strong></strong></strong></p><strong><strong><strong><strong></strong></strong></strong></strong>', 1, '2024-10-03 07:06:07', 1),
(24, 12, 'fuel_pages', '{\"id\":\"12\",\"variables\":[{\"id\":\"1959\",\"page_id\":\"12\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Programmes\",\"page_published\":\"yes\"},{\"id\":\"1960\",\"page_id\":\"12\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Programmes\",\"page_published\":\"yes\"},{\"id\":\"1958\",\"page_id\":\"12\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Programmes\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Programmes\",\"page_published\":\"yes\"},{\"id\":\"1956\",\"page_id\":\"12\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Programmes\",\"page_published\":\"yes\"},{\"id\":\"1957\",\"page_id\":\"12\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Programmes\",\"page_published\":\"yes\"},{\"id\":\"1955\",\"page_id\":\"12\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Programmes\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"Programmes\",\"page_published\":\"yes\"}]}', 1, '2024-10-03 07:07:14', 1),
(25, 16, 'fuel_blocks', '{\"id\":16}', 1, '2024-10-03 09:40:40', 1),
(26, 16, 'fuel_blocks', 'null', 2, '2024-10-03 09:42:33', 1),
(27, 16, 'fuel_blocks', 'null', 3, '2024-10-03 09:42:56', 1),
(28, 40, 'fuel_pages', '{fuel_block(\'imp_link\')}\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1966\",\"page_id\":\"40\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1964\",\"page_id\":\"40\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Admission\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1962\",\"page_id\":\"40\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1963\",\"page_id\":\"40\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"},{\"id\":\"1961\",\"page_id\":\"40\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Admission\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"admission\",\"page_published\":\"yes\"}]}', 3, '2024-10-03 09:43:52', 1),
(29, 14, 'slider', 'null', 1, '2024-10-14 12:24:02', 1),
(30, 13, 'slider', 'null', 1, '2024-10-14 12:24:30', 1),
(31, 14, 'slider', 'null', 2, '2024-10-14 12:25:09', 1),
(32, 25, 'fuel_pages', '{\"id\":\"25\",\"variables\":[{\"id\":\"1971\",\"page_id\":\"25\",\"name\":\"body\",\"scope\":\"\",\"value\":\"<h2>Mission&lt;\\/h2&gt;\\r\\n </h2><p>Providing world class infrastructure, renowned academicians and ideal environment for Research, Innovation, Consultancy and Entrepreneurship relevant to the society. Offering programs & courses in consonance with New Education policies for nation building and meeting global challenges. Ensuring students delight by meeting their aspirations through blended learning, corporate mentoring, professional grooming, flexible curriculum and healthy atmosphere based on co-curricular and extra-curricular activities.&lt;\\/p&gt;\\r\\n\\r\\n</p><h2>Vision&lt;\\/h2&gt;\\r\\n</h2><p>To develop the University as a Center of Excellence for higher education and research committed towards quality education, skill development, industry integration and holistic eco-system for global competencies among youth and sustainable development of the Nation.Welcoming to serve persons of all racial, ethnic, geographic groups, women and men alike, and is committed to maintain the freedom of inquiry and an intellectual environment nurturing the knowledge, human mind, and spirit.&lt;\\/p&gt;\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1972\",\"page_id\":\"25\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1970\",\"page_id\":\"25\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1968\",\"page_id\":\"25\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"Rani Avanti Bai Lodhi University\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1969\",\"page_id\":\"25\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"},{\"id\":\"1967\",\"page_id\":\"25\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Mission & Vision\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"About-Us\\/Mission-vision\",\"page_published\":\"yes\"}]}</p>', 2, '2024-10-15 05:08:10', 1),
(34, 109, 'fuel_navigation', 'null', 2, '2024-10-15 05:13:14', 1),
(35, 109, 'fuel_navigation', 'null', 3, '2024-10-15 05:13:38', 1),
(36, 109, 'fuel_navigation', 'null', 4, '2024-10-15 05:13:58', 1),
(37, 109, 'fuel_navigation', 'null', 5, '2024-10-15 05:14:32', 1),
(38, 16, 'imp_links', 'null', 1, '2024-10-16 05:50:11', 1),
(39, 109, 'fuel_navigation', 'null', 6, '2024-10-16 06:43:36', 1),
(47, 50, 'fuel_pages', '{\"id\":\"50\",\"variables\":[{\"id\":\"2019\",\"page_id\":\"50\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2020\",\"page_id\":\"50\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2018\",\"page_id\":\"50\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"View File\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2016\",\"page_id\":\"50\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2017\",\"page_id\":\"50\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2015\",\"page_id\":\"50\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"FileView\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"}]}', 8, '2024-10-16 07:13:01', 1),
(48, 50, 'fuel_pages', '{\"id\":\"50\",\"variables\":[{\"id\":\"2025\",\"page_id\":\"50\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2026\",\"page_id\":\"50\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2024\",\"page_id\":\"50\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"View File\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2022\",\"page_id\":\"50\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2023\",\"page_id\":\"50\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"},{\"id\":\"2021\",\"page_id\":\"50\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"FileView\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"FileView\",\"page_published\":\"yes\"}]}', 9, '2024-10-16 07:15:12', 1),
(49, 50, 'fuel_pages', '{\"id\":\"50\",\"variables\":[{\"id\":\"2027\",\"page_id\":\"50\",\"name\":\"body\",\"scope\":\"\",\"value\":\" \\r\\n\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"none\",\"location\":\"FileView\",\"page_published\":\"yes\"}]}', 10, '2024-10-16 07:16:45', 1),
(50, 50, 'fuel_pages', '{\"id\":\"50\",\"variables\":[{\"id\":\"2028\",\"page_id\":\"50\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\\r\\n    \",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"none\",\"location\":\"FileView\",\"page_published\":\"yes\"}]}', 11, '2024-10-16 07:17:27', 1),
(51, 50, 'fuel_pages', '{\"id\":\"50\",\"variables\":[{\"id\":\"2029\",\"page_id\":\"50\",\"name\":\"body\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"none\",\"location\":\"FileView\",\"page_published\":\"yes\"}]}', 12, '2024-10-16 07:17:42', 1),
(52, 110, 'fuel_navigation', '{\"id\":110}', 1, '2024-10-16 09:01:21', 1),
(53, 110, 'fuel_navigation', 'null', 2, '2024-10-16 09:01:26', 1),
(54, 110, 'fuel_navigation', 'null', 3, '2024-10-16 09:01:34', 1),
(55, 63, 'fuel_navigation', 'null', 1, '2024-11-14 06:55:40', 1),
(56, 71, 'fuel_navigation', 'null', 1, '2024-11-14 06:56:18', 1),
(57, 32, 'fuel_navigation', 'null', 1, '2024-11-14 06:57:00', 1),
(58, 111, 'fuel_navigation', '{\"id\":111}', 1, '2024-11-14 06:57:44', 1),
(59, 111, 'fuel_navigation', 'null', 2, '2024-11-14 06:58:03', 1),
(60, 71, 'fuel_navigation', 'null', 2, '2024-11-14 06:58:30', 1),
(61, 32, 'fuel_navigation', 'null', 2, '2024-11-14 06:58:42', 1),
(62, 112, 'fuel_navigation', '{\"id\":112}', 1, '2024-11-14 07:24:53', 1),
(63, 113, 'fuel_navigation', '{\"id\":113}', 1, '2024-11-14 07:25:17', 1),
(64, 114, 'fuel_navigation', '{\"id\":114}', 1, '2024-11-14 07:26:03', 1),
(65, 113, 'fuel_navigation', 'null', 2, '2024-11-14 07:26:17', 1),
(66, 112, 'fuel_navigation', 'null', 2, '2024-11-14 07:26:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_blocks`
--

DROP TABLE IF EXISTS `fuel_blocks`;
CREATE TABLE IF NOT EXISTS `fuel_blocks` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `view` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `language` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_blocks`
--

INSERT INTO `fuel_blocks` (`id`, `name`, `description`, `view`, `language`, `published`, `date_added`, `last_modified`) VALUES
(1, 'Anouncement', 'Lasted event & news of University', '{fuel_block(\'right_panel/_anouncement\')}', 'english', 'yes', '2017-02-19 08:04:20', '2018-06-11 10:23:17'),
(4, 'welcome_message', 'This is welcome message for home page', '<!--about clg write up -->\r\n<div class=\"container-fluid\">\r\n<div class=\"container\">\r\n<div class=\"row\" style=\"padding: 15px;\">\r\n<div class=\"col-md-12 mainpage\" style=\"padding-bottom: 14px;\">\r\n<h1>Welcome to MP Paramedical</h1>\r\n\r\n<div class=\"pull-left\"><img alt=\"\" class=\"img-thumbnail img-responsive\" height=\"199px\" src=\"http://apsurewa.ac.in/images/APS_img.gif\" style=\"margin-right:15px;\" width=\"180px\" /></div>\r\n\r\n<div class=\"h10 \">&nbsp;</div>\r\n\r\n<p class=\"justify\">The University has been named after Captain Awadhesh Pratap Singh, a distinguished son of the soil and a freedom fighter. The University was established on the 20th July 1968 and got UGC recognition in February 1972. It has membership of the Association of Indian Universities (AIU) and All Commonwealth Association of Universities (ACAU).</p>\r\n\r\n<p class=\"justify\">The University is located on a 246.20 acres plot of land in the north of Rewa City, at a distance of about 5 kms, with its campus lying on either side of Rewa-Sirmour Road. Besides the over-looking administrative block, the University complex comprises of the departments of Environmental Biology, Physics, Science Block, Humanities Block (including its extension), Ambedkar Bhawan (Hindi Department), Tribal Centre, Computer Centre. <a class=\"pull-right\" href=\"about-us\" style=\"color:#bd3a01;text-decoration:none;\" target=\"_blank\">Read More... </a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--about clg write up -->', 'english', 'yes', '2017-06-13 11:16:13', '2018-06-13 09:27:32'),
(5, 'important_link', 'This is important link for home page', '{fuel_block(\'important_link/important_link\')}', 'english', 'yes', '2017-05-11 23:55:49', '2017-06-03 10:03:16'),
(6, 'carousel', 'This is Image slider for home page', '{fuel_block(\'_carousel\')}', 'english', 'yes', '2017-05-11 23:57:08', '2017-05-26 12:18:55'),
(7, 'contact-us', 'This is contact-us block for home page footer', '<h1>Contact Us</h1>\r\n\r\n<h4>Rani Avanti Bai Lodhi University</h4>\r\n\r\n<p> Sagar, Madhya Pradesh </p>\r\n\r\n<p>Helpline-</p>\r\n\r\n<p>Examination -   <br />\r\nEmail -  </p>', 'english', 'yes', '2017-06-08 14:24:19', '2024-10-03 09:51:38'),
(9, 'vc_message', 'VC-message for home page', '<!--about clg write up -->	\r\n<div class=\"container-fluid\">\r\n<div class=\"container\">\r\n<div class=\"row\" style=\"padding: 15px;\"> \r\n<div class=\"col-md-12 mainpage\" style=\"padding-bottom: 14px;\">\r\n<h1>VC Message </h1>\r\n<div class=\"pull-left\">\r\n<img class=\"img-thumbnail img-responsive\" src=\"\" width=\"180px\" height=\"199px\" alt=\"\" style=\"margin-right:15px;\">\r\n</div>\r\n\r\n<div class=\"h10 \"></div>\r\n<p class=\"justify\">It is my pleasure to welcome you to A.P.S. University Website.  The word &lsquo;university&rsquo;, as we all know, is derived from the word &lsquo;universe&rsquo;. It clearly denotes a culture, and a mind set that is holistic and universal in nature. Anything that is narrow, limited, selfish and short term cannot belong to a university. The biggest challenge before Indian universities and their academics in particular is to rise above the personal, the local, and the biased. In Context to its vastness, it is a tough job to represent it only in some pages.</p>\r\n<a href=\"about-us\" class=\"pull-right\" style=\"color:#bd3a01;text-decoration:none;\">Read More...\r\n</a>\r\n</p>\r\n\r\n    </div>\r\n    </div>\r\n</div>\r\n</div>\r\n<!--about clg write up -->', 'english', 'no', '2017-06-13 11:16:13', '2017-06-13 12:09:09'),
(10, 'Registration', 'Paramedical Registration', '{fuel_block(\'right_panel/_registration\')}', 'english', 'yes', '2017-02-19 08:04:20', '2018-06-30 05:32:27'),
(12, 'results', 'Lasted event & news of University', '{fuel_block(\'right_panel/_results\')}', 'english', 'no', '2017-02-19 08:04:20', '2018-07-03 06:40:19'),
(13, 'act-n-regulation', 'act-n-regulation', '{fuel_block(\'act-n-regulation/act-n-regulation\')}', 'english', 'yes', '2017-02-19 08:04:20', '2018-06-26 11:02:50'),
(14, 'Enrollment-n-Examination', 'Paramedical Enrollment and Examination', '{fuel_block(\'right_panel/_enrollment-n-examination\')}', 'english', 'yes', '2017-02-19 08:04:20', '2018-06-30 05:31:52'),
(15, 'counter_Base_application', 'Paramedical Counter Base application', '{fuel_block(\'right_panel/_counterBase_application\')}', 'english', 'yes', '2017-02-19 08:04:20', '2018-06-30 05:28:25'),
(16, 'IMP-LINKS', 'This-is-an-important-links-block-for-home-page', '{fuel_block(\'imp_link\')}', 'english', 'yes', '2024-10-03 15:10:40', '2024-10-03 09:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_categories`
--

DROP TABLE IF EXISTS `fuel_categories`;
CREATE TABLE IF NOT EXISTS `fuel_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `context` varchar(100) NOT NULL DEFAULT '',
  `language` varchar(30) NOT NULL DEFAULT 'english',
  `precedence` int NOT NULL,
  `parent_id` int NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_logs`
--

DROP TABLE IF EXISTS `fuel_logs`;
CREATE TABLE IF NOT EXISTS `fuel_logs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `entry_date` datetime NOT NULL,
  `user_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_logs`
--

INSERT INTO `fuel_logs` (`id`, `entry_date`, `user_id`, `message`, `type`) VALUES
(1, '2024-09-25 18:24:04', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(2, '2024-09-27 15:03:02', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(3, '2024-09-30 15:44:00', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(4, '2024-09-30 15:45:17', 1, '1 item for <em>navigation</em> deleted', 'info'),
(5, '2024-09-30 15:45:38', 1, '1 item for <em>navigation</em> deleted', 'info'),
(6, '2024-09-30 15:45:52', 1, 'Navigation item <em>About Us</em> edited', 'info'),
(7, '2024-09-30 15:46:34', 1, 'Navigation item <em>Administration</em> edited', 'info'),
(8, '2024-09-30 15:47:08', 1, 'Navigation item <em>Programmes</em> edited', 'info'),
(9, '2024-09-30 15:47:41', 1, 'Navigation item <em>Departments</em> edited', 'info'),
(10, '2024-09-30 15:48:20', 1, 'Navigation item <em>Admission</em> edited', 'info'),
(11, '2024-09-30 15:48:47', 1, 'Navigation item <em>Facilities</em> edited', 'info'),
(12, '2024-09-30 15:49:22', 1, 'Navigation item <em>Online Services</em> edited', 'info'),
(13, '2024-09-30 15:49:40', 1, 'Navigation item <em>Online Services</em> edited', 'info'),
(14, '2024-09-30 15:51:27', 1, 'Navigation item <em>Mission and vision</em> edited', 'info'),
(15, '2024-09-30 15:53:14', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(16, '2024-09-30 15:53:44', 1, 'Navigation item <em>VC Message</em> edited', 'info'),
(17, '2024-09-30 15:54:37', 1, 'Navigation item <em>VC Message</em> edited', 'info'),
(18, '2024-09-30 15:55:25', 1, 'Navigation item <em>Photo Gallery</em> edited', 'info'),
(19, '2024-09-30 15:56:16', 1, 'Navigation item <em>About the University</em> edited', 'info'),
(20, '2024-09-30 15:57:13', 1, 'Navigation item <em>VC Message</em> edited', 'info'),
(21, '2024-09-30 16:03:01', 1, '1 item for <em>navigation</em> deleted', 'info'),
(22, '2024-09-30 16:05:01', 1, 'Multiple <em>navigation</em> deleted', 'info'),
(23, '2024-09-30 16:05:51', 1, 'Multiple <em>navigation</em> deleted', 'info'),
(24, '2024-09-30 16:06:22', 1, '1 item for <em>navigation</em> deleted', 'info'),
(25, '2024-09-30 17:56:58', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(26, '2024-09-30 17:57:58', 1, 'Departments item <em>Rani-Avanti-Bai-Lodhi-University</em> edited', 'info'),
(27, '2024-10-01 14:56:07', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(28, '2024-10-01 18:29:20', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(29, '2024-10-03 12:16:06', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(30, '2024-10-03 12:17:40', 1, 'Pages item <em>About-Us/About-University</em> edited', 'info'),
(31, '2024-10-03 12:18:23', 1, 'Pages item <em>About-Us/Mission-vision</em> edited', 'info'),
(32, '2024-10-03 12:19:13', 1, 'Pages item <em>About-Us/Photo-Gallery</em> edited', 'info'),
(33, '2024-10-03 12:19:57', 1, 'Pages item <em>About-Us/vc-message</em> edited', 'info'),
(34, '2024-10-03 12:20:16', 1, 'Pages item <em>About-Us/vc-message</em> edited', 'info'),
(35, '2024-10-03 12:21:33', 1, 'Pages item <em>Administration</em> edited', 'info'),
(36, '2024-10-03 12:22:19', 1, 'Pages item <em>admission</em> edited', 'info'),
(37, '2024-10-03 12:22:26', 1, 'Pages item <em>admission</em> edited', 'info'),
(38, '2024-10-03 12:33:44', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(39, '2024-10-03 12:34:03', 1, '1 item for <em>pages</em> deleted', 'info'),
(40, '2024-10-03 12:34:30', 1, '1 item for <em>pages</em> deleted', 'info'),
(41, '2024-10-03 12:34:36', 1, '1 item for <em>pages</em> deleted', 'info'),
(42, '2024-10-03 12:34:40', 1, '1 item for <em>pages</em> deleted', 'info'),
(43, '2024-10-03 12:34:45', 1, '1 item for <em>pages</em> deleted', 'info'),
(44, '2024-10-03 12:34:49', 1, '1 item for <em>pages</em> deleted', 'info'),
(45, '2024-10-03 12:34:57', 1, '1 item for <em>pages</em> deleted', 'info'),
(46, '2024-10-03 12:36:07', 1, 'Pages item <em>contact-us</em> edited', 'info'),
(47, '2024-10-03 12:37:14', 1, 'Pages item <em>Programmes</em> edited', 'info'),
(48, '2024-10-03 12:38:00', 1, '1 item for <em>pages</em> deleted', 'info'),
(49, '2024-10-03 14:28:37', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(50, '2024-10-03 14:55:34', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(51, '2024-10-03 15:07:20', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(52, '2024-10-03 15:10:40', 1, 'Blocks item <em>IMPLINKS</em> edited', 'info'),
(53, '2024-10-03 15:12:33', 1, 'Blocks item <em>IMP-LINKS</em> edited', 'info'),
(54, '2024-10-03 15:12:56', 1, 'Blocks item <em>IMP-LINKS</em> edited', 'info'),
(55, '2024-10-03 15:13:52', 1, 'Pages item <em>admission</em> edited', 'info'),
(56, '2024-10-04 11:56:32', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(57, '2024-10-04 13:01:59', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(58, '2024-10-04 13:16:03', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(59, '2024-10-04 15:58:29', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(60, '2024-10-14 17:45:44', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(61, '2024-10-14 17:54:03', 1, 'Slider item <em>Welcome to rani Avantibai Lodhi</em> edited', 'info'),
(62, '2024-10-14 17:54:31', 1, 'Slider item <em>rani Avantibai Lodhi</em> edited', 'info'),
(63, '2024-10-14 17:55:10', 1, 'Slider item <em>Welcome to rani Avantibai Lodhi</em> edited', 'info'),
(64, '2024-10-15 10:36:39', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(65, '2024-10-15 10:38:10', 1, 'Pages item <em>About-Us/Mission-vision</em> edited', 'info'),
(66, '2024-10-15 10:40:50', 1, 'Navigation item <em>Rani Avanti Bai Lodhi Jeevani</em> edited', 'info'),
(67, '2024-10-15 10:43:02', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(68, '2024-10-15 10:43:14', 1, 'Navigation item <em>Rani Avanti Bai Lodhi Jeevani</em> edited', 'info'),
(69, '2024-10-15 10:43:38', 1, 'Navigation item <em>Rani Avanti Bai Lodhi Jeevani</em> edited', 'info'),
(70, '2024-10-15 10:43:58', 1, 'Navigation item <em>Rani Avanti Bai Lodhi Jeevani</em> edited', 'info'),
(71, '2024-10-15 10:44:32', 1, 'Navigation item <em>Rani Avanti Bai Lodhi Jeevani</em> edited', 'info'),
(72, '2024-10-15 12:31:09', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(73, '2024-10-15 15:41:53', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(74, '2024-10-15 15:48:14', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(75, '2024-10-15 15:50:56', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(76, '2024-10-16 11:08:25', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(77, '2024-10-16 11:20:11', 1, 'imp_links item <em>Newsletters</em> edited', 'info'),
(78, '2024-10-16 11:30:44', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(79, '2024-10-16 11:57:43', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(80, '2024-10-16 12:10:46', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(81, '2024-10-16 12:13:36', 1, 'Navigation item <em>Rani Avanti Bai Lodhi Jeevani</em> edited', 'info'),
(82, '2024-10-16 12:21:50', 1, 'Pages item <em>FileView</em> created', 'info'),
(83, '2024-10-16 12:30:33', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(84, '2024-10-16 12:31:04', 1, 'Pages item <em>FileView</em> edited', 'info'),
(85, '2024-10-16 12:31:53', 1, 'Pages item <em>FileView</em> edited', 'info'),
(86, '2024-10-16 12:32:45', 1, 'Pages item <em>FileView</em> edited', 'info'),
(87, '2024-10-16 12:33:09', 1, 'Pages item <em>FileView</em> edited', 'info'),
(88, '2024-10-16 12:35:32', 1, 'Pages item <em>FileView</em> edited', 'info'),
(89, '2024-10-16 12:39:29', 1, 'Pages item <em>FileView</em> edited', 'info'),
(90, '2024-10-16 12:43:01', 1, 'Pages item <em>FileView</em> edited', 'info'),
(91, '2024-10-16 12:45:12', 1, 'Pages item <em>FileView</em> edited', 'info'),
(92, '2024-10-16 12:46:45', 1, 'Pages item <em>FileView</em> edited', 'info'),
(93, '2024-10-16 12:47:27', 1, 'Pages item <em>FileView</em> edited', 'info'),
(94, '2024-10-16 12:47:42', 1, 'Pages item <em>FileView</em> edited', 'info'),
(95, '2024-10-16 14:27:17', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(96, '2024-10-16 14:31:21', 1, 'Navigation item <em>Affiliated Colleges and Courses</em> edited', 'info'),
(97, '2024-10-16 14:31:26', 1, 'Navigation item <em>Affiliated Colleges and Courses</em> edited', 'info'),
(98, '2024-10-16 14:31:34', 1, 'Navigation item <em>Affiliated Colleges and Courses</em> edited', 'info'),
(99, '2024-11-14 12:16:10', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(100, '2024-11-14 12:24:55', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(101, '2024-11-14 12:25:40', 1, 'Navigation item <em>School of Art</em> edited', 'info'),
(102, '2024-11-14 12:26:18', 1, 'Navigation item <em>School of Commerce</em> edited', 'info'),
(103, '2024-11-14 12:27:00', 1, 'Navigation item <em>Department Faculty of Arts</em> edited', 'info'),
(104, '2024-11-14 12:27:44', 1, 'Navigation item <em>Faculty of Agriculture</em> edited', 'info'),
(105, '2024-11-14 12:28:03', 1, 'Navigation item <em>Faculty of Agriculture</em> edited', 'info'),
(106, '2024-11-14 12:28:30', 1, 'Navigation item <em>School of Commerce</em> edited', 'info'),
(107, '2024-11-14 12:28:42', 1, 'Navigation item <em>Department Faculty of Arts</em> edited', 'info'),
(108, '2024-11-14 12:54:09', 1, 'Successful login by \'mpo303\' from ::1', 'debug'),
(109, '2024-11-14 12:54:53', 1, 'Navigation item <em>UG Programme</em> edited', 'info'),
(110, '2024-11-14 12:55:17', 1, 'Navigation item <em>PG Programme</em> edited', 'info'),
(111, '2024-11-14 12:56:03', 1, 'Navigation item <em>Diploma Courses</em> edited', 'info'),
(112, '2024-11-14 12:56:17', 1, 'Navigation item <em>PG Programme</em> edited', 'info'),
(113, '2024-11-14 12:56:30', 1, 'Navigation item <em>UG Programme</em> edited', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation`
--

DROP TABLE IF EXISTS `fuel_navigation`;
CREATE TABLE IF NOT EXISTS `fuel_navigation` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'The part of the path after the domain name that you want the link to go to (e.g. comany/about_us)',
  `group_id` int UNSIGNED NOT NULL DEFAULT '1',
  `nav_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'The nav key is a friendly ID that you can use for setting the selected state. If left blank, a default value will be set for you.',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'The name you want to appear in the menu',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Used for creating menu hierarchies. No value means it is a root level menu item',
  `precedence` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The higher the number, the greater the precedence and farther up the list the navigational element will appear',
  `attributes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Extra attributes that can be used for navigation implementation',
  `selected` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'The pattern to match for the active state. Most likely you leave this field blank',
  `hidden` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A hidden value can be used in rendering the menu. In some areas, the menu item may not want to be displayed',
  `language` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Determines whether the item is displayed or not',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_nav_key_language` (`group_id`,`nav_key`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_navigation`
--

INSERT INTO `fuel_navigation` (`id`, `location`, `group_id`, `nav_key`, `label`, `parent_id`, `precedence`, `attributes`, `selected`, `hidden`, `language`, `published`) VALUES
(2, 'About-Us', 1, 'About Us', 'About Us', 0, 1, '', '', 'no', 'english', 'yes'),
(10, 'Administration', 1, 'Administration', 'Administration', 0, 2, '', '', 'no', 'english', 'yes'),
(11, '/', 1, '/', 'Home', 0, 0, '', '', 'no', 'english', 'yes'),
(12, 'departments', 1, 'departments', 'Departments', 0, 4, '', '', 'no', 'english', 'yes'),
(13, 'admission', 1, 'admission', 'Admission', 0, 5, '', '', 'no', 'english', 'yes'),
(14, 'Programmes', 1, 'Programmes', 'Programmes', 0, 3, '', '', 'no', 'english', 'yes'),
(31, 'About-Us/vc-message', 1, 'About-Us/vc-message', 'VC Message', 2, 1, '', '', 'no', 'english', 'yes'),
(32, 'departments/arts_faculty', 1, 'departments/arts_faculty', 'Department Faculty of Arts', 12, 2, '', '', 'no', 'english', 'yes'),
(34, 'important-link', 4, 'important-link', 'Important Link', 0, 5, '', '', 'yes', 'english', 'yes'),
(35, 'downloads', 4, 'downloads', 'Downloads', 0, 6, '', '', 'no', 'english', 'yes'),
(36, 'notification/category/tenders', 4, 'notification/category/tenders', 'Tenters', 0, 4, '', '', 'no', 'english', 'yes'),
(37, 'notification', 4, 'notification', 'All Notifications', 0, 2, '', '', 'no', 'english', 'yes'),
(38, 'student-support', 4, 'student-support', 'Student Support', 0, 7, '', '', 'no', 'english', 'yes'),
(39, 'seminar-and-conference', 4, 'seminar-and-conference', 'Seminar And Conference', 0, 8, '', '', 'no', 'english', 'yes'),
(40, 'examination', 4, 'examination', 'Examination', 0, 9, '', '', 'no', 'english', 'yes'),
(41, 'notification/category/online-results', 4, 'notification/category/online-results', 'Results', 0, 3, '', '', 'no', 'english', 'yes'),
(43, 'alumni', 4, 'alumni', 'Alumni', 0, 11, '', '', 'no', 'english', 'yes'),
(44, 'recruitment', 4, 'recruitment', 'Requirement', 0, 12, '', '', 'yes', 'english', 'yes'),
(45, 'telephone-directory', 4, 'telephone-directory', 'Telephone Directory', 0, 13, '<span class=\"glyphicon glyphicon-earphone\"></span>', '', 'no', 'english', 'yes'),
(46, 'naac-iqac', 2, 'naac-iqac', 'NAAC IQAC', 0, 0, '', '', 'no', 'english', 'no'),
(47, 'assets/pdf/exam-time-table/UID-Rate-list-as-01-aug-17.pdf', 2, 'assets/pdf/exam-time-table/UID-Rate-list-as-01-aug-17.pdf', 'test', 0, 0, '', '', 'no', 'english', 'no'),
(48, 'academic-calendar', 2, '#academic-calendar', 'Academic Calendar', 0, 1, '', '', 'no', 'english', 'yes'),
(49, 'awards-and-scholarships', 2, 'awards-and-scholarships', 'Awards & Scholarships', 0, 0, '', '', 'no', 'english', 'no'),
(50, 'Photo-Gallery', 2, 'Photo-Gallery', 'Photo Gallery', 0, 0, '', '', 'no', 'english', 'no'),
(51, 'notification', 2, 'notification', 'All Notification', 0, 0, '', '', 'no', 'english', 'yes'),
(52, 'lecture-series', 2, 'lecture-series', 'Lecture Series', 0, 0, '', '', 'no', 'english', 'no'),
(53, 'home', 2, 'home', 'Telephone Directory', 0, 0, '', '', 'no', 'english', 'no'),
(54, '#results', 2, '#results', 'Results', 0, 3, '', '', 'no', 'english', 'yes'),
(55, '#', 2, 'Seminar-Conferences', 'Seminar & Conferences', 0, 0, '', '', 'no', 'english', 'no'),
(57, 'disclaimer', 2, 'disclaimer', 'Disclaimer', 0, 0, '', '', 'no', 'english', 'no'),
(61, 'vc-message', 4, 'vc-message', 'VC Message', 0, 1, '', '', 'no', 'english', 'yes'),
(63, 'departments/school_of_art', 1, 'departments/school_of_art', 'School of Art', 12, 0, '', '', 'no', 'english', 'yes'),
(65, 'contact-us', 1, 'contact-us', 'Contact Us', 0, 18, '', '', 'no', 'english', 'yes'),
(70, 'departments/physics', 1, 'departments/physics', 'Physics', 12, 0, '', '', 'no', 'english', 'no'),
(71, 'departments/school_of_commerce', 1, 'departments/school_of_commerce', 'School of Commerce', 12, 1, '', '', 'yes', 'english', 'yes'),
(85, 'About-Us/Mission-vision', 1, 'About-Us/Mission-vision', 'Mission & Vision', 2, 0, '', '', 'no', 'english', 'yes'),
(89, 'About-Us/Photo-Gallery', 1, 'About-Us/Photo-Gallery', 'Photo Gallery', 2, 2, '', '', 'no', 'english', 'yes'),
(92, 'act-n-regulation/Chapter-1', 5, 'act-n-regulation/Chapter-1', 'Chapter-1', 0, 1, '', '', 'no', 'english', 'yes'),
(94, 'act-n-regulation/Chapter-2', 5, 'act-n-regulation/Chapter-2', 'Chapter-2', 0, 2, '', '', 'no', 'english', 'yes'),
(95, 'act-n-regulation/Chapter-3', 5, 'act-n-regulation/Chapter-3', 'Chapter-3', 0, 3, '', '', 'no', 'english', 'yes'),
(96, 'act-n-regulation/Chapter-4', 5, 'act-n-regulation/Chapter-4', 'Chapter-4', 0, 4, '', '', 'no', 'english', 'yes'),
(97, 'act-n-regulation/Chapter-5', 5, 'act-n-regulation/Chapter-5', 'Chapter-5', 0, 5, '', '', 'no', 'english', 'yes'),
(99, 'act-n-regulation/Chapter-6', 5, 'act-n-regulation/Chapter-6', 'Chapter-6', 0, 6, '', '', 'no', 'english', 'yes'),
(100, 'act-n-regulation/Chapter-7', 5, 'act-n-regulation/Chapter-7', 'Chapter-7', 0, 7, '', '', 'no', 'english', 'yes'),
(101, 'act-n-regulation/Chapter-8', 5, 'act-n-regulation/Chapter-8', 'Chapter-8', 0, 8, '', '', 'no', 'english', 'yes'),
(102, 'act-n-regulation/Chapter-9', 5, 'act-n-regulation/Chapter-9', 'Chapter-9', 0, 9, '', '', 'no', 'english', 'yes'),
(103, 'act-n-regulation/Chapter-10', 5, 'act-n-regulation/Chapter-10', 'Chapter-10', 0, 10, '', '', 'no', 'english', 'yes'),
(104, 'act-n-regulation/Schedule', 5, 'act-n-regulation/Schedule', 'Schedule', 0, 11, '', '', 'no', 'english', 'yes'),
(107, 'paramedical.mponline.gov.in/Portal/Services/Paramedical/RuleBook/OrderRuleBook.aspx', 4, 'paramedical.mponline.gov.in/Portal/Services/Paramedical/RuleBook/OrderRuleBook.aspx', 'Rule Book', 34, 0, '', '', 'yes', 'english', 'no'),
(108, 'About-Us/About-University', 1, 'About-Us/About-University', 'About the University', 2, 3, '', '', 'no', 'english', 'yes'),
(109, 'FileView', 1, 'FileView', 'Rani Avanti Bai Lodhi Jeevani', 2, 4, 'target=\'_blank\'', '', 'no', 'english', 'yes'),
(110, 'rablu_courses', 1, 'rablu_courses', 'Affiliated Colleges and Courses', 0, 4, '', '', 'no', 'english', 'yes'),
(111, 'departments/agriculture_faculty', 1, 'departments/agriculture_faculty', 'Faculty of Agriculture', 12, 3, '', '', 'no', 'english', 'yes'),
(112, 'Programmes/UG', 1, 'Programmes/UG', 'UG Programme', 14, 0, '', '', 'yes', 'english', 'yes'),
(113, 'Programmes/PG', 1, 'Programmes/PG', 'PG Programme', 14, 1, '', '', 'yes', 'english', 'yes'),
(114, 'Programmes/Diploma', 1, 'Programmes/Diploma', 'Diploma Courses', 14, 2, '', '', 'yes', 'english', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation_groups`
--

DROP TABLE IF EXISTS `fuel_navigation_groups`;
CREATE TABLE IF NOT EXISTS `fuel_navigation_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_navigation_groups`
--

INSERT INTO `fuel_navigation_groups` (`id`, `name`, `published`) VALUES
(1, 'main', 'yes'),
(2, 'quick-link', 'yes'),
(3, 'Announcement', 'yes'),
(4, 'Important-Links', 'yes'),
(5, 'act-n-regulation', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_notification_groups`
--

DROP TABLE IF EXISTS `fuel_notification_groups`;
CREATE TABLE IF NOT EXISTS `fuel_notification_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_notification_groups`
--

INSERT INTO `fuel_notification_groups` (`id`, `name`, `published`) VALUES
(1, 'Events-at-University', 'yes'),
(3, 'News-and-Notifications', 'yes'),
(4, 'Online-Results', 'yes'),
(5, 'Tenders', 'yes'),
(6, 'Downloads', 'yes'),
(7, 'Counter-Base-Application', 'yes'),
(8, 'Enrollment-n-Examination', 'yes'),
(9, 'Registration', 'yes'),
(10, 'Rule Book', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_pages`
--

DROP TABLE IF EXISTS `fuel_pages`;
CREATE TABLE IF NOT EXISTS `fuel_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Add the part of the url after the root of your site (usually after the domain name). For the homepage, just put the word ''home''',
  `layout` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'The name of the template to associate with this page',
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A ''yes'' value will display the page and an ''no'' value will give a 404 error message',
  `cache` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Cache controls whether the page will pull from the database or from a saved file which is more effeicent. If a page has content that is dynamic, it''s best to set cache to ''no''',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` int UNSIGNED NOT NULL,
  `assign_role` int UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`),
  KEY `layout` (`layout`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_pages`
--

INSERT INTO `fuel_pages` (`id`, `location`, `layout`, `published`, `cache`, `date_added`, `last_modified`, `last_modified_by`, `assign_role`) VALUES
(1, 'home', 'main', 'yes', 'no', '0000-00-00 00:00:00', '2018-07-02 14:40:43', 1, 1),
(12, 'Programmes', 'main', 'yes', 'no', '2017-06-08 17:41:19', '2024-10-03 07:07:14', 1, 1),
(16, 'contact-us', 'main', 'yes', 'no', '2018-06-30 16:02:27', '2024-10-03 07:06:07', 1, 1),
(25, 'About-Us/Mission-vision', 'main', 'yes', 'no', '2017-06-03 15:13:51', '2024-10-15 05:08:10', 1, 1),
(34, 'About-Us', 'main', 'yes', 'no', '2017-06-03 15:13:51', '2018-12-26 10:29:35', 1, 1),
(35, 'About-Us/Photo-Gallery', 'main', 'yes', 'no', '2017-06-03 15:13:51', '2024-10-03 06:49:13', 1, 1),
(36, 'About-Us/About-University', 'main', 'yes', 'no', '2017-06-03 15:13:51', '2024-10-03 06:47:40', 1, 1),
(38, 'About-Us/vc-message', 'main', 'yes', 'yes', '2018-06-26 17:09:20', '2024-10-03 06:50:16', 1, 1),
(39, 'act-n-regulation/Schedule', 'main', 'yes', 'yes', '2018-06-26 17:09:20', '2018-07-03 06:00:56', 1, 1),
(40, 'admission', 'main', 'yes', 'yes', '2018-06-26 17:09:20', '2024-10-03 09:43:52', 1, 1),
(48, 'Administration', 'main', 'yes', 'yes', '2018-06-26 17:09:20', '2024-10-03 06:51:33', 1, 1),
(49, 'state-minister-message', 'main', 'yes', 'no', '2017-05-31 16:05:22', '2018-06-30 09:43:20', 1, 1),
(50, 'FileView', 'none', 'yes', 'yes', '2024-10-16 12:21:50', '2024-10-16 07:17:42', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_page_variables`
--

DROP TABLE IF EXISTS `fuel_page_variables`;
CREATE TABLE IF NOT EXISTS `fuel_page_variables` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `scope` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` enum('string','int','boolean','array') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'string',
  `language` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'english',
  `active` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`name`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2030 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(1691, 49, 'page_title', '', 'संदेश - राज्य मंत्री', 'string', 'english', 'yes'),
(1692, 49, 'meta_description', '', '', 'string', 'english', 'yes'),
(1693, 49, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1694, 49, 'heading', '', 'संदेश - राज्य मंत्री', 'string', 'english', 'yes'),
(1695, 49, 'body', '', '<p align=\"center\" style=\"font-size:18px;\"><img alt=\"\" src=\"{img_path(\'testimonial/sard_jain_ji.jpg\')}\" style=\"width:150px;\" /></p>\r\n\r\n<p align=\"justify\" style=\"font-size:16px;\">अत्&zwj;यन्&zwj;त प्रसन्&zwj;नता का विषय है कि मध्&zwj;यप्रदेश सह-चिकित्&zwj;सीय परिषद द्वारा नवीन वेबसाईड का निर्माण किया जा रहा है । मध्&zwj;यप्रदेश सह-चिकित्&zwj;सीय परिषद का प्रदेश ही नहीं अपितु देश के सह-चिकित्&zwj;सा विज्ञान में भी अमूल्&zwj;य योगदान है । सह-चिकित्&zwj;सीय परिषद प्रदेश के सह-चिकित्&zwj;सा विज्ञान के क्रियाकलाप का दूरदर्शिता के प्रमाणीकरण मुख्&zwj;य केन्&zwj;द्र हैं ।जो कि निश्चित तौर पर विभक्&zwj;त रूप से देखा जा सकता है। प्रदेश का युवा वर्ग सह-चिकित्&zwj;सा विज्ञान में आज एक लक्ष्&zwj;य का स्&zwj;तंभ स्&zwj;थापित कर चुका है । सह-चिकित्&zwj;सा विज्ञान नित-नये आयामों को स्&zwj;थापित कर रहा है। जिससे कि प्रदेश की आम जनता को नि:संदेह ही लाभ होगा । संस्&zwj;था की स्&zwj;थापना ने प्रदेश ही नहीं अपितु देश में निश्चित तौर पर एक विशेष कीर्तिमान स्&zwj;थापित किया है। मेरा हमेशा से ही यह प्रयास रहा है कि चिकित्&zwj;सा के क्षेत्र में प्रदेश नित-नये अविष्&zwj;कारों का विस्&zwj;तार हो, जिससे कि प्रदेश की जनता स्&zwj;वास्&zwj;थ्&zwj;य सुविधाओं पर गौरवान्वित महसूस करे । मध्&zwj;यप्रदेश सह-चिकित्&zwj;सीय परिषद की स्&zwj;थापना प्रदेश के युवा वर्ग के लिये सह-चिकित्&zwj;सीय विज्ञान में अध्&zwj;ययन एवं प्रशिक्षण हेतु की गई है जिससे कि प्रदेश में सह-चिकित्&zwj;सा के क्षेत्र में एकरूपता एवं पारदर्शिता स्&zwj;थापित की जा सके ।</p>\r\n\r\n<p align=\"justify\" style=\"font-size:16px;\">यह संकल्&zwj;प के साथ सह-चिकित्&zwj;सीय परिषद ने अपना कार्य प्रारंभ किया था जिसका कार्यक्षेत्र प्रारंभ में केवल प्रदेश ही था, किन्&zwj;तु वर्तमान में परिषद ने इतनी तीव्र गति से प्रभाव छोडा है कि आज देश ही नहीं अपितु विदेशों में भी प्रदेश के निष्&zwj;ठावान सह-कर्मी कुशलतापूर्वक अपना कार्य संपादित कर रहे हैं ।</p>\r\n\r\n<p align=\"justify\" style=\"font-size:16px;\">मध्&zwj;यप्रदेश सह-चिकित्&zwj;सीय परिषद द्वारा प्रदेश की जनता की सुविधा एवं सुलभता हेतु नवीन वेबसाईड का निर्माण किया जा रहा है । इसके लिए मैं परिषद को शुभकामनाऍ देता हॅू ।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"font-size:16px; text-align:right\"><strong>(शरद जैन)</strong></p>\r\n\r\n<p>&nbsp;</p>', 'string', 'english', 'yes'),
(1696, 49, 'body_class', '', '', 'string', 'english', 'yes'),
(1763, 1, 'page_title', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1764, 1, 'meta_description', '', 'Rani Avanti Bai Lodhi University, Sagar, M.P.', 'string', 'english', 'yes'),
(1765, 1, 'meta_keywords', '', 'Rani Avanti Bai Lodhi University,  RABLU', 'string', 'english', 'yes'),
(1766, 1, 'heading', '', '', 'string', 'english', 'yes'),
(1767, 1, 'body', '', '{fuel_block(\'home_page\')}', 'string', 'english', 'yes'),
(1768, 1, 'body_class', '', '', 'string', 'english', 'yes'),
(1853, 39, 'page_title', '', 'Schedule', 'string', 'english', 'yes'),
(1854, 39, 'meta_description', '', '', 'string', 'english', 'yes'),
(1855, 39, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1856, 39, 'heading', '', '', 'string', 'english', 'yes'),
(1857, 39, 'body', '', '<table cellspacing=\"0\" class=\"chaptercontents\" style=\"width: 483px;\">\r\n    <tbody>\r\n        <tr>\r\n            <td align=\"center\" class=\"chaptername\" colspan=\"3\" style=\"width: 369px;\"><strong>SCHEDULE</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" class=\"chaptersubtitle\" colspan=\"2\" style=\"width: 20px;\"><strong>[ See Section 2(c) ]</strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n<table class=\"chaptercontents\" style=\"width: 483px;\">\r\n    <tbody>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(1)</td>\r\n            <td style=\"width: 415px;\">Physiotherapy/Occupational therapy Course.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(2)</td>\r\n            <td style=\"width: 415px;\">Speech therapy Course.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(3)</td>\r\n            <td style=\"width: 415px;\">Audiologist.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(4)</td>\r\n            <td style=\"width: 415px;\">Laboratory Technician (Various types)</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(5)</td>\r\n            <td style=\"width: 415px;\">X-ray Technician/Radiographer.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(6)</td>\r\n            <td style=\"width: 415px;\">B.C.G. Technicians</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(7)</td>\r\n            <td style=\"width: 415px;\">Cyto Technicians.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(8)</td>\r\n            <td style=\"width: 415px;\">Ortho Technicians.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(9)</td>\r\n            <td style=\"width: 415px;\">Mould room Technicians.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(10)</td>\r\n            <td style=\"width: 415px;\">Gamma Camera Technician.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(11)</td>\r\n            <td style=\"width: 415px;\">Orffiotic Technician.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(12)</td>\r\n            <td style=\"width: 415px;\">Optonictrist.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(13)</td>\r\n            <td style=\"width: 415px;\">Orthotic and contact lens.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(14)</td>\r\n            <td style=\"width: 415px;\">E.C.G. Technicians.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(15)</td>\r\n            <td style=\"width: 415px;\">Ultra Sound.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(16)</td>\r\n            <td style=\"width: 415px;\">Angiography.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(17)</td>\r\n            <td style=\"width: 415px;\">Operation \'Meatre Technician.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(18)</td>\r\n            <td style=\"width: 415px;\">Degree, Diploma and Certificate in Human Nutrition.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(19)</td>\r\n            <td style=\"width: 415px;\">Dialysis Technician.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(20)</td>\r\n            <td style=\"width: 415px;\">Insulation Iterapy Technician.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(21)</td>\r\n            <td style=\"width: 415px;\">Health Inspector Course.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(22)</td>\r\n            <td style=\"width: 415px;\">Hospital Medical record Science.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(23)</td>\r\n            <td style=\"width: 415px;\">Compounder (Allopathy, Ayurvedic, Unani And Homoeopathy)</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(24)</td>\r\n            <td style=\"width: 415px;\">Compounder in Biocheniic System of Medicine.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(25)</td>\r\n            <td style=\"width: 415px;\">Diploma in Clinical Biochemisuy.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(26)</td>\r\n            <td style=\"width: 415px;\">Microbiology.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(27)</td>\r\n            <td style=\"width: 415px;\">Pathology.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(28)</td>\r\n            <td style=\"width: 415px;\">Optonicui refraction.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(29)</td>\r\n            <td style=\"width: 415px;\">Paramedical Ophthalmic Assistant.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(30)</td>\r\n            <td style=\"width: 415px;\">Perfusionist/Cardiae Surgery Technician.</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" style=\"width: 56px;\" valign=\"top\">(31)</td>\r\n            <td style=\"width: 415px;\">Cath. Lab. Technician.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n{fuel_block(\'act-n-regulation/act-n-regulation\')}', 'string', 'english', 'yes'),
(1858, 39, 'body_class', '', '', 'string', 'english', 'yes'),
(1895, 34, 'page_title', '', 'About-Us', 'string', 'english', 'yes'),
(1896, 34, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1897, 34, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1898, 34, 'heading', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1899, 34, 'body', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1900, 34, 'body_class', '', '', 'string', 'english', 'yes'),
(1901, 36, 'page_title', '', 'About University', 'string', 'english', 'yes'),
(1902, 36, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1903, 36, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1904, 36, 'heading', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1905, 36, 'body', '', '', 'string', 'english', 'yes'),
(1906, 36, 'body_class', '', '', 'string', 'english', 'yes'),
(1913, 35, 'page_title', '', 'Photo Gallery', 'string', 'english', 'yes'),
(1914, 35, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1915, 35, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1916, 35, 'heading', '', 'Photo Gallery', 'string', 'english', 'yes'),
(1917, 35, 'body', '', '<p>{fuel_block(\'act-n-regulation/act-n-regulation\')}</p>', 'string', 'english', 'yes'),
(1918, 35, 'body_class', '', '', 'string', 'english', 'yes'),
(1925, 38, 'page_title', '', 'VC Message', 'string', 'english', 'yes'),
(1926, 38, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1927, 38, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1928, 38, 'heading', '', 'VC Message', 'string', 'english', 'yes'),
(1929, 38, 'body', '', '<p><br>\r\n{fuel_block(\'act-n-regulation/act-n-regulation\')}</p>', 'string', 'english', 'yes'),
(1930, 38, 'body_class', '', '', 'string', 'english', 'yes'),
(1931, 48, 'page_title', '', 'Administration', 'string', 'english', 'yes'),
(1932, 48, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1933, 48, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1934, 48, 'heading', '', '', 'string', 'english', 'yes'),
(1935, 48, 'body', '', '<table cellspacing=\"0\" class=\"chaptercontents\">\r\n    <tbody>\r\n        <tr>\r\n            <td align=\"center\" class=\"chaptertitle\" colspan=\"3\"><strong>CHAPTER-X</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" class=\"chaptername\" colspan=\"3\"><strong>MISCELLANEOUS</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"chaptersubtitle\" valign=\"top\">Penalty for dishonest use of certificate.</td>\r\n            <td valign=\"top\">47.</td>\r\n            <td valign=\"top\">Any person who:-\r\n                <table class=\"chaptercontents\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td valign=\"top\">(a)</td>\r\n                            <td>\r\n                                <p>dishonestly makes use of any certificate of registration granted under this Act; or</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td valign=\"top\">(b)</td>\r\n                            <td>\r\n                                <p>procures or attempts to procure registration under the provisions of this Act by making or producing, or causing to be made or produced any false or fraudulent declaration, certificate or representation whether in writing or otherwise; or</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td valign=\"top\">(c)</td>\r\n                            <td>\r\n                                <p>wilfully makes or causes to be made any false representation in any matter relating to the certificate of registration issued under the provisions of \"s Act;</p>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                shall on conviction, be punishable with imprisonment which may extend to six months or with fine which may extend to twenty thousand rupees or with both.<br>\r\n                 \r\n                <p> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"chaptersubtitle\" valign=\"top\">Information furnished by Council.</td>\r\n            <td valign=\"top\">48.</td>\r\n            <td valign=\"top\">\r\n                <p>The Council shall furnish such reports, copies of its minutes, abstracts of its accounts and other information to the State Government as the State Government may require.<br>\r\n                <br>\r\n                 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"chaptersubtitle\" valign=\"top\">Power to amend schedule.</td>\r\n            <td valign=\"top\">49.</td>\r\n            <td valign=\"top\">\r\n                <p>The State Government may, by notification, amend the Schedule so as to include therein any subject not already specified therein or omit there from any subject or modify the description of any subject.<br>\r\n                 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"chaptersubtitle\" valign=\"top\">Cognisance of offence.</td>\r\n            <td valign=\"top\">50.</td>\r\n            <td valign=\"top\">\r\n                <table class=\"chaptercontents\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td valign=\"top\">(1)</td>\r\n                            <td>\r\n                                <p>No court shall take cognisance of an offence punishable under this Act, except upon complaint in writing made by the Registrar or any other officer authorised by the Council in this behalf by general or special order;</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td valign=\"top\">(2)</td>\r\n                            <td>\r\n                                <p>No court inferior to that of a magistrate of first class shall try any offence punishable under this Act.</p>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"chaptersubtitle\" valign=\"top\">Control by State Government.</td>\r\n            <td valign=\"top\">51.</td>\r\n            <td valign=\"top\">\r\n                <p>If at any time it appears to the State Government that the Council has failed to exercise or has exceeded or abused any of the powers conferred upon it by or under this Act, or has failed to perform any of the duties imposed upon it by or under this Act, the State Government may, if it considers such failure, excess or abuse to be of a serious character, notify the particulars thereof to the Council, requiring it to remedy such failure, excess or abuse within such period as may he specified in the notice and if the Council fails to remedy such failure, excess or abuse within the period specified in the notice, the State Government may dissolve the Council and cause all or any of the powers and the duties of the Council to be exercised and performed by such person and for such period not exceeding two years as it may think fit and shall take steps to bring into existence a new Council.</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n<p><br>\r\n{fuel_block(\'act-n-regulation/act-n-regulation\')}</p>', 'string', 'english', 'yes'),
(1936, 48, 'body_class', '', '', 'string', 'english', 'yes'),
(1949, 16, 'page_title', '', 'Contact Us', 'string', 'english', 'yes'),
(1950, 16, 'meta_description', '', '', 'string', 'english', 'yes'),
(1951, 16, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1952, 16, 'heading', '', 'Contact Us', 'string', 'english', 'yes'),
(1953, 16, 'body', '', '<h4><strong>Rani Avanti Bai Lodhi University</strong></h4>\r\n\r\n<p><strong>Address:  </strong></p>\r\n\r\n<p><strong>Phone:  </strong></p>\r\n\r\n<p><strong>Email :-  </strong></p>\r\n\r\n<p> </p>\r\n\r\n', 'string', 'english', 'yes'),
(1954, 16, 'body_class', '', '', 'string', 'english', 'yes'),
(1955, 12, 'page_title', '', 'Programmes', 'string', 'english', 'yes'),
(1956, 12, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1957, 12, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1958, 12, 'heading', '', 'Programmes', 'string', 'english', 'yes'),
(1959, 12, 'body', '', '', 'string', 'english', 'yes'),
(1960, 12, 'body_class', '', '', 'string', 'english', 'yes'),
(1961, 40, 'page_title', '', 'Admission', 'string', 'english', 'yes'),
(1962, 40, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1963, 40, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1964, 40, 'heading', '', 'Admission', 'string', 'english', 'yes'),
(1965, 40, 'body', '', '{fuel_block(\'imp_link\')}', 'string', 'english', 'yes'),
(1966, 40, 'body_class', '', '', 'string', 'english', 'yes'),
(1967, 25, 'page_title', '', 'Mission & Vision', 'string', 'english', 'yes'),
(1968, 25, 'meta_description', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1969, 25, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(1970, 25, 'heading', '', 'Rani Avanti Bai Lodhi University', 'string', 'english', 'yes'),
(1971, 25, 'body', '', '<h2>Mission</h2>\r\n <p>Providing world class infrastructure, renowned academicians and ideal environment for Research, Innovation, Consultancy and Entrepreneurship relevant to the society. Offering programs & courses in consonance with New Education policies for nation building and meeting global challenges. Ensuring students delight by meeting their aspirations through blended learning, corporate mentoring, professional grooming, flexible curriculum and healthy atmosphere based on co-curricular and extra-curricular activities.</p>\r\n\r\n<h2>Vision</h2>\r\n<p>To develop the University as a Center of Excellence for higher education and research committed towards quality education, skill development, industry integration and holistic eco-system for global competencies among youth and sustainable development of the Nation.Welcoming to serve persons of all racial, ethnic, geographic groups, women and men alike, and is committed to maintain the freedom of inquiry and an intellectual environment nurturing the knowledge, human mind, and spirit.</p>', 'string', 'english', 'yes'),
(1972, 25, 'body_class', '', '', 'string', 'english', 'yes'),
(2029, 50, 'body', '', '', 'string', 'english', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_permissions`
--

DROP TABLE IF EXISTS `fuel_permissions`;
CREATE TABLE IF NOT EXISTS `fuel_permissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_permissions`
--

INSERT INTO `fuel_permissions` (`id`, `description`, `name`, `active`) VALUES
(1, 'Pages', 'pages', 'yes'),
(2, 'Pages: Create', 'pages/create', 'yes'),
(3, 'Pages: Edit', 'pages/edit', 'yes'),
(4, 'Pages: Publish', 'pages/publish', 'yes'),
(5, 'Pages: Delete', 'pages/delete', 'yes'),
(6, 'Blocks', 'blocks', 'yes'),
(7, 'Blocks: Create', 'blocks/create', 'yes'),
(8, 'Blocks: Edit', 'blocks/edit', 'yes'),
(9, 'Blocks: Publish', 'blocks/publish', 'yes'),
(10, 'Blocks: Delete', 'blocks/delete', 'yes'),
(11, 'Navigation', 'navigation', 'yes'),
(12, 'Navigation: Create', 'navigation/create', 'yes'),
(13, 'Navigation: Edit', 'navigation/edit', 'yes'),
(14, 'Navigation: Publish', 'navigation/publish', 'yes'),
(15, 'Navigation: Delete', 'navigation/delete', 'yes'),
(26, 'Site Variables', 'sitevariables', 'yes'),
(27, 'Assets', 'assets', 'yes'),
(29, 'Users', 'users', 'yes'),
(30, 'Permissions', 'permissions', 'yes'),
(31, 'Manage', 'manage', 'yes'),
(32, 'Cache', 'manage/cache', 'yes'),
(33, 'Logs', 'logs', 'yes'),
(34, 'Settings', 'settings', 'yes'),
(41, 'Notification', 'notification', 'yes'),
(42, 'Notification: Create', 'notification/create', 'yes'),
(43, 'Notification: Edit', 'notification/edit', 'yes'),
(44, 'Notification: Publish', 'notification/publish', 'yes'),
(45, 'Notification: Delete', 'notification/delete', 'yes'),
(47, 'Courses', 'courses', 'yes'),
(48, 'Courses: Create', 'courses/create', 'yes'),
(49, 'Courses: Edit', 'courses/edit', 'yes'),
(50, 'Courses: Publish', 'courses/publish', 'yes'),
(51, 'Departmental News: Delete', 'departmental_news/delete', 'yes'),
(55, 'Faculty Members', 'faculties', 'yes'),
(56, 'Faculties: Create', 'faculties/create', 'yes'),
(57, 'Faculties: Edit', 'faculties/edit', 'yes'),
(58, 'Faculties: Publish', 'faculties/publish', 'yes'),
(59, 'Faculties: Delete', 'faculties/delete', 'yes'),
(64, 'Alumni', 'alumni', 'yes'),
(65, 'Alumni: Create', 'alumni/create', 'yes'),
(66, 'Alumni: Edit', 'alumni/edit', 'yes'),
(67, 'Alumni: Publish', 'alumni/publish', 'yes'),
(68, 'Alumni: Delete', 'alumni/delete', 'yes'),
(69, 'Departmental News', 'departmental_news', 'yes'),
(70, 'Departmental News: Create', 'departmental_news/create', 'yes'),
(71, 'Departmental News: Edit', 'departmental_news/edit', 'yes'),
(72, 'Departmental News: Publish', 'departmental_news/publish', 'yes'),
(73, 'Courses: Delete', 'courses/delete', 'yes'),
(78, 'Students Placement', 'placements', 'yes'),
(79, 'Placements: Create', 'placements/create', 'yes'),
(80, 'Placements: Edit', 'placements/edit', 'yes'),
(81, 'Placements: Publish', 'placements/publish', 'yes'),
(82, 'Placements: Delete', 'placements/delete', 'yes'),
(83, 'Public TelePhone Directory', 'telephone_directory', 'yes'),
(84, 'Telephone Directory: Create', 'telephone_directory/create', 'yes'),
(85, 'Telephone Directory: Edit', 'telephone_directory/edit', 'yes'),
(86, 'Telephone Directory: Publish', 'telephone_directory/publish', 'yes'),
(87, 'Telephone Directory: Delete', 'telephone_directory/delete', 'yes'),
(88, 'Departments', 'user_role', 'yes'),
(89, 'User Role: Create', 'user_role/create', 'yes'),
(90, 'User Role: Edit', 'user_role/edit', 'yes'),
(91, 'User Role: Publish', 'user_role/publish', 'yes'),
(92, 'User Role: Delete', 'user_role/delete', 'yes'),
(93, 'Syllabus', 'syllabus', 'yes'),
(94, 'Syllabus: Create', 'syllabus/create', 'yes'),
(95, 'Syllabus: Edit', 'syllabus/edit', 'yes'),
(96, 'Syllabus: Publish', 'syllabus/publish', 'yes'),
(97, 'Syllabus: Delete', 'syllabus/delete', 'yes'),
(102, 'Slider', 'slider', 'yes'),
(103, 'Slider: Create', 'slider/create', 'yes'),
(104, 'Slider: Edit', 'slider/edit', 'yes'),
(105, 'Slider: Publish', 'slider/publish', 'yes'),
(106, 'Slider: Delete', 'slider/delete', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_relationships`
--

DROP TABLE IF EXISTS `fuel_relationships`;
CREATE TABLE IF NOT EXISTS `fuel_relationships` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `candidate_table` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `candidate_key` int NOT NULL,
  `foreign_table` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `foreign_key` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key` (`candidate_table`,`candidate_key`,`foreign_table`,`foreign_key`),
  UNIQUE KEY `candidate_table_2` (`candidate_table`,`candidate_key`,`foreign_table`,`foreign_key`),
  KEY `candidate_table` (`candidate_table`,`candidate_key`),
  KEY `foreign_table` (`foreign_table`,`foreign_key`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_relationships`
--

INSERT INTO `fuel_relationships` (`id`, `candidate_table`, `candidate_key`, `foreign_table`, `foreign_key`) VALUES
(445, 'fuel_users', 3, 'fuel_permissions', 1),
(446, 'fuel_users', 3, 'fuel_permissions', 2),
(447, 'fuel_users', 3, 'fuel_permissions', 3),
(448, 'fuel_users', 3, 'fuel_permissions', 4),
(437, 'fuel_users', 3, 'fuel_permissions', 11),
(438, 'fuel_users', 3, 'fuel_permissions', 12),
(439, 'fuel_users', 3, 'fuel_permissions', 13),
(440, 'fuel_users', 3, 'fuel_permissions', 14),
(433, 'fuel_users', 3, 'fuel_permissions', 27),
(435, 'fuel_users', 3, 'fuel_permissions', 31),
(436, 'fuel_users', 3, 'fuel_permissions', 32),
(434, 'fuel_users', 3, 'fuel_permissions', 33),
(441, 'fuel_users', 3, 'fuel_permissions', 41),
(442, 'fuel_users', 3, 'fuel_permissions', 42),
(443, 'fuel_users', 3, 'fuel_permissions', 43),
(444, 'fuel_users', 3, 'fuel_permissions', 44),
(454, 'fuel_users', 3, 'fuel_permissions', 83),
(455, 'fuel_users', 3, 'fuel_permissions', 84),
(456, 'fuel_users', 3, 'fuel_permissions', 85),
(457, 'fuel_users', 3, 'fuel_permissions', 86),
(458, 'fuel_users', 3, 'fuel_permissions', 88),
(459, 'fuel_users', 3, 'fuel_permissions', 89),
(460, 'fuel_users', 3, 'fuel_permissions', 90),
(461, 'fuel_users', 3, 'fuel_permissions', 91),
(449, 'fuel_users', 3, 'fuel_permissions', 102),
(450, 'fuel_users', 3, 'fuel_permissions', 103),
(452, 'fuel_users', 3, 'fuel_permissions', 104),
(453, 'fuel_users', 3, 'fuel_permissions', 105),
(451, 'fuel_users', 3, 'fuel_permissions', 106);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_settings`
--

DROP TABLE IF EXISTS `fuel_settings`;
CREATE TABLE IF NOT EXISTS `fuel_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `module` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module` (`module`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_settings`
--

INSERT INTO `fuel_settings` (`id`, `module`, `key`, `value`) VALUES
(25, 'fuel', 'site_name', 'MPO-CMS'),
(26, 'fuel', 'modules_allowed', '[\"user_guide\"]');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_site_variables`
--

DROP TABLE IF EXISTS `fuel_site_variables`;
CREATE TABLE IF NOT EXISTS `fuel_site_variables` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `scope` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'leave blank if you want the variable to be available to all pages',
  `active` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_site_variables`
--

INSERT INTO `fuel_site_variables` (`id`, `name`, `value`, `scope`, `active`) VALUES
(2, 'banner_height', '500', 'home', 'yes'),
(3, 'banner_height_m', '600', 'home', 'yes'),
(4, 'webiste_width', '1300', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_tags`
--

DROP TABLE IF EXISTS `fuel_tags`;
CREATE TABLE IF NOT EXISTS `fuel_tags` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `context` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'english',
  `precedence` int NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_users`
--

DROP TABLE IF EXISTS `fuel_users`;
CREATE TABLE IF NOT EXISTS `fuel_users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int UNSIGNED NOT NULL,
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `language` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reset_key` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `salt` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `super_admin` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'no',
  `active` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel_users`
--

INSERT INTO `fuel_users` (`id`, `role_id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `language`, `reset_key`, `salt`, `super_admin`, `active`) VALUES
(1, 1, 'mpo303', 'e3e9eb1c29c15919a72f367329999751ffa743e819013bf559ebc1641ca99e10', 'jyoti.bachhlia@mponline.gov.in', 'MPO', '303', '', '', '4d1be9b5f4a8c0aa2eaf9d51ee63b734', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GalleryName` varchar(256) DEFAULT NULL,
  `GalleryFolder` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_groups`
--

DROP TABLE IF EXISTS `gallery_groups`;
CREATE TABLE IF NOT EXISTS `gallery_groups` (
  `GroupID` int NOT NULL AUTO_INCREMENT,
  `GalleryID` int DEFAULT NULL,
  `GroupTitle` varchar(500) DEFAULT NULL,
  `Folder` varchar(500) DEFAULT NULL,
  `Active` tinyint DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_pics`
--

DROP TABLE IF EXISTS `gallery_pics`;
CREATE TABLE IF NOT EXISTS `gallery_pics` (
  `PictureID` int NOT NULL AUTO_INCREMENT,
  `PictureSRC` varchar(500) DEFAULT NULL,
  `PictureThumb` varchar(500) DEFAULT NULL,
  `PictureTitle` varchar(500) DEFAULT NULL,
  `PictureActive` tinyint(1) DEFAULT NULL,
  `CoverPhoto` tinyint(1) DEFAULT '0',
  `OrderID` int NOT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_pics_bridge_groups`
--

DROP TABLE IF EXISTS `gallery_pics_bridge_groups`;
CREATE TABLE IF NOT EXISTS `gallery_pics_bridge_groups` (
  `BridgeID` int NOT NULL AUTO_INCREMENT,
  `bGroupID` int DEFAULT NULL,
  `bPictureID` int DEFAULT NULL,
  PRIMARY KEY (`BridgeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `imp_links`
--

DROP TABLE IF EXISTS `imp_links`;
CREATE TABLE IF NOT EXISTS `imp_links` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL DEFAULT '1',
  `headline` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `release_date` date NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `isexternal` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink` (`slug`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `imp_links`
--

INSERT INTO `imp_links` (`id`, `group_id`, `headline`, `slug`, `release_date`, `content`, `link`, `isexternal`, `published`) VALUES
(16, 9, 'Newsletters', 'Newsletters', '2024-01-10', '', 'contact-us', 'yes', 'yes'),
(17, 9, 'Journals', 'Journals', '2024-10-01', '', '', 'yes', 'yes'),
(18, 9, 'Pressnote', 'Pressnote', '2024-10-01', '', '', 'yes', 'yes'),
(19, 9, 'Student Help Desk', 'Student Help Desk', '2024-10-01', '', ' ', 'yes', 'yes'),
(30, 1, 'Downloads', 'Downloads', '2024-10-01', '', '', '', 'yes'),
(31, 1, 'Training & Placement Cell', 'Training & Placement Cell', '2024-10-01', '', '', '', 'yes'),
(32, 1, 'Online Portal', 'Online Portal', '2024-10-01', '', '', '', 'yes'),
(33, 1, 'File Tracking System', 'File Tracking System', '2024-10-01', '', '', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL DEFAULT '1',
  `headline` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `release_date` date NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `isexternal` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink` (`slug`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `group_id`, `headline`, `slug`, `release_date`, `content`, `link`, `isexternal`, `published`) VALUES
(16, 9, 'Registration Circular', '(पंजीयन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-1 Registration.pdf', 'yes', 'yes'),
(17, 9, 'Tatkal Registration Circular ', '(तत्काल पंजीयन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-2 Tatkal Registration.pdf', 'yes', 'yes'),
(18, 9, 'Registration Renewal Circular ', '(पंजीयन का नवीनीकरण सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-3 Renewal.pdf', 'yes', 'yes'),
(19, 9, 'Duplicate Registration Circular ', '(डुप्लीकेट पंजीयन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-10 Duplicate Registration.pdf', 'yes', 'yes'),
(14, 8, 'Marksheet Correction Circular ', '(अंकसूची मे त्रुटि सुधार सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-7.pdf', 'yes', 'yes'),
(15, 8, 'Duplicate Marksheet Circular ', '(डुप्लीकेट अंकसूची सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-6 Duplicate Marksheet.pdf', 'yes', 'yes'),
(20, 9, 'Tatkal Registration Renewal Circular ', '(तत्काल पंजीयन नवीनीकरण सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-11 Tatkal Registration Renewal.pdf', 'yes', 'yes'),
(21, 7, 'Migration Circular ', '(माइग्रेशन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-5 Migration.pdf', 'yes', 'yes'),
(22, 7, 'NOC Circular ', '(अनापत्ति प्रमाण पत्र सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-4 NOC.pdf', 'yes', 'yes'),
(23, 3, 'Institute Affiliation Notification', 'Institute Affiliation Notification', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/Downloads/AffiliationNotification.pdf', 'yes', 'yes'),
(24, 7, 'Good Standing Certificate Circular ', '(गुड स्टैंडिंग सर्टिफिकेट सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-9 Good Standing Certificate..pdf', 'yes', 'yes'),
(25, 7, 'Certificate Circular ', '(उपाधि सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-8 Upadhi.pdf', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL DEFAULT '1',
  `headline` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `release_date` date NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `isexternal` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink` (`slug`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `group_id`, `headline`, `slug`, `release_date`, `content`, `link`, `isexternal`, `published`) VALUES
(16, 9, 'Registration Circular', '(पंजीयन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-1 Registration.pdf', 'yes', 'yes'),
(17, 9, 'Tatkal Registration Circular ', '(तत्काल पंजीयन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-2 Tatkal Registration.pdf', 'yes', 'yes'),
(18, 9, 'Registration Renewal Circular ', '(पंजीयन का नवीनीकरण सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-3 Renewal.pdf', 'yes', 'yes'),
(19, 9, 'Duplicate Registration Circular ', '(डुप्लीकेट पंजीयन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-10 Duplicate Registration.pdf', 'yes', 'yes'),
(14, 8, 'Marksheet Correction Circular ', '(अंकसूची मे त्रुटि सुधार सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-7.pdf', 'yes', 'yes'),
(15, 8, 'Duplicate Marksheet Circular ', '(डुप्लीकेट अंकसूची सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-6 Duplicate Marksheet.pdf', 'yes', 'yes'),
(20, 9, 'Tatkal Registration Renewal Circular ', '(तत्काल पंजीयन नवीनीकरण सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-11 Tatkal Registration Renewal.pdf', 'yes', 'yes'),
(21, 7, 'Migration Circular ', '(माइग्रेशन सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-5 Migration.pdf', 'yes', 'yes'),
(22, 7, 'NOC Circular ', '(अनापत्ति प्रमाण पत्र सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-4 NOC.pdf', 'yes', 'yes'),
(23, 3, 'Institute Affiliation Notification', 'Institute Affiliation Notification', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/Downloads/AffiliationNotification.pdf', 'yes', 'yes'),
(24, 7, 'Good Standing Certificate Circular ', '(गुड स्टैंडिंग सर्टिफिकेट सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-9 Good Standing Certificate..pdf', 'yes', 'yes'),
(25, 7, 'Certificate Circular ', '(उपाधि सर्कुलर)', '2018-06-30', '', 'https://paramedical.mponline.gov.in/Quick Links/Paramedical/DOC/27-8 Upadhi.pdf', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `caption_hidden` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT 'Hide caption from slider image',
  `image` varchar(255) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `publish_till` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publish_till` (`publish_till`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `caption`, `caption_hidden`, `image`, `published`, `publish_till`) VALUES
(13, 'rani Avantibai Lodhi', 'yes', 'rablu2.jpg', 'yes', '2029-01-01 00:00:00'),
(14, 'Welcome to rani Avantibai Lodhi', 'yes', 'rablu1.jpg', 'yes', '2025-01-01 05:30:00'),
(15, 'Guru Purnima Utsav Pic', 'yes', 'Guru Purnima Utsav Pic.jpg', 'yes', '2030-11-14 06:48:04'),
(16, 'Guru Purnima Utsav Pic', 'yes', 'Guru Purnima Utsav Pic.jpg', 'yes', '2030-11-14 06:48:04'),
(17, 'Library Day Photo', 'yes', 'Library Day Photo.jpg', 'yes', '2030-11-14 06:48:04'),
(18, 'RABLV PIC 1', 'yes', 'RABLV PIC 1.jpg', 'yes', '2030-11-14 06:48:04'),
(19, 'RABLV Stapna diwas samoroh', 'yes', 'RABLV Stapna diwas samoroh.jpg', 'yes', '2030-11-14 06:48:04'),
(20, 'Tree Plantation Pic', 'yes', 'Tree Plantation Pic.jpg', 'yes', '2030-11-14 06:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL DEFAULT '1',
  `headline` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'yes',
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alumni`
--

DROP TABLE IF EXISTS `tbl_alumni`;
CREATE TABLE IF NOT EXISTS `tbl_alumni` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `passing_year` varchar(255) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

DROP TABLE IF EXISTS `tbl_course`;
CREATE TABLE IF NOT EXISTS `tbl_course` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `mode` enum('Regular Course','Self Supporting Course','Correspondence Course') NOT NULL,
  `duration` enum('1 Year','1 Year (2 Semester)','2 Year','2 Year (4 Semester)','3 Year','3 Year (6 Semester)','4 Year','4 Year (8 Semester)') NOT NULL,
  `eligibility` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sem_annual_syatem` enum('Semester','Annual') NOT NULL,
  `admission_mode` enum('Merit','Entrance') NOT NULL,
  `course_type` enum('UG','PG') NOT NULL,
  `available_seat` varchar(255) NOT NULL,
  `course_OUTLINE` text NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_placements`
--

DROP TABLE IF EXISTS `tbl_placements`;
CREATE TABLE IF NOT EXISTS `tbl_placements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `firm_name` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `passing_year` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telephone_directory`
--

DROP TABLE IF EXISTS `telephone_directory`;
CREATE TABLE IF NOT EXISTS `telephone_directory` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
CREATE TABLE IF NOT EXISTS `testimonial` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `designation`, `message`, `image`, `published`) VALUES
(8, 'Shri Sharad Jain', 'State Minister', '<p>मध्यप्रदेश सह-चिकित्सीमय परिषद द्वारा प्रदेश की जनता की सुविधा एवं सुलभता हेतु नवीन वेबसाईड का निर्माण किया जा रहा है । इसके लिए मैं परिषद को शुभकामनाऍ देता हॅू&nbsp;&nbsp;<a href=\"/state-minister-message\">Read More...</a></p>', 'sard_jain_ji.jpg', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `base_location` varchar(255) NOT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `base_location`, `active`) VALUES
(1, 'Rani-Avanti-Bai-Lodhi-University', 'departments/rani-avanti-bai-lodhi-university', 'yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
