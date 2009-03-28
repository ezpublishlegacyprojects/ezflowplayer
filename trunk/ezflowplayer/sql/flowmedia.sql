-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2009 at 04:42 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6-2ubuntu4.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ez_messenlien`
--

-- --------------------------------------------------------

--
-- Table structure for table `ezmedia`
--

CREATE TABLE IF NOT EXISTS `ezflowmedia` (
  `contentobject_attribute_id` int(11) NOT NULL default '0',
  `controls` varchar(50) default NULL,
  `filename` varchar(255) NOT NULL default '',
  `has_controller` int(11) default '0',
  `height` int(11) default NULL,
  `is_autoplay` int(11) default '0',
  `is_loop` int(11) default '0',
  `mime_type` varchar(50) NOT NULL default '',
  `original_filename` varchar(255) NOT NULL default '',
  `quality` varchar(50) default NULL,
  `version` int(11) NOT NULL default '0',
  `width` int(11) default NULL,
  `url` longtext,
  `movie` varchar(255) default NULL,
  `streaming` varchar(255) default NULL,
  PRIMARY KEY  (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

