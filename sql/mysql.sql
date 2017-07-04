-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2017 at 08:08 PM
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
-- Database: `vow_stats`
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
(7, 'TGMNetworks, LLC.', 'TGM123', 'VmV0ZXJhbnMgb2YgV2Fy', 'PGNvNDA0MEZGPkNyYXNoIFNpdGUgQTxjbz4=', 'Team King of the Hill', 'Black Hawk Down', 'Yes', 1499134099, '', '', '', '', '0.0.0.0', 50, 0, -2);

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
(6, 7, 'Deathmatch', 12, 12, 10339),
(7, 7, 'Team King of the Hill', 1, 1, 960);

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
(1907, 1897, 6, 1, 0, 0, 0, 0, 1, 0, 0, 3, 3, 0, 60, 2, 1, 388, 1, 1, 0, 7, 'Team King of the Hill', '2017-07-03 21:07:29'),
(1906, 1896, 10, 6, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 605, 6, 9, 877, 1, 1, 0, 7, 'Team King of the Hill', '2017-07-03 21:07:29'),
(1905, 1895, 8, 10, 0, 0, 0, 0, 2, 0, 0, 4, 4, 0, 160, 4, 5, 879, 1, 0, 0, 7, 'Team King of the Hill', '2017-07-03 21:07:29'),
(1904, 1894, 3, 9, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 460, 1, 1, 864, 2, 1, 0, 7, 'Team King of the Hill', '2017-07-03 21:07:29'),
(1903, 1893, 2, 4, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 40, 1, 0, 879, 1, 1, 0, 7, 'Team King of the Hill', '2017-07-03 21:07:29'),
(1902, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 1, 0, 0, 7, 'Team King of the Hill', '2017-07-03 21:07:29');

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
(109, 'M24'),
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
(93, 'CAR15'),
(110, 'G3');

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
(11467, 1907, 101, 1, 5, 108),
(11466, 1907, 108, 3, 35, 100),
(11465, 1907, 96, 0, 4, 20),
(11464, 1907, 98, 1, 0, 50),
(11463, 1907, 99, 1, 5, 32),
(11462, 1907, 93, 0, 0, 78),
(11461, 1906, 96, 0, 5, 225),
(11460, 1906, 101, 0, 9, 57),
(11459, 1906, 110, 10, 84, 563),
(11458, 1906, 98, 0, 0, 32),
(11457, 1905, 101, 1, 9, 271),
(11456, 1905, 99, 1, 8, 85),
(11455, 1905, 108, 6, 108, 464),
(11454, 1905, 98, 0, 0, 59),
(11453, 1904, 100, 3, 97, 864),
(11452, 1903, 98, 0, 26, 170),
(11451, 1903, 108, 1, 15, 625),
(11450, 1903, 99, 1, 2, 84),
(11449, 1902, 110, 0, 0, 70);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `chronos_maps`
--
ALTER TABLE `chronos_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `chronos_mapstats`
--
ALTER TABLE `chronos_mapstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20177;
--
-- AUTO_INCREMENT for table `chronos_m_mapstats`
--
ALTER TABLE `chronos_m_mapstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18080;
--
-- AUTO_INCREMENT for table `chronos_m_stats`
--
ALTER TABLE `chronos_m_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2500;
--
-- AUTO_INCREMENT for table `chronos_m_weaponstats`
--
ALTER TABLE `chronos_m_weaponstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11579;
--
-- AUTO_INCREMENT for table `chronos_playerawards`
--
ALTER TABLE `chronos_playerawards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4271;
--
-- AUTO_INCREMENT for table `chronos_playergames`
--
ALTER TABLE `chronos_playergames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `chronos_playerips`
--
ALTER TABLE `chronos_playerips`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `chronos_players`
--
ALTER TABLE `chronos_players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1898;
--
-- AUTO_INCREMENT for table `chronos_ranks`
--
ALTER TABLE `chronos_ranks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `chronos_serverhistory`
--
ALTER TABLE `chronos_serverhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20809;
--
-- AUTO_INCREMENT for table `chronos_servers`
--
ALTER TABLE `chronos_servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `chronos_serverstats`
--
ALTER TABLE `chronos_serverstats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `chronos_squads`
--
ALTER TABLE `chronos_squads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chronos_stats`
--
ALTER TABLE `chronos_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1908;
--
-- AUTO_INCREMENT for table `chronos_weapons`
--
ALTER TABLE `chronos_weapons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `chronos_weaponstats`
--
ALTER TABLE `chronos_weaponstats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11468;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
