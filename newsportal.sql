-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 01:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '123', 'shawanzara2@gmail.com', 1, '2021-05-26 18:30:00', '2024-02-03 13:00:39'),
(6, 'admin', 'admin', 'sara@gmail.com', 0, '2024-01-24 10:48:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2024-01-19 18:30:00', '2024-01-20 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 1),
(8, 17, 'SARAVANAN', 'bbjh@gmail.com', 'ghgh', '2024-01-29 14:49:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<h2 style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(68, 68, 68);\"><b style=\"\"><font face=\"Arial Black\">Thank you for visiting <a href=\"http://localhost:3000/home.html\" style=\"\">SportsTunnel.com</a></font></b></h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans Display&quot;, sans-serif; font-size: 18px; letter-spacing: 0.3px;\">Here are all the updates, results and developments from the world of Indian sports</span><br></p><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><br></p><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><br></p>', '2021-06-29 18:30:00', '2024-01-31 11:09:53'),
(2, 'contactus', 'Contact us', '<p><br></p><p><b>Name :&nbsp; </b> Vijaya Priya.V-(BCA) </p><p><b>Phone Number : </b>+91 -xxxxxxxx</p><p><b>Email -id : </b>vijayapriya@gmail.com</p>', '2021-06-29 18:30:00', '2024-02-05 07:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2021-07-07 18:30:00', '2024-01-24 08:12:28', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg', 25, 'admin', NULL),
(35, '2023 Cricket World Cup Final IND vs AUS', 3, 4, '<p style=\"margin-top: 0.5em; margin-bottom: 1em;\">The&nbsp;<font color=\"#202122\" face=\"sans-serif\"><b>2023 Cricket World Cup Final&nbsp;</b>was a&nbsp;</font><a href=\"https://en.wikipedia.org/wiki/One_Day_International\" title=\"One Day International\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">One Day International</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cricket\" title=\"Cricket\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">cricket</a>&nbsp;match played at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Narendra_Modi_Stadium\" title=\"Narendra Modi Stadium\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Narendra Modi Stadium</a>&nbsp;in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ahmedabad\" title=\"Ahmedabad\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Ahmedabad</a>, India, on 19 November 2023 to determine the winner of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/2023_Cricket_World_Cup\" title=\"2023 Cricket World Cup\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">2023 Cricket World Cup</a>.&nbsp;It was played between host nation&nbsp;<a href=\"https://en.wikipedia.org/wiki/India_national_cricket_team\" title=\"India national cricket team\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">India</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Australia_national_cricket_team\" title=\"Australia national cricket team\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Australia</a>.It was the first time that&nbsp;<a href=\"https://en.wikipedia.org/wiki/Narendra_Modi_Stadium\" title=\"Narendra Modi Stadium\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Ahmedabad</a>&nbsp;hosted a&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Cricket_World_Cup_finals\" title=\"List of Cricket World Cup finals\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Cricket World Cup final</a>.&nbsp;It was the second time that India and Australia played a World Cup final against each other, after the&nbsp;<a href=\"https://en.wikipedia.org/wiki/2003_Cricket_World_Cup_final\" title=\"2003 Cricket World Cup final\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">2003 final</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 1em;\">In the final, Australia defeated India to win a record-extending sixth World Cup title.<font color=\"#202122\" face=\"sans-serif\"><span style=\"line-height: 1; font-size: 11.2px;\"><sup id=\"cite_ref-6\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px;\"></sup></span></font></p>', '2024-01-31 10:59:17', '2024-02-05 02:56:36', 1, '2023-Cricket-World-Cup-Final-IND-vs-AUS', 'a881c78cbfc8890445fca2059a976e55jpeg', 6, 'admin', 'admin'),
(36, 'Lionel Messi’s Argentina to play Nigeria and Ivory Coast in March exhibitions during China tour', 3, 5, '<p style=\"margin-left: 25px;\"><br></p><p style=\"font-family: &quot;Noto Sans Display&quot;, sans-serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 30px; letter-spacing: 0.05px; margin-left: 25px;\"><font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">Argentina&nbsp;</span></font>will play exhibition games against&nbsp;<font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">Nigeria&nbsp;</span></font>and&nbsp;<font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">Ivory Coast&nbsp;</span></font>in China next month, making it likely&nbsp;<font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">Lionel Messi&nbsp;</span></font>will miss Inter Miami’s&nbsp;<font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">Major League Soccer&nbsp;</span></font>game at the&nbsp;<font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">New York Red Bulls&nbsp;</span></font>on March 23.</p><div class=\"article-middle-ad1\" style=\"font-family: alternate-gothic-atf, sans-serif; color: rgb(33, 37, 41); font-size: 16px; margin-left: 25px;\"></div><div class=\"\" id=\"artmeterpv\" style=\"font-family: alternate-gothic-atf, sans-serif; color: rgb(33, 37, 41); font-size: 16px; margin-left: 25px;\"></div><p style=\"font-family: &quot;Noto Sans Display&quot;, sans-serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 30px; letter-spacing: 0.05px; margin-left: 25px;\">The Argentina Football Association said the Albiceleste will play Nigeria at Hangzhou and Ivory Coast at Beijing during a tour of China from March 18-26. The dates of the matches will be announced later.</p><p style=\"font-family: &quot;Noto Sans Display&quot;, sans-serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 30px; letter-spacing: 0.05px; margin-left: 25px;\"><span style=\"font-family: inherit; font-weight: 600;\">ALSO READ |&nbsp;<font color=\"#d10a10\" face=\"inherit\"><span style=\"font-weight: inherit; cursor: pointer;\">Messi vs Ronaldo: A look at the iconic rivalry, stats, records ahead of Al Nassr vs&nbsp;Inter Miami&nbsp;</span></font>Riyadh Cup match</span></p><p style=\"font-family: &quot;Noto Sans Display&quot;, sans-serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 30px; letter-spacing: 0.05px; margin-left: 25px;\">Argentina, the defending world and South American champion, opens the Copa América against Canada or Trinidad and Tobago on June 20 at Atlanta.</p><p style=\"margin-left: 25px;\"></p><div class=\"article-standard_piano-inline-2 articleblock-container\" id=\"articleContainer\" style=\"font-family: alternate-gothic-atf, sans-serif; color: rgb(33, 37, 41); font-size: 16px; margin-left: 25px;\"></div><p></p><p style=\"box-sizing: border-box; font-family: &quot;Noto Sans Display&quot;, sans-serif; font-weight: 400; margin: 25px 0px 25px 25px; color: rgb(0, 0, 0); font-size: 19px; line-height: 30px; text-align: left; letter-spacing: 0.05px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Miami, starting its first full season with Messi, begins its MLS season at Salt Lake on February 21. The match at the Red Bulls is the team’s only game during the international fixture period, when clubs are required to release players to national teams.</p>', '2024-01-31 11:14:36', '2024-01-31 15:42:44', 1, 'Lionel-Messi’s-Argentina-to-play-Nigeria-and-Ivory-Coast-in-March-exhibitions-during-China-tour', '27d236d055e66262c3fac17f7ecd531b.jpg', 4, 'admin', NULL),
(37, 'data', 3, 16, '<p>hkfdklhsfjkl</p>', '2024-02-05 05:20:37', '2024-02-05 08:51:40', 0, 'data', 'fca5d18e83f8d6da23e6730f256ff6fd.jpg', 1, 'admin', 'admin'),
(38, 'data', 3, 12, '<p>ddd</p>', '2024-02-05 07:56:24', '2024-02-05 08:51:41', 0, 'data', 'fca5d18e83f8d6da23e6730f256ff6fd.jpg', NULL, 'admin', NULL),
(39, 'sss', 3, 5, '<p>ss</p>', '2024-02-05 07:57:17', '2024-02-05 08:52:05', 0, 'sss', '07df3272808722609ccaf2b549ca4984.jpg', 2, 'admin', NULL),
(40, 'wwwww', 3, 5, '<p>sssss</p>', '2024-02-05 07:58:19', '2024-02-05 08:52:00', 0, 'wwwww', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(41, 'aa', 3, 4, '<p>aaa</p>', '2024-02-05 08:04:52', '2024-02-05 08:51:59', 0, 'aa', '3af94efba36c4ca4cb30d565c2ad6045.jpg', NULL, 'admin', NULL),
(42, 'sss', 3, 5, '<p>sss</p>', '2024-02-05 08:08:56', '2024-02-05 08:51:57', 0, 'sss', '3af94efba36c4ca4cb30d565c2ad6045.jpg', NULL, 'admin', 'admin'),
(43, 'gg', 3, 5, '<p>gg</p>', '2024-02-05 08:22:45', '2024-02-05 08:51:57', 0, 'gg', '9fd60b018c031832345eda5f8b372b80.jpg', NULL, 'admin', NULL),
(44, 'gg', 3, 5, '<p>ss</p>', '2024-02-05 08:23:39', '2024-02-05 08:51:56', 0, 'gg', '9fd60b018c031832345eda5f8b372b80.jpg', NULL, 'admin', NULL),
(45, 'aaa', 3, 4, '<p>aa</p>', '2024-02-05 08:31:45', '2024-02-05 08:51:55', 0, 'aaa', '3af94efba36c4ca4cb30d565c2ad6045.jpg', NULL, 'admin', NULL),
(46, 'ww', 3, 5, '<p>www</p>', '2024-02-05 08:33:17', '2024-02-05 08:51:54', 0, 'ww', '9fd60b018c031832345eda5f8b372b80.jpg', NULL, 'admin', NULL),
(47, 'ddd', 3, 4, '<p>ggg</p>', '2024-02-05 08:34:00', '2024-02-05 08:51:53', 0, 'ddd', '8785a7cdb14227a83d01ce0279892775.jpg', NULL, 'admin', NULL),
(48, 'ddd', 3, 4, '<p>dd</p>', '2024-02-05 08:36:54', '2024-02-05 08:51:46', 0, 'ddd', '3b0b38d0aa9a7598273bf5a00936107e.jpg', NULL, 'admin', NULL),
(49, 'dd', 3, 5, '<p>dd</p>', '2024-02-05 08:43:47', '2024-02-05 08:51:47', 0, 'dd', 'e8d8d08f20447f18ac6cea765f6cc722.jpg', NULL, 'admin', NULL),
(50, 'aaa', 3, 5, '<p>aa</p>', '2024-02-05 08:44:55', '2024-02-05 08:51:48', 0, 'aaa', '07df3272808722609ccaf2b549ca4984.jpg', NULL, 'admin', NULL),
(51, 'll', 3, 4, '<p>lll</p>', '2024-02-05 08:46:00', '2024-02-05 08:51:49', 0, 'll', 'd636945c65295dbb4869c1bc1cd0d0ab.jpg', NULL, 'admin', NULL),
(52, 'wq', 3, 12, '<p>www</p>', '2024-02-05 08:46:43', '2024-02-05 08:51:49', 0, 'wq', 'fca5d18e83f8d6da23e6730f256ff6fd.jpg', NULL, 'admin', NULL),
(53, 'love', 3, 13, '<p>ss</p>', '2024-02-05 08:47:54', '2024-02-05 08:51:51', 0, 'love', '3af94efba36c4ca4cb30d565c2ad6045.jpg', NULL, 'admin', NULL),
(54, 'love', 3, 5, '<p>hh</p>', '2024-02-05 08:48:33', '2024-02-05 08:51:44', 0, 'love', '3b0b38d0aa9a7598273bf5a00936107e.jpg', NULL, 'admin', NULL),
(55, 'love', 3, 4, '<p>love</p>', '2024-02-05 08:52:26', '2024-02-05 08:54:47', 0, 'love', '9fd60b018c031832345eda5f8b372b80.jpg', NULL, 'admin', NULL),
(57, 'ss', 3, 4, '<p>ss</p>', '2024-02-05 08:54:19', '2024-02-05 08:54:49', 0, 'ss', 'e8d8d08f20447f18ac6cea765f6cc722.jpg', NULL, 'admin', NULL),
(58, 'gg', 3, 5, '<p>ggg</p>', '2024-02-05 08:56:42', '2024-02-05 08:57:09', 0, 'gg', 'd636945c65295dbb4869c1bc1cd0d0ab.jpg', NULL, 'admin', NULL),
(59, 'ss', 3, 5, '<p>ss</p>', '2024-02-05 08:58:19', '2024-02-05 09:13:24', 0, 'ss', '3ad052d633a9b454546e4d96b0f4be83jpeg', NULL, 'admin', NULL),
(60, 'ss', 3, 4, '<p>ss</p>', '2024-02-05 08:59:42', '2024-02-05 09:13:23', 0, 'ss', '3b0b38d0aa9a7598273bf5a00936107e.jpg', NULL, 'admin', NULL),
(61, 'ss', 3, 5, '<p>ss</p>', '2024-02-05 09:01:16', '2024-02-05 09:13:22', 0, 'ss', 'e8d8d08f20447f18ac6cea765f6cc722.jpg', NULL, 'admin', NULL),
(62, 'love', 3, 4, '<p>frf</p>', '2024-02-05 09:03:26', '2024-02-05 09:13:20', 0, 'love', '89c3b575b781fbca07577c0d969d1441.jpg', NULL, 'admin', NULL),
(63, 'dd', 3, 5, '<p>ddd</p>', '2024-02-05 09:04:01', '2024-02-05 09:13:19', 0, 'dd', '89c3b575b781fbca07577c0d969d1441.jpg', NULL, 'admin', NULL),
(64, 'w', 3, 5, '<p>wwwww</p>', '2024-02-05 09:05:18', '2024-02-05 09:13:18', 0, 'w', 'fca5d18e83f8d6da23e6730f256ff6fd.jpg', 1, 'admin', NULL),
(65, 'admin', 3, 5, '<p>ss</p>', '2024-02-05 09:06:06', '2024-02-05 09:13:17', 0, 'admin', '07df3272808722609ccaf2b549ca4984.jpg', NULL, 'admin', NULL),
(66, 'admin', 3, 16, '<p>hhh</p>', '2024-02-05 09:06:50', '2024-02-05 09:13:16', 0, 'admin', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(67, 'sss', 3, 5, '<p>ssss</p>', '2024-02-05 09:08:49', '2024-02-05 09:13:15', 0, 'sss', '8785a7cdb14227a83d01ce0279892775.jpg', NULL, 'admin', NULL),
(68, 'sss', 3, 4, '<p>sssss</p>', '2024-02-05 09:09:43', '2024-02-05 09:13:14', 0, 'sss', '8785a7cdb14227a83d01ce0279892775.jpg', NULL, 'admin', NULL),
(69, 'sss', 3, 4, '<p>sss</p>', '2024-02-05 09:11:34', '2024-02-05 09:13:13', 0, 'sss', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(70, 'ss', 3, 4, '<p>ss</p>', '2024-02-05 09:17:35', '2024-02-05 09:20:49', 0, 'ss', '89c3b575b781fbca07577c0d969d1441.jpg', NULL, 'admin', NULL),
(71, 'sda', 3, 5, '<p>ss</p>', '2024-02-05 09:18:12', '2024-02-05 09:20:50', 0, 'sda', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(72, 'hhh', 3, 4, '<p>hh</p>', '2024-02-05 09:19:06', '2024-02-05 09:20:51', 0, 'hhh', '3ad052d633a9b454546e4d96b0f4be83jpeg', NULL, 'admin', NULL),
(73, 'ddd', 3, 5, '<p>dd</p>', '2024-02-05 09:20:09', '2024-02-05 09:20:52', 0, 'ddd', '8785a7cdb14227a83d01ce0279892775.jpg', NULL, 'admin', NULL),
(74, 'first', 3, 18, '<p>ddd</p>', '2024-02-05 09:21:14', '2024-02-05 09:28:50', 0, 'first', '07df3272808722609ccaf2b549ca4984.jpg', NULL, 'admin', NULL),
(75, 'second', 3, 5, '<p>sd</p>', '2024-02-05 09:21:37', '2024-02-05 09:28:48', 0, 'second', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(76, 'ddd', 3, 4, '<p>dd</p>', '2024-02-05 09:22:05', '2024-02-05 09:28:47', 0, 'ddd', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(77, 'ddd', 3, 5, '<p>dd</p>', '2024-02-05 09:22:37', '2024-02-05 09:28:46', 0, 'ddd', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(78, 'sss', 3, 5, '<p>sss</p>', '2024-02-05 09:23:24', '2024-02-05 09:28:45', 0, 'sss', '07df3272808722609ccaf2b549ca4984.jpg', NULL, 'admin', NULL),
(79, 'ss', 3, 17, '<p>sss</p>', '2024-02-05 09:25:00', '2024-02-05 09:28:45', 0, 'ss', '9fd60b018c031832345eda5f8b372b80.jpg', NULL, 'admin', NULL),
(80, 'tennis', 3, 17, '<p>fff</p>', '2024-02-05 09:26:37', '2024-02-05 09:28:44', 0, 'tennis', '3b0b38d0aa9a7598273bf5a00936107e.jpg', NULL, 'admin', NULL),
(81, 'ff', 3, 17, '<p>ff</p>', '2024-02-05 09:26:56', '2024-02-05 09:28:43', 0, 'ff', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(82, 'aa', 3, 5, '<p>ddd</p>', '2024-02-05 09:29:04', '2024-02-05 09:32:33', 0, 'aa', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(83, 'ddd', 3, 4, '<p>dd</p>', '2024-02-05 09:31:53', '2024-02-05 09:32:34', 0, 'ddd', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL),
(84, 'ss', 3, 4, '<p>sss</p>', '2024-02-05 09:33:16', '2024-02-05 09:37:59', 0, 'ss', '3b0b38d0aa9a7598273bf5a00936107e.jpg', NULL, 'admin', NULL),
(85, 'ss', 3, 5, '<p>ss</p>', '2024-02-05 09:34:04', '2024-02-05 09:37:58', 0, 'ss', '3b0b38d0aa9a7598273bf5a00936107e.jpg', NULL, 'admin', NULL),
(86, 'ddd', 3, 5, '<p>ddd</p>', '2024-02-05 09:34:54', '2024-02-05 09:37:57', 0, 'ddd', '8785a7cdb14227a83d01ce0279892775.jpg', NULL, 'admin', NULL),
(87, 'ss', 3, 16, '<p>sss</p>', '2024-02-05 09:35:49', '2024-02-05 09:37:56', 0, 'ss', '9fd60b018c031832345eda5f8b372b80.jpg', NULL, 'admin', NULL),
(88, 'ad', 3, 4, '<p>sss</p>', '2024-02-05 09:36:57', '2024-02-05 09:37:55', 0, 'ad', 'ebd11ceaf8b99d6d3280161423c5db3b.jpg', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2024-01-22 18:30:00', '2024-01-24 17:59:57', 1),
(5, 3, 'Football', 'Football', '2024-01-23 18:30:00', '2024-01-25 17:59:57', 1),
(12, 3, 'Volleyball', 'Volleyball', '2024-01-24 11:16:08', '2024-01-24 11:18:57', 1),
(13, 3, 'Kabaddi', 'Kabaddi', '2024-01-24 11:17:29', '2024-01-31 10:45:04', 1),
(16, 3, 'Basketball', 'Basketball ', '2024-01-31 10:44:14', '2024-01-31 10:44:28', 1),
(17, 3, 'Tennis', 'Tennis', '2024-01-31 10:45:46', NULL, 1),
(18, 3, 'Ball Badminton', 'Ball Badminton', '2024-01-31 10:46:18', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
