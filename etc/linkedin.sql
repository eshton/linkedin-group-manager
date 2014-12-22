-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2014 at 10:51 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `linkedin`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `lkdn_comment` (
  `id` varchar(100) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `creation` timestamp NOT NULL,
  `creator_id` varchar(50) NOT NULL,
  `text` text,
  `email` varchar(100),
  `seen` bit(1) NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `lkdn_group` (
  `id` varchar(100) NOT NULL,
  `name` varchar(128) NOT NULL,
  `short_description` text,
  `description` text,
  `updated` timestamp NOT NULL,
  `seen` bit(1) NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `lkdn_person` (
  `id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `public_profile` varchar(80),
  `api_profile` varchar(80),
  `headline` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `lkdn_post` (
  `id` varchar(100) NOT NULL,
  `group_id` varchar(40) NOT NULL,
  `creation` timestamp NOT NULL,
  `creator_id` varchar(50) NOT NULL,
  `summary` text,
  `title` text,
  `type` enum('na','partner_request','expertise_offer','news','other'),
  `updated` timestamp NOT NULL,
  `seen` bit(1) NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
