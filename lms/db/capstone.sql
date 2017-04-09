-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 09:29 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'jkev', '2013-11-18 15:25:33', 'Add Subject RIZAL'),
(2, 'jkev', '2013-11-18 15:27:08', 'Edit Subject RIZAL'),
(3, '', '2013-11-18 15:30:46', 'Edit Subject IS 221'),
(4, '', '2013-11-18 15:31:12', 'Edit Subject IS 222'),
(5, '', '2013-11-18 15:31:24', 'Edit Subject IS 223'),
(6, '', '2013-11-18 15:31:34', 'Edit Subject IS 224'),
(7, '', '2013-11-18 15:31:54', 'Edit Subject IS 227'),
(8, '', '2013-11-18 15:32:37', 'Add Subject IS 411B'),
(9, '', '2013-11-18 15:34:54', 'Edit User jkev'),
(10, 'jkev', '2014-01-17 13:26:18', 'Add User admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2013-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1'),
(3, 'uploads/3617_File_login.mdb', '2013-10-28 19:35:28', 'q', 9, 80, 'q'),
(4, 'admin/uploads/7146_File_normalization.ppt', '2013-10-30 18:48:15', 'fsaf', 9, 95, 'fsaf'),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2013-10-30 18:48:33', 'fsaf', 9, 95, 'dsaf'),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2013-10-30 18:53:32', 'file', 9, 95, 'abstract'),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2013-11-01 13:13:18', 'fsafasf', 9, 95, 'Assignment#2'),
(11, 'admin/uploads/1511_File_bootstrap.css', '2013-11-01 13:18:25', 'sdsa', 9, 95, 'css'),
(12, 'admin/uploads/4309_File_new  2.txt', '2013-11-17 23:21:46', 'test', 12, 145, 'test'),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2013-11-18 16:59:35', 'q', 12, 145, 'q'),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:38:45', 'afs', 18, 159, 'dasf'),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:19', 'test', 18, 160, 'assign1'),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2013-11-25 15:53:20', 'q', 12, 161, 'q'),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:39:05', 'kevin', 12, 0, 'kevin'),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:41:10', 'kevin', 12, 0, 'kevin'),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:43:25', 'kevin', 12, 0, 'kevin'),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:47:48', 'fasfafaf', 12, 0, 'fasf'),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:48:59', 'dasdasd', 12, 0, 'dasd'),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:50:47', 'dasdasd', 12, 0, 'dsad'),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 12, 167, 'q'),
(31, 'admin/uploads/5578_File_7-Mar-2017.xlsx', '2017-03-10 12:35:43', 'DO the first', 13, 175, ''),
(32, 'admin/uploads/1743_File_Ajax With PHP.pdf', '2017-04-09 16:37:00', 'report assignment', 3, 21, 'ajax with php');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(30) NOT NULL,
  `date` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendances` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `date`, `course_id`, `teacher_id`, `student_id`, `attendances`) VALUES
(1, '2017-03-25', 6, 4, 21, 'Absent'),
(2, '2017-03-25', 6, 4, 6, 'Late'),
(3, '2017-03-25', 6, 4, 21, 'Present'),
(4, '2017-03-25', 6, 4, 6, 'Absent'),
(5, '2017-03-25', 6, 4, 21, 'Present'),
(6, '2017-03-25', 6, 4, 6, 'Present'),
(7, '2017-03-25', 6, 4, 21, 'Absent'),
(8, '2017-03-25', 6, 4, 6, 'Present'),
(9, '2017-03-25', 6, 4, 21, 'Late'),
(10, '2017-03-25', 6, 4, 6, 'Present'),
(11, '2017-03-25', 6, 4, 21, 'Late'),
(12, '2017-03-25', 6, 4, 6, 'Present'),
(13, '2017-03-25', 6, 4, 21, 'Sick'),
(14, '2017-03-25', 6, 4, 6, 'Present'),
(15, '2017-03-25', 6, 4, 21, 'Sick'),
(16, '2017-03-25', 6, 4, 6, 'Present'),
(17, '2017-03-25', 6, 4, 21, 'Present'),
(18, '2017-03-25', 6, 4, 6, 'Present'),
(19, '2017-03-25', 14, 1, 14, 'Late'),
(20, '2017-03-25', 6, 4, 21, 'Sick'),
(21, '2017-03-25', 6, 4, 6, 'Late'),
(22, '2017-03-25', 5, 5, 5, 'Absent'),
(23, '2017-03-25', 5, 5, 5, 'Sick');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'CSE115'),
(2, 'CSE135'),
(3, 'CSE225'),
(4, 'CSE231'),
(5, 'CSE257'),
(6, 'CSE273'),
(7, 'CSE311'),
(8, 'CSE323'),
(9, 'CSE326'),
(10, 'CSE327'),
(11, 'CSE331'),
(12, 'CSE332'),
(13, 'CSE338'),
(14, 'CSE373'),
(15, 'CSE482'),
(16, 'CSE499B');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\n\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The mission of North South University is to produce competent graduates in their selected disciplines who will have productive careers or choose to engage in advanced studies.\n<br><br>\nOur students will be:\n<br>\n   1. life-long learners with good leadership skills <br>\n   2. more proficient in oral, written and electronic communication <br>\n   3. critical thinkers with well-developed analytical skills <br>\n   4. ethical and socially responsible <br>\n   5. champions of diversity and tolerance <br>\n   6. globally aware with commitment to social justice and sustainability&nbsp;</span></p>\n\n<p style=\"text-align:left\">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; North South University will be and remain a center of excellence in higher education. It will gain recognition, nationally and globally and will attract students, faculty, and staff from all parts of the world. </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; North South University, the first private university in Bangladesh, was established by a group of philanthropists, industrialists, bureaucrats and academics. The government of Bangladesh approved the establishment of North South University in 1992 under Private University Act (PUA)-1992 (now replaced by PUA-2010). The university was formally inaugurated on 10 February, 1993 by the then Prime Minister of Bangladesh. The honorable President of the People\'s Republic of Bangladesh is the Chancellor of NSU. </p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp; Following the private university act-2010, Mr. Azim Uddin Ahmed is the current Chairman of the Board of Trustees, North South University and North South University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman. The Syndicate runs the administration of the University within the policy guidelines provided by BOT 2010.</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;The Vice Chancellor, as the chief executive and academic officer, along with the Pro Vice Chancellor, runs the universities with the cooperation of the statutory bodies operate under the provision of the Statutes prepared within the framework of PUA 2010. The Registrar maintains the university records including admissions and Controller of Examination results and keeps liaison with Ministry of Education,University Grants Commission (UGC) and other relevant authorities.</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;NSU has the authority, under its Charter, to impart instruction and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering, agriculture, law and medicine. It also has the authority to grant diplomas, certificates and other academic distinctions. Currently, NSU offers Bachelor\'s and Master\'s degrees in 29 subjects (15 Bachelor\'s degrees and 14 Master\'s degrees). Additional programs including Ph.D.in different subjects are under preparation. </p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;The university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs country. </p>\n\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;Prof. Dr. Atiqul Islam, Vice Chancellor is providing leadership in improving, expanding and diversifying various academic programs. NSU now has 329 core (fulltime) faculty members. All faculty members have higher degrees from reputable foreign universities, with over 90% holding degrees from British, American, Australian and Canadian universities. Visiting faculty members from foreign universities including US,U.K, Canadian and Australian universities also teach at NSU.It is very selective in recruiting teachers and admitting students. Its current student enrolment is about 22,000.</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;The first freshman classes had 137 students enrolled in three Departments: Business Administration, Computer Science, and Economics. Department of Environmental Studies and Management (DESM), English and General and Continuing Education (GCE) were added in May 1997. The Master\'s program in Economics was introduced in 1994. The MBA program was launched in Summer 1997. Master\'s in Development Studies and Bachelor\'s in Computer Engineering were introduced in 2002 while MS in Computer Science is being offered from Summer 2003. Bachelor\'s in Architecture was introduced in Fall 2004. Master\'s in English was launched in Spring 2005. Pharmacy (Undergraduate) and Executive MBA programs came into being in Spring 2006 and Master\'s in Biotechnology and Master\'s in Public Health programs were started in Summer 2006. BS in Biotechnology, BS in Microbiology and BS in Biochemistry programs were introduced in Spring 2007. Master in Public Policy and Governance (MPPG) opened in Fall 2008, BS in Electrical and Electronic Engineering (EEE) and Master in Resources and Environmental Management (MREM) launched in Spring 2009 and Fall 2009 respectively. The university launched Executive Master in Public Health (EMPH) during Summer 2010 , MPharm during spring 2012 and BS in Civil and Environmental Engineering (CEED) opened in Summer 2013.</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;NSU has three Institutes and one Center: (i) Institute of Development, Environment and Strategic Studies (IDESS) (ii) Institute of Modern Language (IML) (iii) Confucius Institute Chainess Language Institute, and (iv) Center of Information & Communication Technology (CICT).</p>'),
(4, 'Footer', '<p style=\"text-align:center\">CHMSC Online Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2013</p>\r\n'),
(5, 'Upcoming Events', '<pre>\nUP COMING EVENTS</pre>\n\n<p><strong>&gt;</strong> EXAM</p>\n\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\n\n<p><strong>&gt;</strong> DEFENSE</p>\n\n<p><strong>&gt;</strong> ENROLLMENT</p>\n\n<p>&nbsp;</p>\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">CHMSC Online Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\n\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\n	<tbody>\n		<tr>\n			<td>\n			<p>Summer Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>July 1, 2016 to september 31, 2016&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Semester Break</p>\n			</td>\n			<td>\n			<p>october 1, 2016 to November 3, 2016</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Fall Semester</p>\n			</td>\n			<td>\n			<p>Nov. 5, 2016 to March 27, 2016</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Semester Break</p>\n			</td>\n			<td>\n			<p>March 27, 2016 to April 6, 2017</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Spring Semester</p>\n			</td>\n			<td>\n			<p>April 6 , 2014 to May 30, 2017</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\n	<tbody>\n		<tr>\n			<td colspan=\"4\">\n			<p><strong>Jan 5, 2017 to April 31, 2017 &ndash; Spring Semester</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>5-Jan-17 &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>Thursday Online course registration for existing  regular and probation students for Spring 2017 starts</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>14-Jan-17</p>\n			</td>\n			<td>\n			<p>Saturday Online course registration for Spring 2017 ends </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>15-Jan-17</p>\n			</td>\n			<td>\n			<p>Sunday Section cancellation and merging starts </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>16-Jan-17</p>\n			</td>\n			<td>\n			<p>Monday Section cancellation and merging ends</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>17-Jan-17</p>\n			</td>\n			<td>\n			<p>Tuesday Classes begin </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>22-Jan-17</p>\n			</td>\n			<td>\n			<p>Sunday No class - Ijtema Akheri Munajat </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>25-Jan-17</p>\n			</td>\n			<td>\n			<p>Wednesday Last day of manual drop of courses</p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\">\n			<p>June</p>\n			</td>\n			<td>\n			<p>Club Organizations (By Discipline/Programs)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Student Affiliation/Induction Programs</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>26-Jan-17</p>\n			</td>\n			<td>\n			<p>Thursday Last day of payment without late fee</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>28-Jan-17</p>\n			</td>\n			<td>\n			<p>Saturday Payment of tuition with late fee of Tk.2,000/- starts </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>8-Feb-17</p>\n			</td>\n			<td>\n			<p>Wednesday Last day of payment with late fee of Tk.2,000/- </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>9-Feb-17</p>\n			</td>\n			<td>\n			<p>Thursday Payment with late fee of Tk.2,000/-+ Tk.100/- per day starts </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>19-Feb-17</p>\n			</td>\n			<td>\n			<p>Sunday Last day of registration for financial aid recipients without late fee</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>21-Feb-17</p>\n			</td>\n			<td>\n			<p>Tuesday Holiday- Martyrs Day & International Mother Language day</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>1-Mar-17</p>\n			</td>\n			<td>\n			<p>Wednesday Last day to withdraw with W</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>17-Mar-17</p>\n			</td>\n			<td>\n			<p>Friday Holiday - Birthday of Bangabandhu Sheikh Mujibur Rahman</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>18-Mar-17 </p>\n			</td>\n			<td>\n			<p>Saturday Undergraduate Admission Test for Summer 2017 </p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>25-Mar-17</p>\n			</td>\n			<td>\n			<p>Saturday Regular RA classes</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>26-Mar-17</p>\n			</td>\n			<td>\n			<p>Sunday Holiday - Independence Day</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>29-Mar-17</p>\n			</td>\n			<td>\n			<p>Wednesday Regular MW classes</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\n	<tbody>\n		<tr>\n			<td colspan=\"4\">\n			<p><strong>October. 1, 2016 to March 6, 2017 &ndash; Summer</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>Start of Classes</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>November 19, 20, 21, 22</p>\n			</td>\n			<td>\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>December 5, 6</p>\n			</td>\n			<td>\n			<p>Long Tests</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>December 19,20</p>\n			</td>\n			<td>\n			<p>Thanksgiving Celebrations</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>December 21</p>\n			</td>\n			<td>\n			<p>Start of Christmas Vacation</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>December 25</p>\n			</td>\n			<td>\n			<p>Christmas Day (Regular Holiday)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>December 30</p>\n			</td>\n			<td>\n			<p>Rizal Day (Regular Holiday)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>January 6, 2017</p>\n			</td>\n			<td>\n			<p>Classes Resume</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>January 9, 10</p>\n			</td>\n			<td>\n			<p>Midterm Examinations</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>January 29</p>\n			</td>\n			<td>\n			<p>Submission of Grades Sheets for Midterm</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>February 13, 14</p>\n			</td>\n			<td>\n			<p>Long Tests</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>March 6, 7</p>\n			</td>\n			<td>\n			<p>Final Examinations (Graduating)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>March 13, 14</p>\n			</td>\n			<td>\n			<p>Final Examinations (Non-Graduating)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>March 17, 18, 19, 20, 21</p>\n			</td>\n			<td>\n			<p>Recognition / Graduation Rites</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>March 27</p>\n			</td>\n			<td>\n			<p>Last Day of Service for Faculty</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>June 5, 2017</p>\n			</td>\n			<td>\n			<p>First Day of Service</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">&nbsp;</p>'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\n<pre>\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\n\n<ul>\n	<li>Office of the Vice Chancellor - Ext.:1103</li>\n	<li>Office of the Pro-Vice Chancellor - Ext.:1102</li>\n	<li>Board Office - Ext.:1005</li>\n	<li>Treasurer\'s Office - Ext.:1122</li>\n	<li>Office of the External Affairs - Ext.:1060</li>\n	<li>Proctor\'s Office - Ext.:1142</li>\n	<li>Registrar\'s Office - Ext.:1162</li>\n	<li>Controller of Examinations - Ext.:2211</li>\n	<li>Department of Administration - Ext.:1203</li>\n	<li>Department of Operation & Maintenance - Ext.:1202</li>\n	<li>Department of Finance & Accounts - Ext.:1301</li>\n	<li>Library - Ext.:1353</li>\n	<li>Department of Information Technology - Ext.:1444</li>\n	<li>Financial Aid Office - Ext.:2181</li>\n	<li>Career & Professional Development Services - Ext.:2123</li>\n	<li>Department of Management - Ext.:1730</li>\n	<li>Department of Marketing & International Business - Ext.:1773</li>\n	<li>Department of Accounting & Finance - Ext.:1770</li>\n	<li>MBA & EMBA - Ext.:1701</li>\n	<li>School of Business & Economics - Ext.:1761</li>\n	<li>Department of Public Health - Ext.:1914</li>\n	<li>Department of Electrical and Computer Engineering - Ext.:1526</li>\n	<li>Architecture - Ext.:1859</li>\n	<li>Department of Civil and Environmental Engineering - Ext.:6240</li>\n\n</ul>\n</div>'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">CHMSC EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\n\n<ul>\n	<li>Bashundhara Campus</li>\n	<li>Other Campus</li>	\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `chair` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `chair`) VALUES
(1, 'Electrical and Computer Engineering', 'Dr. Rezaul Bari'),
(2, 'School of Arts and Science', 'DR. Emdadul Haque'),
(9, 'College of Education', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante');

-- --------------------------------------------------------

--
-- Table structure for table `full_marks`
--

CREATE TABLE `full_marks` (
  `poll_id` int(11) NOT NULL,
  `poll_name` varchar(100) NOT NULL,
  `pdatein` varchar(100) NOT NULL,
  `poll_weight` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `full_marks`
--

INSERT INTO `full_marks` (`poll_id`, `poll_name`, `pdatein`, `poll_weight`, `number`, `teacher_class_id`) VALUES
(18, 'Ethics in engineering', '2017-04-09 18:41:16', 5, 10, 21),
(19, 'quiz1', '2017-04-09 19:09:13', 20, 30, 21);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `marks_id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `teacher_class_student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`marks_id`, `poll_id`, `marks`, `teacher_class_student_id`) VALUES
(1, 16, 12, 1),
(2, 16, 14, 2),
(3, 16, 13, 5),
(4, 16, 15, 6),
(5, 17, 32, 1),
(6, 17, 31, 2),
(7, 17, 28, 5),
(8, 17, 29, 6),
(9, 18, 7, 1),
(10, 18, 6, 2),
(11, 18, 8, 5),
(12, 18, 7, 6),
(13, 19, 29, 1),
(14, 19, 27, 2),
(15, 19, 25, 5),
(16, 19, 22, 6);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', 'read'),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 175, 'Add Assignment file name <b></b>', '2017-03-10 12:35:43', 'assignment_student.php'),
(16, 2, 'Add Annoucements', '2017-03-21 03:57:30', 'announcements_student.php'),
(17, 5, 'Add Annoucements', '2017-03-22 02:26:34', 'announcements_student.php'),
(18, 21, 'Add Assignment file name <b>ajax with php</b>', '2017-04-09 16:37:00', 'assignment_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 76, 'yes', 15),
(2, 76, 'yes', 10),
(3, 76, 'yes', 5),
(4, 76, 'yes', 3),
(5, 93, 'yes', 9),
(6, 1, 'yes', 14),
(7, 1, 'yes', 13),
(8, 1, 'yes', 12),
(9, 1, 'yes', 11),
(10, 1, 'yes', 8),
(11, 1, 'yes', 7),
(12, 1, 'yes', 6),
(13, 1, 'yes', 4),
(14, 1, 'yes', 2),
(15, 21, 'yes', 17),
(16, 4, 'yes', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 3, 'yes', 19);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(1, '2016-2017'),
(2, '2017-2017');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` int(12) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `email`, `contact_number`, `location`, `status`) VALUES
(1, 'Ashik Mostafa', 'Alvi', 1, 'alvi', 'alvi', 'alvi@gmail.com', 1461935633, 'uploads/alvi.jpg', 'Registered'),
(2, 'Manazir', 'Mustafa', 2, 'manazir', 'manazir', 'manazirmustafa@gmail.com', 1687876709, 'uploads/manazir.jpg', 'Registered'),
(3, 'Fakrul', 'Shawon', 3, 'shawon', 'shawon', 'shawon@mail.com', 34631246, 'uploads/shaon.jpg', 'Registered'),
(4, 'Pritvi Ranjan', 'Das', 4, 'pritvi', 'pritvi', 'confused.prithvi@gmail.com', 37461246, 'uploads/prithvi.jpg', 'Registered'),
(5, 'Saidur', 'Rahman', 5, 'saidur', 'saidur', 'saidur@gmial.com', 847147134, 'uploads/Koala.jpg', 'Unregistered'),
(6, 'Anika', 'Tasnim', 6, 'anika', 'anika', 'anika@yaho.com', 0, 'uploads/paean.jpg', 'Unregistered'),
(7, 'Sakib', 'Bin Kibria', 7, 'sakib', 'sakib', 'sakib@mail.com', 347174214, 'uploads/sakib.jpg', 'Unregistered'),
(8, 'Fazal Mahamud', 'Niloy', 8, 'niloy', 'niloy', 'niloy@mail.com', 34134134, 'uploads/niloy.jpg', 'Unregistered'),
(9, 'Rashedul Hasan', 'Abir', 9, 'abir', 'abir', 'abir@gmail.com', 145125521, 'uploads/jamila.jpg', 'Unregistered'),
(10, 'Sakibul', 'Alam', 10, 'shetu', 'shetu', 'shetu@ymail.com', 35135135, 'uploads/shetu.jpg', 'Unregistered'),
(11, 'Swajan', 'Mahmud', 11, 'swajan', 'swajan', 'swajan@hmail.com', 3523325, 'uploads/swajan.jpg', 'Unregistered'),
(12, 'Sheikh', 'Faishal', 12, 'faishal', 'faishal', 'faisal@ymail.com', 1414142, 'uploads/faishal.jpg', 'Unregistered'),
(13, 'Shouvik Kanti', 'Das', 13, 'shouvik', 'shouvik', 'shouvik@gmail.com', 3513513, 'uploads/kanti.jpg', 'Unregistered'),
(14, 'Mustafizur', 'Rahman', 14, 'babu', 'babu', 'babu@babu.com', 14241412, 'uploads/babu.jpg', 'Unregistered'),
(15, 'Sakib', 'Al-Hasan', 15, 'shakib', 'shakib', 'shakib@mail.com', 3541521, 'uploads/Shakib.jpg', 'Registered'),
(16, 'Tamim', 'Iqbal', 1, 'tamim', 'tamim', 'tamim@bpl.com', 1241414, 'uploads/tamim.jpg', 'Unregistered'),
(17, 'Rashed', 'Mazumdar', 2, 'rashed', 'rashed', 'rashed@mail.com', 142421, 'uploads/maica.jpg', 'Registered'),
(18, 'Pinku', 'Debnath', 3, 'pinku', 'pinku', 'pinku@ymail.com', 1341513, 'uploads/pinku.jpg', 'Registered'),
(19, 'Salman Tasin', 'Haque', 4, 'tasin', 'tasin', 'tasin@gmail.com', 14141419, 'uploads/tasin.jpg', 'Unregistered'),
(20, 'Mohima Mostafa', 'Naomi', 5, 'naomi', 'naomi', 'naomi@gmail.com', 24124128, 'uploads/naomi.jpg', 'Unregistered'),
(21, 'Nishat Tasnim', 'Manami', 6, 'manami', 'manami', 'manami@ymail.com', 3465237, 'uploads/manami.jpg', 'Unregistered'),
(22, 'Rayhanul Iqbal', 'Evan', 7, 'evan', 'evan', 'evan@gmail.com', 23764383, 'uploads/evan.jpg', 'Unregistered'),
(23, 'Shajia Naz', 'Pritha', 8, 'pritha', 'pritha', 'pritha@ymail.com', 3483864, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(24, 'Jane Doe', 'Faria', 9, 'faria', 'faria', 'faria@mail.com', 27134274, 'uploads/faria.jpg', 'Unregistered'),
(25, 'Jakia Bari', 'Mom', 10, 'mom', 'mom', 'mom@gmail.com', 614325235, '', 'Unregistered'),
(219, 'Al', 'Amin', 16, 'Amin', 'Amin', 'amin@gmail.com', 614325255, '', 'Unregistered'),
(220, 'Al-Amin', 'Hossain', 16, 'Hossain', 'Hossain', 'hossain@gmail.com', 614325312, '', 'Unregistered'),
(221, 'Farjana Jahan', 'Aneela', 16, 'Aneela', 'Aneela', 'aneela@gmail.com', 621651465, '', 'Unregistered'),
(222, 'Hamza Ibn', 'Alim', 16, 'Alim', 'Alim', 'alim@gmail.com', 5465213, '', 'Unregistered'),
(223, 'Kaisarul', 'Islam', 16, 'Islam', 'Islam', 'islam@gmail.com', 2147483647, '', 'Unregistered'),
(224, 'Masrur Ferdous', 'Khan', 16, 'Khan', 'Khan', 'khan@gmail.com', 58321321, '', 'Unregistered'),
(225, 'Md. Jannatun', 'Nayeem', 16, 'Nayeem', 'Nayeem', 'nayeem@gmail.com', 1321335, '', 'Unregistered'),
(226, 'Md. Saidur', 'Rahman', 16, 'Saidur', 'Saidur', 'saidur@gmail.com', 613215235, '', 'Unregistered'),
(227, 'Md. Ali', 'Mostakim', 16, 'Mostakim', 'Mostakim', 'mostakim@gmail.com', 61321235, '', 'Unregistered'),
(228, 'Monirul', 'Alam', 16, 'Alam', 'Alam', 'alam@gmail.com', 611235, '', 'Unregistered'),
(229, 'Nadim Kaisar', 'Russel', 16, 'Russel', 'Russel', 'russel@gmail.com', 613132235, '', 'Unregistered'),
(230, 'Md.', 'Nayeem', 16, 'Nayeem', 'Nayeem', 'nayeem@gmail.com', 61321335, '', 'Unregistered'),
(231, 'Sadia Tanzim', 'Islam', 16, 'Sadia', 'Sadia', 'sadia@gmail.com', 6211235, '', 'Unregistered'),
(232, 'Saifur Rahman', 'Suzon', 16, 'Suzon', 'Suzon', 'suzon@gmail.com', 6132135, '', 'Unregistered'),
(233, 'Saqif', 'Masud', 16, 'Masud', 'Masud', 'masud@gmail.com', 61135235, '', 'Unregistered'),
(234, 'Shahida', 'Sultana', 16, 'Sultana', 'Sultana', 'sultana@gmail.com', 1313235, '', 'Unregistered'),
(235, 'Shakil', 'Ahmed', 16, 'Shakil', 'Shakil', 'shakil@gmail.com', 6141335, '', 'Unregistered'),
(236, 'Syed Mohammad', 'Hasin', 16, 'Hasin', 'Hasin', 'hasin@gmail.com', 62131235, '', 'Unregistered'),
(237, 'Tanvir Asif', 'Ali', 16, 'Ali', 'Ali', 'ali@gmail.com', 614342, '', 'Unregistered'),
(238, 'Tanzina', 'Sultana', 16, 'Tanzina', 'Tanzina', 'tanzina@gmail.com', 63135235, '', 'Unregistered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(21, 13, 'admin/uploads/1414_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 11:59:28', 'fasfasfasfsfsafasf', 'safas', 93, ''),
(22, 13, 'admin/uploads/5554_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:07:46', 'fasfaf', 'fdasf', 93, ''),
(23, 13, 'admin/uploads/3202_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:08:21', 'fasf', 'fasf', 93, ''),
(24, 13, 'admin/uploads/6535_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:09:19', 'fasf', 'saff', 93, ''),
(25, 12, 'admin/uploads/8974_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:24:38', 'fgs', 'gs', 93, ''),
(26, 13, 'admin/uploads/9035_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:51:44', 'q', 'q', 93, ''),
(27, 13, 'admin/uploads/4503_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:52:44', 'fasfaf', 'fasf', 93, ''),
(28, 13, 'admin/uploads/7827_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:54:20', 'ffsafsfafsaf', 'fsa', 93, ''),
(29, 13, 'admin/uploads/6680_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:02:49', 'jkl', 'jkl', 93, ''),
(30, 14, 'admin/uploads/1457_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:06:56', 'fasf', 'saf', 93, ''),
(31, 16, 'admin/uploads/7151_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:52', 'test', 'my_assginment', 93, ''),
(32, 17, 'admin/uploads/1918_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 15:54:19', 'q', 'q', 71, '95'),
(33, 31, 'admin/uploads/7519_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:58:58', 'dad', 'das', 75, ''),
(34, 20, 'admin/uploads/2416_File_about.php', '2014-01-14 08:51:53', 'Asssd', 'Assignment1', 136, ''),
(35, 20, 'admin/uploads/5560_File_Chrysanthemum.jpg', '2014-01-14 08:52:22', 'sder', 'sfew', 136, '98'),
(36, 31, 'admin/uploads/2489_File_7.pdf', '2017-03-10 12:37:43', 'ne tor assignment ferot', 'Ami Juniad', 76, '10'),
(37, 32, 'admin/uploads/4254_File_Basic Form Validation.htm', '2017-04-09 16:43:09', 'hw bye bye', 'done deal', 4, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(14, 'IS 411A', 'Senior Systems Project 1', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject comprisea topics about systems development, SDLC methodologies, Conceptual Framework, diagrams such as DFD, ERD and Flowchart and writing a thesis proposal.</p>\r\n<p>&nbsp;</p>\r\n<p>The project requirement for this subject are:</p>\r\n<p>Chapters (1-5) Thesis Proposal</p>\r\n<p>100% Running System at the end of semester</p>\r\n<p>&nbsp;</p>', 3, '', ''),
(15, 'IS 412', 'Effective Human Communication for IT Professional', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject is intended for IT students to develop or enhance communication skills that will be beneficial especially when used in the business industry. The lesson includes Verbal Communication (Written and Oral), Non-verbal Communication, etc.</p>', 3, '', ''),
(16, 'IS 311', 'Programming Languages', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Learn many of the concepts that underlie all programming languages. Develop a programming style known as functional programming and contrast it with object-oriented programming. Through experience writing programs and studying three different languages, learn the key issues in designing and using programming languages, such as modularity and the complementary benefits of static and dynamic typing. This course is neither particularly theoretical nor just about programming specifics &ndash; it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, you learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs &ndash; in any language.</div>\r\n<h2 class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">&nbsp;</h2>\r\n<pre class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\"><span style=\"font-size: medium;\"><em>&nbsp;Course Syllabus</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">\r\n<ul>\r\n<li>Syntax vs. semantics vs. idioms vs. libraries vs. tools</li>\r\n<li>ML basics (bindings, conditionals, records, functions)</li>\r\n<li>Recursive functions and recursive types</li>\r\n<li>Benefits of no mutation</li>\r\n<li>Algebraic datatypes, pattern matching</li>\r\n<li>Tail recursion</li>\r\n<li>First-class functions and function closures</li>\r\n<li>Lexical scope</li>\r\n<li>Equivalence and effects</li>\r\n<li>Parametric polymorphism and container types</li>\r\n<li>Type inference</li>\r\n<li>Abstract types and modules</li>\r\n<li>Racket basics</li>\r\n<li>Dynamic vs. static typing</li>\r\n<li>Implementing languages, especially higher-order functions</li>\r\n<li>Macro</li>\r\n<li>Ruby basics</li>\r\n<li>Object-oriented programming</li>\r\n<li>Pure object-orientation</li>\r\n<li>Implementing dynamic dispatch</li>\r\n<li>Multiple inheritance, interfaces, and mixins</li>\r\n<li>OOP vs. functional decomposition and extensibility</li>\r\n<li>Subtyping for records, functions, and objects</li>\r\n<li>Subtyping</li>\r\n<li>Class-based subtyping</li>\r\n<li>Subtyping vs. parametric polymorphism; bounded polymorphism</li>\r\n</ul>\r\n</div>', 3, '', ''),
(17, 'IS 413', 'Introduction to the IM Professional and Ethics', '', '<p>This subject discusses about Ethics, E-Commerce, Cybercrime Law, Computer Security, etc.</p>', 0, '', ''),
(22, 'IS 221', 'Application Development', '', '', 3, '', '2nd'),
(23, 'IS 222', 'Network and Internet Technology', '', '', 3, '', '2nd'),
(24, 'IS 223', 'Business Process', '', '', 3, '', '2nd'),
(25, 'IS 224', 'Discrete Structures', '', '', 3, '', '2nd'),
(26, 'IS 227', 'IS Programming 2', '', '', 3, '', '2nd'),
(27, 'SS POL GOV', 'Politics and Governance with Philippine Constitution', '', '', 3, '', '2nd'),
(28, 'LIT 1', 'Philippine  Literature', '', '', 3, '', '2nd'),
(29, 'ACCTG 2', 'Fundamentals of Accounting 2', '', '', 3, '', '2nd'),
(30, 'PE 4', 'Team Sports', '', '', 3, '', '2nd'),
(31, 'IS 302', 'Survey of Programming Languages', '', '', 3, '', '2nd'),
(32, 'IS 303', 'Structured Query Language', '', '', 3, '', '2nd'),
(33, 'IS 321', 'Information System Planning', '', '', 3, '', '2nd'),
(34, 'IS 322', 'Management of Technology', '', '', 3, '', '2nd'),
(35, 'IS 323', 'E-commerce Strategy Architectural', '', '', 3, '', '2nd'),
(36, 'IS 324', 'System Analysis and Design', '', '', 3, '', '2nd'),
(37, 'Law 1', 'Law on Obligation and Contracts', '', '', 3, '', '2nd'),
(38, 'Philo 1', 'Social Philosophy & Logic', '', '', 3, '', '2nd'),
(39, 'MQTB', 'Quantitative Techniques in Business', '', '', 3, '', '2nd'),
(40, 'RIZAL', 'Rizal: Life and Works', '', '<p>COURSE OUTLINE<br />\r\n1. Course Code : RIZAL</p>\r\n\r\n<p>2. Course Title &nbsp;: RIZAL (Rizal Life and Works)<br />\r\n3. Pre-requisite : none<br />\r\n5. Credit/ Class Schedule : 3 units; 3 hrs/week<br />\r\n6. Course Description&nbsp;<br />\r\n1. A critical analysis of Jose Rizal&rsquo;s life and ideas as reflected in his biography, his novels Noli Me Tangere and El Filibusterismo and in his other writings composed of essays and poems to provide the students a value based reference for reacting to certain ideas and behavior.<br />\r\n<br />\r\n<strong>PROGRAM OBJECTIVES</strong><br />\r\n1. To instill in the students human values and cultural refinement through the humanities and social sciences.<br />\r\n2. To inculcate high ethical standards in the students through its integration in the learning activities.<br />\r\n3. To have critical studies and discussions why Rizal is made the national hero of the Philippines.<br />\r\n<br />\r\nTOPICS:&nbsp;<br />\r\n1. A Hero is Born&nbsp;<br />\r\n2. Childhood Days in Calamba<br />\r\n3. School Days in Binan<br />\r\n4. Triumphs in the Ateneo<br />\r\n5. At the UST<br />\r\n6. In Spain<br />\r\n7. Paris to Berlin<br />\r\n8. Noli Me Tangere<br />\r\n9. Elias and Salome<br />\r\n10. Rizal&rsquo;s Tour of Europe with with Viola<br />\r\n11. Back to Calamba<br />\r\n12. HK, Macao and Japan<br />\r\n13. Rizal in Japan<br />\r\n14. Rizal in America<br />\r\n15. Life and Works in London<br />\r\n16. In Gay Paris<br />\r\n17. Rizal in Brussles<br />\r\n18. In Madrid<br />\r\n19. El Filibusterismo<br />\r\n20. In Hong Kong<br />\r\n21. Exile in Dapitan<br />\r\n22. The Trial of Rizal<br />\r\n23. Martyrdom at Bagumbayan<br />\r\n<br />\r\nTextbook and References:<br />\r\n1. Rizal&rsquo;s Life, Works and Writings (The Centennial Edition) by: Gregorio F. Zaide<br />\r\nand Sonia M. Zaide Quezon City, 1988. All Nations Publishing Co.<br />\r\n2. Coates, Austin. Rizal: First Filipino Nationalist and Martyr, Quezon City, UP Press 1999.<br />\r\n3. Constantino, Renato. Veneration Without Understanding. Quezon City, UP Press Inc., 2001.<br />\r\n4. Dela Cruz, W. &amp; Zulueta, M. Rizal: Buhay at Kaisipan. Manila, NBS Publications 2002.<br />\r\n5. Ocampo, Ambeth. Rizal Without the Overcoat (New Edition). Pasig City, anvil Publishing House 2002.<br />\r\n6. Odullo-de Guzman, Maria. Noli Me Tangere and El Filibusterismo. Manila, NBS Publications 1998.<br />\r\n7. Palma, Rafael. Rizal: The Pride of the Malay Race. Manila, Saint Anthony Company 2000.<br />\r\n8.Romero, M.C. &amp; Sta Roman, J. Rizal &amp; the Development of Filipino Consciousness (Third Edition). Manila, JMC Press Inc., 2001.<br />\r\n<br />\r\nCourse Evaluation:<br />\r\n<br />\r\n1. Quizzes : 30 %<br />\r\n2. Exams : 40 %<br />\r\n3. Class Standing : 20 %<br />\r\n- recitation<br />\r\n- attendance<br />\r\n- behavior<br />\r\n4. Final Grade<br />\r\n- 40 % previous grade<br />\r\n- 60 % current grade</p>\r\n', 3, '', '2nd'),
(41, 'IS 411B', 'Senior Systems Project 2', '', '', 3, '', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(1, 'iha', 'iha', 'Ishtique', 'Hossain', 1, 'uploads/iha.jpg', '', 'Registered', 'Deactivated'),
(2, 'mle', 'mle', 'Mirza Lutfe', 'Elahi', 1, 'uploads/mle.jpg', '', 'Registered', 'Activated'),
(3, 'rzb', 'rzb', 'Rezaul', 'Bari', 1, 'uploads/rzb.jpg', '', 'Registered', 'Activated'),
(4, 'nva', 'nva', 'Nova', 'Ahmed', 1, 'uploads/nva.jpg', '', 'Registered', 'Activated'),
(5, 'szz', 'szz', 'Sazzad', 'Hossain', 4, 'uploads/szz.jpg', '<p style=\"text-align: justify;\">Dan Grossman has taught programming languages at the University of Washington since 2003. During his 10 years as a faculty member, his department&rsquo;s undergraduate students have elected him &ldquo;teacher of the year&rdquo; twice and awarded him second place once. His research, resulting in over 50 peer-reviewed publications, has covered the theory, design, and implementation of programming languages, as well as connections to computer architecture and softwar', 'Registered', 'Activated'),
(6, 'kas', 'kas', 'Abdus', 'Salam', 1, 'uploads/HONEY.jpg', '', 'Registered', 'Activated'),
(7, 'edh', 'edh', 'Emdadul', 'Haque', 2, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(8, 'rjp', 'rjp', 'Rajesh', 'Palit', 1, 'uploads/rjp.jpg', '', 'Registered', 'Activated'),
(9, 'rrn', 'rrn', 'Rashedur', 'Rahman', 1, 'uploads/449E26DB.jpg', 'Registered', 'Registered', 'Activated'),
(10, 'alh', 'alh', 'Abul L', 'Haque', 1, 'uploads/alh.jpg', '', 'Registered', 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `Credit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `semester`, `thumbnails`, `school_year`, `class_title`, `description`, `Credit`, `Pre_req`) VALUES
(0, 4, 1, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Programming Language I', '', 3, 'None'),
(1, 8, 2, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Programming Language II', '', 3, 'CSE115'),
(2, 1, 3, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Data Structure', '', 3, 'CSE135'),
(3, 10, 4, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Digital Logic Design', '', 3, 'CSE225'),
(4, 5, 5, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Numerical Methods', '', 3, 'CSE225'),
(5, 4, 6, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'The Theory of Automata', '', 3, 'CSE225'),
(6, 9, 7, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Database Management System', '', 3, 'CSE225,CSE257'),
(7, 4, 8, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Operating System Design', '', 3, 'CSE332,CSE311'),
(8, 8, 9, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Compiler Design', '', 3, 'CSE323,CSE311'),
(9, 5, 10, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Software Engineering', '', 3, 'CSE326,CSE323'),
(10, 8, 11, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Microprocessor Design', '', 3, 'CSE332,CSE311'),
(11, 10, 12, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Computer Organization', '', 3, 'CSE225'),
(12, 8, 13, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Computer Networks', '', 3, 'CSE323,CSE332'),
(13, 1, 14, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Algorithms', '', 3, 'CSE273,CSE225'),
(14, 5, 15, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Internet and Web Technology', '', 3, 'CSE225,CSE311'),
(15, 2, 1, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Programming Language I', '', 3, 'None'),
(16, 3, 1, '39', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Programming Language I', '', 3, 'None'),
(17, 2, 3, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2013-2014', 'Data Structure', '', 3, 'CSE135'),
(18, 2, 14, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Algorithms', '', 3, 'CSE323,CSE273'),
(19, 3, 11, 'Spring\'11', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Microprocessor Design', '', 3, 'CSE332,CSE225'),
(20, 1, 5, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Numerical Methods', '', 3, 'CSE225'),
(21, 3, 4, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Digital Logic Design', '', 3, 'CSE225'),
(23, 9, 15, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Internet and Web Technology', '', 3, 'CSE323,CSE311'),
(24, 2, 13, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Computer Networks', '', 3, 'CSE332,CSE323'),
(25, 7, 9, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Compiler Construction', '', 3, 'CSE323'),
(185, 12, 7, '22', 'admin/uploads/thumbnails.jpg', '2013-2014', '', '', 0, ''),
(186, 3, 16, 'Spring\'17', 'admin/uploads/thumbnails.jpg', '2017-2017', 'Senior Design Project II', '', 2, 'CSE499B');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>No Class Today</p>\r\n', '1', 2, '2017-03-21 03:57:30'),
(40, '<p>ghj</p>\r\n', '4', 5, '2017-03-22 02:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `Present` int(30) NOT NULL DEFAULT '0',
  `Absent` int(30) NOT NULL DEFAULT '0',
  `Late` int(30) NOT NULL DEFAULT '0',
  `Sick` int(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`, `Present`, `Absent`, `Late`, `Sick`) VALUES
(1, 21, 1, 3, 0, 0, 0, 0),
(2, 21, 2, 3, 0, 0, 0, 0),
(5, 21, 3, 3, 0, 0, 0, 0),
(6, 21, 4, 3, 0, 0, 0, 0),
(7, 3, 4, 10, 0, 0, 0, 0),
(8, 21, 19, 3, 0, 0, 0, 0),
(9, 4, 5, 5, 0, 0, 0, 0),
(10, 20, 20, 1, 0, 0, 0, 0),
(11, 5, 6, 4, 1, 1, 2, 0),
(12, 5, 21, 4, 3, 2, 2, 3),
(13, 6, 7, 9, 0, 0, 0, 0),
(14, 6, 22, 9, 0, 0, 0, 0),
(15, 7, 8, 4, 0, 0, 0, 0),
(16, 7, 23, 4, 0, 0, 0, 0),
(17, 8, 9, 8, 0, 0, 0, 0),
(18, 25, 24, 7, 0, 0, 0, 0),
(19, 9, 10, 5, 0, 0, 0, 0),
(20, 9, 25, 5, 0, 0, 0, 0),
(21, 10, 11, 8, 0, 0, 0, 0),
(22, 11, 12, 10, 0, 0, 0, 0),
(23, 12, 13, 8, 0, 0, 0, 0),
(24, 13, 14, 1, 0, 0, 1, 0),
(25, 14, 15, 5, 0, 0, 0, 0),
(26, 186, 219, 3, 0, 0, 0, 0),
(27, 186, 220, 3, 0, 0, 0, 0),
(28, 186, 221, 3, 0, 0, 0, 0),
(29, 186, 222, 3, 0, 0, 0, 0),
(30, 186, 223, 3, 0, 0, 0, 0),
(31, 186, 224, 3, 0, 0, 0, 0),
(32, 186, 225, 3, 0, 0, 0, 0),
(33, 186, 226, 3, 0, 0, 0, 0),
(34, 186, 227, 3, 0, 0, 0, 0),
(35, 186, 228, 3, 0, 0, 0, 0),
(36, 186, 229, 3, 0, 0, 0, 0),
(37, 186, 230, 3, 0, 0, 0, 0),
(38, 186, 231, 3, 0, 0, 0, 0),
(39, 186, 232, 3, 0, 0, 0, 0),
(40, 186, 233, 3, 0, 0, 0, 0),
(41, 186, 234, 3, 0, 0, 0, 0),
(42, 186, 235, 3, 0, 0, 0, 0),
(43, 186, 236, 3, 0, 0, 0, 0),
(44, 186, 237, 3, 0, 0, 0, 0),
(45, 186, 238, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(18, 175, 'Submit Assignment file name <b>Ami Juniad</b>', '2017-03-10 12:37:43', 'view_submit_assignment.php', 76, 31),
(19, 21, 'Submit Assignment file name <b>done deal</b>', '2017-04-09 16:43:09', 'view_submit_assignment.php', 4, 32);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'teph', 'teph', 'Stephanie', 'villanueva'),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna'),
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2013-11-01 11:57:33', '2013-11-18 10:33:54', 10),
(2, 'admin', '2013-11-05 09:52:09', '2013-11-18 10:33:54', 10),
(3, 'admin', '2013-11-08 10:41:09', '2013-11-18 10:33:54', 10),
(4, 'admin', '2013-11-12 22:53:05', '2013-11-18 10:33:54', 10),
(5, 'admin', '2013-11-13 07:07:04', '2013-11-18 10:33:54', 10),
(6, 'admin', '2013-11-13 13:07:58', '2013-11-18 10:33:54', 10),
(7, 'admin', '2013-11-13 13:30:45', '2013-11-18 10:33:54', 10),
(8, 'admin', '2013-11-13 15:25:20', '2013-11-18 10:33:54', 10),
(9, 'admin', '2013-11-13 15:46:28', '2013-11-18 10:33:54', 10),
(10, 'admin', '2013-11-13 16:04:10', '2013-11-18 10:33:54', 10),
(11, 'admin', '2013-11-13 17:31:37', '2013-11-18 10:33:54', 10),
(12, 'admin', '2013-11-13 22:47:45', '2013-11-18 10:33:54', 10),
(13, 'admin', '2013-11-14 10:27:06', '2013-11-18 10:33:54', 10),
(14, 'admin', '2013-11-14 10:27:55', '2013-11-18 10:33:54', 10),
(15, 'admin', '2013-11-14 10:38:08', '2013-11-18 10:33:54', 10),
(16, 'admin', '2013-11-14 10:38:09', '2013-11-18 10:33:54', 10),
(17, 'admin', '2013-11-14 10:41:06', '2013-11-18 10:33:54', 10),
(18, 'admin', '2013-11-14 11:44:08', '2013-11-18 10:33:54', 10),
(19, 'admin', '2013-11-14 21:53:56', '2013-11-18 10:33:54', 10),
(20, 'admin', '2013-11-14 22:03:53', '2013-11-18 10:33:54', 10),
(21, 'admin', '2013-11-16 13:40:56', '2013-11-18 10:33:54', 10),
(22, 'admin', '2013-11-18 10:22:07', '2013-11-18 10:33:54', 10),
(23, 'jkev', '2013-11-18 10:33:59', '2014-02-13 11:19:36', 14),
(24, 'jkev', '2013-11-18 15:20:45', '2014-02-13 11:19:36', 14),
(25, 'jkev', '2013-11-18 15:42:04', '2014-02-13 11:19:36', 14),
(26, 'jkev', '2013-11-18 16:30:14', '2014-02-13 11:19:36', 14),
(27, 'jkev', '2013-11-18 16:36:44', '2014-02-13 11:19:36', 14),
(28, 'jkev', '2013-11-18 17:39:55', '2014-02-13 11:19:36', 14),
(29, 'jkev', '2013-11-18 20:06:49', '2014-02-13 11:19:36', 14),
(30, 'jkev', '2013-11-23 08:04:27', '2014-02-13 11:19:36', 14),
(31, 'teph', '2013-11-23 12:02:27', '2013-11-30 21:33:02', 13),
(32, 'teph', '2013-11-24 08:55:55', '2013-11-30 21:33:02', 13),
(33, 'jkev', '2013-11-25 10:32:16', '2014-02-13 11:19:36', 14),
(34, 'jkev', '2013-11-25 14:33:05', '2014-02-13 11:19:36', 14),
(35, 'jkev', '2013-11-25 15:02:47', '2014-02-13 11:19:36', 14),
(36, 'jkev', '2013-11-25 21:08:19', '2014-02-13 11:19:36', 14),
(37, 'jkev', '2013-11-25 23:49:58', '2014-02-13 11:19:36', 14),
(38, 'jkev', '2013-11-26 00:32:22', '2014-02-13 11:19:36', 14),
(39, 'jkev', '2013-11-26 10:39:52', '2014-02-13 11:19:36', 14),
(40, 'jkev', '2013-11-26 21:48:05', '2014-02-13 11:19:36', 14),
(41, 'jkev', '2013-11-28 23:00:00', '2014-02-13 11:19:36', 14),
(42, 'jkev', '2013-11-28 23:00:06', '2014-02-13 11:19:36', 14),
(43, 'jkev', '2013-11-30 21:28:54', '2014-02-13 11:19:36', 14),
(44, 'teph', '2013-11-30 21:32:54', '2013-11-30 21:33:02', 13),
(45, 'jkev', '2013-12-04 12:45:09', '2014-02-13 11:19:36', 14),
(46, 'teph', '2013-12-04 14:02:19', '', 13),
(47, 'jkev', '2013-12-11 11:56:15', '2014-02-13 11:19:36', 14),
(48, 'jkev', '2013-12-11 12:04:44', '2014-02-13 11:19:36', 14),
(49, 'jkev', '2013-12-12 09:44:34', '2014-02-13 11:19:36', 14),
(50, 'jkev', '2013-12-13 01:48:23', '2014-02-13 11:19:36', 14),
(51, 'jkev', '2013-12-27 09:13:20', '2014-02-13 11:19:36', 14),
(52, 'jkev', '2013-12-27 10:18:38', '2014-02-13 11:19:36', 14),
(53, 'jkev', '2013-12-27 10:35:43', '2014-02-13 11:19:36', 14),
(54, 'jkev', '2013-12-27 11:08:54', '2014-02-13 11:19:36', 14),
(55, 'jkev', '2013-12-27 11:20:25', '2014-02-13 11:19:36', 14),
(56, 'jkev', '2013-12-27 11:41:58', '2014-02-13 11:19:36', 14),
(57, 'jkev', '2013-12-27 11:43:10', '2014-02-13 11:19:36', 14),
(58, 'jkev', '2013-12-27 14:54:57', '2014-02-13 11:19:36', 14),
(59, 'jkev', '2014-01-12 20:08:26', '2014-02-13 11:19:36', 14),
(60, 'jkev', '2014-01-13 15:24:07', '2014-02-13 11:19:36', 14),
(61, 'jkev', '2014-01-13 18:46:08', '2014-02-13 11:19:36', 14),
(62, 'jkev', '2014-01-15 20:40:15', '2014-02-13 11:19:36', 14),
(63, 'jkev', '2014-01-16 14:42:02', '2014-02-13 11:19:36', 14),
(64, 'jkev', '2014-01-17 09:16:17', '2014-02-13 11:19:36', 14),
(65, 'jkev', '2014-01-17 13:25:51', '2014-02-13 11:19:36', 14),
(66, 'admin', '2014-01-17 14:41:30', '2017-03-21 01:16:58', 15),
(67, 'admin', '2014-01-17 15:56:32', '2017-03-21 01:16:58', 15),
(68, 'admin', '2014-01-26 17:45:31', '2017-03-21 01:16:58', 15),
(69, 'admin', '2014-02-13 10:45:17', '2017-03-21 01:16:58', 15),
(70, 'admin', '2014-02-13 11:05:27', '2017-03-21 01:16:58', 15),
(71, 'jkev', '2014-02-13 11:16:48', '2014-02-13 11:19:36', 14),
(72, 'admin', '2014-02-13 11:55:36', '2017-03-21 01:16:58', 15),
(73, 'admin', '2014-02-13 12:32:38', '2017-03-21 01:16:58', 15),
(74, 'admin', '2014-02-13 12:52:05', '2017-03-21 01:16:58', 15),
(75, 'admin', '2014-02-13 13:04:35', '2017-03-21 01:16:58', 15),
(76, 'jkev', '2014-02-13 14:35:27', '', 14),
(77, 'admin', '2014-02-20 09:40:39', '2017-03-21 01:16:58', 15),
(78, 'admin', '2014-02-20 09:42:21', '2017-03-21 01:16:58', 15),
(79, 'admin', '2014-02-27 22:40:15', '2017-03-21 01:16:58', 15),
(80, 'admin', '2014-02-28 13:12:52', '2017-03-21 01:16:58', 15),
(81, 'admin', '2014-04-02 17:27:47', '2017-03-21 01:16:58', 15),
(82, 'admin', '2014-04-03 15:29:38', '2017-03-21 01:16:58', 15),
(83, 'admin', '2014-06-15 12:31:51', '2017-03-21 01:16:58', 15),
(84, 'admin', '2017-03-21 00:39:03', '2017-03-21 01:16:58', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `full_marks`
--
ALTER TABLE `full_marks`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`marks_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `full_marks`
--
ALTER TABLE `full_marks`
  MODIFY `poll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `marks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
