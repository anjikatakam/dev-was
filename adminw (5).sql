-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 06:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminw`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(12) NOT NULL,
  `project_id` bigint(12) NOT NULL,
  `comment` text NOT NULL,
  `project_type` varchar(25) NOT NULL,
  `author` varchar(25) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `project_id`, `comment`, `project_type`, `author`, `created_date`, `updated_date`) VALUES
(2, 32, ' ', 'pipeline', 'test', '2021-06-28 12:22:42', '2021-06-28 12:22:42'),
(3, 32, ' ', 'pipeline', 'test', '2021-06-28 12:24:01', '2021-06-28 12:24:01'),
(4, 32, ' test123', 'pipeline', 'test', '2021-06-28 16:00:58', '2021-06-28 16:00:58'),
(5, 40, ' hii', 'pipeline', 'test', '2021-06-29 14:08:45', '2021-06-29 14:08:45'),
(6, 40, ' chnn', 'pipeline', 'test', '2021-06-29 14:09:17', '2021-06-29 14:09:17'),
(7, 40, ' trestguiuh ytr', 'pipeline', 'test', '2021-07-01 01:30:46', '2021-07-01 01:30:46'),
(8, 65, ' comment testing for anjireddy test', 'pipeline', 'test', '2021-07-01 05:11:22', '2021-07-01 05:11:22'),
(9, 66, ' this comment belongs to pipelinetest project', 'pipeline', 'test', '2021-07-01 12:10:13', '2021-07-01 12:10:13'),
(10, 66, 'test pipeline comment project', 'pipeline', 'test', '2021-07-01 12:10:32', '2021-07-01 12:10:32'),
(11, 39, ' ', 'pipeline', 'test', '2021-07-02 01:10:44', '2021-07-02 01:10:44'),
(12, 65, ' ', 'pipeline', 'test', '2021-07-02 01:11:09', '2021-07-02 01:11:09'),
(13, 40, ' hi. ', 'pipeline', 'test', '2021-07-14 03:26:30', '2021-07-14 03:26:30'),
(14, 6, ' test eng project comments', 'engineering', 'test', '2021-07-25 10:12:54', '2021-07-25 10:12:54'),
(15, 70, ' anji test project comment', 'pipeline', 'test', '2021-08-24 21:35:08', '2021-08-24 21:35:08'),
(16, 70, ' test2', 'pipeline', 'test', '2021-08-24 21:38:19', '2021-08-24 21:38:19'),
(17, 70, ' test4', 'pipeline', 'test', '2021-08-24 21:38:38', '2021-08-24 21:38:38'),
(18, 6, ' test engi project in edit', 'engineering', 'test', '2021-08-25 22:41:59', '2021-08-25 22:41:59'),
(19, 6, ' test ', 'engineering', 'test', '2021-08-25 23:14:01', '2021-08-25 23:14:01'),
(20, 70, ' testddddddddddddd', 'pipeline', 'test', '2021-08-25 23:23:44', '2021-08-25 23:23:44'),
(21, 13, 'test', 'engineering', 'test', '2021-08-30 08:52:49', '2021-08-30 08:52:49'),
(22, 13, 'test', 'engineering', 'test', '2021-08-30 09:51:14', '2021-08-30 09:51:14'),
(23, 14, '44', 'engineering', 'test', '2021-09-04 09:46:01', '2021-09-04 09:46:01'),
(24, 14, ' test test ', 'engineering', 'test', '2021-09-04 09:54:26', '2021-09-04 09:54:26'),
(25, 14, ' hi test eng project on sep04 for eng30 this comment has been added by anji.', 'engineering', 'test', '2021-09-04 09:54:54', '2021-09-04 09:54:54'),
(26, 7, ' test test ', 'engineering', 'test', '2021-09-04 20:54:26', '2021-09-04 20:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `engineering_projects`
--

CREATE TABLE `engineering_projects` (
  `id` bigint(10) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `bid_no` varchar(50) DEFAULT NULL,
  `price` varchar(10) NOT NULL,
  `product` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `operator` varchar(25) DEFAULT NULL,
  `project_status` varchar(25) DEFAULT NULL,
  `bidding_stage` varchar(30) DEFAULT NULL,
  `epic` varchar(20) DEFAULT NULL,
  `oem` varchar(20) DEFAULT NULL,
  `sales_lead` varchar(30) DEFAULT NULL,
  `contract_award` varchar(20) DEFAULT NULL,
  `qtr` varchar(20) DEFAULT NULL,
  `schedule` varchar(25) DEFAULT NULL,
  `general_comments` text DEFAULT NULL,
  `action` varchar(55) DEFAULT NULL,
  `action_update` varchar(100) DEFAULT NULL,
  `cname` varchar(40) NOT NULL,
  `biddate` varchar(20) NOT NULL,
  `execution_date` varchar(35) NOT NULL,
  `budget_holder` varchar(35) NOT NULL,
  `buyer` varchar(40) DEFAULT NULL,
  `sector` varchar(40) NOT NULL,
  `facilities` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engineering_projects`
--

INSERT INTO `engineering_projects` (`id`, `userid`, `project_name`, `project_description`, `priority`, `bid_no`, `price`, `product`, `country`, `region`, `operator`, `project_status`, `bidding_stage`, `epic`, `oem`, `sales_lead`, `contract_award`, `qtr`, `schedule`, `general_comments`, `action`, `action_update`, `cname`, `biddate`, `execution_date`, `budget_holder`, `buyer`, `sector`, `facilities`, `created_date`, `updated_date`, `status`) VALUES
(1, '2', 'ConacoPhillips - Australia - Modec - Barossa FPSO ', 'ConacoPhillips - Australia - Modec - Barossa FPSO - Ehouse - E House 30m *23m 1.5 Lvl', 'Priority 1', '4930', '6,462,417', 'Substations', 'Australia', 'Australasia', 'ConocoPhillips Australia', 'Sanctioned', 'Tendering', '', 'ABB / Siemens', 'Colin Simpson', '2021-09-01', NULL, '12', 'CS spoke to ABB 9 Nov, award now looks like Q1 2021', 'Colin to follow up.', 'Colin S', '', '1970-01-01', '2022-09-01', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 14:32:45', '2021-09-28 14:32:45', '1'),
(2, '2', 'Woodside - Pluto 2 LNG (Bechtel)- Scope of works 7', 'Woodside - Pluto 2 LNG (Bechtel)- Scope of works 7x Substation ', 'Priority 1', '5016', '14,905,525', 'Substations', 'Australia', 'Australasia', 'Woodside', 'Sanctioned', 'Tendering', '', 'Schneider / ABB', 'Chris Shaman', '2021-09-28', NULL, '12', 'ABB/SE - Bids submitted, follow ups with Julie Park & Robert Bagnal\r\n', 'Chris to Submit final offer 04/08/2021', 'Chris Sharman', '', '1970-01-01', '2022-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 14:43:05', '2021-09-28 14:43:05', '1'),
(3, '2', 'PTSC M&C - Murphy - Lac Da Vang CPF - EPC of E&I B', 'PTSC M&C - Murphy - Lac Da Vang CPF - EPC of E&I Buildings', 'Priority 2', '5080', '5,703,710', 'Substations', 'Vietnam', 'SE Asia', 'PTSC', 'Feed', 'Tendering', '', 'PTSC / Siemens', 'Colin Simpson', '2021-09-28', NULL, '12', 'hi', 'hi', 'hi', '', '1970-01-01', '2022-09-28', 'Vietnam', NULL, 'Services', 'Vietnam', '2021-09-28 14:50:58', '2021-09-28 14:50:58', '1'),
(4, '2', 'Mozambique LNG Rovuma (ExxonMobil / JGC, Fluor and', 'Mozambique LNG Rovuma (ExxonMobil / JGC, Fluor and TechnipFMC - EPC) 17 E-House', 'Priority 2', '4388', '39,000,000', 'Substations', 'Mozambique', 'Africa', 'ExxonMobile', 'Sanctioned', 'Tendering', '', 'Schneider ', 'Chris Shaman', '2021-09-28', NULL, '12', 'Price submitted', 'Chris to confirm Year of award', 'Validity price submitted to Cyril', '', '1970-01-01', '2022-09-28', 'Mozambique', NULL, 'Services', 'Quatar', '2021-09-28 14:56:18', '2021-09-28 14:56:18', '1'),
(5, '2', 'Iraq: Exxon Mobile - New West Qurna PGDP2 - Substa', 'Iraq: Exxon Mobile - New West Qurna PGDP2 - Substations', 'Priority 2', '5075', '10,350,000', 'Substations', 'Iraq', 'Middle East', 'Basra Gas', 'Sanctioned', 'Tendering', '', 'Siemens', 'Chris Shaman', '2021-09-28', NULL, '12', 'Price submitted ', 'Chris to confirm Year of award', 'Chris Sharman', '', '1970-01-01', '2022-09-28', 'Iraq', NULL, 'Services', 'Quatar', '2021-09-28 15:00:53', '2021-09-28 15:00:53', '1'),
(6, '2', 'East Africa Crude Oil Pipeline (EACOP) for Prefabr', 'East Africa Crude Oil Pipeline (EACOP) for Prefabricated PDC Buildings', 'Priority 1', '4885', '22,500,000', 'Substations', 'Uganda', 'Africa', 'Total', 'Sanctioned', 'Tendering', '', 'Schneider/ABB', 'Colin Simpson', '2021-08-01', NULL, '1', 'On-going clarifcations with SE and ABB', 'ABB - T&C\'s to be resolved', 'Chris Sharman', '', '1970-01-01', '2021-08-04', 'Uganda', NULL, 'Services', 'Uganda', '2021-09-28 15:07:23', '2021-09-28 15:07:23', '1'),
(7, '2', 'Tilenga Upstream - Sub Stations', 'Tilenga Upstream - Sub Stations', 'Priority 1', '4640', '14,530,449', 'Substations', 'Uganda', 'Africa', 'TOTAL', 'Sanctioned', 'Tendering', '', 'Schneider', 'Colin Simpson', '2021-08-01', NULL, '12', 'ABB/SE - Bid submitted ', 'Ongoing dialogue', 'Ongoing engagement with Grenoble', '', '1970-01-01', '2021-08-06', 'Uganda', NULL, 'Services', 'Uganda', '2021-09-28 15:17:21', '2021-09-28 15:17:21', '1'),
(8, '2', 'Honeywell UOP - R060 Module Fabrication | 9040766 ', 'Honeywell UOP - R060 Module Fabrication | 9040766 VG Separ SIV', 'Priority 1', '5094', '14,600,000', 'Fabrication', 'USA', 'North America', 'Venture LNG', 'Delayed', 'Tendering', '', 'Honeywell UOP', 'Madhana', '2021-02-01', NULL, '12', 'Project Delayed UOP', 'Follow-up from other levels. No further update', 'Follow-up from other levels. No further update', '', '1970-01-01', '2021-02-22', 'USA', NULL, 'Fabrication', 'USA', '2021-09-28 15:22:59', '2021-09-28 15:22:59', '1'),
(9, '2', 'Plastic Energy -  recycle plastic - Plant  Fabrica', 'Plastic Energy -  recycle plastic - Plant  Fabrication', 'Priority 1', '5006', '9,925,000', 'Fabrication', 'Spain', 'Europe & FSU', 'Plaseic Energy', 'Sanctioned', 'Tendering', '', '', 'Hum', '2021-09-01', NULL, '12', 'RFQ to be issued in the next couple of months', 'To follow up with both the European and Malaysian Team ', 'Revised submission done on 17 Sep 21', '', '1970-01-01', '2021-09-30', 'Spain', NULL, 'Fabrication', 'Spain', '2021-09-28 15:44:32', '2021-09-28 15:44:32', '1'),
(10, '2', 'INEOS P1 ETHANE CRACKER FEED  on ITB PAU PAR Modul', 'INEOS P1 ETHANE CRACKER FEED  on ITB PAU PAR Modules', 'Priority 2', '5149', '15,000,000', 'Fabrication', 'Belgium', 'Europe & FSU', 'INEOS', 'Feed', 'Tendering', '', 'NA', 'Madhana', '2022-09-28', NULL, '10', 'Project ITB exercise to resume End Q2 2021', 'Round-2 submission to be made by 5 Dec 2020. Unable to ', 'Await for Round 3 RFQ to be released later. Now on HOLD', '', '1970-01-01', '2021-02-22', 'Belgium', NULL, 'Fabrication', 'Belgium', '2021-09-28 15:53:50', '2021-09-28 15:53:50', '1'),
(11, '2', 'ROVUMA LNG-Fabrication of MEG Modules (2 X 1000 T)', 'ROVUMA LNG-Fabrication of MEG Modules (2 X 1000 T)', 'Priority 2', '4959', '13,120,500', 'Fabrication', 'Mozambique', 'Africa', 'ExxonMobil', 'Sanctioned', 'Tendering', '', 'NA', 'Madhana', '2020-12-03', NULL, '15', 'Project on slow track. Understand Wasco price is currently higher by 20-30%', 'Following up with SLB on the status and action. Reminde', 'Madhana', '', '1970-01-01', '2021-09-01', 'Mozambique', NULL, 'Fabrication', 'Quatar', '2021-09-28 15:58:20', '2021-09-28 15:58:20', '1'),
(12, '2', 'Shell BLNG - Brunei - 1 off SS - 2 Split', 'Shell BLNG - Brunei - 1 off SS - 2 Split', 'Priority 3', '5032', '930,189', 'Substations', 'Brunei', 'SE Asia', 'Shell', 'Delayed', 'Tendering', '', 'Schneider ', 'Colin Simpson', '2020-11-12', NULL, '12', 'Delayed - no updates', 'hi', 'hi', '', '', '2021-09-21', 'Badam', NULL, 'Services', 'Badam', '2021-09-28 16:06:26', '2021-09-28 16:06:26', '1'),
(13, '2', 'Murphy - Lac Da Vang CPF - EPC of 1 Vapour Recover', 'Murphy - Lac Da Vang CPF - EPC of 1 Vapour Recovery Compressor', 'Priority 2', '5057', '2,232,766', 'Compression', 'Vietnam', 'SE Asia', 'PTSC', 'Awaiting FID', 'Tendering', '', 'NA', 'Madhana', '2020-11-11', NULL, '12', 'Understand that project is pushed back to end of 2021.', 'Keep in touch with PVD Tech and PTSC M&C.', 'Madhana', '', '1970-01-01', '2021-09-28', 'Vietnam', NULL, 'Services', 'Vietnam', '2021-09-28 16:09:49', '2021-09-28 16:09:49', '1'),
(14, '2', 'Qatar - Al Shaheen Platform - EPC of Produced Wate', 'Qatar - Al Shaheen Platform - EPC of Produced Water Treatment Modules', 'Priority 2', '5069', '7,122,719', 'Process', 'Qatar', 'Middle East', 'Qatar Petroleum', 'Delayed', 'Tendering', '', '', 'Hum', '2020-11-13', NULL, '12', 'To follow up with CETCO and explore other opportunities for modules with them', 'hi', 'Hum', '', '', '2021-09-28', 'Quatar', NULL, 'Services', 'Quatar', '2021-09-28 16:13:30', '2021-09-28 16:13:30', '1'),
(15, '2', 'Sunshine EG1 - Fabrication of PAR Modules', 'Sunshine EG1 - Fabrication of PAR Modules', 'Priority 3', '5121', '50,155,885', 'Fabrication', 'USA', 'North America', 'Formosa', 'Awaiting FID', 'Tendering', '', '', 'Hum', '2020-11-13', NULL, '13', 'hi', 'To follow up with CTCI', 'hum', '', '1970-01-01', '2021-09-28', 'USA', NULL, 'Fabrication', 'USA', '2021-09-28 16:19:38', '2021-09-28 16:19:38', '1'),
(16, '2', 'Comeca_Cadarache - Nuclear Fusion E-house project ', 'Comeca_Cadarache - Nuclear Fusion E-house project - 4 Modular Substations', 'Priority 3', '5131', '802,218', 'Substations', 'Dubai', 'Middle East', 'Ferrovial Aggroman', 'Awaiting FID', 'Tendering', '', 'Comeca', 'Chris Shaman', '2020-11-11', NULL, '12', 'Bid submitted - Clarifications Pending ', 'Chris to follow up with Manuel on the 11/11', 'Chris Sharman', '', '1970-01-01', '2021-09-28', 'Dubai', NULL, 'Services', 'UAE', '2021-09-28 16:25:38', '2021-09-28 16:25:38', '1'),
(17, '2', 'SPD - Shelter for Power Distribution - qtar - 200 ', 'SPD - Shelter for Power Distribution - qtar - 200 Containers', 'Priority 3', '5152', '9,257,135', 'Substations', 'Qatar', 'Middle East', 'NA', 'Unknown', 'Tendering', '', 'H/ABB', 'Chris Shaman', '2020-01-28', NULL, '10', 'Bid Submitted - Ongoing', 'hi', 'Chris Sharman', '', '', '2021-09-28', 'Quatar', NULL, 'Services', 'Quatar', '2021-09-28 16:55:50', '2021-09-28 16:55:50', '1'),
(18, '2', 'Brazil - Gato Do Mato - Offshore E-House', 'Brazil - Gato Do Mato - Offshore E-House', 'Priority 2', '5156', '6,212,438', 'Substations', 'Brazil', 'South America', 'NA', 'Unknown', 'Tendering', '', 'SEF', 'Chris Shaman', '2020-10-28', NULL, '12', 'Bid Submitted - SE & Saipem clarification meeting this week', 'Chris to follow up with SE Monday 2nd', 'Chris Sharman', '', '', '2021-09-28', 'Brazil', NULL, 'Services', 'Brazil', '2021-09-28 18:05:01', '2021-09-28 18:05:01', '1'),
(19, '2', 'Qatar Petroleum - North Field Expansion - 10 off S', 'Qatar Petroleum - North Field Expansion - 10 off SS', 'Priority 3', '4918', '12,636,904', 'Substations', 'Qatar', 'Middle East', 'NA', 'Unknown', 'Tendering', '', 'ABB', 'Colin Simpson', '2020-10-28', NULL, '11', 'Slowed down dramatically', 'Colin to speak to ABB  ', 'Colin S', '', '1970-01-01', '2021-09-21', 'Quatar', NULL, 'Services', 'Quatar', '2021-09-28 18:09:32', '2021-09-28 18:09:32', '1'),
(20, '2', 'ADNOC - Hail & Ghasha -   Substation Building (21.', 'ADNOC - Hail & Ghasha -   Substation Building (21.5m x 10m, 1 floor) –  9  nos.', 'Priority 3', '5000', '41,538,850', 'Substations', 'UAE', 'Middle East', 'NA', 'Unknown', 'Tendering', '', 'ABB', 'Colin Simpson', '2020-10-28', NULL, '11', 'Slowed down dramatically', 'Colin to speak to ABB UK', 'Colin ', '', '', '2021-09-28', 'UAE', NULL, 'Services', 'UAE', '2021-09-28 18:14:21', '2021-09-28 18:14:21', '1'),
(21, '2', 'ExxonMobil -Vietnam - Blue Whale-  3 off LER all d', 'ExxonMobil -Vietnam - Blue Whale-  3 off LER all different sizes', 'Priority 3', '5020', '2,324,874', 'Substations', 'Vietnam', 'SE Asia', 'NA', 'Unknown', 'Tendering', '', '', 'Chris Shaman', '2021-09-28', NULL, '12', 'hi', 'hi', 'chris', '', '', '2022-09-27', 'Vietnam', NULL, 'Services', 'Vietnam', '2021-09-28 18:17:26', '2021-09-28 18:17:26', '1'),
(22, '2', 'Ras Laffan Petrochemical Project (RIE)', 'Ras Laffan Petrochemical Project (RIE)', 'Priority 2', '5086', '2,324,874', 'Substations', 'Qatar', 'Middle East', 'NA', 'Delayed', 'Tendering', '', 'SES', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted - SE also requested WS to be engaged in the FEED - no new information', 'hi', 'Chris', '', '', '2021-09-28', 'Quatar', NULL, 'Services', 'Quatar', '2021-09-28 18:21:15', '2021-09-28 18:21:15', '1'),
(23, '2', 'Ineos Ethane Cracker and PHD Plant Project', 'Ineos Ethane Cracker and PHD Plant Project', 'Priority 3', '5084', '10,085,379', 'Substations', 'Belgium', 'Europe & FSU', 'NA', 'Feed', 'Tendering', '', 'SE', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted', 'Chris to follow up with SE 29th', 'Chris', '', '', '2021-09-28', 'Belgium', NULL, 'Services', 'Belgium', '2021-09-28 18:24:11', '2021-09-28 18:24:11', '1'),
(24, '2', 'Angola Northern Gas Complex', 'Angola Northern Gas Complex', 'Priority 2', '5085', '7,834,610', 'Substations', 'Angola', 'Africa', 'ENI Angola', 'Feed', 'Tendering', '', 'ABB', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted - Ongoing', 'hi', 'Chris Sharman', '', '', '2021-09-28', 'Angola', NULL, 'Services', 'Angola', '2021-09-28 18:27:29', '2021-09-28 18:27:29', '1'),
(25, '2', 'Lotte Indonesia New Ethelene Complex', 'Lotte Indonesia New Ethelene Complex', 'Priority 2', '5164', '33,162,919', 'Substations', 'Indonesia', 'SE Asia', ' PT. LCI ', 'Delayed', 'Tendering', '', 'ABB', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted', 'Chris to follow up with ABB', 'Chris', '', '', '2021-09-28', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-28 18:30:30', '2021-09-28 18:30:30', '1'),
(26, '2', 'PTSC MC - Murphy - Lac Da Vang CPF - EPC of 1 E&I ', 'PTSC MC - Murphy - Lac Da Vang CPF - EPC of 1 E&I Building', 'Priority 3', '5115', '5,898,724', 'Substations', 'Vietnam', 'SE Asia', 'Murphy Oil Corporation', 'Unknown', 'Tendering', '', 'Siemens', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted ', 'Chris to follow up with Siemens', 'chris', '', '', '2021-09-28', 'Vietnam', NULL, 'Services', 'Vietnam', '2021-09-28 18:34:27', '2021-09-28 18:34:27', '1'),
(27, '2', 'Australia -Aldoga Solar Farm - Design and Fabricat', 'Australia -Aldoga Solar Farm - Design and Fabrication of 3 Sub Stations.', 'Priority 2', '5178', '1,453,043', 'Substations', 'Australia', 'Australasia', 'Aldoga Solar', 'Feed', 'Tendering', '', 'ABB', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted', 'HI', 'Chris', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 18:38:43', '2021-09-28 18:38:43', '1'),
(28, '2', 'BESS Enclosure (Project Name TBC)', 'BESS Enclosure (Project Name TBC)', 'Priority 2', '5183', '140,000', 'Substations', 'Singapore', 'SE Asia', 'NA', 'Cancelled', 'Tendering', '', 'ABB', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted - constant dialogue - not optimistic', 'hi', 'Chris', '', '', '2021-09-28', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-28 18:48:45', '2021-09-28 18:48:45', '1'),
(29, '2', 'Sweden - Beowulf-PREEM ROCC Project - Design and F', 'Sweden - Beowulf-PREEM ROCC Project - Design and Fabrication of 6 Sub Stations.', 'Priority 2', '5173', '25,710,240', 'Substations', 'Sweden', 'Europe & FSU', 'Beowulf Energy', 'Cancelled', 'Tendering', '', 'SEF', 'Chris Shaman', '2020-10-28', NULL, '11', 'hi', 'hi', 'Chris', '', '', '2021-09-29', 'Sweden', NULL, 'Services', 'Sweden', '2021-09-28 18:51:51', '2021-09-28 18:51:51', '1'),
(30, '2', 'Linde - 220 kV Substation - Design and Fabrication', 'Linde - 220 kV Substation - Design and Fabrication of 1 GIS Sub Station', 'Priority 2', '5170', '8,324,325', 'Substations', 'Indonesia', 'SE Asia', 'Flour', 'Unknown', 'Tendering', '', 'Siemens', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted ', 'hi', 'Chris Sharman', '', '', '2021-09-28', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-28 18:55:11', '2021-09-28 18:55:11', '1'),
(31, '2', 'Australia - Amrun Project - Weipa Substation - Des', 'Australia - Amrun Project - Weipa Substation - Design and Fabrication of 2 Switchrooms', 'Priority 2', '5192', '584,596', 'Substations', 'Australia', 'Australasia', 'Rio Tinto', 'Feed', 'Tendering', '', 'ABB', 'Chris Shaman', '2020-10-28', NULL, '11', 'Bid Submitted', 'HI', 'Chris', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 18:58:01', '2021-09-28 18:58:01', '1'),
(32, '2', 'Jansz IO - FCS & BWI (Chevron) - GIS Building B835', 'Jansz IO - FCS & BWI (Chevron) - GIS Building B8350, Satcom Building B8351, B8352', 'Priority 2', '5194', '7,753,712', 'Substations', 'Australia', 'Australasia', 'Chevron Phillips Chemical', 'Sanctioned', 'Tendering', '', 'ABB', 'Colin Simpson', '2021-04-22', NULL, '5', 'Bid Submitted  9 Nov', 'Submit new Rev 2 Proposal', 'Follow up for calridication meeting', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 19:01:56', '2021-09-28 19:01:56', '1'),
(33, '2', 'SBM BHP Trion FPU for E-house for FPU', 'SBM BHP Trion FPU for E-house for FPU', 'Priority 2', '5187', '6,122,448', 'Substations', 'Australia', 'Australasia', 'SBM', 'Sanctioned', 'Tendering', '', 'ABB', 'Colin Simpson', '2020-11-09', NULL, '10', 'Bid Submitted 29 Oct. This is a Pre-Feed bid', 'Track', 'CS reg contact with Hendrick', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 19:05:56', '2021-09-28 19:05:56', '1'),
(34, '2', 'BW Adolo FPSO LP Gas Compressor Package', 'BW Adolo FPSO LP Gas Compressor Package', 'Priority 1', '5188', '2,500,000', 'Compression', 'Singapore', 'SE Asia', 'BW Energy', 'Delayed', 'Tendering', '', 'NA', 'Madhana', '2021-06-16', NULL, '3', 'BW has chosen Vane compressor.', 'ROS in strong position due to Vane compressor experienc', 'Provide price breakdown as requested by BWO. Provide price reduction to take the order. Project ON-H', '', '', '2021-09-28', 'Singapore', NULL, 'Operation and Mainte', 'Singapore', '2021-09-28 19:10:01', '2021-09-28 19:10:01', '1'),
(35, '2', 'BWO PECAN FPSO Topside', 'BWO PECAN FPSO Topside', 'Priority 2', '4451A', '175,000,00', 'Topsides', 'Singapore', 'SE Asia', 'BW Energy', 'Awaiting FID', 'Tendering', '', 'NA', 'Madhana', '2021-02-22', NULL, '6', 'Awaiting FID. Smaller FPSO Redeploument option preferred to reduce CAPEX.', 'Follow-up with BWO and Venu', 'Madhana', '', '', '2021-09-28', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-28 19:13:59', '2021-09-28 19:13:59', '1'),
(36, '2', 'P78 Buzios FPSO Fabrication(5 Modules)', 'P78 Buzios FPSO Fabrication(5 Modules)', 'Priority 1', '5182', '35,000,000', 'Fabrication', 'Singapore', 'SE Asia', 'PetroBras', 'Sanctioned', 'Tendering', '', 'NA', 'Madhana', '2021-09-14', NULL, '12', 'There are 3 JV\'s EPC\'s bidding on this: Keppel/HHI - Saipem/DSME - Toyo/Samsung ', 'Awaiting FIRM bid for the module fabrication', 'Keppel informed that new RFQ will be issued. Awaiting', '', '', '2022-09-14', 'Singapore', NULL, 'Fabrication', 'Singapore', '2021-09-28 19:26:51', '2021-09-28 19:26:51', '1'),
(37, '2', 'Pertamina Plaju Refinery - Hydrogen Skid & Reforme', 'Pertamina Plaju Refinery - Hydrogen Skid & Reformer Fabrication', 'Priority 2', '5184', '8,000,000', 'Fabrication', 'Indonesia', 'SE Asia', 'Pertamina', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2020-12-03', NULL, '9', 'Wasco price is very high. ', 'Revise proposal for the addendum and complete the Pre-Q', 'Madhana', '', '', '2021-09-28', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-28 19:31:08', '2021-09-28 19:31:08', '1'),
(38, '2', 'Alexandroupolis FSRU Boiler Module Fabrication(MHI', 'Alexandroupolis FSRU Boiler Module Fabrication(MHI)', 'Priority 2', '5138', '850,000', 'Fabrication', 'Singapore', 'SE Asia', 'Gastrade', 'Awaiting FID', 'Tendering', '', 'MHI', 'Madhana', '2020-12-03', NULL, '9', 'Project delayed. ', 'Project expected to be active again in 1Q 2021', 'Madhana', '', '', '2021-09-28', 'Singapore', NULL, 'Fabrication', 'Singapore', '2021-09-28 19:36:43', '2021-09-28 19:36:43', '1'),
(39, '2', 'Tilenga Vapour Recovery Compressor Package', 'Tilenga Vapour Recovery Compressor Package', 'Priority 2', '4587', '3,462,000', 'Compression', 'Uganda', 'Africa', 'Total', 'Awaiting FID', 'Tendering', '', 'NA', 'Madhana', '2021-02-22', NULL, '7', 'Delayed and bids in progress. Fluor and McD favorites, others are Petrofac, TechnipFMC and Hyundai E&', 'Followed up with Fluor. Delayed, no further update.', 'Madhana', '', '', '2021-09-28', 'Uganda', NULL, 'Operation and Mainte', 'Uganda', '2021-09-28 19:55:59', '2021-09-28 19:55:59', '1'),
(40, '2', 'Shell BONGA FPSO EPC of TEG GDU Package', 'Shell BONGA FPSO EPC of TEG GDU Package', 'Priority 2', '4881', '4,474,000', 'Process', 'Nigeria', 'Africa', 'Shell', 'Awaiting FID', 'Tendering', '', 'NA', 'Madhana', '2020-12-03', NULL, '7', 'Samsung, Saipem and CIMC in the race', 'Awaiting for our TBE sheet submission', 'madhana', '', '', '2021-09-28', 'Nigeria', NULL, 'Services', 'Nigeria', '2021-09-28 20:00:54', '2021-09-28 20:00:54', '1'),
(41, '2', 'Shell HI Project EPC of 01 Gas Compressor Package', 'Shell HI Project EPC of 01 Gas Compressor Package', 'Priority 2', '5163', '1,580,000', 'Compression', 'Nigeria', 'Africa', 'Shell', 'Feed', 'Tendering', '', 'NA', 'Madhana', '2021-02-22', NULL, '7', 'Samsung, Saipem, McD, TechnipFMC and CIMC in the race. Price is 1.85 Mill with options included. Due to local content', 'Project award will be in April 2021', 'Follow-up in April-2021', '', '', '2021-09-28', 'Nigeria', NULL, 'Services', 'Nigeria', '2021-09-28 20:18:30', '2021-09-28 20:18:30', '1'),
(42, '2', 'Shell Marjoram Project EPC of 02 Gas Compressor Pa', 'Shell Marjoram Project EPC of 02 Gas Compressor Package', 'Priority 3', '5199', '5,870,000', 'Compression', 'Malaysia', 'SE Asia', 'Shell', 'Feed', 'Tendering', '', 'NA', 'Madhana', '2020-12-03', NULL, '9', 'Samsung and HEC doing parallel FEED.', 'Proposal submitted to HEC', 'madhana', '', '', '2021-09-28', 'Malaysia', NULL, 'Operation and Mainte', 'Malaysia', '2021-09-28 20:22:34', '2021-09-28 20:22:34', '1'),
(43, '2', 'Perdaman Fertilizer Packaging of Kobelco Screw Com', 'Perdaman Fertilizer Packaging of Kobelco Screw Compressor', 'Priority 3', '5167', '5,230,000', 'Compression', 'Australia', 'Australasia', 'Perdaman', 'Awaiting FID', 'Tendering', '', 'NA', 'Madhana', '2020-12-03', NULL, '9', 'Awaiting updated RFQ from Kobelco', 'Project on-hold', 'madhana', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 20:32:35', '2021-09-28 20:32:35', '1'),
(44, '2', 'P78 Buzios FPSO EPC of Oil Processing & PWT Module', 'P78 Buzios FPSO EPC of Oil Processing & PWT Module', 'Priority 1', '5182A', '40,000,000', 'Process', 'Singapore', 'SE Asia', 'PetroBras', 'Sanctioned', 'Tendering', '', 'NA', 'Madhana', '2021-06-16', NULL, '3', 'There are 3 JV\'s EPC\'s bidding on this: Kepple/HHI - Saipem/DSME - Toyo/Samsung ', 'Proposal submitted to Keppel. ', 'Keppel seems not interested to work with Wasco for the EPC scope.', '', '', '2021-09-28', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-28 20:44:41', '2021-09-28 20:44:41', '1'),
(45, '2', 'Kuwait_Jurassic Production Facility 2', 'Kuwait_Jurassic Production Facility 2', 'Priority 1', '5202', '12,824,384', 'Substations', 'Kuwait', 'Middle East', 'KOC', 'Sanctioned', 'Tendering', '', 'ABB', 'Chris Shaman', '2021-08-04', NULL, '12', 'hi', 'hi', 'Chris Sharman', '', '', '2022-08-04', 'Kuwait', NULL, 'Services', 'Kuwait', '2021-09-28 20:47:27', '2021-09-28 20:47:27', '1'),
(46, '2', 'Jupiter SCP Project - Fabrication of PAU & PAR Mod', 'Jupiter SCP Project - Fabrication of PAU & PAR Modules(2500Tons in total)', 'Priority 2', '5211', '10,000,000', 'Fabrication', 'USA', 'North America', 'TSRC', 'Awaiting FID', 'Tendering', '', 'NA', 'Madhana', '2021-02-22', NULL, '7', 'RFQ received. 9 PAU and 10 PAR. Small modules. FEED completed by CTCI. CTCI likely to be awarded. ROS and MMHE in competiton for the fabrication.', 'Proposal submitted ', 'Delay in project', '', '', '2021-09-28', 'USA', NULL, 'Fabrication', 'USA', '2021-09-28 20:51:44', '2021-09-28 20:51:44', '1'),
(47, '2', 'Tilenga Upstream - Sub Stations', 'Tilenga Upstream - Sub Stations', 'Priority 1', '4555', '21,627,845', 'Substations', 'Uganda', 'Africa', 'Total', 'Awaiting FID', 'Tendering', '', 'ABB', 'Colin Simpson', '2021-02-22', NULL, '7', 'ABB are competing agasint Siemens. SE are bidding to Fluor', 'hi', 'colin s', '', '', '2021-09-28', 'Uganda', NULL, 'Services', 'Uganda', '2021-09-28 20:54:58', '2021-09-28 20:54:58', '1'),
(48, '2', 'Tilemga Upstream - Sub Stations', 'Tilemga Upstream - Sub Stations', 'Priority 1', '4557', '0', 'Substations', 'Uganda', 'Africa', 'Total', 'Awaiting FID', 'Tendering', '', 'Siemens', 'Colin Simpson', '2021-02-22', NULL, '7', 'benny working on price', 'hi', 'colin s', '', '', '2021-09-28', 'Uganda', NULL, 'Services', 'Uganda', '2021-09-28 20:59:41', '2021-09-28 20:59:41', '1'),
(49, '2', 'Control Building (Blast Building)', 'Control Building (Blast Building)', 'Priority 1', '5195', '2,287,109', 'Substations', 'India', 'East Asia', 'Linde', 'Awaiting FID', 'Tendering', '', 'NA', 'Colin Simpson', '2020-12-14', NULL, '7', 'HI', 'TQ clarifications submitted. Scope does not match our o', 'Colin s', '', '', '2021-09-28', 'India', NULL, 'Services', 'India', '2021-09-28 21:28:36', '2021-09-28 21:28:36', '1'),
(50, '2', 'Jurassic Production Facility 2', 'Jurassic Production Facility 2', 'Priority 2', '5202', '12,824,384', 'Substations', 'Kuwait', 'Middle East', 'KOC', 'Feed', 'Tendering', '', 'ABB', 'Chris Shaman', '2020-12-29', NULL, '9', 'HI', 'Follow Up in the New Year', 'Bid Submitted', '', '', '2021-09-28', 'Kuwait', NULL, 'Services', 'Kuwait', '2021-09-28 21:32:41', '2021-09-28 21:32:41', '1'),
(51, '2', 'Buzios 78 FPSO', 'Buzios 78 FPSO', 'Priority 1', '5174', '10,800,953', 'Substations', 'Singapore', 'SE Asia', 'Keppel', 'Cancelled', 'Tendering', '', 'Kongsberg', 'Colin Simpson', '2020-11-19', NULL, '9', 'CS keep chasing', 'CS keep chasing', 'Bid Submitted 4 Nov', '', '', '2021-09-28', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-28 21:38:27', '2021-09-28 21:38:27', '1'),
(52, '2', 'Buzios 78 FPSO', 'Buzios 78 FPSO', 'Priority 1', '5176', '12,156,048', 'Substations', 'Singapore', 'SE Asia', 'Keppel', 'Sanctioned', 'Tendering', '', 'ABB', 'Colin Simpson', '2020-11-12', NULL, '9', 'there are 3 JV\'s EPC\'s bidding on this: Kepple/HHI - Saipem/DSME - Toyo/Samsung ', 'CS keep chasing', 'Bid Submitted 23 Sep', '', '', '2021-09-28', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-28 21:41:52', '2021-09-28 21:41:52', '1'),
(53, '2', 'ABB_SNC Lavalin-Perdaman ICSS', 'ABB_SNC Lavalin-Perdaman ICSS', 'Priority 2', '5208', '0', 'Substations', 'Australia', 'Australasia', 'Perdaman Industries', 'Sanctioned', 'Tendering', '', 'ABB', 'Chris Shaman', '2021-09-28', NULL, '1', 'hi', 'Follow Up in the New Year', 'Chris', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 21:44:52', '2021-09-28 21:44:52', '1'),
(54, '2', 'Western Australia Batter Development Projects Dest', 'Western Australia Batter Development Projects Destiny for E-House BESS Systems', 'Priority 2', '-', '0', 'Substations', 'Australia', 'Australasia', 'Perdaman Industries', 'Cancelled', 'Tendering', '', 'ABB', 'Chris Shaman', '2021-09-28', NULL, '1', 'HI', 'hi', 'Chris', '', '', '2021-09-28', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 21:48:17', '2021-09-28 21:48:17', '1'),
(55, '2', 'KSMI project Saudi Arabia - Design and fabricate 1', 'KSMI project Saudi Arabia - Design and fabricate 179 module Substations', 'Not Addressable', '4668', '0', 'Substations', 'Saudi Arabia', 'Middle East', 'Aramco', 'Sanctioned', 'Loss', '', 'SE', 'Colin Simpson', '2021-09-28', NULL, '1', 'hi', 'hi', 'Colin s', '', '', '2021-09-28', 'Saudi Arabia', NULL, 'Services', 'Saudi Arabia', '2021-09-28 21:55:01', '2021-09-28 21:55:01', '1'),
(56, '2', 'Entry Management Portal', 'Entry Management Portal', 'Priority 2', '5219', '125,350', 'Others', 'Romania', 'Europe & FSU', 'NA', 'Unknown', 'Tendering', '', 'Honeywell', 'Chris Shaman', '2020-12-29', NULL, '9', 'Bid Submitted', 'hi', 'Chris', '', '', '2021-09-28', 'Romania', NULL, 'Services', 'Romania', '2021-09-28 21:59:35', '2021-09-28 21:59:35', '1'),
(57, '2', ' Siemens Indo_Awak mas Gold Mine', 'Siemens Indo_Awak mas Gold Mine', 'Priority 1', '5222', '1,094,384', 'Substations', 'Indonesia', 'SE Asia', 'Pt Masmindo', 'Sanctioned', 'Tendering', '', 'Siemens', 'Chris Shaman', '2021-08-04', NULL, '1', 'Bid Submitted on the 19/01', 'Technical Clarifications Ongoing', 'chris', '', '', '2021-09-28', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-28 22:03:12', '2021-09-28 22:03:12', '1'),
(58, '2', 'GOLDBORO LNG', 'GOLDBORO LNG', 'Priority 1', '5065', '48,000,000', 'Substations', 'USA', 'North America', 'Bechtel', 'Sanctioned', 'Tendering', '', 'ABB / Siemens/Eaton', 'Colin Simpson', '2021-09-01', NULL, '1', 'Eaton Price: 51m submitted 22 Jan', 'hi', 'colin', '', '', '2021-09-28', 'USA', NULL, 'Services', 'USA', '2021-09-28 22:08:20', '2021-09-28 22:08:20', '1'),
(59, '2', 'Mimasu Project - BESS - MV UPS', 'Mimasu Project - BESS - MV UPS', 'Priority 3', '5239', '140,000', 'Substations', 'Japan', 'East Asia', 'NA', 'Sanctioned', 'Tendering', '', 'Hitachi ABB', 'Chris Shaman', '2021-10-03', NULL, '2', 'Budget Price Submitted', 'HI ', 'Chris', '', '', '2021-12-31', 'Japan', NULL, 'Services', 'Japan', '2021-09-28 22:12:37', '2021-09-28 22:12:37', '1'),
(60, '2', 'Pluto Train 2 Project GIS', 'Pluto Train 2 Project GIS', 'Priority 1', '5226', '5,138,077', 'Substations', 'Australia', 'Australasia', 'Bechtel/Woodside', 'Sanctioned', 'Tendering', '', 'Hitachi ABB', 'Chris Shaman', '2021-10-03', NULL, '2', 'Bid Submitted', 'hi', 'Chris', '', '', '2021-12-31', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 22:16:34', '2021-09-28 22:16:34', '1'),
(61, '2', '3Q21030 - Rio TInto Project', '3Q21030 - Rio TInto Project', 'Priority 2', '5244', '147,000', 'Substations', 'Australia', 'Australasia', 'Rio Tinto', 'Sanctioned', 'Tendering', '', 'Hitachi ABB', 'Chris Shaman', '2021-10-03', NULL, '2', 'Budget Price Submitted', 'hi', 'Chris', '', '', '2021-12-31', 'Australia', NULL, 'Services', 'Australia', '2021-09-28 22:22:28', '2021-09-28 22:22:28', '1'),
(62, '2', 'North South Commuter Rail Project', 'North South Commuter Rail Project', 'Priority 2', '5225', '1,186,841', 'Substations', 'Philippines', 'SE Asia', 'Manilla Rail', 'Sanctioned', 'Tendering', '', 'Hitachi ABB', 'Chris Shaman', '2021-10-03', NULL, '3', 'Bid Submitted', 'hi', 'Chris', '', '', '2021-12-31', 'Philippines', NULL, 'Services', 'Philippines', '2021-09-28 23:14:57', '2021-09-28 23:14:57', '1'),
(63, '2', 'E-House Daiwa Yondr Project', 'E-House Daiwa Yondr Project', 'Priority 1', '5240', '2,720,199', 'Substations', 'Indonesia', 'SE Asia', 'Yondr', 'Sanctioned', 'Tendering', '', 'Siemens', 'Chris Shaman', '2021-10-23', NULL, '3', 'Bid Submitted', 'hi ', 'chris', '', '', '2021-12-31', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-28 23:19:31', '2021-09-28 23:19:31', '1'),
(64, '2', 'ABB Shell Jurong Island', 'ABB Shell Jurong Island', 'Priority 1', '52XX', '424,572', 'Substations', 'Singapore', 'SE Asia', 'Jurong Power', 'Sanctioned', 'Tendering', '', 'ABB', 'Chris Shaman', '2021-08-04', NULL, '4', 'HI', 'HI', 'Chris', '', '', '2021-12-31', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-28 23:23:12', '2021-09-28 23:23:12', '1'),
(65, '2', 'Total Dunga', 'Total Dunga', 'Priority 1', '5218', '18,000,000', 'Compression', 'Kazakhstan', 'Europe & FSU', 'Total', 'Sanctioned', 'Tendering', '', 'NA', 'Madhana', '2021-09-24', NULL, '3', 'Bid Submitted on 22Feb2021', 'TCR and GTC closed. Commercial opened. Small clarificat', 'Rebid RFQ received. Bid to reach Total by 21-Oct-2021. Revalidation of all quotes in progress', '', '', '2021-12-31', 'Kazakhatan', NULL, 'Operation and Mainte', 'Kazakhstan', '2021-09-28 23:26:35', '2021-09-28 23:26:35', '1'),
(66, '2', 'UOP-KOC - Jurassic Production Facility SRU Package', 'UOP-KOC - Jurassic Production Facility SRU Package', 'Priority 2', '5227', '14,000,000', 'Fabrication', 'Kuwait', 'Middle East', 'KOC', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-02-23', NULL, '6', 'Bid submitted. UOP providing financing for this project. Strong competition expected for UOP.', 'Other bid for EPC of Gas Treatment Package for Wasco.', 'Madhana', '', '', '2021-09-28', 'Kuwait', NULL, 'Fabrication', 'Kuwait', '2021-09-28 23:30:29', '2021-09-28 23:30:29', '1'),
(67, '2', 'UOP-KOC - Jurassic Production Facility SRU Package', 'UOP-KOC - Jurassic Production Facility SRU Package', 'Priority 2', '52XX', '0', 'Process', 'Kuwait', 'Middle East', 'KOC', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-02-23', NULL, '7', 'Bid to be submitted.', 'HI', 'Madhana', '', '', '2021-09-30', 'Kuwait', NULL, 'Operation and Mainte', 'Kuwait', '2021-09-28 23:34:33', '2021-09-28 23:34:33', '1'),
(68, '2', 'MHI-UKMS Project', 'MHI-UKMS Project', 'Priority 2', '5076A', '26,000,000', 'Fabrication', 'UK', 'Europe & FSU', 'Mitsubishi Chemical', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-02-22', NULL, '7', 'Bid submitted.', 'To followup on status', 'Madhana', '', '', '2021-09-30', 'UK', NULL, 'Fabrication', 'UK', '2021-09-28 23:38:20', '2021-09-28 23:38:20', '1'),
(69, '2', 'MHI-PSCG Project', 'MHI-PSCG Project', 'Priority 2', '5236', '0', 'Fabrication', 'USA', 'North America', 'PSCG', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-02-22', NULL, '7', 'Bid to be submitted', 'HI', 'Madhana', '', '', '2021-09-30', 'USA', NULL, 'Fabrication', 'USA', '2021-09-28 23:43:23', '2021-09-28 23:43:23', '1'),
(70, '2', 'ABB Norway Knarr to Rosebank', 'ABB Norway Knarr to Rosebank', 'Priority 2', '5252', '0', 'Substations', 'UAE', 'Middle East', 'Altera', 'Feed', 'Tendering', '', 'ABB', 'Colin Simpson', '2021-09-01', NULL, '1', 'hi', 'hu', 'colin', '', '', '2021-09-30', 'UAE', NULL, 'Services', 'UAE', '2021-09-29 07:17:42', '2021-09-29 07:17:42', '1'),
(71, '2', 'Buzios P79 E-House', 'Buzios P79 E-House', 'Priority 1', '5203', '15,113,281', 'Substations', 'Singapore', 'SE Asia', 'Saipem', 'Sanctioned', 'Tendering', '', 'SE', 'Chris Shaman', '2021-08-14', NULL, '1', 'Bid Submitted - additional 2% discount issued after submission date pending response from SE', 'hi', 'Chris', '', '', '2021-09-30', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-29 07:21:37', '2021-09-29 07:21:37', '1'),
(72, '2', 'KEGI BESS Project', 'KEGI BESS Project', 'Priority 1', '5250', '109,078', 'Substations', 'Indonesia', 'SE Asia', 'Hitachi Power Grids', 'Sanctioned', 'Tendering', '', 'H/ABB', 'Chris Shaman', '2021-09-07', NULL, '3', 'HI', 'HI', 'Chris', '', '', '2021-12-31', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-29 07:25:13', '2021-09-29 07:25:13', '1'),
(73, '2', 'Sempra ECA LNG', 'Sempra ECA LNG', 'Priority 2', '5261', '0', 'Substations', 'Mexico', 'South America', 'Sempra LNG', 'Sanctioned', 'Tendering', '', 'Technip', 'Colin Simpson', '2021-05-21', NULL, '4', 'Technip have won this EPC', 'RFQ underway', 'colin', '', '', '2021-09-30', 'Mexico', NULL, 'Services', 'Mexico', '2021-09-29 07:32:49', '2021-09-29 07:32:49', '1'),
(74, '2', 'Energia Costa Azul (ECA)', 'Energia Costa Azul (ECA)', 'Priority 2', '5261', '5,990,882', 'Substations', 'Mexico', 'South America', 'NA', 'Sanctioned', 'Tendering', '', 'Siemens', 'Colin Simpson', '2021-05-26', NULL, '4', 'Rev O Proposal submitted', 'hi', 'colin', '', '', '2021-09-30', 'Mexico', NULL, 'Services', 'Mexico', '2021-09-29 07:40:03', '2021-09-29 07:40:03', '1'),
(75, '2', 'MHI-QREC CARBON CAPTURE PROCESS MODULE FABRICATION', 'MHI-QREC CARBON CAPTURE PROCESS MODULE FABRICATION', 'Priority 2', '-', '0', 'Fabrication', 'USA', 'North America', 'MHI', 'Awaiting FID', 'Tendering', '', '', 'Madhana', '2021-06-16', NULL, '3', 'Received RFQ on 17Jun2021', 'HI', 'Madhana', '', '', '2021-09-30', 'USA', NULL, 'Fabrication', 'USA', '2021-09-29 07:42:52', '2021-09-29 07:42:52', '1'),
(76, '2', 'Manyar Copper Smelter', 'Manyar Copper Smelter', 'Priority 2', '5280', '24,222,424', 'Substations', 'Indonesia', 'SE Asia', 'PT Freeport', 'Feed', 'Tendering', '', 'Siemens & ABB', 'Chris Shaman', '2021-09-07', NULL, '3', 'Schedules submitted to both clients.  Current status is both clients are trying to convince Chiyoda to move forward with a pre-fab solution.', 'Support both Seimens and ABB to convince Chiyoda to go ', 'Chris', '', '', '2021-12-31', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-29 07:47:08', '2021-09-29 07:47:08', '1'),
(77, '2', 'Taiwan & Philippines BESS', 'Taiwan & Philippines BESS', 'Priority 1', '5278', '352,181', 'Substations', 'Taiwan', 'East Asia', 'NA', 'Sanctioned', 'Tendering', '', 'HABB', 'Chris Shaman', '2021-09-07', NULL, '3', 'Bid Submitted and clarifications completed.  Waiting for final approval.', 'Hi', 'Chris', '', '', '2021-12-31', 'Taiwan', NULL, 'Services', 'Taiwan', '2021-09-29 07:49:50', '2021-09-29 07:49:50', '1'),
(78, '2', 'Gladstone H2 Ecosystem Project', 'Gladstone H2 Ecosystem Project', 'Priority 2', '5277', '291,012', 'Substations', 'Australia', 'Australasia', 'JGC', 'Sanctioned', 'Tendering', '', 'Eaton', 'Chris Shaman', '2021-08-11', NULL, '11', 'Bid Submitted - clarifications ongoing', 'hi', 'Chris', '', '', '2022-09-01', 'Australia', NULL, 'Services', 'Australia', '2021-09-29 07:52:38', '2021-09-29 07:52:38', '1'),
(79, '2', 'Honeywell Battery Energy Storage Containers (BESS)', 'Honeywell Battery Energy Storage Containers (BESS)', 'Priority 1', '5243', '12,367,668', 'Substations', 'USA', 'North America', 'Honeywell', 'Awaiting FID', 'Tendering', '', 'Honeywell', 'Chris Shaman', '2021-09-07', NULL, '24', 'Bid Submitted based on Honeywell concept.  Clarifications are ongoing.  WS has suggested submitting a solution based on alternate BESS requirements.  Ongoing activity.', 'Chris to submit final clarifications on the 13/08 and a', 'Chris', '', '', '2023-09-01', 'USA', NULL, 'Services', 'USA', '2021-09-29 07:55:34', '2021-09-29 07:55:34', '1'),
(80, '2', 'Lawe Lawe Facilities RDMP RU-V', 'Lawe Lawe Facilities RDMP RU-V', 'Priority 1', '5186', '708,193', 'Substations', 'Indonesia', 'SE Asia', 'Pertamina', 'Sanctioned', 'Tendering', '', 'Pt Mulia', 'Chris Shaman', '2021-08-11', NULL, '4', 'Bid Submitted and clarifications completed.  Waiting for final approval. (Not confident that Pt Mulia can articulate the WS offer - do not see this going through)', 'Chris to follow up by end of August and close if not co', 'Chris', '', '', '2021-12-31', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-29 08:07:08', '2021-09-29 08:07:08', '1'),
(81, '2', 'Bengalon Coal to Methanol Project', 'Bengalon Coal to Methanol Project', 'Priority 2', '5270', '4,512,943', 'Substations', 'Indonesia', 'SE Asia', 'Air Products', 'Sanctioned', 'Tendering', '', 'Rep Agreement', 'Chris Shaman', '2021-08-11', NULL, '13', 'Bid Submitted - clarifications are ongoing', 'Chris to follow up by end of August.', 'Chris', '', '', '2022-09-01', 'Indonesia', NULL, 'Services', 'Indonesia', '2021-09-29 08:10:22', '2021-09-29 08:10:22', '1'),
(82, '2', 'MET X Substation', 'MET X Substation', 'Priority 2', '5264', '485,936', 'Substations', 'Singapore', 'SE Asia', 'Shell', 'Sanctioned', 'Tendering', '', 'SE', 'Chris Shaman', '2021-08-11', NULL, '12', 'Bid Submitted - clarifications ongoing', 'Chris to follow up by end of September.', 'Chris', '', '', '2022-09-01', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-29 08:14:17', '2021-09-29 08:14:17', '1'),
(83, '2', 'Maloo Project', 'Maloo Project', 'Priority 2', '5274', '51,637', 'Substations', 'Malaysia', 'SE Asia', 'NA', 'Sanctioned', 'Tendering', '', 'Siemens', 'Chris Shaman', '2021-08-11', NULL, '4', 'Bid Submitted - clarifications are ongoin', 'Chris to follow up by end of August.', 'Chris', '', '', '2021-12-31', 'Malaysia', NULL, 'Services', 'Malaysia', '2021-09-29 08:38:54', '2021-09-29 08:38:54', '1'),
(84, '2', 'Shell Singa Project', 'Shell Singa Project', 'Priority 2', '5275', '1,489,350', 'Substations', 'Singapore', 'SE Asia', 'Shell', 'Awaiting FID', 'Tendering', '', 'Siemens', 'Chris Shaman', '2021-08-11', NULL, '13', 'Bid Submitted - clarifications are ongoing', 'Chris to follow up by end of September.', 'Chris', '', '1970-01-01', '2022-09-30', 'Singapore', NULL, 'Services', 'Singapore', '2021-09-29 08:41:48', '2021-09-29 08:41:48', '1'),
(85, '2', 'Lu Yuan BESS', 'Lu Yuan BESS', 'Priority 1', '5292', '868,024', 'Substations', 'Taiwan', 'East Asia', 'Sunny Rich Power', 'Sanctioned', 'Tendering', '', 'HABB', 'Chris Shaman', '2021-08-11', NULL, '13', 'Bid Submitted with ongoing clarifications - final offer submitted on the 07/09', 'hi', 'Chris', '', '', '2022-09-30', 'Taiwan', NULL, 'Fabrication', 'Taiwan', '2021-09-29 08:45:09', '2021-09-29 08:45:09', '1'),
(86, '2', 'Cuu Long JOC ESP', 'Cuu Long JOC ESP', 'Priority 2', '5304', '699,000', 'Substations', 'Vietnam', 'SE Asia', 'VietovPetrov', 'Feed', 'Tendering', '', 'Eaton', 'Chris Shaman', '2021-09-07', NULL, '12', 'Bid Submitted - not holding a great deal of hope on this.', 'hi', 'Chris', '', '', '2022-09-30', 'Vietnam', NULL, 'Services', 'Vietnam', '2021-09-29 08:49:49', '2021-09-29 08:49:49', '1'),
(87, '2', 'RISEN Energy BESS & TX', 'RISEN Energy BESS & TX', 'Priority 2', '5295', '214,297', 'Substations', 'Australia', 'Australasia', 'RISEN Energy', 'Awaiting FID', 'Tendering', '', 'RISEN ', 'Chris Shaman', '2021-09-07', NULL, '12', 'Bid Submitted - client responded on 06/09 that this is now sitting with the end client pending a decision.', 'hi', 'Chris', '', '', '2022-09-30', 'Australia', NULL, 'Services', 'Australia', '2021-09-29 08:53:28', '2021-09-29 08:53:28', '1'),
(88, '2', 'Pacific Deep Project', 'Pacific Deep Project', 'Priority 1', '5300', '379,326', 'Substations', 'Australia', 'Australasia', 'NA', 'Sanctioned', 'Tendering', '', 'Siemens', 'Colin Simpson', '2021-09-07', NULL, '12', 'Bid Submitted', 'hi', 'Chris', '', '', '2022-09-30', 'Australia', NULL, 'Services', 'Australia', '2021-09-29 08:55:28', '2021-09-29 08:55:28', '1'),
(89, '2', 'Southern Cross - Integrated Power Block', 'Southern Cross - Integrated Power Block', 'Priority 1', '5301', '0', 'Substations', 'New Zealand', 'Australasia', 'NA', 'Sanctioned', 'Tendering', '', 'Siemens', 'Colin Simpson', '2021-09-07', NULL, '12', 'hi', 'hi', 'chris', '', '', '2022-09-30', 'New Zealand', NULL, 'Services', 'New Zealand', '2021-09-29 08:59:47', '2021-09-29 08:59:47', '1'),
(90, '2', 'CPOC - TAPI Development(Genesis, Malaysia)', 'CPOC - TAPI Development(Genesis, Malaysia)', 'Priority 3', '5284', '12,000,000', 'Compression', 'Malaysia', 'SE Asia', 'CPOC', 'Feed', 'Tendering', '', '', 'Madhana', '2021-09-14', NULL, '12', 'This is in FEED stage. Number of compressors at the moment is 4 nos. This may change later.', 'To follow-up with Genesis, Malaysia who is performing t', 'Madhana', '', '', '2022-09-30', 'Malaysia', NULL, 'Operation and Mainte', 'Malaysia', '2021-09-29 09:41:29', '2021-09-29 09:41:29', '1'),
(91, '2', 'CPOC - Block B17 Development(Technip, Thailand)', 'CPOC - Block B17 Development(Technip, Thailand)', 'Priority 3', '5287', '14,000,000', 'Compression', 'Thailand', 'SE Asia', 'CPOC', 'Feed', 'Tendering', '', '', 'Madhana', '2021-09-28', NULL, '11', 'This is in FEED stage. Number of compressors at the moment is 5 nos. This may change later.', 'To follow-up with Technip, Thailand who is performing t', 'Madhana', '', '', '2022-09-30', 'Thailand', NULL, 'Operation and Mainte', 'Thailand', '2021-09-29 09:44:00', '2021-09-29 09:44:00', '1'),
(92, '2', 'PVEP - Dai Hung - Gas Lift Compressor', 'PVEP - Dai Hung - Gas Lift Compressor', 'Priority 2', '5298', '4,000,000', 'Compression', 'Vietnam', 'SE Asia', 'PVEP', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-09-30', NULL, '12', 'FIRM RFQ expected by Dec-21, Award by May-22', 'Hi', 'Madhana', '', '', '2022-09-30', 'Vietnam', NULL, 'Services', 'Vietnam', '2021-09-29 09:47:09', '2021-09-29 09:47:09', '1'),
(93, '2', 'KANFA - KARISH FPSO-Flash Gas Compressor', 'KANFA - KARISH FPSO-Flash Gas Compressor', 'Priority 1', '5272', '3,800,000', 'Compression', 'Israel', 'Middle East', 'KANFA/ENERGEAN', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-09-17', NULL, '4', 'Technical and Commercial Clarifications on-going. Wasco is in strong position due to our Dubai execution.', 'Close-out the commercials. Competition likely from Exte', 'Madhana', '', '', '2021-12-31', 'Israel', NULL, 'Operation and Mainte', 'Israel', '2021-09-29 09:50:52', '2021-09-29 09:50:52', '1'),
(94, '2', 'Yinson-Enauta FPSO-Modification and Supply of Tops', 'Yinson-Enauta FPSO-Modification and Supply of Topside Modules', 'Priority 2', '-', '0', 'Topsides', 'Singapore', 'SE Asia', 'Yinson', 'Awaiting FID', 'Tendering', '', '', 'Hum', '2021-09-17', NULL, '1', 'Yinson in exclusive discussions with Enauta to modify OSX FPSO', 'Wasco declinded this due to extensive engineering work ', 'To check with Yinson on their execution plan and if required re-enter the bid process.', '', '', '2021-09-29', 'Singapore', NULL, 'Aftermarket', 'Singapore', '2021-09-29 09:55:24', '2021-09-29 09:55:24', '1'),
(95, '2', 'Yinson-Trident BOSS FPSO-Supply of Topside Modules', 'Yinson-Trident BOSS FPSO-Supply of Topside Modules', 'Priority 2', '-', '81,000,000', 'Topsides', 'Singapore', 'SE Asia', 'Yinson', 'Awaiting FID', 'Tendering', '', '', 'Hum', '2021-09-17', NULL, '1', 'FPSO for Brazil. Trident Energy is the enduser', 'To follow-up with Yinson', 'Hum', '', '', '2021-09-30', 'Singapore', NULL, 'Aftermarket', 'Singapore', '2021-09-29 09:57:30', '2021-09-29 09:57:30', '1'),
(96, '2', 'SIP-Limbayong FPSO-Supply of Topsides', 'SIP-Limbayong FPSO-Supply of Topsides', 'Priority 2', '5288', '60,000,000', 'Topsides', 'Malaysia', 'SE Asia', 'Sabah International Petro', 'Awaiting FID', 'Tendering', '', '', 'Hum', '2021-09-09', NULL, '1', 'Proposal under preparation', 'hi', 'Hum', '', '', '2021-09-30', 'Malaysia', NULL, 'Aftermarket', 'Malaysia', '2021-09-29 10:00:07', '2021-09-29 10:00:07', '1'),
(97, '2', 'BAB-Total Angoloa 20/21 - EPC of Topside Modules', 'BAB-Total Angoloa 20/21 - EPC of Topside Modules', 'Priority 2', '-', '0', 'Topsides', 'Malaysia', 'SE Asia', 'Bumi Armada', 'Awaiting FID', 'Tendering', '', '', 'Hum', '2021-09-24', NULL, '4', '2 RFQ\'s received, \r\nEPC of Oil Stabilisation, PWT, Pig Launcher Module(Module M30)\r\nEPC of Gas Compressor Modules M31,M32,M34 inclding supply of compressors', 'Decided not to bid for the gas compressor module as com', 'Hum', '', '', '2021-12-31', 'Malaysia', NULL, 'Aftermarket', 'Malaysia', '2021-09-29 10:04:54', '2021-09-29 10:04:54', '1'),
(98, '2', 'UOP Honeywell-NZNP Russia-Fabrication of SRU Modul', 'UOP Honeywell-NZNP Russia-Fabrication of SRU Modules', 'Priority 1', '5297', '11,763,000', 'Topsides', 'Russia', 'Europe & FSU', 'NZNP', 'Sanctioned', 'Tendering', '', '', 'Madhana', '2021-09-24', NULL, '4', 'Fabrication of PAU, PAR type modules. Competition from Turkey, Korea, Dubai, Vietnam', 'Awaiting revised MTO\'s. Close out the signed MSA deviat', 'Follow-up with Gary', '', '', '2021-12-31', 'Russia', NULL, 'Aftermarket', 'Russia', '2021-09-29 10:07:19', '2021-09-29 10:07:19', '1');

-- --------------------------------------------------------

--
-- Table structure for table `masters_ac_coating`
--

CREATE TABLE `masters_ac_coating` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `ac_coating` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_ac_coating`
--

INSERT INTO `masters_ac_coating` (`id`, `slug`, `ac_coating`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'FBE'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'HTFBE'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'DFBE'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', '3LPE'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', '3LPP'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 'AE'),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 'Unknown'),
(9, '', 'FBE+ARO');

-- --------------------------------------------------------

--
-- Table structure for table `masters_bidding_stage`
--

CREATE TABLE `masters_bidding_stage` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `bidding_stage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_bidding_stage`
--

INSERT INTO `masters_bidding_stage` (`id`, `slug`, `bidding_stage`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Tracking Project'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'Budgetary Submitted'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Tender Submitted'),
(4, '', 'Won'),
(5, '', 'Loss');

-- --------------------------------------------------------

--
-- Table structure for table `masters_buyer`
--

CREATE TABLE `masters_buyer` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `buyer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_buyer`
--

INSERT INTO `masters_buyer` (`id`, `slug`, `buyer`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Operator'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'EPCI'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Pipe Supplier'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_country`
--

CREATE TABLE `masters_country` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `regionid` int(11) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_country`
--

INSERT INTO `masters_country` (`id`, `slug`, `regionid`, `country`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 'Angola'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 1, 'Algeria'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 1, 'Cameroon'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 1, 'Central African Republic (CAR)'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 1, 'Egypt'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 1, 'Ghana'),
(7, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 1, 'Kenya'),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 1, 'Libya'),
(9, '0ade7c2cf97f75d009975f4d720d1fa6c19f4897', 1, 'Morocco'),
(10, 'b1d5781111d84f7b3fe45a0852e59758cd7a87e5', 1, 'Mozambique'),
(11, '17ba0791499db908433b80f37c5fbc89b870084b', 1, 'Nigeria'),
(12, '7b52009b64fd0a2a49e6d8a939753077792b0554', 1, 'Rwanda'),
(13, 'bd307a3ec329e10a2cff8fb87480823da114f8f4', 1, 'Senegal'),
(14, 'fa35e192121eabf3dabf9f5ea6abdbcbc107ac3b', 1, 'Sierra Leone'),
(15, 'f1abd670358e036c31296e66b3b66c382ac00812', 1, 'South Africa'),
(16, '1574bddb75c78a6fd2251d61e2993b5146201319', 1, 'Tanzania'),
(17, '0716d9708d321ffb6a00818614779e779925365c', 1, 'Trinidad'),
(18, '9e6a55b6b4563e652a23be9d623ca5055c356940', 1, 'Tunisia'),
(19, 'b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f', 1, 'Uganda'),
(20, '91032ad7bbcb6cf72875e8e8207dcfba80173f7c', 1, 'Zambia'),
(21, '472b07b9fcf2c2451e8781e944bf5f77cd8457c8', 2, 'Argentina'),
(22, '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', 2, 'Bolivia'),
(23, 'd435a6cdd786300dff204ee7c2ef942d3e9034e2', 2, 'Brazil'),
(24, '4d134bc072212ace2df385dae143139da74ec0ef', 2, 'Guyana'),
(25, 'f6e1126cedebf23e1463aee73f9df08783640400', 2, 'Honduras'),
(26, '887309d048beef83ad3eabf2a79a64a389ab1c9f', 2, 'Mexico'),
(27, 'bc33ea4e26e5e1af1408321416956113a4658763', 2, 'Panama'),
(28, '0a57cb53ba59c46fc4b692527a38a87c78d84028', 2, 'Paraguay'),
(29, '7719a1c782a1ba91c031a682a0a2f8658209adbf', 2, 'Peru'),
(30, '22d200f8670dbdb3e253a90eee5098477c95c23d', 2, 'Venezuela'),
(31, '632667547e7cd3e0466547863e1207a8c0c0c549', 3, 'Australia'),
(32, 'cb4e5208b4cd87268b208e49452ed6e89a68e0b8', 3, 'New Zealand'),
(33, 'b6692ea5df920cad691c20319a6fffd7a4a766b8', 3, 'Papua New Guinea'),
(34, 'f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59', 4, 'Austria'),
(35, '972a67c48192728a34979d9a35164c1295401b71', 4, 'Azerbaijan'),
(36, 'fc074d501302eb2b93e2554793fcaf50b3bf7291', 4, 'Cyprus'),
(37, 'cb7a1d775e800fd1ee4049f7dca9e041eb9ba083', 4, 'Denmark'),
(38, '5b384ce32d8cdef02bc3a139d4cac0a22bb029e8', 4, 'Finland'),
(39, 'ca3512f4dfa95a03169c5a670a4c91a19b3077b4', 4, 'Germany'),
(40, 'af3e133428b9e25c55bc59fe534248e6a0c0f17b', 4, 'Hungary'),
(41, '761f22b2c1593d0bb87e0b606f990ba4974706de', 4, 'Iceland'),
(42, '92cfceb39d57d914ed8b14d0e37643de0797ae56', 4, 'Italy'),
(43, '0286dd552c9bea9a69ecb3759e7b94777635514b', 4, 'Kazakhstan'),
(44, '98fbc42faedc02492397cb5962ea3a3ffc0a9243', 4, 'Latvia'),
(45, 'fb644351560d8296fe6da332236b1f8d61b2828a', 4, 'Montenegro'),
(46, 'fe2ef495a1152561572949784c16bf23abb28057', 4, 'Netherlands'),
(47, '827bfc458708f0b442009c9c9836f7e4b65557fb', 4, 'Norway'),
(48, '64e095fe763fc62418378753f9402623bea9e227', 4, 'Poland'),
(49, '2e01e17467891f7c933dbaa00e1459d23db3fe4f', 4, 'Romania'),
(50, 'e1822db470e60d090affd0956d743cb0e7cdf113', 4, 'Russia'),
(51, 'b7eb6c689c037217079766fdb77c3bac3e51cb4c', 4, 'Slovakia'),
(52, 'a9334987ece78b6fe8bf130ef00b74847c1d3da6', 4, 'Slovenia'),
(53, 'c5b76da3e608d34edb07244cd9b875ee86906328', 4, 'Spain'),
(54, '80e28a51cbc26fa4bd34938c5e593b36146f5e0c', 4, 'Sweden'),
(55, '8effee409c625e1a2d8f5033631840e6ce1dcb64', 4, 'Switzerland'),
(56, '54ceb91256e8190e474aa752a6e0650a2df5ba37', 4, 'Turkey'),
(57, '9109c85a45b703f87f1413a405549a2cea9ab556', 4, 'Ukraine'),
(58, '667be543b02294b7624119adc3a725473df39885', 4, 'UK'),
(59, '5a5b0f9b7d3f8fc84c3cef8fd8efaaa6c70d75ab', 5, 'Indonesia'),
(60, 'e6c3dd630428fd54834172b8fd2735fed9416da4', 5, 'Laos'),
(61, '6c1e671f9af5b46d9c1a52067bdf0e53685674f7', 5, 'Malaysia'),
(62, '511a418e72591eb7e33f703f04c3fa16df6c90bd', 5, 'Myanmar'),
(63, 'a17554a0d2b15a664c0e73900184544f19e70227', 5, 'Philippines'),
(64, 'c66c65175fecc3103b3b587be9b5b230889c8628', 5, 'Singapore'),
(65, '2a459380709e2fe4ac2dae5733c73225ff6cfee1', 5, 'Thailand'),
(66, '59129aacfb6cebbe2c52f30ef3424209f7252e82', 5, 'Timor-Leste'),
(67, '4d89d294cd4ca9f2ca57dc24a53ffb3ef5303122', 6, 'Canada'),
(68, 'b4c96d80854dd27e76d8cc9e21960eebda52e962', 6, 'USA'),
(69, 'a72b20062ec2c47ab2ceb97ac1bee818f8b6c6cb', 7, 'China'),
(70, 'b7103ca278a75cad8f7d065acda0c2e80da0b7dc', 7, 'India'),
(71, 'd02560dd9d7db4467627745bd6701e809ffca6e3', 7, 'Japan'),
(72, 'c097638f92de80ba8d6c696b26e6e601a5f61eb7', 7, 'Mongolia'),
(73, '35e995c107a71caeb833bb3b79f9f54781b33fa1', 7, 'Pakistan'),
(74, '1f1362ea41d1bc65be321c0a378a20159f9a26d0', 7, 'South Korea'),
(75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 7, 'Taiwan'),
(76, 'd54ad009d179ae346683cfc3603979bc99339ef7', 8, 'Bahrain'),
(77, 'd321d6f7ccf98b51540ec9d933f20898af3bd71e', 8, 'Iran'),
(78, 'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f', 8, 'Iraq'),
(79, 'b74f5ee9461495ba5ca4c72a7108a23904c27a05', 8, 'Israel'),
(80, 'b888b29826bb53dc531437e723738383d8339b56', 8, 'Jordan'),
(81, '1d513c0bcbe33b2e7440e5e14d0b22ef95c9d673', 8, 'Kuwait'),
(82, '76546f9a641ede2beab506b96df1688d889e629a', 8, 'Lebanon'),
(83, '7d7116e23efef7292cad5e6f033d9a962708228c', 8, 'Oman'),
(84, 'be461a0cd1fda052a69c3fd94f8cf5f6f86afa34', 8, 'Qatar'),
(85, '1352246e33277e9d3c9090a434fa72cfa6536ae2', 8, 'Saudi Arabia'),
(86, '3c26dffc8a2e8804dfe2c8a1195cfaa5ef6d0014', 8, 'Syria'),
(87, 'e62d7f1eb43d87c202d2f164ba61297e71be80f4', 8, 'UAE'),
(88, 'b37f6ddcefad7e8657837d3177f9ef2462f98acf', 8, 'Yemen'),
(89, '16b06bd9b738835e2d134fe8d596e9ab0086a985', 1, 'Tets');

-- --------------------------------------------------------

--
-- Table structure for table `masters_cwc`
--

CREATE TABLE `masters_cwc` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `cwc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_cwc`
--

INSERT INTO `masters_cwc` (`id`, `slug`, `cwc`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Yes'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_eng_preferred_facility`
--

CREATE TABLE `masters_eng_preferred_facility` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `preferred_facility` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_eng_preferred_facility`
--

INSERT INTO `masters_eng_preferred_facility` (`id`, `slug`, `preferred_facility`) VALUES
(7, '', 'test'),
(10, '', 'Quatar'),
(11, '', 'Badam'),
(12, '', 'USA'),
(13, '', 'Belgium'),
(14, '', 'Vietnam'),
(15, '', 'Brazil'),
(16, '', 'Australia'),
(17, '', 'UAE'),
(18, '', 'Angola'),
(19, '', 'Indonesia'),
(20, '', 'Singapore'),
(21, '', 'Sweden'),
(22, '', 'Spain'),
(23, '', 'Uganda'),
(24, '', 'Nigeria'),
(25, '', 'Kuwait'),
(26, '', 'India'),
(27, '', 'Saudi Arabia'),
(28, '', 'Romania'),
(29, '', 'Japan'),
(30, '', 'Philippines'),
(31, '', 'Kazakhatan'),
(32, '', 'UK'),
(33, '', 'Mexico'),
(34, '', 'Taiwan'),
(35, '', 'Malaysia'),
(36, '', 'Thailand'),
(37, '', 'Israel'),
(38, '', 'Russia'),
(39, '', 'Mozambique'),
(40, '', 'Iraq'),
(41, '', 'Dubai'),
(42, '', 'New Zealand'),
(43, '', 'Israel');

-- --------------------------------------------------------

--
-- Table structure for table `masters_eng_saleslead`
--

CREATE TABLE `masters_eng_saleslead` (
  `id` bigint(12) NOT NULL,
  `sales_lead` varchar(22) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masters_eng_saleslead`
--

INSERT INTO `masters_eng_saleslead` (`id`, `sales_lead`, `created_date`, `updated_date`) VALUES
(8, 'Anji', '2021-09-04 20:55:55', '2021-09-04 20:55:55'),
(9, 'Colin Simpson', '2021-09-04 12:56:40', '2021-09-04 12:56:40'),
(10, 'Hum', '2021-09-04 12:56:52', '2021-09-04 12:56:52'),
(11, 'Chris Shaman', '2021-09-04 12:57:10', '2021-09-04 12:57:10'),
(12, 'Madhana', '2021-09-04 12:57:23', '2021-09-04 12:57:23'),
(13, 'Others', '2021-09-04 12:57:32', '2021-09-04 12:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `masters_insulation`
--

CREATE TABLE `masters_insulation` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `insulation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_insulation`
--

INSERT INTO `masters_insulation` (`id`, `slug`, `insulation`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'MLPP'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'GSPP'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'PP Foam'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'PU Foam'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'GSPU'),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_internal_lining`
--

CREATE TABLE `masters_internal_lining` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `internal_lining` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_internal_lining`
--

INSERT INTO `masters_internal_lining` (`id`, `slug`, `internal_lining`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Yes'),
(4, '', 'Internal Flowcoat'),
(5, '', 'Internal FBE'),
(6, '', 'Not Applicable'),
(7, '', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_period`
--

CREATE TABLE `masters_period` (
  `id` int(11) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `period` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_period`
--

INSERT INTO `masters_period` (`id`, `slug`, `period`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'QTR 1'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'QTR 2'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'QTR 3'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'QTR 4'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_pipesize`
--

CREATE TABLE `masters_pipesize` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `pipesize` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_pipesize`
--

INSERT INTO `masters_pipesize` (`id`, `slug`, `pipesize`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', '3\"'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', '6\"'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', '8\"'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', '10\"'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', '12\"'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', '14\"'),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', '16\"'),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', '18\"'),
(9, '0ade7c2cf97f75d009975f4d720d1fa6c19f4897', '20\"'),
(11, '17ba0791499db908433b80f37c5fbc89b870084b', '24\"'),
(12, '7b52009b64fd0a2a49e6d8a939753077792b0554', '26\"'),
(13, 'bd307a3ec329e10a2cff8fb87480823da114f8f4', '28\"'),
(14, 'fa35e192121eabf3dabf9f5ea6abdbcbc107ac3b', '30\"'),
(15, 'f1abd670358e036c31296e66b3b66c382ac00812', '32\"'),
(16, '1574bddb75c78a6fd2251d61e2993b5146201319', '34\"'),
(17, '0716d9708d321ffb6a00818614779e779925365c', '36\"'),
(18, '9e6a55b6b4563e652a23be9d623ca5055c356940', '38\"'),
(19, 'b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f', '40\"'),
(20, '91032ad7bbcb6cf72875e8e8207dcfba80173f7c', '42\"'),
(21, '472b07b9fcf2c2451e8781e944bf5f77cd8457c8', '44\"'),
(22, '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', '46\"'),
(23, 'd435a6cdd786300dff204ee7c2ef942d3e9034e2', '48\"');

-- --------------------------------------------------------

--
-- Table structure for table `masters_pipe_material`
--

CREATE TABLE `masters_pipe_material` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `material` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_pipe_material`
--

INSERT INTO `masters_pipe_material` (`id`, `slug`, `material`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Carbon Steel (CS)'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'CS + CRA'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'CRA'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'Unknown'),
(6, '', 'test'),
(7, '', 'test'),
(8, '', 'test'),
(9, '', 'test'),
(10, '', 'test'),
(11, '', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `masters_pipe_type`
--

CREATE TABLE `masters_pipe_type` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_pipe_type`
--

INSERT INTO `masters_pipe_type` (`id`, `slug`, `type`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'LSAW'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'HFW'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'HFI'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'ERW'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'SMLS'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 'Mechanical Line(MLP)'),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', 'Metallurgical Clad (CLAD)'),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 'CRA Duplex'),
(10, 'b1d5781111d84f7b3fe45a0852e59758cd7a87e5', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_preferred_facility`
--

CREATE TABLE `masters_preferred_facility` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `preferred_facility` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_preferred_facility`
--

INSERT INTO `masters_preferred_facility` (`id`, `slug`, `preferred_facility`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Kuantan'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'Qatar'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Greece'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'UK'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'Others'),
(7, '', 'test pipeline');

-- --------------------------------------------------------

--
-- Table structure for table `masters_priority`
--

CREATE TABLE `masters_priority` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `priority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_priority`
--

INSERT INTO `masters_priority` (`id`, `slug`, `priority`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Priority 1'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'Priority 2'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Priority 3'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 'Not Addressable');

-- --------------------------------------------------------

--
-- Table structure for table `masters_products`
--

CREATE TABLE `masters_products` (
  `id` bigint(12) NOT NULL,
  `product` varchar(22) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masters_products`
--

INSERT INTO `masters_products` (`id`, `product`, `created_date`, `updated_date`) VALUES
(9, 'product-1', '2021-08-29 21:28:39', '2021-08-29 21:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `masters_project_status`
--

CREATE TABLE `masters_project_status` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `project_status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_project_status`
--

INSERT INTO `masters_project_status` (`id`, `slug`, `project_status`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Concept'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'Feed'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Awaiting FID'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'Sanctioned'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'Suspended'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 'Cancelled'),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', 'Delayed'),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `masters_region`
--

CREATE TABLE `masters_region` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_region`
--

INSERT INTO `masters_region` (`id`, `slug`, `region`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 'Africa'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'South America'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 'Australasia'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 'Europe & FSU'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'SE Asia'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 'North America'),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', 'East Asia'),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 'Middle East'),
(9, '0ade7c2cf97f75d009975f4d720d1fa6c19f4897', 'tst');

-- --------------------------------------------------------

--
-- Table structure for table `masters_saleslead`
--

CREATE TABLE `masters_saleslead` (
  `id` bigint(12) NOT NULL,
  `sales_lead` varchar(22) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masters_saleslead`
--

INSERT INTO `masters_saleslead` (`id`, `sales_lead`, `created_date`, `updated_date`) VALUES
(1, 'Edgar', '2021-07-20 23:14:59', '2021-07-20 23:14:59'),
(2, 'Jonathan', '2021-07-20 23:14:59', '2021-07-20 23:14:59'),
(3, 'Raymond', '2021-07-20 23:15:35', '2021-07-20 23:15:35'),
(4, 'Mak', '2021-07-20 23:15:35', '2021-07-20 23:15:35'),
(5, 'Mark W', '2021-07-20 23:16:16', '2021-07-20 23:16:16'),
(6, 'GTO', '2021-07-20 23:16:16', '2021-07-20 23:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `masters_sectors`
--

CREATE TABLE `masters_sectors` (
  `id` bigint(12) NOT NULL,
  `sector` varchar(22) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masters_sectors`
--

INSERT INTO `masters_sectors` (`id`, `sector`, `created_date`, `updated_date`) VALUES
(9, 'sector1', '2021-08-29 21:49:07', '2021-08-29 21:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `masters_year`
--

CREATE TABLE `masters_year` (
  `id` int(11) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masters_year`
--

INSERT INTO `masters_year` (`id`, `slug`, `year`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 2020),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 2021),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 2022),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 2023),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 2024),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 2025),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', 2026),
(8, 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 2027),
(9, '', 2029);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `userid` int(11) NOT NULL,
  `project_type` varchar(30) NOT NULL,
  `project_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `priority` varchar(20) NOT NULL,
  `region` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `operator` varchar(120) NOT NULL,
  `project_status` varchar(50) NOT NULL,
  `epci_installer` varchar(120) NOT NULL,
  `pipe_supplier` varchar(120) NOT NULL,
  `trading_house` varchar(120) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `cname` varchar(60) NOT NULL,
  `biddate` varchar(25) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `slug`, `userid`, `project_type`, `project_name`, `description`, `priority`, `region`, `country`, `operator`, `project_status`, `epci_installer`, `pipe_supplier`, `trading_house`, `buyer`, `date`, `cname`, `biddate`, `regDate`, `updateDate`, `status`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 2, 'pipeline', 'CPOC Andal', 'gavin pipe line testing', 'Priority 1', 'SE Asia', 'Malaysia', 'PGSB', 'Awaiting FID', 'Sapura', 'EEW Marubeni', 'ML', 'Pipe Supplier', '2021-09-06', '', '', '2021-08-08 15:16:03', '2021-09-06 10:34:38', '1'),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 10, 'pipeline', 'kerth - KT(graphite)', '2nd pipe line user 2', 'Priority 1', 'SE Asia', 'Malaysia', 'CPOC', 'Sanctioned', 'Sapura', 'EEW', 'SL', 'Pipe Supplier', '2021-08-08', 'xyz', '04-08-2021', '2021-08-08 15:23:48', '2021-08-08 01:53:48', '1'),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 2, 'pipeline', 'admin pipe', 'aden', 'Priority 1', 'SE Asia', 'Malaysia', 'CPOC', 'Cancelled', 'Sapura', 'EEW', 'SL', 'Operator', '2021-08-18', '', '', '2021-08-08 15:34:15', '2021-08-24 21:39:39', '0'),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 13, 'pipeline', 'ktg', 'ktgav', 'Priority 2', 'SE Asia', 'Malaysia', 'CPOC', 'Feed', 'Sapura', 'EEW Marubeni', 'ML', 'Operator', '2021-08-08', '', '', '2021-08-08 17:44:15', '2021-08-08 12:15:20', '1'),
(5, 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 10, 'pipeline', 'anjiii', '2nd pipeline', 'Priority 3', 'SE Asia', 'Malaysia', 'CPOC', 'Concept', 'Sapura', 'EEW', 'ML', 'Trading House', '2021-08-08', '', '', '2021-08-08 17:53:41', '2021-08-25 06:33:48', '0'),
(6, 'c1dfd96eea8cc2b62785275bca38ac261256e278', 2, 'pipeline', 'Scott Test', 'Test Project 19 Aug 2021.', 'Priority 1', 'Australasia', 'Australia', 'Woodside', 'Feed', 'Subsea7 / McDermott', 'Sumitomo', '', 'EPCI', '2021-08-19', '', '', '2021-08-19 17:00:21', '2021-08-19 13:22:14', '1'),
(7, '902ba3cda1883801594b6e1b452790cc53948fda', 2, 'pipeline', '5thseptpi', '5thseptpi', 'Priority 1', 'SE Asia', 'Malaysia', 'cpm', 'Delayed', 'epc', 'nnn', 'nmmmm', 'Pipe Supplier', '2021-09-05', '', '', '2021-09-05 15:29:52', '2021-09-05 02:07:25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `project_actions`
--

CREATE TABLE `project_actions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_type` varchar(30) NOT NULL,
  `actions` text NOT NULL,
  `action_update` text NOT NULL,
  `updated_userid` int(11) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_budget_facilities`
--

CREATE TABLE `project_budget_facilities` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_value` float NOT NULL,
  `bid_stage` varchar(20) NOT NULL,
  `execution_facility` varchar(50) NOT NULL,
  `budget_holder` varchar(20) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_budget_facilities`
--

INSERT INTO `project_budget_facilities` (`id`, `project_id`, `project_value`, `bid_stage`, `execution_facility`, `budget_holder`, `regDate`, `updateDate`) VALUES
(1, 1, 100, 'Won', 'Greece,Kuantan', 'Kuantan', '2021-08-08 15:16:03', '2021-09-06 10:34:38'),
(2, 2, 200, 'Tender Submitted', 'Kuantan,UK', 'Kuantan', '2021-08-08 15:23:48', '2021-08-08 01:53:48'),
(3, 3, 500, 'Loss', 'Greece,Kuantan', 'Kuantan', '2021-08-08 15:34:15', '2021-08-18 07:49:28'),
(4, 4, 600, 'Tracking Project', 'Kuantan', 'Kuantan', '2021-08-08 17:44:15', '2021-08-08 12:19:41'),
(5, 5, 500, 'Loss', 'Kuantan,UK', 'Kuantan', '2021-08-08 17:53:41', '2021-08-08 12:26:05'),
(6, 6, 25, 'Tracking Project', 'Kuantan,UK', 'Kuantan', '2021-08-19 17:00:21', '2021-08-19 13:22:14'),
(7, 7, 1, 'Loss', 'Kuantan', 'Kuantan', '2021-09-05 15:29:52', '2021-09-05 01:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `project_contract_details`
--

CREATE TABLE `project_contract_details` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `year` varchar(20) NOT NULL,
  `period` varchar(10) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_contract_details`
--

INSERT INTO `project_contract_details` (`id`, `project_id`, `year`, `period`, `regDate`, `updateDate`) VALUES
(1, 14, '2020', 'Unknown', '2021-06-13 17:49:27', '2021-06-13 19:17:16'),
(6, 19, '2021', 'QTR 2', '2021-06-14 15:07:59', '2021-06-14 07:07:59'),
(14, 27, '2021', 'Unknown', '2021-06-14 15:58:42', '2021-06-14 07:58:42'),
(15, 28, '2020', 'QTR 4', '2021-06-14 16:04:25', '2021-06-14 08:04:25'),
(16, 29, '2020', 'QTR 1', '2021-06-16 20:02:21', '2021-06-16 12:02:21'),
(17, 30, '2021', '', '2021-06-17 06:23:02', '2021-08-08 10:53:59'),
(18, 0, '2021', 'QTR 4', '2021-06-21 13:37:41', '2021-06-21 05:37:41'),
(26, 31, '2021', 'QTR 4', '2021-06-21 14:35:26', '2021-06-21 06:35:26'),
(27, 32, '2022', 'QTR 1', '2021-06-21 14:38:35', '2021-06-21 06:38:35'),
(28, 33, '2021', 'QTR 3', '2021-06-21 14:46:07', '2021-06-21 06:46:07'),
(30, 34, '2026', 'QTR 1', '2021-06-21 15:33:56', '2021-06-21 07:33:56'),
(31, 35, '2023', 'QTR 2', '2021-06-21 17:18:37', '2021-06-21 09:18:37'),
(32, 36, '2021', 'QTR 1', '2021-06-21 18:04:42', '2021-06-21 10:04:42'),
(33, 37, '2020', 'QTR 1', '2021-06-21 18:05:49', '2021-06-21 10:05:49'),
(34, 38, '2024', 'QTR 2', '2021-06-21 18:19:52', '2021-06-21 10:19:52'),
(35, 39, '2021', 'QTR 3', '2021-06-21 18:42:54', '2021-06-21 10:42:54'),
(36, 40, '2021', '', '2021-06-21 20:53:12', '2021-08-08 08:45:41'),
(37, 41, '2021', 'QTR 2', '2021-06-21 20:56:59', '2021-06-21 12:56:59'),
(38, 42, '2024', 'QTR 3', '2021-06-21 21:39:34', '2021-06-21 22:09:09'),
(39, 43, '2022', 'QTR 2', '2021-06-21 22:23:45', '2021-06-21 14:23:45'),
(40, 44, '2026', 'QTR 4', '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(41, 45, '2026', 'QTR 4', '2021-06-21 23:30:51', '2021-06-21 15:30:51'),
(42, 46, '2020', 'QTR 1', '2021-06-22 08:22:50', '2021-06-22 13:08:22'),
(43, 47, '2021', 'QTR 2', '2021-06-22 11:14:11', '2021-06-22 03:14:11'),
(44, 48, '2024', 'QTR 4', '2021-06-22 13:10:49', '2021-06-22 05:10:49'),
(45, 49, '2021', 'QTR 2', '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(46, 50, '2020', 'QTR 2', '2021-06-22 14:29:31', '2021-06-22 06:29:31'),
(47, 51, '2021', 'QTR 2', '2021-06-22 16:34:25', '2021-06-22 08:34:25'),
(48, 52, '2020', 'QTR 1', '2021-06-22 21:14:38', '2021-06-22 13:14:38'),
(49, 53, '2022', 'QTR 3', '2021-06-22 21:17:06', '2021-06-22 13:17:06'),
(50, 54, '2020', 'QTR 2', '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(51, 55, '2022', 'QTR 2', '2021-06-23 13:59:39', '2021-06-23 14:01:11'),
(52, 56, '2021', 'QTR 4', '2021-06-30 23:27:01', '2021-07-01 00:08:57'),
(53, 57, '2021', 'QTR 2', '2021-07-01 09:29:42', '2021-07-01 01:29:42'),
(54, 58, '2020', 'QTR 1', '2021-07-01 10:10:47', '2021-07-01 02:10:47'),
(55, 59, '2020', 'QTR 1', '2021-07-01 10:14:11', '2021-07-01 02:14:11'),
(56, 60, '2020', 'QTR 1', '2021-07-01 10:16:02', '2021-07-01 02:16:02'),
(57, 61, '2020', 'QTR 1', '2021-07-01 10:18:48', '2021-07-01 02:18:48'),
(58, 62, '2021', 'QTR 2', '2021-07-01 10:24:02', '2021-07-01 02:24:02'),
(59, 63, '2021', 'QTR 1', '2021-07-01 12:15:41', '2021-07-01 04:15:41'),
(60, 64, '2021', 'QTR 2', '2021-07-01 12:41:00', '2021-07-01 04:41:00'),
(61, 65, '2020', 'QTR 1', '2021-07-01 12:45:07', '2021-07-11 13:26:07'),
(62, 66, '2021', 'QTR 2', '2021-07-01 20:06:42', '2021-07-01 20:11:06'),
(63, 67, '16-07-2021', '', '2021-07-26 14:53:19', '2021-07-26 06:53:19'),
(64, 68, '22-07-2021', '', '2021-07-26 18:23:38', '2021-07-26 13:08:00'),
(65, 69, '19-08-2021', '', '2021-08-01 18:22:36', '2021-08-01 10:22:36'),
(66, 70, '20-08-2021', '', '2021-08-01 18:23:17', '2021-08-25 20:22:30'),
(67, 71, '26-08-2021', '', '2021-08-01 18:25:08', '2021-08-01 10:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_execution_period`
--

CREATE TABLE `project_execution_period` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `e_year` varchar(10) NOT NULL,
  `e_period` varchar(10) NOT NULL,
  `duration_month` int(5) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_execution_period`
--

INSERT INTO `project_execution_period` (`id`, `project_id`, `e_year`, `e_period`, `duration_month`, `regDate`, `updateDate`) VALUES
(1, 14, '2020', 'QTR 3', 3, '2021-06-13 17:49:27', '2021-06-13 19:17:16'),
(6, 19, '2021', 'QTR 3', 3, '2021-06-14 15:07:59', '2021-06-14 07:07:59'),
(14, 27, '2021', 'QTR 4', 6, '2021-06-14 15:58:42', '2021-06-14 07:58:42'),
(15, 28, '2021', 'QTR 1', 6, '2021-06-14 16:04:25', '2021-06-14 08:04:25'),
(16, 29, '2020', 'QTR 1', 53, '2021-06-16 20:02:21', '2021-06-16 12:02:21'),
(17, 30, '2021', '', 1, '2021-06-17 06:23:02', '2021-08-08 10:53:59'),
(18, 0, '2021', 'QTR 4', 22, '2021-06-21 13:37:41', '2021-06-21 05:37:41'),
(23, 31, '2021', 'QTR 4', 3, '2021-06-21 14:35:26', '2021-06-21 06:35:26'),
(24, 32, '2020', 'QTR 2', 3, '2021-06-21 14:38:35', '2021-06-21 06:38:35'),
(25, 33, '2021', 'QTR 2', 1, '2021-06-21 14:46:07', '2021-06-21 06:46:07'),
(27, 34, '2023', 'QTR 3', 21, '2021-06-21 15:33:56', '2021-06-21 07:33:56'),
(28, 35, '2021', 'QTR 1', 2, '2021-06-21 17:18:37', '2021-06-21 09:18:37'),
(29, 36, '2023', 'QTR 4', 3, '2021-06-21 18:04:42', '2021-06-21 10:04:42'),
(30, 37, '2020', 'QTR 1', 1, '2021-06-21 18:05:49', '2021-06-21 10:05:49'),
(31, 38, '2023', 'QTR 2', 17, '2021-06-21 18:19:52', '2021-06-21 10:19:52'),
(32, 39, '2021', 'QTR 2', 1, '2021-06-21 18:42:54', '2021-06-21 10:42:54'),
(33, 40, '2021', '', 2, '2021-06-21 20:53:12', '2021-08-08 08:45:41'),
(34, 41, '2021', 'QTR 2', 20, '2021-06-21 20:56:59', '2021-06-21 12:56:59'),
(35, 42, '2023', 'Unknown', 34, '2021-06-21 21:39:34', '2021-06-21 22:09:09'),
(36, 43, '2025', 'QTR 2', 56, '2021-06-21 22:23:45', '2021-06-21 14:23:45'),
(37, 44, '2024', 'Unknown', 23, '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(38, 45, '2024', 'Unknown', 23, '2021-06-21 23:30:51', '2021-06-21 15:30:51'),
(39, 46, '2022', 'QTR 1', 24, '2021-06-22 08:22:50', '2021-06-22 13:08:22'),
(40, 47, '2021', 'QTR 2', 10, '2021-06-22 11:14:11', '2021-06-22 03:14:11'),
(41, 48, '2024', 'QTR 2', 65, '2021-06-22 13:10:49', '2021-06-22 05:10:49'),
(42, 49, '2022', 'QTR 3', 24, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(43, 50, '2020', 'QTR 1', 4, '2021-06-22 14:29:31', '2021-06-22 06:29:31'),
(44, 51, '2021', 'QTR 2', 10, '2021-06-22 16:34:25', '2021-06-22 08:34:25'),
(45, 52, '2024', 'QTR 3', 65, '2021-06-22 21:14:38', '2021-06-22 13:14:38'),
(46, 53, '2022', 'QTR 2', 56, '2021-06-22 21:17:06', '2021-06-22 13:17:06'),
(47, 54, '2021', 'QTR 1', 4, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(48, 55, '2022', 'QTR 4', 10, '2021-06-23 13:59:39', '2021-06-23 14:01:11'),
(49, 56, '2022', 'QTR 3', 3, '2021-06-30 23:27:01', '2021-07-01 00:08:57'),
(50, 57, '2020', 'QTR 1', 90, '2021-07-01 09:29:42', '2021-07-01 01:29:42'),
(51, 58, '2020', 'QTR 1', 1, '2021-07-01 10:10:47', '2021-07-01 02:10:47'),
(52, 59, '2020', 'QTR 1', 16, '2021-07-01 10:14:11', '2021-07-01 02:14:11'),
(53, 60, '2020', 'QTR 1', 16, '2021-07-01 10:16:02', '2021-07-01 02:16:02'),
(54, 61, '2021', 'QTR 2', 8, '2021-07-01 10:18:48', '2021-07-01 02:18:48'),
(55, 62, '2022', 'QTR 2', 10, '2021-07-01 10:24:02', '2021-07-01 02:24:02'),
(56, 63, '2021', 'QTR 1', 34, '2021-07-01 12:15:41', '2021-07-01 04:15:41'),
(57, 64, '2022', 'QTR 2', 16, '2021-07-01 12:41:00', '2021-07-01 04:41:00'),
(58, 65, '2022', 'QTR 2', 4, '2021-07-01 12:45:07', '2021-07-11 13:26:07'),
(59, 66, '2022', 'QTR 2', 6, '2021-07-01 20:06:42', '2021-07-01 20:11:06'),
(60, 67, '26-07-2021', '', 30, '2021-07-26 14:53:19', '2021-07-26 06:54:09'),
(61, 68, '20-07-2021', '', 9, '2021-07-26 18:23:38', '2021-07-26 13:08:00'),
(62, 69, '24-08-2021', '', 5, '2021-08-01 18:22:36', '2021-08-01 10:22:36'),
(63, 70, '24-08-2021', '', 5, '2021-08-01 18:23:17', '2021-08-25 20:22:30'),
(64, 71, '24-08-2021', '', 2, '2021-08-01 18:25:08', '2021-08-01 10:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_pipeline_actions`
--

CREATE TABLE `project_pipeline_actions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `actions` text NOT NULL,
  `action_update` text NOT NULL,
  `updated_userid` int(11) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_pipeline_actions`
--

INSERT INTO `project_pipeline_actions` (`id`, `project_id`, `actions`, `action_update`, `updated_userid`, `regDate`, `updateDate`) VALUES
(1, 0, 'eee', 'rr', 2, '2021-06-21 14:20:50', '2021-06-21 06:20:50'),
(2, 0, 'sd', 'dd', 2, '2021-06-21 14:21:39', '2021-06-21 06:21:39'),
(3, 0, 'qwe', 'qwert', 2, '2021-06-21 14:28:00', '2021-06-21 06:28:00'),
(4, 32, 'hh', 'jj', 2, '2021-06-21 14:38:35', '2021-06-21 06:38:35'),
(5, 33, 'tendering now', '', 2, '2021-06-21 14:46:07', '2021-06-21 06:46:07'),
(6, 0, 'test', '', 2, '2021-06-21 15:26:39', '2021-06-21 07:26:39'),
(7, 34, 'test', '', 2, '2021-06-21 15:33:56', '2021-06-21 07:33:56'),
(8, 35, 'test', 'test', 2, '2021-06-21 17:18:37', '2021-06-21 09:18:37'),
(9, 36, 'test', 'test', 2, '2021-06-21 18:04:42', '2021-06-21 10:04:42'),
(10, 37, 'tet', 'test', 2, '2021-06-21 18:05:49', '2021-06-21 10:05:49'),
(11, 38, 'test', 'test', 2, '2021-06-21 18:19:52', '2021-06-21 10:19:52'),
(12, 39, 'tendering now...', '', 2, '2021-06-21 18:42:54', '2021-06-21 10:42:54'),
(13, 40, 'hi', 'hi action update', 2, '2021-08-08 14:15:42', '2021-08-08 06:15:42'),
(14, 41, 'tendering now', 'rtyuio', 2, '2021-06-21 20:56:59', '2021-06-21 12:56:59'),
(15, 46, 'tendering now', 'hjkl;', 2, '2021-06-22 13:08:22', '2021-06-22 05:08:22'),
(16, 47, 'TENDER SUBMITTED', '', 2, '2021-06-22 11:14:11', '2021-06-22 03:14:11'),
(17, 49, 'cancelled project', '', 2, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(18, 50, 'PIPE CHECK', 'test', 2, '2021-06-22 14:29:31', '2021-06-22 06:29:31'),
(19, 51, 'TENDER SUBMITTED', 'gh', 2, '2021-06-22 16:34:25', '2021-06-22 08:34:25'),
(20, 52, 'Testttt', 'Test', 2, '2021-06-22 21:14:38', '2021-06-22 13:14:38'),
(21, 54, 'more', 'more', 2, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(22, 55, 'tendering now', 'mkkk', 2, '2021-06-23 14:01:11', '2021-06-23 06:01:11'),
(23, 56, 'To action items listed in comments section.', '', 2, '2021-06-30 23:27:01', '2021-06-30 15:27:01'),
(24, 62, 'test', 'test', 2, '2021-07-01 10:24:02', '2021-07-01 02:24:02'),
(25, 63, 'te', 'te', 2, '2021-07-01 12:15:41', '2021-07-01 04:15:41'),
(26, 64, 'test july', 'test july', 2, '2021-07-01 12:41:00', '2021-07-01 04:41:00'),
(27, 65, 'anjitest', 'anjitest', 2, '2021-07-11 13:26:07', '2021-07-11 05:26:07'),
(28, 66, 'pipesizetest', 'test', 2, '2021-07-01 20:11:06', '2021-07-01 12:11:06'),
(29, 67, 'hello', 'hi', 2, '2021-07-26 14:53:19', '2021-07-26 06:53:19'),
(30, 68, 'test', 'test', 2, '2021-07-26 18:38:00', '2021-07-26 10:38:00'),
(31, 69, 'test', 'test', 2, '2021-08-01 18:22:36', '2021-08-01 10:22:36'),
(32, 70, 'test', 'test', 2, '2021-08-26 01:52:31', '2021-08-25 17:52:31'),
(33, 71, 'test', 'test', 2, '2021-08-01 18:25:09', '2021-08-01 10:25:09'),
(34, 30, 'action', 'action update', 2, '2021-08-08 16:23:59', '2021-08-08 08:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `project_pipeline_notes`
--

CREATE TABLE `project_pipeline_notes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `notes` text NOT NULL,
  `updated_userid` int(11) NOT NULL,
  `regDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_pipeline_notes`
--

INSERT INTO `project_pipeline_notes` (`id`, `project_id`, `notes`, `updated_userid`, `regDate`) VALUES
(1, 14, 'AWARDED', 2, '2021-06-13 17:49:27'),
(2, 30, 'Award Q3 2020\r\nSapura will float the coating tender within June 2020\r\nRT 160720 - Project to be packaged with Bukom & Salman\r\nRT 200720 - Prices (reduced from US$3.6M to US$2.8M) submitted to Sapura, EEW & Marubeni.\r\nMWT 240820 Required coated loadout in early March 2021, based on discussion with Sapura.', 2, '2021-08-08 16:23:59'),
(3, 0, 'rrrq', 2, '2021-06-21 14:20:50'),
(4, 0, 'rr', 2, '2021-06-21 14:21:39'),
(5, 0, 'qwertyu', 2, '2021-06-21 14:28:00'),
(6, 32, 'hh', 2, '2021-06-21 14:38:35'),
(7, 33, 'Waiting for CPOC to award the EPC contract. It\'s between TNS and CUEL. Both Thai EPC companies. \r\nMWT 170720 - Been told project is awarded to CUEL/Sapura consortium. Sapura responsible for T&I scope incl. purchase of pipes and coating.\r\nRT 121020 - Thai Nippon Steel (TNS) will be awarded this project. Pipes likely coming out from Japan instead', 2, '2021-06-21 14:46:07'),
(8, 0, 'test', 2, '2021-06-21 15:26:39'),
(9, 34, 'test', 2, '2021-06-21 15:33:56'),
(10, 35, 'test', 2, '2021-06-21 17:18:37'),
(11, 36, 'test', 2, '2021-06-21 18:04:42'),
(12, 37, 'rest', 2, '2021-06-21 18:05:49'),
(13, 38, 'test', 2, '2021-06-21 18:19:52'),
(14, 39, 'Waiting for CPOC to award the EPC contract. It\'s between TNS and CUEL. Both Thai EPC companies. \r\nMWT 170720 - Been told project is awarded to CUEL/Sapura consortium. Sapura responsible for T&I scope incl. purchase of pipes and coating.\r\nRT 121020 - Thai Nippon Steel (TNS) will be awarded this project. Pipes likely coming out from Japan instead of Welspun.', 2, '2021-06-21 18:42:54'),
(15, 40, 'huouhyg', 2, '2021-08-08 14:15:42'),
(16, 41, 'wertyuiop', 2, '2021-06-21 20:56:59'),
(17, 46, 'ghjkl', 2, '2021-06-22 13:08:22'),
(18, 47, 'PUCHONG', 2, '2021-06-22 11:14:11'),
(19, 49, 'multiple pipes', 2, '2021-06-22 14:15:39'),
(20, 50, 'nj 7 pipe test', 2, '2021-06-22 14:29:31'),
(21, 51, 'dfghjkl', 2, '2021-06-22 16:34:25'),
(22, 52, 'Test', 2, '2021-06-22 21:14:38'),
(23, 54, 'more pipe', 2, '2021-06-22 21:26:59'),
(24, 55, 'ghj', 2, '2021-06-23 14:01:11'),
(25, 56, '1. Internal lining - dropdown menu options to be changed to lining type\r\n- Internal Flowcoat\r\n- Internal FBE\r\n- Not Applicable\r\n- Unknown\r\n2. Internal lining - thickness to be changed to microns instead of mm;\r\n3. Coating thickness - when adding an additional pipeline, coating thickness input function disappears and is no longer available;\r\n4. Project Value - need to establish and define how this value is inserted i.e how would we insert a project value of $100m?  There seems to be a character restriction preventing long string of numbers to be inserted.\r\n5. Pipeline Details - user input pipeline details was lost when project was created i.e pipeline details did not display once project was created.\r\n6. Project Edit - once project was created, I am unable to see/add/edit pipeline details.\r\n7. Date - Include function to add date for Budgetary Submitted and Tender Submitted.\r\n8. Execution Facility - include option to select multiple execution facilities ie could be a project which involves both UK and Kuantan.\r\n9. Contract Award Date - Suggest a calendar to select a specific date for contract award rather than Year/Period.\r\n10. Execution Period - Suggest a calendar to select a specific date for Execution Start rather than Year/Period.\r\n11. Bid Stage - Including \"Won\" and \"Lost\" within Bid Stage, and remove from from Priority.\r\n12. Region - Remove drop down for user input for Region.  This should be autopopulated by selecting Country with no option to be manually changed otherwise the scenario exists where country and region are not aligned based on incorrect user input.\r\n13. Summary page for Project List should display the following information:\r\n- Project Name\r\n- Project Value\r\n- Priority\r\n- Country\r\n- Execution Start\r\n- Project Status\r\n- Bidding Stage\r\n- Date last updated\r\n14. Search function needs to be modified beyond a basic word search to include a filtering function i.e how can I do a search and list all 2022 projects? How can I do a search and list all Priority 1 projects?  How can I do a search and list all Priority 1 projects in SE Asia Projects for 2021?\r\n15. Anti-Corrosion Coating - Additional coating type to be added to the drop-down list\r\n- FBE + ARO\r\n16. For all drop downs, N/A should be replaced with Not Applicable.', 2, '2021-07-01 00:08:57'),
(26, 62, 'test', 2, '2021-07-01 10:24:02'),
(27, 63, 'july1st1pmcommentstest', 2, '2021-07-01 12:15:41'),
(28, 64, 'test comment on fist july', 2, '2021-07-01 12:41:00'),
(29, 65, 'anjitest', 2, '2021-07-11 13:26:07'),
(30, 66, 'pipecoating test', 2, '2021-07-01 20:11:06'),
(31, 67, 'Hi', 2, '2021-07-26 14:53:19'),
(32, 68, 'test', 2, '2021-07-26 18:38:00'),
(33, 69, 'test', 2, '2021-08-01 18:22:36'),
(34, 70, 'test', 2, '2021-08-26 01:52:31'),
(35, 71, 'test', 2, '2021-08-01 18:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_pipesize_coating`
--

CREATE TABLE `project_pipesize_coating` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `pipe_size` varchar(10) NOT NULL,
  `length` float NOT NULL,
  `pipe_type` varchar(20) NOT NULL,
  `pipe_material` varchar(20) NOT NULL,
  `wall_thickness` varchar(20) DEFAULT NULL,
  `coating_internal_lining` varchar(20) NOT NULL,
  `coating_internal_thickness` float NOT NULL,
  `coating_anti_corrision` varchar(20) NOT NULL,
  `coating_anti_thickness` float NOT NULL,
  `coating_insulation` varchar(20) NOT NULL,
  `coating_insulation_thickness` float NOT NULL,
  `coating_concrete` varchar(20) NOT NULL,
  `coating_concrete_thickness` float NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_pipesize_coating`
--

INSERT INTO `project_pipesize_coating` (`id`, `project_id`, `pipe_size`, `length`, `pipe_type`, `pipe_material`, `wall_thickness`, `coating_internal_lining`, `coating_internal_thickness`, `coating_anti_corrision`, `coating_anti_thickness`, `coating_insulation`, `coating_insulation_thickness`, `coating_concrete`, `coating_concrete_thickness`, `regDate`, `updateDate`) VALUES
(1, 14, '36\"', 33, '', 'Carbon Steel (CS)', NULL, 'Yes', 0, '3LPE', 0, 'N/A', 0, 'Yes', 0, '2021-06-13 17:49:27', '2021-06-14 12:55:11'),
(2, 14, '24\"', 15, 'ERW', 'Carbon Steel (CS)', NULL, 'Unknown', 0, 'AE', 0, 'GSPP', 0, 'Yes', 0, '2021-06-13 10:26:18', '2021-06-14 12:55:18'),
(3, 28, '16\"', 8, 'HFW', 'Carbon Steel (CS)', NULL, 'N/A', 0, 'AE', 0, 'N/A', 0, 'Yes', 0, '2021-06-14 16:04:25', '2021-06-14 08:04:25'),
(5, 0, '16\"', 22, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Yes', 0, 'AE', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-21 13:37:41', '2021-06-21 05:37:41'),
(6, 0, '16\"', 22, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Yes', 0, 'AE', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-21 14:16:41', '2021-06-21 06:16:41'),
(7, 0, '10\"', 4, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-21 14:20:50', '2021-06-21 06:20:50'),
(8, 0, '10\"', 2, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPE', 0, 'GSPP', 0, 'N/A', 0, '2021-06-21 14:21:39', '2021-06-21 06:21:39'),
(9, 0, '18\"', 18, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPP', 0, 'GSPP', 0, 'N/A', 0, '2021-06-21 14:28:00', '2021-06-21 06:28:00'),
(10, 32, '10\"', 3, 'ERW', 'CRA', NULL, 'Unknown', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-21 14:38:35', '2021-06-21 06:38:35'),
(11, 33, '18\"', 18, 'LSAW', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPP', 0, 'N/A', 0, 'Yes', 0, '2021-06-21 14:46:07', '2021-06-21 06:46:07'),
(12, 0, '10\"', 3, 'CRA Duplex', 'CRA', NULL, 'Unknown', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-21 15:26:39', '2021-06-21 07:26:39'),
(13, 34, '10\"', 3, 'CRA Duplex', 'CRA', NULL, 'Unknown', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-21 15:33:56', '2021-06-21 07:33:56'),
(14, 35, '10\"', 4, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, '3LPE', 0, 'GSPP', 0, 'Unknown', 0, '2021-06-21 17:18:37', '2021-06-21 09:18:37'),
(15, 36, '42\"', 2, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, '3LPP', 0, 'MLPP', 0, 'Unknown', 0, '2021-06-21 18:04:42', '2021-06-21 10:04:42'),
(16, 37, '10\"', -1, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPE', 0, 'GSPP', 0, 'N/A', 0, '2021-06-21 18:05:49', '2021-06-21 10:05:49'),
(17, 38, '10\"', 2, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPP', 0, 'GSPP', 0, 'N/A', 0, '2021-06-21 18:19:52', '2021-06-21 10:19:52'),
(18, 39, '18\"', 18, 'LSAW', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPP', 0, 'N/A', 0, 'Yes', 0, '2021-06-21 18:42:54', '2021-06-21 10:42:54'),
(25, 42, '22\"', 12, 'CRA Super Duplex', 'CS + CRA', NULL, 'Yes', 0, 'DFBE', 0, 'MLPP', 0, 'Yes', 0, '2021-06-21 21:39:34', '2021-06-21 13:39:34'),
(26, 42, '', 14, 'LSAW', 'CRA', NULL, 'Unknown', 0, 'HTFBE', 0, 'N/A', 0, 'N/A', 0, '2021-06-21 21:39:34', '2021-06-21 14:08:33'),
(27, 42, '', 34, 'HFI', 'CS + CRA', NULL, 'Yes', 0, 'DFBE', 0, 'PP Foam', 0, 'N/A', 0, '2021-06-21 21:39:34', '2021-06-21 14:08:33'),
(34, 44, '38\"', 34, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, 'AE', 0, 'GSPU', 0, 'N/A', 0, '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(35, 44, '14', 33, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, 'FBE', 0, 'PP Foam', 0, 'Unknown', 0, '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(36, 44, '32', 34, 'Mechanical Line(MLP)', 'CS + CRA', NULL, 'N/A', 0, 'FBE', 0, 'MLPP', 0, 'Unknown', 0, '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(37, 44, '38', 45, 'HFI', 'CRA', NULL, 'Yes', 0, 'AE', 0, 'N/A', 0, 'N/A', 0, '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(38, 44, '44', 34, 'ERW', 'CRA', NULL, 'N/A', 0, 'N/A', 0, 'PU Foam', 0, 'N/A', 0, '2021-06-21 23:30:37', '2021-06-21 15:30:37'),
(39, 45, '38\"', 34, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, 'AE', 0, 'GSPU', 0, 'N/A', 0, '2021-06-21 23:30:51', '2021-06-21 15:30:51'),
(40, 45, '14', 33, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, 'FBE', 0, 'PP Foam', 0, 'Unknown', 0, '2021-06-21 23:30:51', '2021-06-21 15:30:51'),
(42, 45, '38', 45, 'HFI', 'CRA', NULL, 'Yes', 0, 'AE', 0, 'N/A', 0, 'N/A', 0, '2021-06-21 23:30:51', '2021-06-21 15:30:51'),
(43, 45, '44', 34, 'ERW', 'CRA', NULL, 'N/A', 0, 'N/A', 0, 'PU Foam', 0, 'N/A', 0, '2021-06-21 23:30:51', '2021-06-21 15:30:51'),
(44, 46, '16\"', 16, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, '3LPE', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-22 08:22:50', '2021-06-22 00:22:50'),
(45, 46, '14\"', 14, 'CRA Super Duplex', 'CRA', NULL, 'Unknown', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-22 08:22:50', '2021-06-22 05:08:22'),
(46, 46, '18\"', 18, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, 'AE', 0, 'GSPU', 0, 'N/A', 0, '2021-06-22 08:22:50', '2021-06-22 05:08:22'),
(47, 47, '24\"', 24, 'CRA Super Duplex', 'CRA', NULL, 'Unknown', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-22 11:14:11', '2021-06-22 03:14:11'),
(48, 48, '18\"', 43, 'CRA Super Duplex', 'CRA', NULL, 'N/A', 0, 'DFBE', 0, 'N/A', 0, 'Yes', 0, '2021-06-22 13:10:49', '2021-06-22 05:10:49'),
(49, 48, '40\"', 46, 'HFW', 'CRA', NULL, 'N/A', 0, 'DFBE', 0, 'N/A', 0, 'Unknown', 0, '2021-06-22 13:10:49', '2021-06-22 05:10:49'),
(50, 48, '40\"', 67, 'ERW', 'Unknown', NULL, 'Unknown', 0, 'HTFBE', 0, 'MLPP', 0, 'Unknown', 0, '2021-06-22 13:10:49', '2021-06-22 05:10:49'),
(51, 49, '14\"', 14, 'HFI', 'Carbon Steel (CS)', NULL, 'Unknown', 0, '3LPP', 0, 'GSPP', 0, 'N/A', 0, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(52, 49, '10', 10, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, '3LPE', 0, 'GSPP', 0, 'N/A', 0, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(53, 49, '18', 18, 'HFI', 'CS + CRA', NULL, 'Unknown', 0, 'DFBE', 0, 'MLPP', 0, 'Unknown', 0, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(54, 49, '42', 42, 'SMLS', 'CS + CRA', NULL, 'Yes', 0, 'DFBE', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(55, 49, '24', 24, 'HFW', 'Unknown', NULL, 'Unknown', 0, 'AE', 0, 'GSPP', 0, 'Unknown', 0, '2021-06-22 14:15:39', '2021-06-22 06:15:39'),
(63, 51, '12\"', 12, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, '3LPE', 0, 'GSPP', 0, 'N/A', 0, '2021-06-22 16:34:25', '2021-06-22 08:34:25'),
(64, 51, '10', 10, 'CRA Super Duplex', 'CRA', NULL, 'Unknown', 0, '3LPE', 0, 'GSPP', 0, 'N/A', 0, '2021-06-22 16:34:25', '2021-06-22 08:34:25'),
(71, 53, '42\"', 45, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, 'AE', 0, 'N/A', 0, 'Unknown', 0, '2021-06-22 21:17:06', '2021-06-22 13:17:06'),
(72, 53, '38\"', 56, 'CRA Super Duplex', 'Carbon Steel (CS)', NULL, 'N/A', 0, 'DFBE', 0, 'GSPU', 0, 'Yes', 0, '2021-06-22 21:17:06', '2021-06-22 13:17:06'),
(73, 54, '10\"', 10, 'CRA Duplex', 'Carbon Steel (CS)', NULL, 'Unknown', 0, 'AE', 0, 'MLPP', 0, 'Unknown', 0, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(74, 54, '18\"', 18, 'CRA Super Duplex', 'CS + CRA', NULL, 'Unknown', 0, '3LPE', 0, 'GSPP', 0, 'Unknown', 0, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(75, 54, '44\"', 48, 'HFI', 'CRA', NULL, 'N/A', 0, 'DFBE', 0, 'N/A', 0, 'Unknown', 0, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(76, 54, '26\"', 37, 'LSAW', 'CS + CRA', NULL, 'Unknown', 0, 'N/A', 0, 'GSPP', 0, 'Yes', 0, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(77, 54, '3\"', 3, 'HFW', 'CRA', NULL, 'N/A', 0, 'AE', 0, 'PU Foam', 0, 'Unknown', 0, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(78, 54, '30\"', 30, 'ERW', 'Carbon Steel (CS)', NULL, 'Unknown', 0, 'AE', 0, 'PU Foam', 0, 'Unknown', 0, '2021-06-22 21:26:59', '2021-06-22 13:26:59'),
(79, 55, '14\"', 14, 'HFW', 'CS + CRA', NULL, 'Yes', 0, '3LPE', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-23 13:59:39', '2021-06-23 05:59:39'),
(80, 55, '12\"', 12, 'CRA Super Duplex', 'CRA', NULL, 'Yes', 0, '3LPP', 0, 'GSPU', 0, 'Unknown', 0, '2021-06-23 13:59:39', '2021-06-23 05:59:39'),
(81, 62, '10\"', 10, 'CRA Duplex', 'CRA', '7', 'N/A', 7, '3LPE', 6, 'GSPP', 3, 'N/A', 9, '2021-07-01 10:24:02', '2021-07-01 02:24:02'),
(82, 63, '22\"', 12, 'CRA Super Duplex', '', '124', 'Yes', 13, 'AE', 45, 'PP Foam', 44, 'N/A', 4, '2021-07-01 12:15:41', '2021-07-01 04:15:41'),
(83, 64, '42\"', 8, 'HFI', 'CS + CRA', '40', 'Unknown', 2, '3LPP', 6, 'GSPP', 4, 'Unknown', 6, '2021-07-01 12:41:00', '2021-07-01 04:41:00'),
(84, 65, '14\"', 6, 'CRA Super Duplex', 'CRA', '4', 'Unknown', 5, '3LPP', 12, 'GSPU', 9, 'Unknown', 5, '2021-07-01 12:45:07', '2021-07-01 04:45:07'),
(85, 65, '36\"', 12, 'ERW', 'Carbon Steel (CS)', '5', 'Unknown', 3, 'Unknown', 4, 'GSPU', 4, '', 11, '2021-07-01 12:45:07', '2021-07-11 05:26:07'),
(86, 65, '34\"', 50, 'CRA Super Duplex', 'Unknown', '10', '', 14, '3LPE', 4, 'GSPP', 5, '', 6, '2021-07-01 12:45:07', '2021-07-11 05:26:07'),
(87, 66, '10\"', 85, 'CRA Duplex', 'Carbon Steel (CS)', '10', 'Yes', 3, '3LPE', 3, 'GSPP', 4, 'N/A', 5, '2021-07-01 20:06:42', '2021-07-01 12:06:42'),
(88, 66, '36\"', 3, 'CRA Duplex', 'CRA', '3', 'Unknown', 3, '3LPP', 4, 'GSPU', 7, 'Unknown', 4, '2021-07-01 20:06:42', '2021-07-01 12:06:42'),
(89, 66, '16\"', 100, 'HFI', 'CRA', '121', 'N/A', 7, '3LPE', 4, 'GSPP', 4, 'N/A', 5, '2021-07-01 20:06:42', '2021-07-01 12:06:42'),
(90, 66, '18\"', 2, 'CRA Super Duplex', 'Carbon Steel (CS)', '6', 'N/A', 4, '3LPE', 20, 'GSPP', 32, 'N/A', 12, '2021-07-01 20:06:42', '2021-07-01 12:06:42'),
(91, 67, '34\"', 7, 'Unknown', 'Carbon Steel (CS)', '4', 'Internal FBE', 4, '3LPE', 3, 'GSPU', 4, 'Unknown', 3, '2021-07-26 14:53:19', '2021-07-26 06:53:19'),
(92, 68, '42\"', 55, 'CRA Duplex', 'Carbon Steel (CS)', '5', 'Internal Flowcoat', 4, '3LPP', 3, 'GSPP', 4, 'Unknown', 3, '2021-07-26 18:23:38', '2021-07-26 10:23:38'),
(93, 69, '36\"', 2, 'CRA Duplex', 'Carbon Steel (CS)', '5', 'Internal FBE', 4, '3LPE', 4, 'MLPP', 5, 'Unknown', 3, '2021-08-01 18:22:36', '2021-08-01 10:22:36'),
(95, 71, '42\"', 3, 'ERW', 'CRA', '4', 'Internal FBE', 3, '3LPE', 4, 'GSPP', 3, 'Unknown', 3, '2021-08-01 18:25:08', '2021-08-01 10:25:08'),
(107, 40, '36\"', 11, 'ERW', 'CRA', '22', 'Internal Flowcoat', 22, '3LPP', 33, 'Unknown', 33, 'Unknown', 22, '0000-00-00 00:00:00', '2021-08-08 06:15:42'),
(108, 40, '12\"', 12, 'CRA Duplex', 'CS + CRA', '22', 'Internal Flowcoat', 12, 'AE', 11, 'PP Foam', 12, 'Unknown', 11, '0000-00-00 00:00:00', '2021-08-08 06:15:42'),
(110, 30, '', 30, 'HFW', 'Carbon Steel (CS)', '34', '', 0, '3LPP', 0, '', 0, '', 0, '0000-00-00 00:00:00', '2021-08-08 08:23:59'),
(114, 70, '36\"', 2, 'CRA Duplex', 'Carbon Steel (CS)', '5', 'Internal FBE', 4, '3LPE', 4, 'MLPP', 5, 'Unknown', 3, '0000-00-00 00:00:00', '2021-08-25 17:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  `regDate` datetime NOT NULL,
  `lastUpdated` datetime NOT NULL,
  `lastLogin` datetime NOT NULL,
  `isActive` int(2) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `slug`, `username`, `password`, `email`, `firstName`, `lastName`, `role`, `regDate`, `lastUpdated`, `lastLogin`, `isActive`, `status`) VALUES
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sysadmin@wascoenergy.com', 'System', 'Admin', 'admin', '2021-06-10 16:17:09', '0000-00-00 00:00:00', '2021-10-24 13:20:05', 1, 1),
(9, '0ade7c2cf97f75d009975f4d720d1fa6c19f4897', 'anjikatakam', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '', 'System', 'Admin', 'pipeline', '2021-09-04 17:06:40', '2021-09-05 02:45:30', '2021-10-02 11:51:03', 1, 1),
(12, '7b52009b64fd0a2a49e6d8a939753077792b0554', 'anji', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'anjikatakam.php@gmail.com', 'Anji', 'Reddy', 'engineering', '2021-09-04 17:10:29', '0000-00-00 00:00:00', '2021-10-02 12:01:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` int(11) NOT NULL,
  `role_slug` varchar(30) NOT NULL,
  `role_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `role_slug`, `role_name`) VALUES
(1, 'superadmin', 'Management'),
(2, 'admin', 'Super Admin'),
(3, 'engineering', 'Divison Admin(Engineering)'),
(4, 'pipeline', 'Divison Admin(Pipeline)'),
(5, 'pipeline_sales', 'Sales Team (Pipeline)'),
(6, 'engineering_sales', 'Sales Team (Engineering)'),
(7, 'pipeline_nonsales', 'Non Sales Team (Pipeline)'),
(8, 'engineering_nonsales', 'Non Sales Team(Engineering)');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `userid`, `name`, `ip_address`, `date_time`) VALUES
(1, 2, 'Log in', '202.187.141.134', '2021-06-13 08:07:38'),
(2, 2, 'Log in', '202.187.141.134', '2021-06-13 09:16:09'),
(3, 2, 'Log in', '202.187.141.134', '2021-06-13 12:22:31'),
(4, 2, 'Log in', '157.47.66.4', '2021-06-13 15:38:52'),
(5, 2, 'Log in', '202.187.141.134', '2021-06-13 15:52:53'),
(6, 2, 'Log in', '157.47.66.4', '2021-06-13 16:00:06'),
(7, 2, 'Log in', '27.125.250.211', '2021-06-13 17:49:28'),
(8, 2, 'Log in', '202.187.141.134', '2021-06-13 19:24:27'),
(9, 2, 'Log in', '202.187.141.134', '2021-06-13 19:59:42'),
(10, 2, 'Log in', '202.187.141.134', '2021-06-14 05:28:29'),
(11, 2, 'Log in', '202.187.141.134', '2021-06-14 07:50:08'),
(12, 2, 'Log in', '165.225.112.202', '2021-06-14 10:21:45'),
(13, 2, 'Log in', '157.47.24.58', '2021-06-14 13:29:43'),
(14, 2, 'Log in', '165.225.112.202', '2021-06-14 13:33:22'),
(15, 2, 'Log in', '202.187.141.134', '2021-06-14 20:24:26'),
(16, 2, 'Log in', '202.187.141.134', '2021-06-14 21:23:54'),
(17, 2, 'Log in', '202.187.141.134', '2021-06-15 08:12:48'),
(18, 2, 'Log in', '165.225.112.202', '2021-06-15 10:13:17'),
(19, 2, 'Log in', '202.187.141.134', '2021-06-15 14:50:48'),
(20, 2, 'Log in', '202.187.141.134', '2021-06-16 07:20:49'),
(21, 2, 'Log in', '202.187.141.134', '2021-06-16 07:52:43'),
(22, 2, 'Log in', '165.225.112.202', '2021-06-16 11:55:05'),
(23, 2, 'Log in', '157.48.181.78', '2021-06-16 16:46:37'),
(24, 2, 'Log in', '157.48.181.78', '2021-06-16 16:50:33'),
(25, 2, 'Log in', '202.187.141.134', '2021-06-16 16:53:05'),
(26, 2, 'Log in', '157.47.26.186', '2021-06-16 17:13:16'),
(27, 2, 'Log in', '27.60.228.167', '2021-06-16 19:55:04'),
(28, 2, 'Log in', '27.125.240.22', '2021-06-16 21:13:29'),
(29, 2, 'Log in', '202.187.141.134', '2021-06-17 00:23:16'),
(30, 2, 'Log in', '202.187.141.134', '2021-06-17 00:25:25'),
(31, 2, 'Log in', '202.187.141.134', '2021-06-17 06:01:03'),
(32, 2, 'Log in', '202.187.141.134', '2021-06-17 08:28:39'),
(33, 2, 'Log in', '202.187.141.134', '2021-06-17 11:00:18'),
(34, 2, 'Log in', '202.187.141.134', '2021-06-17 13:30:38'),
(35, 2, 'Log in', '202.187.141.134', '2021-06-17 13:46:05'),
(36, 2, 'Log in', '202.187.141.134', '2021-06-17 13:52:23'),
(37, 2, 'Log in', '202.187.141.134', '2021-06-17 13:53:34'),
(38, 2, 'Log in', '202.187.141.134', '2021-06-17 14:01:39'),
(39, 2, 'Log in', '202.187.141.134', '2021-06-17 16:10:26'),
(40, 2, 'Log in', '202.187.141.134', '2021-06-17 19:13:35'),
(41, 2, 'Log in', '202.187.141.134', '2021-06-17 19:24:46'),
(42, 2, 'Log in', '202.187.141.134', '2021-06-17 19:26:10'),
(43, 2, 'Log in', '27.125.250.102', '2021-06-17 20:17:28'),
(44, 2, 'Log in', '27.125.250.198', '2021-06-17 21:16:11'),
(45, 2, 'Log in', '202.187.72.100', '2021-06-18 00:03:39'),
(46, 2, 'Log in', '202.187.72.100', '2021-06-18 00:06:51'),
(47, 2, 'Log in', '202.187.72.100', '2021-06-18 07:31:21'),
(48, 2, 'Log in', '202.187.72.100', '2021-06-18 08:21:31'),
(49, 2, 'Log in', '202.187.72.100', '2021-06-18 08:27:35'),
(50, 2, 'Log in', '202.187.72.100', '2021-06-18 08:28:38'),
(51, 2, 'Log in', '202.187.72.100', '2021-06-18 08:40:07'),
(52, 2, 'Log in', '202.187.72.100', '2021-06-18 08:43:46'),
(53, 2, 'Log in', '202.187.72.100', '2021-06-18 08:57:11'),
(54, 2, 'Log in', '202.187.72.100', '2021-06-18 10:34:03'),
(55, 2, 'Log in', '202.187.72.100', '2021-06-18 10:36:23'),
(56, 2, 'Log in', '202.187.72.100', '2021-06-18 10:45:56'),
(57, 2, 'Log in', '202.187.72.100', '2021-06-18 11:49:11'),
(58, 2, 'Log in', '202.187.72.100', '2021-06-18 11:50:28'),
(59, 2, 'Log in', '202.187.72.100', '2021-06-18 12:09:55'),
(60, 2, 'Log in', '115.164.72.41', '2021-06-18 12:11:06'),
(61, 2, 'Log in', '27.125.250.246', '2021-06-18 12:12:15'),
(62, 2, 'Log in', '202.187.72.100', '2021-06-18 12:17:20'),
(63, 2, 'Log in', '202.187.72.100', '2021-06-18 12:47:13'),
(64, 2, 'Log in', '115.132.236.77', '2021-06-18 13:14:47'),
(65, 2, 'Log in', '202.187.72.100', '2021-06-18 15:30:47'),
(66, 2, 'Log in', '202.187.161.236', '2021-06-18 16:59:17'),
(67, 2, 'Log in', '202.187.161.236', '2021-06-18 17:07:52'),
(68, 2, 'Log in', '202.187.72.100', '2021-06-19 06:46:09'),
(69, 2, 'Log in', '121.123.38.135', '2021-06-19 09:02:12'),
(70, 2, 'Log in', '202.187.72.100', '2021-06-19 14:03:05'),
(71, 2, 'Log in', '202.187.72.100', '2021-06-20 07:06:30'),
(72, 2, 'Log in', '202.187.72.100', '2021-06-21 09:06:32'),
(73, 2, 'Log in', '202.187.72.100', '2021-06-21 09:08:55'),
(74, 2, 'Log in', '202.187.72.100', '2021-06-21 09:23:00'),
(75, 2, 'Log in', '165.225.112.219', '2021-06-21 10:20:20'),
(76, 2, 'Log in', '202.187.72.100', '2021-06-21 10:21:44'),
(77, 2, 'Log in', '157.47.23.104', '2021-06-21 10:26:26'),
(78, 2, 'Log in', '202.187.72.100', '2021-06-21 10:40:31'),
(79, 2, 'Log in', '157.47.23.104', '2021-06-21 11:01:46'),
(80, 2, 'Log in', '157.48.76.141', '2021-06-21 13:10:23'),
(81, 2, 'Log in', '202.187.72.100', '2021-06-21 13:50:49'),
(82, 2, 'Log in', '202.187.72.100', '2021-06-21 17:02:11'),
(83, 2, 'Log in', '202.187.72.100', '2021-06-21 18:20:20'),
(84, 2, 'Log in', '202.187.72.100', '2021-06-21 18:32:15'),
(85, 2, 'Log in', '202.187.72.100', '2021-06-21 19:36:24'),
(86, 2, 'Log in', '175.141.170.202', '2021-06-21 19:58:47'),
(87, 2, 'Log in', '202.187.72.100', '2021-06-21 20:40:11'),
(88, 2, 'Log in', '157.48.76.141', '2021-06-21 21:33:36'),
(89, 2, 'Log in', '157.48.76.141', '2021-06-21 23:00:23'),
(90, 2, 'Log in', '157.48.76.141', '2021-06-21 23:26:31'),
(91, 2, 'Log in', '157.47.94.91', '2021-06-22 00:27:17'),
(92, 2, 'Log in', '202.187.72.100', '2021-06-22 06:34:59'),
(93, 2, 'Log in', '113.193.178.252', '2021-06-22 09:04:36'),
(94, 2, 'Log in', '202.187.72.100', '2021-06-22 10:30:16'),
(95, 2, 'Log in', '165.225.112.219', '2021-06-22 11:32:36'),
(96, 2, 'Log in', '157.47.112.50', '2021-06-22 12:07:56'),
(97, 2, 'Log in', '202.187.72.100', '2021-06-22 13:25:23'),
(98, 2, 'Log in', '202.187.72.100', '2021-06-22 13:34:30'),
(99, 2, 'Log in', '202.187.72.100', '2021-06-22 13:52:33'),
(100, 2, 'Log in', '165.225.112.219', '2021-06-22 14:00:06'),
(101, 2, 'Log in', '165.225.112.219', '2021-06-22 14:20:22'),
(102, 2, 'Log in', '202.187.72.100', '2021-06-22 14:50:47'),
(103, 2, 'Log in', '157.47.112.50', '2021-06-22 15:34:15'),
(104, 2, 'Log in', '157.48.149.154', '2021-06-22 15:44:38'),
(105, 2, 'Log in', '165.225.112.219', '2021-06-22 15:48:42'),
(106, 2, 'Log in', '202.187.72.100', '2021-06-22 15:49:43'),
(107, 2, 'Log in', '165.225.112.219', '2021-06-22 15:50:17'),
(108, 2, 'Log in', '157.47.112.50', '2021-06-22 15:50:42'),
(109, 2, 'Log in', '165.225.112.219', '2021-06-22 15:51:59'),
(110, 2, 'Log in', '202.187.72.100', '2021-06-22 16:06:21'),
(111, 2, 'Log in', '202.187.72.100', '2021-06-22 16:09:59'),
(112, 2, 'Log in', '202.187.72.100', '2021-06-22 16:13:43'),
(113, 2, 'Log in', '202.187.72.100', '2021-06-22 16:24:08'),
(114, 2, 'Log in', '202.187.72.100', '2021-06-22 20:37:08'),
(115, 2, 'Log in', '157.47.112.50', '2021-06-22 20:55:12'),
(116, 2, 'Log in', '202.187.72.100', '2021-06-22 21:23:00'),
(117, 2, 'Log in', '157.47.112.50', '2021-06-22 21:28:54'),
(118, 2, 'Log in', '202.187.72.100', '2021-06-23 05:59:47'),
(119, 2, 'Log in', '202.187.72.100', '2021-06-23 13:57:28'),
(120, 2, 'Log in', '202.187.72.100', '2021-06-23 14:00:54'),
(121, 2, 'Log in', '202.187.72.100', '2021-06-23 14:04:41'),
(122, 2, 'Log in', '202.187.72.100', '2021-06-23 14:11:45'),
(123, 2, 'Log in', '202.187.72.100', '2021-06-23 15:51:26'),
(124, 2, 'Log in', '202.187.72.100', '2021-06-23 15:54:33'),
(125, 2, 'Log in', '202.187.72.100', '2021-06-23 17:24:51'),
(126, 2, 'Log in', '202.187.72.100', '2021-06-23 17:31:01'),
(127, 2, 'Log in', '218.111.81.146', '2021-06-23 18:04:03'),
(128, 2, 'Log in', '202.187.72.100', '2021-06-23 20:07:30'),
(129, 2, 'Log in', '202.187.72.100', '2021-06-24 07:33:53'),
(130, 2, 'Log in', '202.187.72.100', '2021-06-24 07:38:21'),
(131, 2, 'Log in', '90.240.162.138', '2021-06-24 16:17:39'),
(132, 2, 'Log in', '202.187.55.10', '2021-06-25 10:56:36'),
(133, 2, 'Log in', '157.48.210.167', '2021-06-25 18:20:38'),
(134, 2, 'Log in', '90.240.162.138', '2021-06-25 19:03:05'),
(135, 2, 'Log in', '202.187.55.10', '2021-06-25 20:30:38'),
(136, 2, 'Log in', '202.187.55.10', '2021-06-26 07:32:00'),
(137, 2, 'Log in', '202.187.55.10', '2021-06-26 16:10:17'),
(138, 2, 'Log in', '202.187.55.10', '2021-06-26 18:56:55'),
(139, 2, 'Log in', '157.48.236.210', '2021-06-27 19:08:16'),
(140, 2, 'Log in', '157.48.187.93', '2021-06-28 20:06:56'),
(141, 2, 'Log in', '202.187.55.10', '2021-06-28 23:59:09'),
(142, 2, 'Log in', '202.187.55.10', '2021-06-29 22:08:17'),
(143, 2, 'Log in', '157.47.115.225', '2021-06-30 14:22:14'),
(144, 2, 'Log in', '90.240.162.138', '2021-06-30 23:15:40'),
(145, 2, 'Log in', '157.47.52.11', '2021-07-01 01:52:37'),
(146, 2, 'Log in', '202.187.55.10', '2021-07-01 09:25:09'),
(147, 2, 'Log in', '157.48.176.161', '2021-07-01 10:09:34'),
(148, 2, 'Log in', '202.187.55.10', '2021-07-01 10:45:11'),
(149, 2, 'Log in', '202.187.55.10', '2021-07-01 11:00:54'),
(150, 2, 'Log in', '202.187.55.10', '2021-07-01 12:11:37'),
(151, 2, 'Log in', '202.187.55.10', '2021-07-01 13:33:49'),
(152, 2, 'Log in', '157.48.176.161', '2021-07-01 19:59:45'),
(153, 2, 'Log in', '157.47.70.246', '2021-07-02 08:42:17'),
(154, 2, 'Log in', '157.47.70.246', '2021-07-02 09:08:47'),
(155, 2, 'Log in', '202.187.55.10', '2021-07-11 13:23:03'),
(156, 2, 'Log in', '202.187.55.10', '2021-07-11 13:27:09'),
(157, 2, 'Log in', '202.187.55.10', '2021-07-14 07:27:10'),
(158, 2, 'Log in', '202.187.55.10', '2021-07-14 07:34:20'),
(159, 2, 'Log in', '202.187.55.10', '2021-07-14 10:46:46'),
(160, 2, 'Log in', '90.254.5.11', '2021-07-15 19:14:40'),
(161, 2, 'Log in', '202.187.55.10', '2021-07-16 11:26:05'),
(162, 2, 'Log in', '202.187.55.10', '2021-07-17 07:04:06'),
(163, 2, 'Log in', '::1', '2021-07-17 13:35:29'),
(164, 2, 'Log in', '::1', '2021-07-17 17:42:00'),
(165, 2, 'Log in', '::1', '2021-07-17 18:14:07'),
(166, 2, 'Log in', '::1', '2021-07-17 18:32:15'),
(167, 2, 'Log in', '::1', '2021-07-17 18:33:02'),
(168, 2, 'Log in', '::1', '2021-07-19 00:57:08'),
(169, 2, 'Log in', '::1', '2021-07-20 17:49:12'),
(170, 2, 'Log in', '::1', '2021-07-20 23:40:07'),
(171, 2, 'Log in', '::1', '2021-07-21 02:35:18'),
(172, 2, 'Log in', '::1', '2021-07-21 10:46:51'),
(173, 2, 'Log in', '::1', '2021-07-21 14:59:36'),
(174, 2, 'Log in', '::1', '2021-07-21 15:23:50'),
(175, 2, 'Log in', '::1', '2021-07-21 15:40:05'),
(176, 2, 'Log in', '::1', '2021-07-21 22:14:53'),
(177, 2, 'Log in', '::1', '2021-07-22 10:57:06'),
(178, 2, 'Log in', '::1', '2021-07-22 17:42:03'),
(179, 2, 'Log in', '::1', '2021-07-24 11:58:52'),
(180, 2, 'Log in', '::1', '2021-07-24 16:41:47'),
(181, 2, 'Log in', '::1', '2021-07-24 16:46:27'),
(182, 2, 'Log in', '::1', '2021-07-24 22:44:53'),
(183, 2, 'Log in', '::1', '2021-07-25 02:05:31'),
(184, 2, 'Log in', '::1', '2021-07-25 02:20:18'),
(185, 2, 'Log in', '::1', '2021-07-25 02:22:36'),
(186, 2, 'Log in', '::1', '2021-07-25 02:24:00'),
(187, 2, 'Log in', '::1', '2021-07-25 02:24:42'),
(188, 2, 'Log in', '::1', '2021-07-25 02:25:59'),
(189, 2, 'Log in', '::1', '2021-07-25 02:49:48'),
(190, 2, 'Log in', '::1', '2021-07-25 02:51:19'),
(191, 2, 'Log in', '::1', '2021-07-25 02:52:34'),
(192, 2, 'Log in', '::1', '2021-07-25 02:54:28'),
(193, 2, 'Log in', '::1', '2021-07-25 02:56:03'),
(194, 2, 'Log in', '::1', '2021-07-25 02:56:15'),
(195, 2, 'Log in', '::1', '2021-07-25 02:58:28'),
(196, 2, 'Log in', '::1', '2021-07-25 02:58:38'),
(197, 2, 'Log in', '::1', '2021-07-25 02:59:33'),
(198, 2, 'Log in', '::1', '2021-07-25 03:02:04'),
(199, 2, 'Log in', '::1', '2021-07-25 03:02:51'),
(200, 2, 'Log in', '::1', '2021-07-25 03:03:32'),
(201, 2, 'Log in', '::1', '2021-07-25 03:06:52'),
(202, 2, 'Log in', '::1', '2021-07-25 03:08:00'),
(203, 2, 'Log in', '::1', '2021-07-25 03:08:29'),
(204, 2, 'Log in', '::1', '2021-07-25 03:08:56'),
(205, 2, 'Log in', '::1', '2021-07-25 03:10:04'),
(206, 2, 'Log in', '::1', '2021-07-25 11:31:26'),
(207, 2, 'Log in', '::1', '2021-07-25 11:42:04'),
(208, 2, 'Log in', '::1', '2021-07-25 18:19:20'),
(209, 2, 'Log in', '::1', '2021-07-26 14:49:32'),
(210, 2, 'Log in', '::1', '2021-07-26 17:05:32'),
(211, 2, 'Log in', '::1', '2021-07-27 15:25:21'),
(212, 2, 'Log in', '127.0.0.1', '2021-07-29 17:18:16'),
(213, 2, 'Log in', '::1', '2021-07-30 00:58:04'),
(214, 2, 'Log in', '::1', '2021-07-30 10:40:00'),
(215, 2, 'Log in', '::1', '2021-07-30 14:18:30'),
(216, 2, 'Log in', '::1', '2021-07-30 18:22:14'),
(217, 2, 'Log in', '::1', '2021-07-31 00:29:54'),
(218, 2, 'Log in', '::1', '2021-07-31 11:27:00'),
(219, 2, 'Log in', '::1', '2021-08-01 00:53:22'),
(220, 2, 'Log in', '::1', '2021-08-01 11:56:31'),
(221, 2, 'Log in', '::1', '2021-08-01 16:59:08'),
(222, 2, 'Log in', '::1', '2021-08-02 21:03:30'),
(223, 6, 'Log in', '::1', '2021-08-02 21:16:20'),
(224, 6, 'Log in', '::1', '2021-08-02 21:21:32'),
(225, 2, 'Log in', '::1', '2021-08-02 21:33:33'),
(226, 2, 'Log in', '::1', '2021-08-02 21:33:48'),
(227, 8, 'Log in', '::1', '2021-08-02 21:36:01'),
(228, 2, 'Log in', '::1', '2021-08-05 00:23:11'),
(229, 2, 'Log in', '::1', '2021-08-06 10:44:35'),
(230, 2, 'Log in', '::1', '2021-08-07 00:48:12'),
(231, 2, 'Log in', '::1', '2021-08-07 11:01:08'),
(232, 2, 'Log in', '::1', '2021-08-07 14:52:46'),
(233, 8, 'Log in', '::1', '2021-08-07 17:06:50'),
(234, 2, 'Log in', '::1', '2021-08-07 17:13:07'),
(235, 8, 'Log in', '::1', '2021-08-07 18:03:44'),
(236, 2, 'Log in', '::1', '2021-08-08 11:46:00'),
(237, 8, 'Log in', '::1', '2021-08-08 16:10:15'),
(238, 2, 'Log in', '::1', '2021-08-08 16:18:19'),
(239, 8, 'Log in', '::1', '2021-08-08 16:24:26'),
(240, 2, 'Log in', '::1', '2021-08-08 16:31:36'),
(241, 8, 'Log in', '::1', '2021-08-08 16:42:24'),
(242, 8, 'Log in', '::1', '2021-08-08 16:44:48'),
(243, 8, 'Log in', '::1', '2021-08-08 16:48:24'),
(244, 8, 'Log in', '::1', '2021-08-08 16:51:38'),
(245, 2, 'Log in', '::1', '2021-08-08 16:55:31'),
(246, 8, 'Log in', '::1', '2021-08-08 17:01:24'),
(247, 2, 'Log in', '::1', '2021-08-08 17:11:45'),
(248, 8, 'Log in', '::1', '2021-08-08 17:12:19'),
(249, 8, 'Log in', '::1', '2021-08-08 17:23:52'),
(250, 8, 'Log in', '::1', '2021-08-08 17:32:15'),
(251, 8, 'Log in', '::1', '2021-08-08 17:32:57'),
(252, 8, 'Log in', '::1', '2021-08-08 17:40:00'),
(253, 2, 'Log in', '::1', '2021-08-08 17:51:42'),
(254, 2, 'Log in', '::1', '2021-08-22 10:58:31'),
(255, 2, 'Log in', '::1', '2021-08-23 21:22:39'),
(256, 2, 'Log in', '::1', '2021-08-24 10:41:28'),
(257, 2, 'Log in', '::1', '2021-08-25 00:04:12'),
(258, 2, 'Log in', '::1', '2021-08-25 10:14:37'),
(259, 2, 'Log in', '::1', '2021-08-25 20:30:52'),
(260, 2, 'Log in', '::1', '2021-08-25 22:43:38'),
(261, 2, 'Log in', '::1', '2021-08-29 15:15:26'),
(262, 2, 'Log in', '::1', '2021-08-29 20:01:49'),
(263, 2, 'Log in', '::1', '2021-08-29 23:57:44'),
(264, 2, 'Log in', '::1', '2021-08-30 10:28:18'),
(265, 2, 'Log in', '::1', '2021-08-30 16:51:14'),
(266, 2, 'Log in', '::1', '2021-09-03 16:27:52'),
(267, 2, 'Log in', '::1', '2021-09-04 01:02:55'),
(268, 2, 'Log in', '::1', '2021-09-04 12:10:24'),
(269, 9, 'Log in', '::1', '2021-09-04 17:08:26'),
(270, 2, 'Log in', '::1', '2021-09-04 17:09:21'),
(271, 12, 'Log in', '::1', '2021-09-04 17:10:43'),
(272, 2, 'Log in', '::1', '2021-09-04 17:16:36'),
(273, 2, 'Log in', '::1', '2021-09-04 22:25:51'),
(274, 9, 'Log in', '::1', '2021-09-05 01:40:02'),
(275, 9, 'Log in', '::1', '2021-09-05 01:41:14'),
(276, 12, 'Log in', '::1', '2021-09-05 01:43:13'),
(277, 2, 'Log in', '::1', '2021-09-05 01:51:02'),
(278, 2, 'Log in', '::1', '2021-09-05 02:23:59'),
(279, 2, 'Log in', '::1', '2021-09-05 02:29:25'),
(280, 2, 'Log in', '::1', '2021-09-05 11:22:13'),
(281, 9, 'Log in', '::1', '2021-09-05 18:26:04'),
(282, 2, 'Log in', '::1', '2021-09-05 18:44:01'),
(283, 2, 'Log in', '::1', '2021-09-05 18:46:36'),
(284, 2, 'Log in', '::1', '2021-09-05 18:50:41'),
(285, 2, 'Log in', '::1', '2021-09-05 18:51:56'),
(286, 2, 'Log in', '::1', '2021-09-05 22:56:23'),
(287, 2, 'Log in', '::1', '2021-09-06 10:36:37'),
(288, 2, 'Log in', '::1', '2021-09-06 17:47:25'),
(289, 2, 'Log in', '::1', '2021-09-07 00:16:26'),
(290, 2, 'Log in', '::1', '2021-09-07 11:40:25'),
(291, 2, 'Log in', '::1', '2021-09-07 12:00:06'),
(292, 9, 'Log in', '::1', '2021-09-07 12:02:20'),
(293, 2, 'Log in', '::1', '2021-09-07 12:03:01'),
(294, 2, 'Log in', '::1', '2021-09-07 12:16:42'),
(295, 2, 'Log in', '::1', '2021-09-08 10:54:57'),
(296, 2, 'Log in', '::1', '2021-09-22 10:52:18'),
(297, 2, 'Log in', '::1', '2021-09-25 11:54:14'),
(298, 2, 'Log in', '::1', '2021-09-25 14:35:12'),
(299, 2, 'Log in', '::1', '2021-09-25 14:37:43'),
(300, 2, 'Log in', '::1', '2021-09-25 15:06:37'),
(301, 2, 'Log in', '::1', '2021-09-30 23:45:33'),
(302, 12, 'Log in', '::1', '2021-10-01 14:57:53'),
(303, 9, 'Log in', '::1', '2021-10-01 15:07:12'),
(304, 9, 'Log in', '::1', '2021-10-01 16:52:58'),
(305, 9, 'Log in', '::1', '2021-10-01 16:57:20'),
(306, 9, 'Log in', '::1', '2021-10-01 16:57:31'),
(307, 9, 'Log in', '::1', '2021-10-01 17:01:10'),
(308, 9, 'Log in', '::1', '2021-10-01 17:07:34'),
(309, 9, 'Log in', '::1', '2021-10-01 17:30:22'),
(310, 9, 'Log in', '::1', '2021-10-01 17:32:40'),
(311, 2, 'Log in', '::1', '2021-10-02 11:13:37'),
(312, 9, 'Log in', '::1', '2021-10-02 11:50:25'),
(313, 9, 'Log in', '::1', '2021-10-02 11:51:03'),
(314, 12, 'Log in', '::1', '2021-10-02 12:01:07'),
(315, 2, 'Log in', '::1', '2021-10-02 12:59:44'),
(316, 2, 'Log in', '::1', '2021-10-24 13:20:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineering_projects`
--
ALTER TABLE `engineering_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_ac_coating`
--
ALTER TABLE `masters_ac_coating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_bidding_stage`
--
ALTER TABLE `masters_bidding_stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_buyer`
--
ALTER TABLE `masters_buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_country`
--
ALTER TABLE `masters_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_cwc`
--
ALTER TABLE `masters_cwc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_eng_preferred_facility`
--
ALTER TABLE `masters_eng_preferred_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_eng_saleslead`
--
ALTER TABLE `masters_eng_saleslead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_insulation`
--
ALTER TABLE `masters_insulation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_internal_lining`
--
ALTER TABLE `masters_internal_lining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_period`
--
ALTER TABLE `masters_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_pipesize`
--
ALTER TABLE `masters_pipesize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_pipe_material`
--
ALTER TABLE `masters_pipe_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_pipe_type`
--
ALTER TABLE `masters_pipe_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_preferred_facility`
--
ALTER TABLE `masters_preferred_facility`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`preferred_facility`);

--
-- Indexes for table `masters_priority`
--
ALTER TABLE `masters_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_products`
--
ALTER TABLE `masters_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_project_status`
--
ALTER TABLE `masters_project_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_region`
--
ALTER TABLE `masters_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_saleslead`
--
ALTER TABLE `masters_saleslead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_sectors`
--
ALTER TABLE `masters_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_year`
--
ALTER TABLE `masters_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_actions`
--
ALTER TABLE `project_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_budget_facilities`
--
ALTER TABLE `project_budget_facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id` (`project_id`);

--
-- Indexes for table `project_contract_details`
--
ALTER TABLE `project_contract_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id` (`project_id`);

--
-- Indexes for table `project_execution_period`
--
ALTER TABLE `project_execution_period`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id` (`project_id`);

--
-- Indexes for table `project_pipeline_actions`
--
ALTER TABLE `project_pipeline_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_pipeline_notes`
--
ALTER TABLE `project_pipeline_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_pipesize_coating`
--
ALTER TABLE `project_pipesize_coating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `engineering_projects`
--
ALTER TABLE `engineering_projects`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `masters_ac_coating`
--
ALTER TABLE `masters_ac_coating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `masters_bidding_stage`
--
ALTER TABLE `masters_bidding_stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masters_buyer`
--
ALTER TABLE `masters_buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masters_country`
--
ALTER TABLE `masters_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `masters_cwc`
--
ALTER TABLE `masters_cwc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `masters_eng_preferred_facility`
--
ALTER TABLE `masters_eng_preferred_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `masters_eng_saleslead`
--
ALTER TABLE `masters_eng_saleslead`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `masters_insulation`
--
ALTER TABLE `masters_insulation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `masters_internal_lining`
--
ALTER TABLE `masters_internal_lining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `masters_period`
--
ALTER TABLE `masters_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masters_pipesize`
--
ALTER TABLE `masters_pipesize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `masters_pipe_material`
--
ALTER TABLE `masters_pipe_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `masters_pipe_type`
--
ALTER TABLE `masters_pipe_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `masters_preferred_facility`
--
ALTER TABLE `masters_preferred_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `masters_priority`
--
ALTER TABLE `masters_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `masters_products`
--
ALTER TABLE `masters_products`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `masters_project_status`
--
ALTER TABLE `masters_project_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `masters_region`
--
ALTER TABLE `masters_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `masters_saleslead`
--
ALTER TABLE `masters_saleslead`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `masters_sectors`
--
ALTER TABLE `masters_sectors`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `masters_year`
--
ALTER TABLE `masters_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project_actions`
--
ALTER TABLE `project_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `project_budget_facilities`
--
ALTER TABLE `project_budget_facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `project_contract_details`
--
ALTER TABLE `project_contract_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `project_execution_period`
--
ALTER TABLE `project_execution_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `project_pipeline_actions`
--
ALTER TABLE `project_pipeline_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `project_pipeline_notes`
--
ALTER TABLE `project_pipeline_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `project_pipesize_coating`
--
ALTER TABLE `project_pipesize_coating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
