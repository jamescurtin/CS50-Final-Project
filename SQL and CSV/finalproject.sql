-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2014 at 07:56 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1-log
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hash`) VALUES
(2, 'james', '$1$/.odXlYb$6dJlMg6Goq/IMw508psD0/'),
(3, 'test', '$1$Di58zJbT$67NJDGpB7tbjwg2GVTJJ90');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `registration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `street_number` int(10) unsigned NOT NULL,
  `street_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` int(10) unsigned NOT NULL,
  `party` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `last_voted` date NOT NULL,
  `precinct_number` int(10) unsigned NOT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  `Occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Employer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `isedited` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`registration`),
  FULLTEXT KEY `FullText` (`last_name`,`first_name`,`street_name`,`party`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`registration`, `last_name`, `first_name`, `middle_name`, `street_number`, `street_name`, `zip_code`, `party`, `gender`, `birthdate`, `last_voted`, `precinct_number`, `id`, `Occupation`, `Employer`, `Amount`, `isedited`) VALUES
('02GMN2032003', ' GEORGE', ' MARVIN', ' J', 7, ' EDGESTONE DR', 2324, ' U', ' M', '1932-02-20', '2008-03-05', 3, 2, ' ', ' ', 5, 0),
('05GJN1136001', ' GEORGE', ' JOAN', ' ELIZABETH', 7, ' EDGESTONE DR', 2324, ' U', ' F', '1936-05-11', '2008-03-05', 3, 2, ' ', ' ', 0, 0),
('02MDE0463001', ' MATTA', ' DIANE', ' M', 17, ' OAK MEADOW PL', 2324, ' U', ' F', '1963-02-04', '1998-08-18', 6, 2, ' ', ' ', 0, 0),
('08MLN2190002', ' MATTA', ' LAUREN', ' E', 17, ' OAK MEADOW PL', 2324, ' U', ' F', '1990-08-21', '2009-01-02', 6, 2, ' ', ' ', 0, 0),
('06MJS2061003', ' MATTA', ' JAMES', ' M', 17, ' OAK MEADOW PL', 2324, ' U', ' M', '1961-06-20', '1998-08-03', 6, 2, ' ', ' ', 0, 0),
('12THI1079000', ' TAYLOR', ' HEIDI', ' A', 17, ' OLD CEDAR VLG', 2324, ' U', ' F', '1979-12-10', '2011-02-16', 7, 2, ' ', ' ', 0, 0),
('05SJA0687000', ' SANKUS', ' JENNA', ' C', 15, ' OAK MEADOW PL', 2324, ' D', ' F', '1987-05-06', '2008-05-16', 6, 2, ' ', ' ', 0, 0),
('11SLN0480000', ' SANKUS', ' LAUREN', ' MCKAY', 15, ' OAK MEADOW PL', 2324, ' D', ' F', '1980-11-04', '2008-09-26', 6, 2, ' ', ' ', 0, 0),
('07SNY2356000', ' SANKUS', ' NANCY', ' A', 15, ' OAK MEADOW PL', 2324, ' D', ' F', '1956-07-23', '2008-09-15', 6, 2, ' ', ' ', 15, 0),
('03CBY3036002', ' CORREIA', ' BEVERLY', ' C', 91, ' HAYWARD ST', 2324, ' U', ' F', '1936-03-30', '2010-10-04', 6, 2, ' ', ' ', 0, 0),
('03CJH1834001', ' CORREIA', ' JOSEPH', '', 91, ' HAYWARD ST', 2324, ' U', ' M', '1934-03-18', '2008-05-06', 6, 2, ' ', ' ', 0, 0),
('11NRT1858000', ' NATALY', ' ROBERT', ' J', 41, ' BRAMBLEWOOD ST', 2324, ' D', ' M', '1970-10-29', '2008-09-25', 3, 2, ' ', ' ', 25, 0),
('05CMA1851000', ' GUERRA', ' MILDA', '', 93, ' HIGH ST', 2324, ' U', ' F', '1951-05-18', '2010-10-19', 7, 2, ' ', ' ', 0, 0),
('09RBI1443000', ' COHEN', ' BOBBI', '', 35, ' ELMWOOD WAY', 2324, ' R', ' F', '1943-09-14', '2011-12-20', 6, 2, ' ', ' ', 0, 0),
('02CKY1269001', ' COHEN', ' KELLY', ' LYNN', 35, ' ELMWOOD WAY', 2324, ' U', ' F', '1969-02-12', '1999-01-25', 6, 2, ' ', ' ', 0, 0),
('07CBT1868000', ' COHEN', ' BRETT', ' M', 35, ' ELMWOOD WAY', 2324, ' U', ' M', '1968-07-18', '2002-06-27', 6, 2, ' Lawyer', ' Self-employed', 250, 0),
('10CLD2856000', ' CARROLL', ' LEONARD', ' A', 1, ' GREEN LEAF RD', 2324, ' U', ' M', '1956-10-28', '2004-03-12', 1, 2, ' ', ' ', 0, 0),
('10CPA2455000', ' CARROLL', ' PAULA', ' ANN', 1, ' GREEN LEAF RD', 2324, ' U', ' M', '1955-10-24', '2004-03-12', 1, 2, ' ', ' ', 0, 0),
('08CCL0276007', ' CONNOLLY-BOLES', ' CHERYL', ' A', 1, ' GREEN LEAF RD', 2324, ' R', ' F', '1976-08-02', '2008-05-05', 1, 2, ' ', ' ', 450, 0),
('03BRD0676001', ' BOLES', ' RICHARD', ' JOHN', 1, ' GREEN LEAF RD', 2324, ' R', ' M', '1976-03-06', '2008-05-05', 1, 2, ' ', ' ', 0, 0),
('10GWM0879000', ' GOLDEN', ' WILLIAM', ' B', 97, ' BROAD ST', 2324, ' R', ' M', '1979-10-08', '2002-08-28', 6, 2, ' ', ' ', 375, 0),
('09VCN1480000', ' GOLDEN', ' CHRISTIN', ' B', 97, ' BROAD ST', 2324, ' R', ' F', '1980-09-14', '1998-10-14', 6, 2, ' ', ' ', 0, 0),
('06MLA0555001', ' MARTIN', ' LINDA', ' A', 280, ' HARVEST LN', 2324, ' U', ' F', '1955-06-05', '2004-05-13', 2, 2, ' ', ' ', 0, 0),
('09MSN1252006', ' MARTIN', ' STEPHEN', ' J', 280, ' HARVEST LN', 2324, ' U', ' M', '1952-09-12', '2002-09-12', 2, 2, ' ', ' ', 75, 0),
('12FGG1672000', ' FENTON', ' GREG', ' R', 34, ' HAMMOND ST', 2324, ' U', ' M', '1972-12-16', '2003-07-21', 6, 2, ' ', ' ', 0, 0),
('02YML0942000', ' YESUCEVITZ', ' MICHAEL', ' A', 34, ' HAMMOND ST', 2324, ' R', ' M', '1942-02-09', '2002-03-18', 6, 2, ' ', ' ', 0, 0),
('12HCI1575001', ' HARRINGTON', ' CORI', ' A', 2070, ' SOUTH ST', 2324, ' U', ' F', '1975-12-15', '2010-03-29', 1, 2, ' ', ' ', 50, 0),
('07SDN2468001', ' SCHLOSSER', ' DEAN', ' R', 126, ' ASHTEAD RD', 2324, ' U', ' M', '1968-07-24', '2004-09-09', 1, 2, ' ', ' ', 0, 0),
('01SPA2869001', ' SCHLOSSER', ' PAULA', ' M', 126, ' ASHTEAD RD', 2324, ' U', ' F', '1969-01-28', '2003-01-15', 1, 2, ' ', ' ', 0, 0),
('06GLA0847000', ' GATELY', ' LINDA', ' L', 23, ' FIELDSTONE CIR', 2324, ' D', ' F', '1947-06-08', '1973-04-12', 3, 2, ' ', ' ', 0, 0),
('11GGN2847000', ' GATELY', ' GLENN', ' E', 23, ' FIELDSTONE CIR', 2324, ' U', ' M', '1947-11-28', '1987-04-12', 3, 2, ' ', ' ', 0, 0),
('04SCE1058000', ' SPRAGUE', ' CHRISTINE', ' T', 147, ' CURVE ST', 2324, ' D', ' F', '1958-04-10', '2002-06-11', 4, 2, ' ', ' ', 0, 0),
('12SLD3157000', ' SPRAGUE', ' LEONARD', ' W', 147, ' CURVE ST', 2324, ' D', ' M', '1957-12-31', '2002-06-11', 4, 2, ' ', ' ', 0, 0),
('04SMT1524000', ' SILVERIO', ' MARGARET', ' A', 4, ' KNOLLWOOD DR', 2324, ' D', ' F', '1924-04-15', '1996-10-07', 3, 2, ' ', ' ', 0, 0),
('11SSA0365001', ' SORRENTI', ' SANDRA', ' B', 60, ' SHERWOOD LN', 2324, ' D', ' F', '1965-11-03', '1996-10-10', 5, 2, ' ', ' ', 0, 0),
('10SDD0360000', ' SORRENTI', ' DAVID', ' P', 60, ' HIGH ST', 2324, ' D', ' M', '1960-10-03', '1996-10-01', 5, 2, ' ', ' ', 0, 0),
('11BTA2142000', ' BOUCHER', ' THERESA', ' H', 465, ' CONANT ST', 2324, ' U', ' F', '1955-02-19', '1977-04-12', 4, 2, ' ', ' ', 0, 0),
('09BDS2440000', ' BOUCHER', ' DENNIS', ' G', 465, ' CONANT ST', 2324, ' U', ' M', '1952-04-13', '1977-04-12', 4, 2, ' ', ' ', 0, 0),
('02ASN1955000', ' ANDERSON', ' SHARON', ' SETO', 472, ' CONANT ST', 2324, ' U', ' F', '1962-09-09', '2009-08-26', 4, 2, ' ', ' ', 0, 0),
('04ALE1352000', ' ANDERSON', ' LAWRENCE', ' P', 472, ' CONANT ST', 2324, ' U', ' M', '1940-04-02', '1973-04-12', 4, 2, ' ', ' ', 0, 0),
('09WLN0962001', ' WILLETTE', ' LUANN', ' E', 485, ' CONANT ST', 2324, ' D', ' F', '1984-09-12', '2004-09-08', 4, 2, ' ', ' ', 0, 0),
('04WBA0240000', ' WEICHEL', ' BARBARA', ' A', 485, ' CONANT ST', 2324, ' U', ' F', '1959-03-07', '1985-04-12', 4, 2, ' ', ' ', 0, 0),
('09CMY1284000', ' CHAMBERS', ' MARY', ' E', 501, ' CONANT ST', 2324, ' R', ' F', '1942-06-25', '1976-04-12', 4, 2, ' ', ' ', 0, 0),
('03CAN0759000', ' CHAMBERS', ' ANN', ' E', 501, ' CONANT ST', 2324, ' U', ' F', '1944-09-27', '1976-04-12', 4, 2, ' ', ' ', 0, 0),
('06DLE2542000', ' DOHERTY', ' LAURENCE', ' J', 524, ' CONANT ST', 2324, ' U', ' M', '1987-10-27', '2011-01-31', 4, 2, ' ', ' ', 0, 0),
('09DKE2744000', ' DOHERTY', ' KATHERINE', ' M', 524, ' CONANT ST', 2324, ' U', ' F', '1979-08-20', '1999-03-10', 4, 2, ' ', ' ', 0, 0),
('10WAM2787000', ' WOODWORTH', ' ADAM', ' J', 525, ' CONANT ST', 2324, ' U', ' M', '1953-02-26', '1977-04-12', 4, 2, ' ', ' ', 0, 0),
('08WML2079001', ' WOODWORTH', ' MICHAEL', ' RONALD', 525, ' CONANT ST', 2324, ' D', ' M', '1967-06-09', '2003-03-24', 2, 2, ' ', ' ', 0, 0),
('02WPA2653000', ' WOODWORTH', ' PATRICIA', ' M', 525, ' STOCK BRIDGE RD', 2324, ' D', ' F', '1966-04-12', '2003-03-24', 2, 2, ' ', ' ', 0, 0),
('06FKN0967002', ' FLANDERS', ' KAREN', ' J', 45, ' STOCK BRIDGE RD', 2324, ' U', ' F', '1968-09-19', '2006-03-06', 6, 2, ' ', ' ', 0, 0),
('04FAT1266001', ' FLANDERS', ' ALBERT', ' C', 45, ' COMFORT ST', 2324, ' U', ' M', '1964-04-24', '2010-05-06', 6, 2, ' ', ' ', 0, 0),
('09TLE1968002', ' RICCIOTTI', ' LYNNE', ' M', 35, ' COMFORT ST', 2324, ' D', ' F', '1978-06-12', '2010-09-28', 1, 2, ' ', ' ', 0, 0),
('05RRT2702001', ' RICCIOTTI', ' ROBERT', ' C', 35, ' GREEN LEAF RD', 2324, ' R', ' M', '1978-05-26', '2010-05-21', 1, 2, ' ', ' ', 0, 0),
('06BDE1278001', ' BOVILL', ' DANIELLE', ' LYNN', 3, ' GREEN LEAF RD', 2324, ' D', ' F', '1986-06-29', '2009-07-20', 3, 2, ' ', ' ', 0, 0),
('05BMW2678001', ' BOVILL', ' MATHEW', ' J', 3, ' PLYMOUTH ST', 2324, ' U', ' M', '1993-10-14', '2011-06-21', 3, 2, ' ', ' ', 0, 0),
('06ICE2986002', ' ILACQUA', ' CHANTE', ' M', 1538, ' PLYMOUTH ST', 2324, ' U', ' F', '1964-10-14', '2010-01-15', 6, 2, ' ', ' ', 0, 0),
('10IDE1493003', ' ILACQUA', ' DOMINIQUE', ' C', 1538, ' BALL AVE', 2324, ' D', ' F', '1938-02-05', '2010-01-15', 6, 2, ' ', ' ', 0, 0),
('06GBA0842001', ' GOMES', ' BRENDA', ' L', 54, ' CONANT ST', 2324, ' U', ' F', '1970-08-25', '2007-04-20', 4, 2, ' ', ' ', 0, 0),
('11WRD1847000', ' WOODWORTH', ' RONALD', ' B', 525, ' CONANT ST', 2324, ' D', ' M', '1947-06-08', '2002-11-05', 4, 2, ' ', ' ', 0, 0),
('08MSE2570000', ' MOONEY', ' STACIE', ' M', 535, ' CONANT ST', 2324, ' U', ' F', '1919-06-10', '1991-04-12', 4, 2, ' ', ' ', 0, 0),
('06DSY0847001', ' DUNBAR', ' SHERRY', ' M', 535, ' CONANT ST', 2324, ' U', ' F', '1950-05-10', '1991-04-12', 4, 2, ' ', ' ', 0, 0),
('06FEA1019000', ' FABIAN', ' EDNA', ' E', 545, ' CONANT ST', 2324, ' U', ' F', '1954-06-18', '1987-04-12', 4, 2, ' ', ' ', 0, 0),
('05KKN1050001', ' KING', ' KAREN', ' M', 545, ' CONANT ST', 2324, ' R', ' F', '1964-04-01', '1996-01-23', 4, 2, ' ', ' ', 0, 0),
('06KRD1854000', ' KING', ' RICHARD', ' E', 545, ' CONANT ST', 2324, ' R', ' M', '1990-11-23', '2010-10-26', 4, 2, ' ', ' ', 0, 0),
('04GPA0164000', ' GARCIA', ' PATRICIA', ' A', 555, ' CONANT ST', 2324, ' U', ' F', '1961-12-25', '2007-06-15', 4, 2, ' ', ' ', 0, 0),
('11GRN2390000', ' GARCIA', ' RYAN', ' R', 555, ' CONANT ST', 2324, ' R', ' M', '1972-05-02', '1999-09-13', 4, 2, ' ', ' ', 0, 0),
('12GML2561000', ' GARCIA', ' MANUEL', ' RODRIGUEZ', 555, ' CONANT ST', 2324, ' U', ' M', '1974-05-23', '1999-03-03', 4, 2, ' ', ' ', 0, 0),
('05MKE0272001', ' BARBOSA', ' KATHERINE', ' E', 565, ' CONANT ST', 2324, ' D', ' F', '1969-12-11', '2004-02-11', 4, 2, ' ', ' ', 0, 0),
('05BML2374000', ' BARBOSA', ' MICHAEL', ' C', 565, ' CONANT ST', 2324, ' D', ' M', '1968-02-15', '2004-02-11', 4, 2, ' ', ' ', 0, 0),
('12AFQ1169000', ' AL-KHALIDY', ' MARILYN', ' F', 575, ' CONANT ST', 2324, ' D', ' F', '1950-10-19', '2006-10-06', 4, 2, ' ', ' ', 0, 0),
('02AAQ1568000', ' AL-KHALIDY', ' ALI', ' A', 575, ' CONANT ST', 2324, ' U', ' M', '1993-11-13', '2011-08-24', 4, 2, ' ', ' ', 0, 0),
('06SSE2880000', ' SLATER', ' SHANE', ' P', 20, ' LEGGE ST', 2324, ' U', ' M', '1944-11-07', '1998-03-09', 1, 2, ' ', ' ', 0, 0),
('12SCR0147000', ' SLATER', ' CHRISTOPHER', ' B', 20, ' LEGGE ST', 2324, ' U', ' M', '1947-11-11', '1979-04-12', 1, 2, ' ', ' ', 0, 0),
('11LPL0744000', ' LUCIUS', ' PAUL', ' V', 25, ' LEGGE ST', 2324, ' U', ' M', '1944-07-20', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('11LMY1147000', ' LUCIUS', ' MARY', ' A', 25, ' LEGGE ST', 2324, ' D', ' F', '1945-03-30', '1976-04-12', 1, 2, ' ', ' ', 0, 0),
('07GKN2044000', ' GILLESPIE', ' KATHLEEN', ' T', 30, ' LEGGE ST', 2324, ' D', ' F', '1942-03-11', '2004-03-03', 1, 2, ' ', ' ', 0, 0),
('03GJN3045000', ' GILLESPIE', ' JOHN', ' JR', 30, ' LEGGE ST', 2324, ' D', ' M', '1938-02-08', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('03DMA1142000', ' DEMOURA', ' MARIA', ' C', 35, ' LEGGE ST', 2324, ' U', ' F', '1949-04-13', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('02DJH0838000', ' DEMOURA', ' JOSEPH', ' S', 35, ' LEGGE ST', 2324, ' U', ' M', '1948-02-19', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('04FLE1349000', ' FORD', ' LYNNE', ' M', 40, ' LEGGE ST', 2324, ' U', ' F', '1977-03-23', '2003-01-30', 1, 2, ' ', ' ', 0, 0),
('02HGL2656000', ' HAGGERTY', ' GAIL', ' A', 105, ' LEGGE ST', 2324, ' U', ' F', '1983-07-15', '2005-07-18', 1, 2, ' ', ' ', 0, 0),
('03HJN2454000', ' HAGGERTY', ' JOHN', ' M', 105, ' LEGGE ST', 2324, ' U', ' M', '1982-01-05', '2000-02-10', 1, 2, ' ', ' ', 0, 0),
('07HKH1583000', ' HAGGERTY', ' KEITH', ' P', 105, ' LEGGE ST', 2324, ' U', ' M', '1989-03-13', '2007-04-12', 1, 2, ' ', ' ', 0, 0),
('01HML0582000', ' HAGGERTY', ' MICHAEL', ' J', 105, ' LEGGE ST', 2324, ' U', ' M', '1957-03-21', '1990-04-12', 1, 2, ' ', ' ', 0, 0),
('03BCS1389000', ' BOYER', ' CHARLES', ' A', 110, ' LEGGE ST', 2324, ' U', ' M', '1957-10-03', '1987-04-12', 1, 2, ' ', ' ', 0, 0),
('03BJE2157000', ' BOYER', ' JULIE', ' S', 110, ' LEGGE ST', 2324, ' U', ' F', '1973-06-17', '2010-04-16', 1, 2, ' ', ' ', 0, 0),
('10BEE0357000', ' BOYER', ' EUGENE', ' D', 110, ' LEGGE ST', 2324, ' D', ' M', '1966-03-11', '2010-01-15', 1, 2, ' ', ' ', 0, 0),
('06JLE1773000', ' JOYCE', ' LEANNE', ' C', 115, ' LEGGE ST', 2324, ' U', ' F', '1964-02-02', '1999-08-28', 1, 2, ' ', ' ', 0, 0),
('03JFS1166000', ' JOYCE', ' FRANCIS', ' K', 115, ' LEGGE ST', 2324, ' U', ' M', '1965-10-11', '1999-08-28', 1, 2, ' ', ' ', 0, 0),
('02SPL0264000', ' SPINA', ' PAUL', ' H', 120, ' LEGGE ST', 2324, ' U', ' M', '1989-08-09', '2010-08-11', 1, 2, ' ', ' ', 0, 0),
('10SEN1165000', ' SPINA', ' ELLEN', ' C', 120, ' LEGGE ST', 2324, ' U', ' F', '1958-05-13', '1992-04-12', 1, 2, ' ', ' ', 0, 0),
('08KCR0989000', ' KENNEDY', ' CHRISTOPHER', ' R', 125, ' LEGGE ST', 2324, ' D', ' M', '1992-06-30', '2011-05-25', 1, 2, ' ', ' ', 0, 0),
('05KJN1358000', ' KENNEDY', ' JOHN', ' G', 125, ' LEGGE ST', 2324, ' D', ' M', '1959-10-04', '1996-09-30', 1, 2, ' ', ' ', 0, 0),
('06KTY3092000', ' KENNEDY', ' TIMOTHY', ' W', 125, ' LEGGE ST', 2324, ' U', ' M', '1987-11-25', '2008-01-10', 1, 2, ' ', ' ', 0, 0),
('10KBH0459000', ' KENNEDY', ' BETH', ' A', 125, ' LEGGE ST', 2324, ' U', ' F', '1989-03-25', '2008-01-10', 1, 2, ' ', ' ', 0, 0),
('11CDL2587000', ' CARON', ' DANIEL', ' T', 130, ' LEGGE ST', 2324, ' U', ' M', '1955-07-10', '1986-04-12', 1, 2, ' ', ' ', 0, 0),
('03CDD2589000', ' CARON', ' DAVID', ' T', 130, ' LEGGE ST', 2324, ' U', ' M', '1953-03-20', '1986-04-12', 1, 2, ' ', ' ', 0, 0),
('07CRH1055000', ' CARON', ' RUTH', ' A', 130, ' LEGGE ST', 2324, ' U', ' F', '1981-01-12', '2000-10-11', 1, 2, ' ', ' ', 0, 0),
('03CTS2053000', ' CARON', ' THOMAS', ' M', 130, ' LEGGE ST', 2324, ' U', ' M', '1981-11-23', '2002-11-25', 1, 2, ' ', ' ', 0, 0),
('01LJD1281000', ' LUCIA', ' JARED', ' G', 135, ' LEGGE ST', 2324, ' D', ' M', '1954-05-09', '1992-04-12', 1, 2, ' ', ' ', 0, 0),
('11CRE2381000', ' LUCIA', ' RENEE', ' M', 135, ' LEGGE ST', 2324, ' D', ' F', '1952-08-02', '1992-04-12', 1, 2, ' ', ' ', 0, 0),
('05LWY0954000', ' LUCIA', ' WENDY', ' J', 135, ' LEGGE ST', 2324, ' R', ' F', '1956-01-07', '2006-02-07', 1, 2, ' ', ' ', 0, 0),
('01GAO2357000', ' GUINDEIRA', ' ABILIO', ' A', 95, ' GREEN ST', 2324, ' U', ' M', '1983-12-24', '2008-10-15', 1, 2, ' ', ' ', 0, 0),
('12GAA0262000', ' GUINDEIRA', ' ANA', ' M', 95, ' GREEN ST', 2324, ' U', ' F', '1987-04-29', '2008-05-05', 1, 2, ' ', ' ', 0, 0),
('12GAR2483001', ' GUINDEIRA', ' ARTHUR', ' R', 95, ' GREEN ST', 2324, ' U', ' M', '1988-06-21', '2008-09-29', 2, 2, ' ', ' ', 0, 0),
('04GCA2987000', ' GUINDEIRA', ' CLAUDIA', ' R', 95, ' GRANGE PARK', 2324, ' U', ' F', '1962-08-03', '1996-08-21', 2, 2, ' ', ' ', 0, 0),
('06TCY2188000', ' THOMPSON', ' COURTNEY', ' L', 230, ' GRANGE PARK', 2324, ' U', ' F', '1962-06-16', '1996-08-21', 2, 2, ' ', ' ', 0, 0),
('08TPA0362001', ' THOMPSON', ' PATRICIA', ' A', 230, ' GRANGE PARK', 2324, ' D', ' F', '1934-01-24', '2004-10-01', 3, 2, ' ', ' ', 0, 0),
('06TMK1662000', ' THOMPSON', ' MARK', ' A', 230, ' BROOKSTONE DR', 2324, ' U', ' M', '1961-01-04', '2003-03-26', 1, 2, ' ', ' ', 0, 0),
('01SML2434001', ' SLIFER', ' MABEL', ' C', 32, ' LYMAN PL', 2324, ' U', ' F', '1959-12-09', '2003-03-26', 1, 2, ' ', ' ', 0, 0),
('01MJE0461003', ' MYERS', ' JOANNE', ' SACCO', 9, ' LYMAN PL', 2324, ' U', ' F', '1950-10-13', '2006-08-30', 6, 2, ' ', ' ', 0, 0),
('12MAW0959001', ' MYERS', ' ANDREW', ' F', 9, ' LONGVIEW DR', 2324, ' D', ' M', '1972-08-27', '2004-10-26', 6, 2, ' ', ' ', 0, 0),
('10WJE1350002', ' WASHBURN', ' JEANNE', ' P', 17, ' LONGVIEW DR', 2324, ' D', ' F', '1972-09-06', '2004-10-22', 6, 2, ' ', ' ', 0, 0),
('12HJN1365002', ' HOFFMAN', ' JOHN', ' ERIC', 10, ' FAIRWAY DR', 2324, ' U', ' M', '1949-10-01', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('02HLA0767001', ' HOFFMAN', ' LISA', ' B', 10, ' LYMAN PL', 2324, ' U', ' F', '1915-03-28', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('10KLA0149000', ' KRAVITZ', ' LINDA', ' J', 140, ' LYMAN PL', 2324, ' U', ' F', '1949-03-14', '1974-04-12', 1, 2, ' ', ' ', 0, 0),
('03KSA2815000', ' KRAVITZ', ' SENJA', ' I', 140, ' LYMAN PL', 2324, ' U', ' F', '1958-02-05', '2004-08-10', 1, 2, ' ', ' ', 0, 0),
('03KSY1449000', ' KRAVITZ', ' STANLEY', ' A', 140, ' MAURA DR', 2324, ' U', ' M', '1958-01-15', '2004-08-10', 1, 2, ' ', ' ', 0, 0),
('02OMY0558001', ' ONEILL', ' MARY', ' L', 5, ' MAURA DR', 2324, ' D', ' F', '1954-03-29', '1996-09-25', 1, 2, ' ', ' ', 0, 0),
('12BJY1461000', ' BETIT', ' JEFFREY', ' L', 25, ' MAURA DR', 2324, ' D', ' M', '1972-01-06', '2007-08-16', 1, 2, ' ', ' ', 0, 0),
('10BJE1661000', ' BETIT', ' JOANNE', ' L', 25, ' MAURA DR', 2324, ' D', ' F', '1973-08-21', '2007-08-16', 1, 2, ' ', ' ', 0, 0),
('01SKN0672000', ' MAHONEY', ' KRISTEN', ' L', 30, ' MAURA DR', 2324, ' D', ' F', '1954-02-08', '1979-04-12', 1, 2, ' ', ' ', 0, 0),
('08MDS2173002', ' MAHONEY', ' DOUGLAS', ' E', 30, ' MAURA DR', 2324, ' D', ' M', '1951-11-23', '1979-04-12', 1, 2, ' ', ' ', 0, 0),
('02DMN0854000', ' DUNNE', ' MARIAN', ' T', 35, ' MAURA DR', 2324, ' R', ' F', '1966-09-07', '2004-08-26', 1, 2, ' ', ' ', 0, 0),
('11DML2351000', ' DUNNE', ' MICHAEL', ' R', 35, ' MAURA DR', 2324, ' R', ' M', '1961-10-14', '2003-10-14', 1, 2, ' ', ' ', 0, 0),
('09LDE0766001', ' LUNDGREN', ' DIANNE', ' M', 40, ' MAURA DR', 2324, ' U', ' F', '1964-01-07', '1998-01-29', 1, 2, ' ', ' ', 0, 0),
('05LDL1063000', ' LEE', ' DARYL', ' A', 1280, ' OLD PLEASANT ST', 2324, ' U', ' M', '1979-10-28', '2010-11-10', 1, 2, ' ', ' ', 0, 0),
('05LCN1085001', ' LEE', ' CAMERON', ' M', 1280, ' OLD PLEASANT ST', 2324, ' U', ' M', '1947-07-21', '1994-04-12', 1, 2, ' ', ' ', 0, 0),
('10SNE2879001', ' SHEA', ' NICOLE', ' M', 1280, ' OLD PLEASANT ST', 2324, ' U', ' F', '1947-11-18', '1975-04-12', 1, 2, ' ', ' ', 0, 0),
('07LMN2147000', ' LUNSFORD', ' MAUREEN', ' E', 1300, ' OLD PLEASANT ST', 2324, ' D', ' F', '1983-04-29', '2006-09-12', 1, 2, ' ', ' ', 0, 0),
('11LWM1847000', ' LUNSFORD', ' WILLIAM', ' R', 1300, ' OLD PLEASANT ST', 2324, ' D', ' M', '1983-03-22', '2006-09-05', 1, 2, ' ', ' ', 0, 0),
('04LDL2983000', ' LATTUADA', ' DANIEL', ' JOSEPH', 1311, ' OLD PLEASANT ST', 2324, ' R', ' M', '1937-03-11', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('03WCE2283001', ' LATTUADA', ' CHRISTINE', ' NICHOLE', 1311, ' OLD PLEASANT ST', 2324, ' R', ' F', '1935-09-04', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('03SJE1137000', ' STEARNS', ' JACQUELINE', ' J', 1312, ' OLD PLEASANT ST', 2324, ' U', ' F', '1965-11-02', '2007-08-29', 1, 2, ' ', ' ', 0, 0),
('09SRT0435000', ' STEARNS', ' ROBERT', ' J', 1312, ' OLD PLEASANT ST', 2324, ' U', ' M', '1936-09-10', '1973-04-12', 1, 2, ' ', ' ', 0, 0),
('12CML0561002', ' CORDEIRO', ' MICHAEL', ' J', 1319, ' OLD PLEASANT ST', 2324, ' R', ' M', '1967-07-07', '2000-01-07', 1, 2, ' ', ' ', 0, 0),
('02CTA0461001', ' CORDEIRO', ' TERESA', ' L', 1319, ' OLD PLEASANT ST', 2324, ' U', ' F', '1966-09-26', '2000-02-16', 1, 2, ' ', ' ', 0, 0),
('07OLI0767000', ' O''LEARY', ' LORI', ' J', 1328, ' OLD PLEASANT ST', 2324, ' D', ' F', '1937-04-12', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('09OPL2666000', ' O''LEARY', ' PAUL', ' A', 1328, ' OLD PLEASANT ST', 2324, ' U', ' M', '1935-05-06', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('04NFK1237000', ' NEEDHAM', ' FRANK', ' W', 1329, ' OLD PLEASANT ST', 2324, ' R', ' M', '1933-08-29', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('05NLA0636000', ' NEEDHAM', ' LILA', ' D', 1329, ' OLD PLEASANT ST', 2324, ' R', ' F', '1933-01-14', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('08LBE2933000', ' LOMBARDI', ' BERLE', ' A', 1339, ' OLD PLEASANT ST', 2324, ' U', ' F', '1933-12-28', '1973-04-12', 1, 2, ' ', ' ', 0, 0),
('01LRD1433000', ' LOMBARDI', ' RICHARD', ' P', 1339, ' OLD PLEASANT ST', 2324, ' U', ' M', '1971-04-19', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('12MRT2833000', ' MANCINELLI', ' ROBERT', ' J', 1344, ' OLD PLEASANT ST', 2324, ' D', ' M', '1969-02-07', '2007-06-16', 1, 2, ' ', ' ', 0, 0),
('04MCE1971000', ' OBRIEN', ' CATHERINE', ' I', 1344, ' OLD PLEASANT ST', 2324, ' D', ' F', '1975-06-06', '2004-10-13', 1, 2, ' ', ' ', 0, 0),
('02OTY0769000', ' O''BRIEN', ' TIMOTHY', ' JOSEPH', 1344, ' OLD PLEASANT ST', 2324, ' U', ' M', '1976-03-31', '2004-06-16', 1, 2, ' ', ' ', 0, 0),
('06VRT0675000', ' VENDITTI', ' ROBERT', ' F', 1349, ' OLD PLEASANT ST', 2324, ' R', ' M', '1975-01-26', '2010-01-19', 1, 2, ' ', ' ', 0, 0),
('03VAE3176000', ' VENDITTI', ' AMIEE', ' L', 1349, ' OLD PLEASANT ST', 2324, ' D', ' F', '1975-12-25', '2005-07-07', 1, 2, ' ', ' ', 0, 0),
('01BPR2675003', ' BAGDON', ' PETER', ' L', 1352, ' OLD PLEASANT ST', 2324, ' D', ' M', '1950-12-28', '1961-04-12', 1, 2, ' ', ' ', 0, 0),
('12VJR2575000', ' BAGDON', ' JENNIFER', ' M', 1352, ' OLD PLEASANT ST', 2324, ' R', ' F', '1948-02-27', '1961-04-12', 1, 2, ' ', ' ', 0, 0),
('12PDE2850000', ' PIQUETTE', ' DIANE', ' L', 1358, ' OLD PLEASANT ST', 2324, ' R', ' F', '1973-08-22', '2004-08-26', 1, 2, ' ', ' ', 0, 0),
('02PTS2748001', ' PIQUETTE', ' THOMAS', ' A', 1358, ' OLD PLEASANT ST', 2324, ' U', ' M', '1940-06-14', '1988-04-12', 1, 2, ' ', ' ', 0, 0),
('08ESN2273000', ' ELLIS', ' STEPHEN', ' DOUGLAS', 1359, ' OLD PLEASANT ST', 2324, ' U', ' M', '1936-11-25', '1993-04-12', 1, 2, ' ', ' ', 0, 0),
('06EWE1440000', ' ELLIS', ' WAYNE', ' D', 1359, ' OLD PLEASANT ST', 2324, ' U', ' M', '1956-02-07', '1984-04-12', 1, 2, ' ', ' ', 0, 0),
('09CLA0967002', ' COOLE', ' LISA', ' C', 90, ' LONGVIEW DR', 2324, ' D', ' F', '1962-03-27', '2002-03-18', 2, 2, ' ', ' ', 0, 0),
('11CGT0363002', ' COOLE', ' GARRET', ' M', 90, ' HARVEST LN', 2324, ' U', ' M', '1960-01-14', '1989-04-12', 2, 2, ' ', ' ', 0, 0),
('03LJT2762000', ' LACOUTURE', ' JANET', ' L', 235, ' HARVEST LN', 2324, ' U', ' F', '1972-12-02', '2008-10-10', 6, 2, ' ', ' ', 0, 0),
('01LRD1460000', ' LACOUTURE', ' RAYMOND', ' PAUL', 235, ' ENWRIGHT WAY', 2324, ' U', ' M', '1971-02-23', '2007-02-21', 6, 2, ' ', ' ', 0, 0),
('12CCS0272004', ' CANTAVE', ' CHARLES', ' LEON', 12, ' ENWRIGHT WAY', 2324, ' U', ' M', '1966-08-30', '1998-02-18', 3, 2, ' ', ' ', 0, 0),
('02CAY2371001', ' CANTAVE', ' AMY', ' J', 12, ' JILLIAN''S WAY', 2324, ' U', ' F', '1967-10-20', '1998-05-19', 3, 2, ' ', ' ', 0, 0),
('08LFF3066000', ' LONGO', ' F.', ' SCOTT', 45, ' JILLIAN''S WAY', 2324, ' D', ' M', '1930-07-05', '1998-05-13', 3, 2, ' ', ' ', 0, 0),
('01NMK1774000', ' NORMAN', ' MARK', ' L', 90, ' OLD FARM RD', 2324, ' R', ' M', '1971-07-13', '1998-10-27', 3, 2, ' ', ' ', 0, 0),
('01NLE2874000', ' NORMAN', ' LAURIE', ' A', 90, ' JILLIAN''S WAY', 2324, ' U', ' F', '1970-10-12', '2009-10-28', 3, 2, ' ', ' ', 0, 0),
('07LLI1371000', ' LOYCANO', ' LORI', ' A', 10, ' JILLIAN''S WAY', 2324, ' R', ' F', '1941-04-01', '1998-04-25', 3, 2, ' ', ' ', 0, 0),
('10LCR1270001', ' LOYCANO', ' CHRISTOPHER', ' C', 10, ' WALNUT ST', 2324, ' U', ' M', '1946-09-27', '1974-04-12', 2, 2, ' ', ' ', 0, 0),
('04PBD0141001', ' PIGEON', ' BERNARD', ' R', 380, ' GRANGE PARK', 2324, ' U', ' M', '1986-02-12', '2004-03-02', 2, 2, ' ', ' ', 0, 0),
('09CGY2746000', ' CHILJEAN', ' GARY', ' B', 260, ' GRANGE PARK', 2324, ' D', ' M', '1951-01-27', '1982-04-12', 2, 2, ' ', ' ', 0, 0),
('02CKE1286000', ' CHILJEAN', ' KRISTINE', ' R', 260, ' GRANGE PARK', 2324, ' U', ' F', '1959-10-01', '1983-04-12', 4, 2, ' ', ' ', 0, 0),
('01CNY2751000', ' CHILJEAN', ' NANCY', ' L', 260, ' CONANT ST', 2324, ' D', ' F', '1938-02-03', '1979-04-12', 1, 2, ' ', ' ', 0, 0),
('10BPR0159000', ' BUMPUS', ' PETER', ' V', 389, ' OLD PLEASANT ST', 2324, ' D', ' M', '1938-05-11', '1972-04-12', 1, 2, ' ', ' ', 0, 0),
('02CPA0338000', ' CANEPA', ' PATRICIA', ' A', 1455, ' OLD PLEASANT ST', 2324, ' U', ' F', '1979-01-26', '2010-01-28', 1, 2, ' ', ' ', 0, 0),
('05CDD1138000', ' CANEPA', ' DAVID', ' A', 1455, ' OLD PLEASANT ST', 2324, ' U', ' M', '1953-07-03', '1961-04-12', 1, 2, ' ', ' ', 0, 0),
('01RJA2679000', ' ELLIS', ' JESSICA', ' L', 1474, ' OLD PLEASANT ST', 2324, ' R', ' F', '1955-11-08', '1977-04-12', 1, 2, ' ', ' ', 0, 0),
('07ETI0353000', ' ELLIS', ' TERRI', ' L', 1474, ' OLD PLEASANT ST', 2324, ' U', ' F', '1979-01-26', '2010-02-16', 1, 2, ' ', ' ', 0, 0),
('11ERY0855000', ' ELLIS', ' RANDY', ' A', 1474, ' OLD PLEASANT ST', 2324, ' R', ' M', '1965-12-27', '2009-12-28', 1, 2, ' ', ' ', 0, 0),
('07WJA2988001', ' WELDON', ' JENNA', ' MARIE', 15, ' PATRICIA DR', 2324, ' U', ' F', '1963-07-26', '1996-10-16', 2, 2, ' ', ' ', 0, 0),
('08WLE0758000', ' WELDON', ' LAWRENCE', ' J', 15, ' LEDGEWOOD DR', 2324, ' U', ' M', '1953-06-20', '1996-08-01', 2, 2, ' ', ' ', 0, 0),
('07ELN2663000', ' SKIBINSKI', ' LYN', ' C', 10, ' LEDGEWOOD DR', 2324, ' D', ' F', '1954-03-06', '2005-09-02', 4, 2, ' ', ' ', 0, 0),
('06SSN2053002', ' SKIBINSKI', ' STEPHEN', ' J', 10, ' FLAGG ST', 2324, ' U', ' M', '1983-11-30', '2005-09-02', 4, 2, ' ', ' ', 0, 0),
('03CJE0654000', ' COFFMAN', ' JOANNE', ' M', 35, ' FLAGG ST', 2324, ' U', ' F', '1985-06-13', '2005-09-02', 4, 2, ' ', ' ', 0, 0),
('11CJH3083000', ' COFFMAN', ' JOBETH', ' ANN', 35, ' FLAGG ST', 2324, ' D', ' F', '1948-09-17', '2005-09-02', 4, 2, ' ', ' ', 0, 0),
('06CMN1385000', ' COFFMAN', ' MEGAN', ' E', 35, ' FLAGG ST', 2324, ' U', ' F', '1942-01-03', '1998-09-28', 3, 2, ' ', ' ', 0, 0),
('09CRD1748002', ' COFFMAN', ' RICHARD', ' T', 35, ' SHARON CT', 2324, ' U', ' M', '1942-07-12', '1998-09-29', 3, 2, ' ', ' ', 0, 0),
('01HMY0342001', ' HARRIMAN', ' MARY', ' E', 125, ' SHARON CT', 2324, ' U', ' F', '1926-03-22', '1998-01-13', 3, 2, ' ', ' ', 0, 0),
('07HRH1242000', ' HARRIMAN', ' RALPH', ' F', 125, ' TRAILWOOD DR', 2324, ' D', ' M', '1929-07-12', '1995-06-10', 3, 2, ' ', ' ', 0, 0),
('03MJE2226000', ' MAYER', ' JENNIE', ' F', 75, ' TRAILWOOD DR', 2324, ' U', ' F', '1959-01-01', '1998-01-26', 1, 2, ' ', ' ', 0, 0),
('07TBD1229001', ' TALPEY', ' BUD', ' M', 75, ' HEATHER HILLS DR', 2324, ' U', ' M', '1969-03-19', '1998-02-10', 1, 2, ' ', ' ', 0, 0),
('01LMK0159002', ' LITTLE', ' MARK', ' R', 20, ' HEATHER HILLS DR', 2324, ' U', ' M', '1989-01-28', '2007-07-24', 2, 2, ' ', ' ', 0, 0),
('03LLA1969000', ' LITTLE', ' LAURA', ' A', 20, ' SOUTH MEADOW DR', 2324, ' R', ' F', '1959-08-28', '2001-12-20', 2, 2, ' ', ' ', 0, 0),
('01WCE2889000', ' WOOD', ' CHRISTINE', ' E', 50, ' SOUTH MEADOW DR', 2324, ' R', ' F', '1987-06-02', '2006-05-25', 2, 2, ' ', ' ', 0, 0),
('08WDA2859000', ' WOOD', ' DONNA', ' I', 50, ' SOUTH MEADOW DR', 2324, ' U', ' F', '1990-10-26', '2008-08-19', 2, 2, ' ', ' ', 0, 0),
('06WJE0287000', ' WOOD', ' JULIE', ' M', 50, ' SOUTH MEADOW DR', 2324, ' R', ' F', '1958-10-22', '2001-12-20', 2, 2, ' ', ' ', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
