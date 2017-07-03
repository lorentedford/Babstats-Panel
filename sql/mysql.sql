-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2017 at 04:54 PM
-- Server version: 5.7.18-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usa_stats`
--

-- --------------------------------------------------------

--
-- Table structure for table `chronos_aliases`
--

CREATE TABLE `chronos_aliases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_name` varchar(64) NOT NULL DEFAULT '',
  `to_name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chronos_awards`
--

CREATE TABLE `chronos_awards` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `image` varchar(64) NOT NULL DEFAULT '',
  `field` varchar(64) NOT NULL DEFAULT '0',
  `value` bigint(20) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `type` enum('A','W') NOT NULL DEFAULT 'A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_awards`
--

INSERT INTO `chronos_awards` (`id`, `name`, `image`, `field`, `value`, `description`, `type`) VALUES
(1, 'Army Commendation Medal', 'awards/armycom1.gif', 'time_played', 600, 'Given for 10 minutes of playing', 'A'),
(2, 'Army Commendation Medal with 1 bronze Oak leaf Cluster', 'awards/armycom2.gif', 'time_played', 3600, 'Given for 1 hour of playing', 'A'),
(3, 'Army Commendation Medal with 2 bronze Oak leaf Clusters', 'awards/armycom3.gif', 'time_played', 36000, 'Given for 10 hours of playing', 'A'),
(4, 'Army Commendation Medal with 3 bronze Oak leaf Clusters', 'awards/armycom4.gif', 'time_played', 180000, 'Given for 50 hours of playing', 'A'),
(5, 'Army Commendation Medal with 4 bronze Oak leaf Clusters', 'awards/armycom5.gif', 'time_played', 360000, 'Given for 100 hours of playing', 'A'),
(6, 'Army Commendation Medal with 1 silver Oak leaf Cluster', 'awards/armycom6.gif', 'time_played', 1080000, 'Given for 300 hours of playing', 'A'),
(7, 'Marksman Badge', 'awards/markman1.gif', 'kills', 100, 'Given for 100 kills', 'A'),
(8, 'SharpShooter Badge', 'awards/markman2.gif', 'kills', 200, 'Given for 200 kills', 'A'),
(9, 'Expert Marksman Badge', 'awards/markman3.gif', 'kills', 500, 'Given for 500 kills', 'A'),
(10, 'Bronze Star', 'awards/bstar1.gif', 'kills', 1000, 'Given for 1000 kills', 'A'),
(11, 'Bronze Star with 1 Bronze Oak Leaf Cluster', 'awards/bstar2.gif', 'kills', 1500, 'Given for  1500 kills', 'A'),
(12, 'Bronze Star with 2 Bronze Oak Leaf Clusters', 'awards/bstar3.gif', 'kills', 2000, 'Given for  2000 kills', 'A'),
(13, 'Bronze Star with 3 Bronze Oak Leaf Clusters', 'awards/bstar4.gif', 'kills', 3000, 'Given for  3000 kills', 'A'),
(14, 'Bronze Star with 4 Bronze Oak Leaf Clusters', 'awards/bstar5.gif', 'kills', 5000, 'Given for  5000 kills', 'A'),
(15, 'Bronze Star with 1 Silver Oak Leaf Cluster', 'awards/bstar6.gif', 'kills', 7000, 'Given for  7000 kills', 'A'),
(16, 'Bronze Star with 2 Silver Oak Leaf Clusters', 'awards/bstar7.gif', 'kills', 9000, 'Given for  9000 kills', 'A'),
(17, 'Bronze Star with 2 Silver Oak Leaf Clusters', 'awards/bstar8.gif', 'kills', 12000, 'Given for  12000 kills', 'A'),
(18, 'Bronze Star with 2 Silver Oak Leaf Clusters', 'awards/bstar9.gif', 'kills', 15000, 'Given for  15000 kills', 'A'),
(19, 'Silver Star', 'awards/sstar.gif', 'kills', 20000, 'Given for  20000 kills', 'A'),
(20, 'Combat Infantryman Badge 1st Award', 'awards/infant1.gif', 'team_games_won', 10, 'Given for 10 team games won', 'A'),
(21, 'Combat Infantryman Badge 2nd Award', 'awards/infant2.gif', 'team_games_won', 50, 'Given for 50 team games won', 'A'),
(22, 'Combat Infantryman Badge 3rd Award', 'awards/infant3.gif', 'team_games_won', 200, 'Given for 200 team games won', 'A'),
(23, 'Hill Giant Medal 1st Award', 'awards/giant1.gif', 'zone_time', 7200, 'Given for 2 hours in the zone', 'A'),
(24, 'Hill Giant Medal 2nd Award', 'awards/giant2.gif', 'zone_time', 36000, 'Given for 10 hours in the zone', 'A'),
(25, 'Hill Giant Medal 3rd Award', 'awards/giant3.gif', 'zone_time', 180000, 'Given for 50 hours in the zone', 'A'),
(26, 'Hill Giant Medal 4th Award', 'awards/giant4.gif', 'zone_time', 360000, 'Given for 100 hours in the zone', 'A'),
(27, 'Headhunter\'s Medal 1st Award', 'awards/head1.gif', 'headshots', 100, 'Given for 100 headshots', 'A'),
(28, 'Headhunter\'s Medal 2nd Award', 'awards/head2.gif', 'headshots', 500, 'Given for 500 headshots', 'A'),
(29, 'Headhunter\'s Medal 3rd Award', 'awards/head3.gif', 'headshots', 1000, 'Given for 1000 headshots', 'A'),
(30, 'Headhunter\'s Medal 4th Award', 'awards/head4.gif', 'headshots', 2000, 'Given for 2000 headshots', 'A'),
(31, 'Glory Badge 1st Award', 'awards/glory1.gif', 'flags_captured', 100, 'Given for 100 flags captured', 'A'),
(32, 'Glory Badge 2nd Award', 'awards/glory2.gif', 'flags_captured', 200, 'Given for 200 flags captured', 'A'),
(33, 'Glory Badge 3rd Award', 'awards/glory3.gif', 'flags_captured', 500, 'Given for 500 flags captured', 'A'),
(34, 'CQB Badge 1st Award', 'awards/cqb1.gif', 'knifings', 50, 'Given for 50 knifings', 'A'),
(35, 'CQB Badge 2nd Award', 'awards/cqb2.gif', 'knifings', 100, 'Given for 100 knifings', 'A'),
(36, 'CQB Badge 3rd Award', 'awards/cqb3.gif', 'knifings', 200, 'Given for 200 knifings', 'A'),
(37, 'Silver Ka-Bar Award', 'awards/kabar_s.gif', 'knifings', 500, 'Given for 500 knifings', 'A'),
(38, 'Gold Ka-Bar Award', 'awards/kabar_g.gif', 'knifings', 1000, 'Given for 1000 knifings', 'A'),
(39, 'Recovery medal 1st award', 'awards/recover1.gif', 'flags_saved', 50, 'Given for 50 flags saved', 'A'),
(40, 'Recovery medal 2nd award', 'awards/recover2.gif', 'flags_saved', 100, 'Given for 100 flags saved', 'A'),
(41, 'Recovery medal 3rd award', 'awards/recover3.gif', 'flags_saved', 200, 'Given for 200 flags saved', 'A'),
(42, 'Recovery medal 4th award', 'awards/recover4.gif', 'flags_saved', 500, 'Given for 500 flags saved', 'A'),
(43, 'Combat Medical Badge 1st Award', 'awards/medical1.gif', 'medic_saves', 10, 'Given for 10 medic saves', 'A'),
(44, 'Combat Medical Badge 2nd Award', 'awards/medical2.gif', 'medic_saves', 50, 'Given for 50 medic saves', 'A'),
(45, 'Combat Medical Badge 3rd Award', 'awards/medical3.gif', 'medic_saves', 150, 'Given for 150 medic saves', 'A'),
(46, 'Combat Medical Badge 4th Award', 'awards/medical4.gif', 'medic_saves', 500, 'Given for 500 medic saves', 'A'),
(47, 'Sapper\'s Badge 1st Award', 'awards/sapper1.gif', 'targets_destroyed', 100, 'Given for 100 targets destroyed', 'A'),
(48, 'Sapper\'s Badge 2nd Award', 'awards/sapper2.gif', 'targets_destroyed', 200, 'Given for 200 targets destroyed', 'A'),
(49, 'Sapper\'s Badge 5th Award', 'awards/sapper3.gif', 'targets_destroyed', 500, 'Given for 500 targets destroyed', 'A'),
(50, 'Distinguished Service Cross', 'awards/dscross.gif', 'time_played', 1800000, 'Given for 500 hours of playing', 'A'),
(51, 'Medal of Honor', 'awards/moh.gif', 'kills', 40000, 'Given for 40000 kills', 'A'),
(52, 'Car15 Award', 'awards/car15.gif', 'car15_kills', 1000, 'Given for 1000 car15 kills', 'W'),
(53, 'G36 Award', 'awards/g36.gif', 'g36_kills', 1000, 'Given for 1000 g36 kills', 'W'),
(54, 'G3 Award', 'awards/g3.gif', 'g3_kills', 1000, 'Given for 1000 g3 kills', 'W'),
(55, 'M60 Award', 'awards/m60.gif', 'm60_kills', 1000, 'Given for 1000 m60 kills', 'W'),
(56, 'Car15/203 Award', 'awards/car15203.gif', 'car15203_kills', 500, 'Given for 500 car15/203 kills', 'W'),
(57, 'M16 Award', 'awards/m16.gif', 'm16_kills', 1000, 'Given for 1000 m16 kills', 'W'),
(58, 'M16/203 Award', 'awards/m16203.gif', 'm16203_kills', 1000, 'Given for 1000 m16/203 kills', 'W'),
(59, 'MP5 Award', 'awards/mp5.gif', 'mp5_kills', 500, 'Given for  500 mp5 kills', 'W'),
(60, 'M249 saw Award', 'awards/m249saw.gif', 'm249saw_kills', 1000, 'Given for 1000 m249 saw kills', 'W'),
(61, 'M240 Award', 'awards/m240.gif', 'm240_kills', 1000, 'Given for 1000 m240 kills', 'W'),
(62, 'Car15/203 - Grenade Award', 'awards/car15203g.gif', 'car15203_grenade_kills', 1000, 'Given for 1000 car15/203 - grenade kills', 'W'),
(63, 'M16/203 - Grenade Award', 'awards/m16203g.gif', 'm16203_grenade_kills', 1000, 'Given for 1000 m16/203 - grenade kills', 'W'),
(64, 'Colt .45 Award', 'awards/colt.gif', 'colt_kills', 250, 'Given for  250 colt .45 kills', 'W'),
(65, 'M9 Beretta Award', 'awards/m9.gif', 'm9_kills', 250, 'Given for  250 m9 beretta kills', 'W'),
(66, 'M21 Award', 'awards/m21.gif', 'm21_kills', 500, 'Given for  500 m21 kills', 'W'),
(67, 'PSG1 Award', 'awards/psg1.gif', 'psg1_kills', 500, 'Given for  500 psg1 kills', 'W'),
(68, 'M24 Award', 'awards/m24.gif', 'm24_kills', 500, 'Given for  500 m24 kills', 'W'),
(69, 'MCRT .300 Tactical Award', 'awards/mcrt.gif', 'mcrt_kills', 500, 'Given for  500 mcrt .300 tactical kills', 'W'),
(70, 'Barrett .50 Cal Award', 'awards/barrett.gif', 'barrett_kills', 500, 'Given for  500 barrett .50 cal kills', 'W'),
(71, 'Remington Shotgun Award', 'awards/remin.gif', 'shotgun_kills', 250, 'Given for  250 remington shotgun kills', 'W'),
(72, 'Frag Grenade Award', 'awards/gren.gif', 'grenade_kills', 250, 'Given for  250 frag grenade killd', 'W'),
(73, 'AT4 Award', 'awards/at4.gif', 'at4_kills', 250, 'Given for  250 at4 kills', 'W'),
(74, 'Claymore Award', 'awards/clay.gif', 'claymore_kills', 250, 'Given for  250 claymore kills', 'W');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_games`
--

CREATE TABLE `chronos_games` (
  `id` bigint(20) NOT NULL,
  `map_id` bigint(20) NOT NULL,
  `winner` tinyint(1) NOT NULL,
  `server` bigint(20) NOT NULL,
  `game_type` varchar(64) NOT NULL,
  `date_played` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_games`
--

INSERT INTO `chronos_games` (`id`, `map_id`, `winner`, `server`, `game_type`, `date_played`) VALUES
(1, 288, 0, 0, 'Deathmatch', '2017-07-03 14:12:04'),
(2, 289, 0, 0, 'Deathmatch', '2017-07-03 14:44:21'),
(3, 290, 0, 0, 'Deathmatch', '2017-07-03 15:47:10'),
(4, 291, 0, 7, 'Deathmatch', '2017-07-03 15:55:29'),
(5, 292, 0, 7, 'Deathmatch', '2017-07-03 16:04:13'),
(6, 293, 0, 7, 'Deathmatch', '2017-07-03 16:10:51'),
(7, 294, 0, 7, 'Deathmatch', '2017-07-03 16:18:29'),
(8, 295, 0, 7, 'Deathmatch', '2017-07-03 16:37:09'),
(9, 296, 0, 7, 'Deathmatch', '2017-07-03 16:55:50'),
(10, 297, 0, 7, 'Deathmatch', '2017-07-03 17:14:32'),
(11, 298, 0, 7, 'Deathmatch', '2017-07-03 17:33:13'),
(12, 299, 0, 7, 'Deathmatch', '2017-07-03 17:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_hof`
--

CREATE TABLE `chronos_hof` (
  `games_type` enum('P','W') NOT NULL DEFAULT 'P',
  `team_games` bigint(20) NOT NULL DEFAULT '0',
  `rating_pts` bigint(20) NOT NULL DEFAULT '0',
  `time_played` bigint(20) NOT NULL DEFAULT '0',
  `awards` bigint(20) NOT NULL DEFAULT '0',
  `wpn_awards` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chronos_log`
--

CREATE TABLE `chronos_log` (
  `server` bigint(20) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chronos_maps`
--

CREATE TABLE `chronos_maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `image` varchar(64) NOT NULL DEFAULT '',
  `thumbnail` varchar(64) NOT NULL DEFAULT '',
  `file` varchar(128) NOT NULL DEFAULT '',
  `hosted` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `game_type` varchar(64) NOT NULL DEFAULT '',
  `last_played` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_maps`
--

INSERT INTO `chronos_maps` (`id`, `name`, `image`, `thumbnail`, `file`, `hosted`, `time`, `game_type`, `last_played`) VALUES
(299, 'TW91c2Vob2xlcw==', '', '', '', 1, 1080, 'Deathmatch', '2017-07-03 17:51:55'),
(298, 'TWVhbiBTdHJlZXRzIEMgYnkgV1JlY0tMZVNT', '', '', '', 1, 1080, 'Deathmatch', '2017-07-03 17:33:13'),
(297, 'S2lwJ3MgR3JhdmV5YXJkIA==', '', '', '', 1, 1080, 'Deathmatch', '2017-07-03 17:14:32'),
(296, 'SG9vayBIb29u', '', '', '', 1, 1080, 'Deathmatch', '2017-07-03 16:55:50'),
(295, 'SGlnaFdpcmU=', '', '', '', 1, 1081, 'Deathmatch', '2017-07-03 16:37:09'),
(294, 'KkRSVCogRGVTU2ltOHRvUiA9REFZPQ==', '', '', '', 1, 412, 'Deathmatch', '2017-07-03 16:18:29'),
(292, 'Q29ucXVlcmVkIENvbW1hbmQ=', '', '', '', 1, 479, 'Deathmatch', '2017-07-03 16:04:13'),
(293, 'REVTRVJUIFNUT1JN', '', '', '', 1, 353, 'Deathmatch', '2017-07-03 16:10:51'),
(291, 'QmxhY2toYXdrIGRvd24=', '', '', '', 1, 454, 'Deathmatch', '2017-07-03 15:55:29'),
(290, 'UGFraXN0YW5pIFN0YWRpdW0=', '', '', '', 1, 225, 'Deathmatch', '2017-07-03 15:47:10'),
(289, 'Qm9hc3V4eCBIaWRlb3V0IGJ5IFNodWdoYXJ0', '', '', '', 1, 110, 'Deathmatch', '2017-07-03 14:44:21'),
(288, 'Q0lUWSBVTkRFUiBTRUlHRQ==', '', '', '', 1, 872, 'Deathmatch', '2017-07-03 14:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_mapstats`
--

CREATE TABLE `chronos_mapstats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record` bigint(20) NOT NULL DEFAULT '0',
  `map` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `deaths` bigint(20) NOT NULL DEFAULT '0',
  `score` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_mapstats`
--

INSERT INTO `chronos_mapstats` (`id`, `record`, `map`, `kills`, `deaths`, `score`, `time`) VALUES
(20148, 1896, 299, 1, 1, 16, 359),
(20147, 1895, 299, 2, 7, 30, 1040),
(20146, 1893, 299, 9, 7, 85, 1041),
(20145, 1890, 299, 6, 7, 57, 1040),
(20144, 1895, 298, 2, 2, 24, 741),
(20143, 1894, 298, 2, 2, 25, 1008),
(20142, 1893, 298, 3, 1, 39, 1008),
(20141, 1890, 298, 1, 5, 10, 1008),
(20140, 1890, 297, 0, 0, 0, 0),
(20139, 1890, 296, 0, 0, 0, 0),
(20138, 1890, 295, 0, 0, 0, 0),
(20137, 1890, 294, 0, 0, 0, 0),
(20136, 1890, 293, 0, 0, 0, 0),
(20135, 1892, 292, 1, 0, 10, 229),
(20134, 1891, 292, 2, 3, 29, 443),
(20133, 1890, 292, 1, 2, 13, 444),
(20132, 1891, 291, 1, 1, 13, 407),
(20131, 1890, 291, 1, 2, 14, 407);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_monthawards`
--

CREATE TABLE `chronos_monthawards` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `monthaward` varchar(64) NOT NULL DEFAULT '',
  `player` varchar(64) NOT NULL DEFAULT '',
  `value` decimal(20,2) NOT NULL DEFAULT '0.00',
  `month_gained` char(3) NOT NULL DEFAULT '',
  `year_gained` varchar(64) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chronos_m_mapstats`
--

CREATE TABLE `chronos_m_mapstats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record` bigint(20) NOT NULL DEFAULT '0',
  `map` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `deaths` bigint(20) NOT NULL DEFAULT '0',
  `score` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_m_mapstats`
--

INSERT INTO `chronos_m_mapstats` (`id`, `record`, `map`, `kills`, `deaths`, `score`, `time`) VALUES
(18051, 1896, 299, 1, 1, 16, 359),
(18050, 1895, 299, 2, 7, 30, 1040),
(18049, 1893, 299, 9, 7, 85, 1041),
(18048, 1890, 299, 6, 7, 57, 1040),
(18047, 1895, 298, 2, 2, 24, 741),
(18046, 1894, 298, 2, 2, 25, 1008),
(18045, 1893, 298, 3, 1, 39, 1008),
(18044, 1890, 298, 1, 5, 10, 1008),
(18043, 1890, 297, 0, 0, 0, 0),
(18042, 1890, 296, 0, 0, 0, 0),
(18041, 1890, 295, 0, 0, 0, 0),
(18040, 1890, 294, 0, 0, 0, 0),
(18039, 1890, 293, 0, 0, 0, 0),
(18038, 1892, 292, 1, 0, 10, 229),
(18037, 1891, 292, 2, 3, 29, 443),
(18036, 1890, 292, 1, 2, 13, 444),
(18035, 1891, 291, 1, 1, 13, 407),
(18034, 1890, 291, 1, 2, 14, 407);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_m_stats`
--

CREATE TABLE `chronos_m_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `deaths` bigint(20) NOT NULL DEFAULT '0',
  `murders` bigint(20) NOT NULL DEFAULT '0',
  `suicides` bigint(20) NOT NULL DEFAULT '0',
  `knifings` bigint(20) NOT NULL DEFAULT '0',
  `sniper_kills` bigint(20) NOT NULL DEFAULT '0',
  `headshots` bigint(20) NOT NULL DEFAULT '0',
  `medic_saves` bigint(20) NOT NULL DEFAULT '0',
  `revives` bigint(20) NOT NULL DEFAULT '0',
  `pspattempts` bigint(20) NOT NULL DEFAULT '0',
  `psptakeovers` bigint(20) NOT NULL DEFAULT '0',
  `doublekills` bigint(20) NOT NULL DEFAULT '0',
  `score_1` bigint(20) NOT NULL DEFAULT '0',
  `score_2` bigint(20) NOT NULL DEFAULT '0',
  `score_3` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `games` bigint(20) NOT NULL DEFAULT '0',
  `wins` bigint(20) NOT NULL DEFAULT '0',
  `draws` bigint(20) NOT NULL DEFAULT '0',
  `server` bigint(20) NOT NULL DEFAULT '0',
  `game_type` varchar(64) NOT NULL DEFAULT '',
  `last_played` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_m_stats`
--

INSERT INTO `chronos_m_stats` (`id`, `player`, `kills`, `deaths`, `murders`, `suicides`, `knifings`, `sniper_kills`, `headshots`, `medic_saves`, `revives`, `pspattempts`, `psptakeovers`, `doublekills`, `score_1`, `score_2`, `score_3`, `time`, `games`, `wins`, `draws`, `server`, `game_type`, `last_played`) VALUES
(2488, 1886, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 16, 0, 0, 359, 1, 0, 0, 7, 'Deathmatch', '2017-07-03 17:51:55'),
(2487, 1885, 4, 9, 0, 2, 1, 2, 1, 0, 0, 0, 0, 0, 54, 0, 0, 1781, 2, 0, 0, 7, 'Deathmatch', '2017-07-03 17:51:55'),
(2486, 1884, 2, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 25, 0, 0, 1008, 1, 0, 0, 7, 'Deathmatch', '2017-07-03 17:33:13'),
(2483, 1881, 3, 4, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 42, 0, 0, 850, 2, 1, 0, 7, 'Deathmatch', '2017-07-03 16:04:13'),
(2484, 1882, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 229, 1, 0, 0, 7, 'Deathmatch', '2017-07-03 16:04:13'),
(2485, 1883, 12, 8, 0, 2, 0, 8, 2, 0, 0, 0, 0, 0, 124, 0, 0, 2049, 2, 0, 0, 7, 'Deathmatch', '2017-07-03 17:51:55'),
(2482, 1880, 12, 25, 0, 3, 0, 7, 4, 0, 0, 0, 0, 0, 125, 0, 0, 6489, 9, 3, 0, 7, 'Deathmatch', '2017-07-03 17:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_m_weaponstats`
--

CREATE TABLE `chronos_m_weaponstats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record` bigint(20) NOT NULL DEFAULT '0',
  `weapon` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `shots` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_m_weaponstats`
--

INSERT INTO `chronos_m_weaponstats` (`id`, `record`, `weapon`, `kills`, `shots`, `time`) VALUES
(11525, 1896, 103, 0, 8, 29),
(11524, 1896, 101, 0, 1, 20),
(11523, 1896, 94, 1, 4, 114),
(11522, 1896, 93, 0, 0, 137),
(11521, 1896, 98, 0, 0, 11),
(11520, 1896, 108, 0, 19, 48),
(11519, 1895, 101, 0, 4, 85),
(11518, 1895, 103, 0, 6, 292),
(11517, 1895, 98, 1, 2, 32),
(11516, 1893, 107, 1, 21, 10),
(11515, 1893, 95, 5, 17, 457),
(11514, 1893, 97, 2, 45, 84),
(11513, 1893, 98, 0, 1, 22),
(11512, 1895, 106, 2, 6, 927),
(11511, 1895, 93, 0, 0, 292),
(11510, 1895, 96, 0, 4, 80),
(11509, 1895, 105, 1, 1, 73),
(11508, 1894, 104, 2, 1821, 580),
(11507, 1894, 95, 0, 0, 65),
(11506, 1894, 93, 0, 0, 363),
(11505, 1893, 96, 1, 7, 250),
(11504, 1893, 103, 0, 21, 13),
(11503, 1893, 101, 0, 15, 254),
(11502, 1893, 94, 3, 85, 953),
(11501, 1890, 104, 0, 179, 115),
(11500, 1890, 103, 1, 35, 125),
(11499, 1890, 102, 1, 16, 159),
(11498, 1890, 101, 0, 8, 165),
(11497, 1892, 99, 1, 3, 93),
(11496, 1892, 93, 0, 0, 135),
(11495, 1892, 100, 0, 0, 1),
(11494, 1890, 98, 0, 42, 788),
(11493, 1891, 95, 3, 14, 834),
(11492, 1891, 98, 0, 0, 16),
(11491, 1890, 94, 7, 27, 1096),
(11490, 1890, 93, 0, 0, 451);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_playerawards`
--

CREATE TABLE `chronos_playerawards` (
  `id` bigint(20) NOT NULL,
  `player` bigint(20) NOT NULL DEFAULT '0',
  `award` varchar(64) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_playerawards`
--

INSERT INTO `chronos_playerawards` (`id`, `player`, `award`, `date`) VALUES
(4261, 1885, 'Army Commendation Medal', '2017-07-03 16:35:45'),
(4260, 1883, 'Army Commendation Medal', '2017-07-03 16:35:45'),
(4259, 1880, 'Army Commendation Medal with 1 bronze Oak leaf Cluster', '2017-07-03 16:00:41'),
(4258, 1881, 'Army Commendation Medal', '2017-07-03 15:20:36'),
(4257, 1880, 'Army Commendation Medal', '2017-07-03 16:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_playergames`
--

CREATE TABLE `chronos_playergames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) NOT NULL,
  `player` bigint(20) NOT NULL DEFAULT '0',
  `playerip` varchar(15) NOT NULL,
  `experience` bigint(20) NOT NULL,
  `stats` varchar(128) NOT NULL DEFAULT '0',
  `team` tinyint(1) NOT NULL,
  `wpns` text NOT NULL,
  `date_played` varchar(94) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_playergames`
--

INSERT INTO `chronos_playergames` (`id`, `game_id`, `player`, `playerip`, `experience`, `stats`, `team`, `wpns`, `date_played`, `result`) VALUES
(1, 1, 1872, '74.194.223.222', 19, '1_0_0_0_0_1_0_0_0_0_0_19_0_0_812', 5, 'CAR15_756_0_0\nBarrett .50 Cal_56_1_13\n', '', ''),
(2, 1, 1873, '68.13.196.137', 0, '0_2_0_1_0_0_0_0_0_0_0_0_0_0_812', 5, 'M21_689_0_0\nFrag Grenade_123_0_2\n', '', ''),
(3, 1, 1874, '50.81.235.40', 0, '0_0_0_0_0_0_0_0_0_0_0_0_0_0_200', 5, 'CAR15_137_0_0\nM9 Beretta_63_0_0\n', '', ''),
(4, 1, 1875, '178.143.106.169', 0, '0_0_0_0_0_0_0_0_0_0_0_0_0_0_34', 5, 'CAR15_34_0_0\n', '', ''),
(5, 2, 1876, '74.194.223.222', 13, '1_2_0_0_0_0_0_0_0_0_0_13_0_0_1274', 5, 'CAR15_154_0_0\n', '', ''),
(6, 2, 1877, '68.13.196.137', 25, '2_1_0_0_0_0_0_0_0_0_0_25_0_0_1273', 5, 'Knife_0_0_0\nCAR15_133_0_0\nM21_21_1_10\n', '', ''),
(7, 3, 1878, '74.194.223.222', 0, '0_1_0_0_0_0_0_0_0_0_0_0_0_0_127', 5, 'CAR15/M203 - Grenade_57_0_1\nCAR15_53_0_0\nKnife_17_0_5\n', '', ''),
(8, 3, 1879, '68.13.196.137', 5, '1_0_0_0_0_0_0_0_0_0_0_5_0_0_124', 5, 'Knife_2_0_0\nCAR15_107_0_0\nM21_15_1_1\n', '', ''),
(9, 4, 1880, '74.194.223.222', 14, '1_2_0_1_0_1_0_0_0_0_0_14_0_0_407', 5, 'CAR15_103_0_0\nBarrett .50 Cal_304_1_3\n', '', ''),
(10, 4, 1881, '68.13.196.137', 13, '1_1_0_0_0_0_0_0_0_0_0_13_0_0_407', 5, 'Knife_3_0_0\nM21_404_1_8\n', '', ''),
(11, 5, 1880, '74.194.223.222', 13, '1_2_0_0_0_0_0_0_0_0_0_13_0_0_444', 5, 'Barrett .50 Cal_134_1_4\nCAR15_261_0_0\nKnife_49_0_4\n', '', ''),
(12, 5, 1881, '68.13.196.137', 29, '2_3_0_0_0_0_0_0_0_0_0_29_0_0_443', 5, 'Knife_13_0_0\nM21_430_2_6\n', '', ''),
(13, 5, 1882, '80.2.36.156', 10, '1_0_0_0_0_0_0_0_0_0_0_10_0_0_229', 5, 'M60_1_0_0\nCAR15_135_0_0\nCAR15/M203 - Grenade_93_1_3\n', '', ''),
(14, 11, 1880, '74.194.223.222', 10, '1_5_0_1_0_1_0_0_0_0_0_10_0_0_1008', 5, 'Knife_460_0_18\nCAR15_20_0_0\nBarrett .50 Cal_149_0_13\nClaymore_63_0_2\nMiniGun_159_1_16\nColt .45_42_0_21\n50 Cal Humvee_115_0_179\n', '0000-00-00 00:00:00', ''),
(15, 11, 1883, '2.7.165.230', 39, '3_1_0_1_0_0_0_0_0_0_0_39_0_0_1008', 5, 'Barrett .50 Cal_921_3_85\nClaymore_55_0_3\nColt .45_13_0_21\nFrag Grenade_19_0_2\n', '0000-00-00 00:00:00', ''),
(16, 11, 1884, '68.50.244.13', 25, '2_2_0_0_0_2_0_0_0_0_0_25_0_0_1008', 5, 'CAR15_363_0_0\nM21_65_0_0\n50 Cal Humvee_580_2_1821\n', '0000-00-00 00:00:00', ''),
(17, 11, 1885, '73.118.107.191', 24, '2_2_0_0_0_0_0_0_0_0_0_24_0_0_741', 5, 'AT4_73_1_1\nFrag Grenade_1_0_0\nCAR15_292_0_0\nMCRT .300 Tactical_375_1_1\n', '0000-00-00 00:00:00', ''),
(18, 12, 1880, '74.194.223.222', 57, '6_7_0_1_0_1_0_0_0_0_0_57_0_0_1040', 5, 'Knife_279_0_20\nCAR15_67_0_0\nColt .45_83_1_14\nClaymore_102_0_6\nBarrett .50 Cal_509_5_7\n', '0000-00-00 00:00:00', '0'),
(19, 12, 1883, '2.7.165.230', 85, '9_7_0_1_0_2_0_0_0_0_0_85_0_0_1041', 5, 'Knife_22_0_1\nBarrett .50 Cal_32_0_0\nM9 Beretta_84_2_45\nFrag Grenade_231_1_5\nM21_457_5_17\nClaymore_199_0_12\n50 Cal Truck_10_1_21\n', '0000-00-00 00:00:00', '0'),
(20, 12, 1885, '73.118.107.191', 30, '2_7_0_2_1_1_0_0_0_0_0_30_0_0_1040', 5, 'MCRT .300 Tactical_552_1_5\nKnife_32_1_2\nColt .45_292_0_6\nClaymore_85_0_4\nFrag Grenade_79_0_4\n', '0000-00-00 00:00:00', '0'),
(21, 12, 1886, '23.120.102.228', 16, '1_1_0_0_0_1_0_0_0_0_0_16_0_0_359', 5, 'CAR15/M203_48_0_19\nKnife_11_0_0\nCAR15_137_0_0\nBarrett .50 Cal_114_1_4\nClaymore_20_0_1\nColt .45_29_0_8\n', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_playerips`
--

CREATE TABLE `chronos_playerips` (
  `id` bigint(20) NOT NULL,
  `player` bigint(20) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `last_recorded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_playerips`
--

INSERT INTO `chronos_playerips` (`id`, `player`, `ip_address`, `last_recorded`) VALUES
(1, 1872, '74.194.223.222', '2017-07-03 17:51:55'),
(2, 1873, '68.13.196.137', '2017-07-03 17:51:55'),
(3, 1874, '50.81.235.40', '2017-07-03 17:51:55'),
(4, 1875, '178.143.106.169', '2017-07-03 17:51:55'),
(5, 1876, '74.194.223.222', '2017-07-03 17:51:55'),
(6, 1877, '68.13.196.137', '2017-07-03 17:51:55'),
(7, 1878, '74.194.223.222', '2017-07-03 17:51:55'),
(8, 1879, '68.13.196.137', '2017-07-03 17:51:55'),
(9, 1880, '74.194.223.222', '2017-07-03 17:51:55'),
(10, 1881, '68.13.196.137', '2017-07-03 17:51:55'),
(11, 1882, '80.2.36.156', '2017-07-03 17:51:55'),
(12, 1883, '2.7.165.230', '2017-07-03 17:51:55'),
(13, 1884, '68.50.244.13', '2017-07-03 17:51:55'),
(14, 1885, '73.118.107.191', '2017-07-03 17:51:55'),
(15, 1886, '23.120.102.228', '2017-07-03 17:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_players`
--

CREATE TABLE `chronos_players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `squad` bigint(20) NOT NULL DEFAULT '0',
  `rating` bigint(20) NOT NULL DEFAULT '0',
  `m_rating` bigint(20) NOT NULL DEFAULT '0',
  `awards` bigint(20) NOT NULL DEFAULT '0',
  `wpn_awards` bigint(20) NOT NULL DEFAULT '0',
  `motm` bigint(20) NOT NULL DEFAULT '0',
  `dm_value` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_players`
--

INSERT INTO `chronos_players` (`id`, `name`, `squad`, `rating`, `m_rating`, `awards`, `wpn_awards`, `motm`, `dm_value`) VALUES
(1886, 'Q29sb25lbCBLaWNrQXp6', -1, 2, 2, 0, 0, 0, 0),
(1885, 'RVpIYW1tZXI=', -1, 6, 6, 1, 0, 0, 0),
(1884, 'UGluUGluIFB1YQ==', -1, 5, 5, 0, 0, 0, 0),
(1883, 'S0lTUyBNRQ==', -1, 17, 17, 1, 0, 0, 0),
(1881, 'STRDVURFQUQ=', -1, 3, 3, 1, 0, 0, 0),
(1882, 'Z29yYnk0Nw==', -1, 1, 1, 0, 0, 0, 0),
(1880, 'fENUU3wgU2t5V2Fsa2Vy', -1, 10, 10, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_ranks`
--

CREATE TABLE `chronos_ranks` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `image` varchar(64) NOT NULL DEFAULT '',
  `thumbnail` varchar(64) NOT NULL DEFAULT '0',
  `rating` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_ranks`
--

INSERT INTO `chronos_ranks` (`id`, `name`, `image`, `thumbnail`, `rating`) VALUES
(1, 'Private 4th', 'ranks/1.gif', 'ranks/thumbs/1.gif', 0),
(2, 'Private 3rd', 'ranks/2.gif', 'ranks/thumbs/2.gif', 40),
(3, 'Private 2nd', 'ranks/3.gif', 'ranks/thumbs/3.gif', 100),
(4, 'Private 1st', 'ranks/4.gif', 'ranks/thumbs/4.gif', 200),
(23, 'Lance Corporal 4th', 'ranks/5.gif', 'ranks/thumbs/5.gif', 350),
(24, 'Lance Corporal 3rd', 'ranks/6.gif', 'ranks/thumbs/6.gif', 500),
(25, 'Lance Corporal 2nd', 'ranks/7.gif', 'ranks/thumbs/7.gif', 700),
(26, 'Lance Corporal 1st', 'ranks/8.gif', 'ranks/thumbs/8.gif', 900),
(27, 'Corporal 4th', 'ranks/9.gif', 'ranks/thumbs/9.gif', 1200),
(28, 'Corporal 3rd', 'ranks/10.gif', 'ranks/thumbs/10.gif', 1500),
(29, 'Corporal 2nd', 'ranks/11.gif', 'ranks/thumbs/11.gif', 1900),
(30, 'Corporal 1st', 'ranks/12.gif', 'ranks/thumbs/12.gif', 2300),
(31, 'Master Corporal', 'ranks/13.gif', 'ranks/thumbs/13.gif', 2900),
(32, 'Sergeant', 'ranks/14.gif', 'ranks/thumbs/14.gif', 3600),
(33, 'Master Sergeant', 'ranks/15.gif', 'ranks/thumbs/15.gif', 4400),
(34, 'Sub Lieutenant', 'ranks/16.gif', 'ranks/thumbs/16.gif', 5500),
(35, 'Lieutenant', 'ranks/17.gif', 'ranks/thumbs/17.gif', 7000),
(36, 'Major', 'ranks/18.gif', 'ranks/thumbs/18.gif', 9000),
(37, 'Colonel', 'ranks/19.gif', 'ranks/thumbs/19.gif', 12000),
(38, 'Brigadier General, 1 Star', 'ranks/20.gif', 'ranks/thumbs/20.gif', 16000),
(39, 'Major General, 2 Stars', 'ranks/21.gif', 'ranks/thumbs/21.gif', 20000),
(40, 'Lt. General, 3 Stars', 'ranks/22.gif', 'ranks/thumbs/22.gif', 25000),
(41, 'General, 4 Stars', 'ranks/23.gif', 'ranks/thumbs/23.gif', 30000),
(42, 'General, 5 Stars', 'ranks/24.gif', 'ranks/thumbs/24.gif', 35000),
(43, 'BHD MASTER', 'ranks/25.gif', 'ranks/thumbs/25.gif', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_serverhistory`
--

CREATE TABLE `chronos_serverhistory` (
  `id` bigint(20) NOT NULL,
  `serverid` bigint(20) NOT NULL DEFAULT '0',
  `players` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_serverhistory`
--

INSERT INTO `chronos_serverhistory` (`id`, `serverid`, `players`, `name`, `date`) VALUES
(20778, 7, 0, 'Q29sb25lbCBLaWNrQXp6', '2017-07-03'),
(20777, 7, 0, 'RVpIYW1tZXI=', '2017-07-03'),
(20776, 7, 0, 'S0lTUyBNRQ==', '2017-07-03'),
(20775, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20774, 7, 0, 'RVpIYW1tZXI=', '2017-07-03'),
(20773, 7, 0, 'UGluUGluIFB1YQ==', '2017-07-03'),
(20772, 7, 0, 'S0lTUyBNRQ==', '2017-07-03'),
(20771, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20770, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20769, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20768, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20767, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20766, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20765, 7, 0, 'Z29yYnk0Nw==', '2017-07-03'),
(20764, 7, 0, 'STRDVURFQUQ=', '2017-07-03'),
(20763, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03'),
(20762, 7, 0, 'STRDVURFQUQ=', '2017-07-03'),
(20761, 7, 0, 'fENUU3wgU2t5V2Fsa2Vy', '2017-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_servers`
--

CREATE TABLE `chronos_servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `serverid` varchar(64) NOT NULL DEFAULT '',
  `server_name` varchar(128) NOT NULL DEFAULT '',
  `map_name` varchar(128) NOT NULL DEFAULT '',
  `game_type` varchar(64) NOT NULL DEFAULT '',
  `game` varchar(64) NOT NULL DEFAULT '',
  `dedicated` varchar(32) NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `player_names` text NOT NULL,
  `player_teams` text NOT NULL,
  `player_weapons` text NOT NULL,
  `info` text NOT NULL,
  `ip` varchar(64) NOT NULL DEFAULT '',
  `max_players` bigint(20) NOT NULL DEFAULT '0',
  `num_players` bigint(20) NOT NULL DEFAULT '0',
  `age` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_servers`
--

INSERT INTO `chronos_servers` (`id`, `name`, `serverid`, `server_name`, `map_name`, `game_type`, `game`, `dedicated`, `time`, `player_names`, `player_teams`, `player_weapons`, `info`, `ip`, `max_players`, `num_players`, `age`) VALUES
(7, 'USA Snipers', 'TGM123', 'VVNBIFNuaXBlcnM=', 'T3NtYW4gT3R0byBHZWVyYXNrIA==', 'Deathmatch', 'Black Hawk Down', 'Yes', 1499122465, 'fENUU3wgU2t5V2Fsa2Vy\nS0lTUyBNRQ==\nRVpIYW1tZXI=', 'None\nNone\nNone', 'Barrett .50 Cal\nClaymore\nMCRT .300 Tactical', '', '0.0.0.0', 32, 3, 100);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_serverstats`
--

CREATE TABLE `chronos_serverstats` (
  `id` bigint(20) NOT NULL,
  `serverid` bigint(20) NOT NULL DEFAULT '0',
  `game_type` varchar(64) NOT NULL DEFAULT '0',
  `games` bigint(20) NOT NULL DEFAULT '0',
  `maps` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_serverstats`
--

INSERT INTO `chronos_serverstats` (`id`, `serverid`, `game_type`, `games`, `maps`, `time`) VALUES
(6, 7, 'Deathmatch', 9, 9, 7099);

-- --------------------------------------------------------

--
-- Table structure for table `chronos_squads`
--

CREATE TABLE `chronos_squads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `tag` varchar(64) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chronos_stats`
--

CREATE TABLE `chronos_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `deaths` bigint(20) NOT NULL DEFAULT '0',
  `murders` bigint(20) NOT NULL DEFAULT '0',
  `suicides` bigint(20) NOT NULL DEFAULT '0',
  `knifings` bigint(20) NOT NULL DEFAULT '0',
  `sniper_kills` bigint(20) NOT NULL DEFAULT '0',
  `headshots` bigint(20) NOT NULL DEFAULT '0',
  `medic_saves` bigint(20) NOT NULL DEFAULT '0',
  `revives` bigint(20) NOT NULL DEFAULT '0',
  `pspattempts` bigint(20) NOT NULL DEFAULT '0',
  `psptakeovers` bigint(20) NOT NULL DEFAULT '0',
  `doublekills` bigint(20) NOT NULL DEFAULT '0',
  `score_1` bigint(20) NOT NULL DEFAULT '0',
  `score_2` bigint(20) NOT NULL DEFAULT '0',
  `score_3` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `games` bigint(20) NOT NULL DEFAULT '0',
  `wins` bigint(20) NOT NULL DEFAULT '0',
  `draws` bigint(20) NOT NULL DEFAULT '0',
  `server` bigint(20) NOT NULL DEFAULT '0',
  `game_type` varchar(64) NOT NULL DEFAULT '',
  `last_played` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_stats`
--

INSERT INTO `chronos_stats` (`id`, `player`, `kills`, `deaths`, `murders`, `suicides`, `knifings`, `sniper_kills`, `headshots`, `medic_saves`, `revives`, `pspattempts`, `psptakeovers`, `doublekills`, `score_1`, `score_2`, `score_3`, `time`, `games`, `wins`, `draws`, `server`, `game_type`, `last_played`) VALUES
(1896, 1886, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 16, 0, 0, 359, 1, 0, 0, 7, 'Deathmatch', '2017-07-03 17:51:55'),
(1895, 1885, 4, 9, 0, 2, 1, 2, 1, 0, 0, 0, 0, 0, 54, 0, 0, 1781, 2, 0, 0, 7, 'Deathmatch', '2017-07-03 17:51:55'),
(1894, 1884, 2, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 25, 0, 0, 1008, 1, 0, 0, 7, 'Deathmatch', '2017-07-03 17:33:13'),
(1891, 1881, 3, 4, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 42, 0, 0, 850, 2, 1, 0, 7, 'Deathmatch', '2017-07-03 16:04:13'),
(1892, 1882, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 229, 1, 0, 0, 7, 'Deathmatch', '2017-07-03 16:04:13'),
(1893, 1883, 12, 8, 0, 2, 0, 8, 2, 0, 0, 0, 0, 0, 124, 0, 0, 2049, 2, 0, 0, 7, 'Deathmatch', '2017-07-03 17:51:55'),
(1890, 1880, 12, 25, 0, 3, 0, 7, 4, 0, 0, 0, 0, 0, 125, 0, 0, 6489, 9, 3, 0, 7, 'Deathmatch', '2017-07-03 17:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_weapons`
--

CREATE TABLE `chronos_weapons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_weapons`
--

INSERT INTO `chronos_weapons` (`id`, `name`) VALUES
(108, 'CAR15/M203'),
(107, '50 Cal Truck'),
(106, 'MCRT .300 Tactical'),
(105, 'AT4'),
(104, '50 Cal Humvee'),
(103, 'Colt .45'),
(102, 'MiniGun'),
(101, 'Claymore'),
(100, 'M60'),
(99, 'CAR15/M203 - Grenade'),
(98, 'Knife'),
(97, 'M9 Beretta'),
(96, 'Frag Grenade'),
(95, 'M21'),
(94, 'Barrett .50 Cal'),
(93, 'CAR15');

-- --------------------------------------------------------

--
-- Table structure for table `chronos_weaponstats`
--

CREATE TABLE `chronos_weaponstats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record` bigint(20) NOT NULL DEFAULT '0',
  `weapon` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `shots` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chronos_weaponstats`
--

INSERT INTO `chronos_weaponstats` (`id`, `record`, `weapon`, `kills`, `shots`, `time`) VALUES
(11414, 1896, 103, 0, 8, 29),
(11413, 1896, 101, 0, 1, 20),
(11412, 1896, 94, 1, 4, 114),
(11411, 1896, 93, 0, 0, 137),
(11410, 1896, 98, 0, 0, 11),
(11409, 1896, 108, 0, 19, 48),
(11408, 1895, 101, 0, 4, 85),
(11407, 1895, 103, 0, 6, 292),
(11406, 1895, 98, 1, 2, 32),
(11405, 1893, 107, 1, 21, 10),
(11404, 1893, 95, 5, 17, 457),
(11403, 1893, 97, 2, 45, 84),
(11402, 1893, 98, 0, 1, 22),
(11401, 1895, 106, 2, 6, 927),
(11400, 1895, 93, 0, 0, 292),
(11399, 1895, 96, 0, 4, 80),
(11398, 1895, 105, 1, 1, 73),
(11397, 1894, 104, 2, 1821, 580),
(11396, 1894, 95, 0, 0, 65),
(11395, 1894, 93, 0, 0, 363),
(11394, 1893, 96, 1, 7, 250),
(11393, 1893, 103, 0, 21, 13),
(11392, 1893, 101, 0, 15, 254),
(11391, 1893, 94, 3, 85, 953),
(11390, 1890, 104, 0, 179, 115),
(11389, 1890, 103, 1, 35, 125),
(11388, 1890, 102, 1, 16, 159),
(11387, 1890, 101, 0, 8, 165),
(11386, 1892, 99, 1, 3, 93),
(11385, 1892, 93, 0, 0, 135),
(11384, 1892, 100, 0, 0, 1),
(11383, 1890, 98, 0, 42, 788),
(11382, 1891, 95, 3, 14, 834),
(11381, 1891, 98, 0, 0, 16),
(11380, 1890, 94, 7, 27, 1096),
(11379, 1890, 93, 0, 0, 451);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chronos_aliases`
--
ALTER TABLE `chronos_aliases`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_awards`
--
ALTER TABLE `chronos_awards`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_games`
--
ALTER TABLE `chronos_games`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_maps`
--
ALTER TABLE `chronos_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_mapstats`
--
ALTER TABLE `chronos_mapstats`
  ADD PRIMARY KEY (`record`,`map`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_monthawards`
--
ALTER TABLE `chronos_monthawards`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_m_mapstats`
--
ALTER TABLE `chronos_m_mapstats`
  ADD PRIMARY KEY (`record`,`map`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_m_stats`
--
ALTER TABLE `chronos_m_stats`
  ADD PRIMARY KEY (`player`,`server`,`game_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_m_weaponstats`
--
ALTER TABLE `chronos_m_weaponstats`
  ADD PRIMARY KEY (`record`,`weapon`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_playerawards`
--
ALTER TABLE `chronos_playerawards`
  ADD UNIQUE KEY `award` (`award`,`player`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_playergames`
--
ALTER TABLE `chronos_playergames`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_playerips`
--
ALTER TABLE `chronos_playerips`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_players`
--
ALTER TABLE `chronos_players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_ranks`
--
ALTER TABLE `chronos_ranks`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_serverhistory`
--
ALTER TABLE `chronos_serverhistory`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_servers`
--
ALTER TABLE `chronos_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`name`);

--
-- Indexes for table `chronos_serverstats`
--
ALTER TABLE `chronos_serverstats`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_squads`
--
ALTER TABLE `chronos_squads`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_stats`
--
ALTER TABLE `chronos_stats`
  ADD PRIMARY KEY (`player`,`server`,`game_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_weapons`
--
ALTER TABLE `chronos_weapons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `chronos_weaponstats`
--
ALTER TABLE `chronos_weaponstats`
  ADD PRIMARY KEY (`record`,`weapon`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chronos_aliases`
--
ALTER TABLE `chronos_aliases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chronos_awards`
--
ALTER TABLE `chronos_awards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `chronos_games`
--
ALTER TABLE `chronos_games`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `chronos_maps`
--
ALTER TABLE `chronos_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT for table `chronos_mapstats`
--
ALTER TABLE `chronos_mapstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20149;
--
-- AUTO_INCREMENT for table `chronos_m_mapstats`
--
ALTER TABLE `chronos_m_mapstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18052;
--
-- AUTO_INCREMENT for table `chronos_m_stats`
--
ALTER TABLE `chronos_m_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2489;
--
-- AUTO_INCREMENT for table `chronos_m_weaponstats`
--
ALTER TABLE `chronos_m_weaponstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11526;
--
-- AUTO_INCREMENT for table `chronos_playerawards`
--
ALTER TABLE `chronos_playerawards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4262;
--
-- AUTO_INCREMENT for table `chronos_playergames`
--
ALTER TABLE `chronos_playergames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `chronos_playerips`
--
ALTER TABLE `chronos_playerips`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `chronos_players`
--
ALTER TABLE `chronos_players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1887;
--
-- AUTO_INCREMENT for table `chronos_ranks`
--
ALTER TABLE `chronos_ranks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `chronos_serverhistory`
--
ALTER TABLE `chronos_serverhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20779;
--
-- AUTO_INCREMENT for table `chronos_servers`
--
ALTER TABLE `chronos_servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `chronos_serverstats`
--
ALTER TABLE `chronos_serverstats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `chronos_squads`
--
ALTER TABLE `chronos_squads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chronos_stats`
--
ALTER TABLE `chronos_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1897;
--
-- AUTO_INCREMENT for table `chronos_weapons`
--
ALTER TABLE `chronos_weapons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `chronos_weaponstats`
--
ALTER TABLE `chronos_weaponstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11415;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
