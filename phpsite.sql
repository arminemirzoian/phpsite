-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2017 at 04:15 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `meta_d`, `meta_k`, `date`, `description`, `text`, `author`) VALUES
(1, 'How to Add Image Uploading to Your CMS', 'PHP, CMS', 'PHP, CMS', '2017-07-17', '<p>Learn how to modify a PHP and MySQL content management system so that you can upload an image for each article. Full CMS code download included.</p>', '<p>In my tutorial Build a CMS in an Afternoon with PHP and MySQL, I showed how to build a simple but useful content management system with PHP and MySQL. I also showed how to extend the CMS to allow article categories.</p>\r\n\r\n<p>In this tutorial, you\'ll look at another way to extend the CMS. You\'ll take the original CMS code, and modify it so that the administrator can upload an image for each article. Then, when a visitor views an article page, the CMS will display the image at the start of the article. In addition, our CMS will generate a smaller thumbnail version of each article image, and display this thumbnail next to each article headline in the homepage and article archive pages.</p>\r\n\r\n<p>You can see the finished result by pressing the View Demo button above. Notice the thumbnail images next to each article headline. Click a headline or thumbnail to view the corresponding article, along with the full-size article image.</p>', 'Daniel Fahradyan'),
(2, 'The state of PHP on 2014', 'about SEO and PHP', 'SEO, PHP history', '2017-07-17', '<p>Professional, fully customizable PHP script to create an online Free Article Directory Website. Main Features: Comments system, admin panel for adding, editing, and removing categories and articles, SEO optimized (SEO friendly URL-s, Meta Tags).</p>', '<p><strong>Where We Came From</strong></p>\r\n\r\n<p>PHP has come a long way from humble beginnings: it started out being a collection of tools (mostly Perl scripts) that recorded the traffic on Rasmus Lerdorf’s online resume (PHP stood for Personal Home Pages,) and has risen to being a fully (almost) object oriented language. It has become the leading language on the web: more websites run on PHP than all the other websites combined (we’ll look at the stats shortly.) In the mean time sites like Facebook and Wikipedia have grown to dominate the web, CMS systems like Wordpress, Joomla, Drupal and many more have become the foundations of a great number of websites, and frameworks have blossomed: from Codeigniter to Zend Framework, Yii to Laravel, you are simply swamped with choices when searching for one to use. Design patterns seem to matter lately, with MVC being the most popular.</p>\r\n<p><iframe width=\"470\" height=\"350\" src=\"https://www.youtube.com/embed/7TF00hJI78Y\" frameborder=\"0\" allowfullscreen></iframe></p>', 'Vardan Berberyan');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `meta_d`, `meta_k`, `date`, `description`, `text`, `author`) VALUES
(1, 'Just write a title here', 'A step-by-step instruction', 'Title of your topic', '2017-07-16', '<p>Write your favorite topic!</p>', '<p>Հայերեն նույնպես հնարավոր է գրել:</p>', 'Gevorg Arakelyan'),
(2, 'How to start studying programming', 'Programming languages', 'HTML, CSS, PHP, JavaScript', '2017-07-13', '<p>Here you will study the essentials of programming, will have a thorough knowledge about the main languages of site creation</p>', '<p>Here you can place pictures, audio, video lessons, google map and whatever you want. Just be aware that you should put them into HTML tags</p>', 'Rafayel Khachatryan');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(2) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page`, `title`, `meta_d`, `meta_k`, `text`) VALUES
(1, 'index', 'home', 'Welcome to the site about PHP, HTML, CSS, JavaScript', 'PHP, HTML, CSS, JavaScript', '<h1><p align=\"center\"><font color=\"#DAA520\">Welcome to our webpage</font></p></h1>\r\n<p>You will find many useful things about programming in this page.</p>\r\n<p>!!!Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum lorem a arcu imperdiet tempor.\r\n            Fusce egestas diam vitae varius egestas. Donec fermentum mi in blandit sagittis. Aliquam suscipit luctus magna,\r\n            ac dignissim lorem egestas eget. Ut auctor sed sem pulvinar consectetur. Mauris nunc turpis, dapibus nec aliquet sed,\r\n            gravida id ipsum. Sed et ornare arcu. Etiam facilisis varius facilisis. Fusce nec sodales turpis. Ut quis lorem ligula.\r\n                Proin ut velit posuere, rhoncus mauris sit amet, varius enim.</p>\r\n\r\n            <p>Quisque scelerisque lacus sit amet quam efficitur ullamcorper. Proin et ligula sed augue aliquet ultrices.\r\n            Aenean aliquam cursus accumsan. Donec laoreet ipsum ornare mauris tempus malesuada. Nam scelerisque placerat ex,\r\n            id dapibus orci placerat nec. Aenean rhoncus lacus nec euismod commodo. Donec varius accumsan felis, in laoreet enim euismod\r\n            in. Curabitur sed placerat arcu. Curabitur aliquet et dui sed tempus. Donec ullamcorper ante at mi ornare volutpat. Fusce\r\n            ullamcorper, magna vitae condimentum viverra, mi quam lacinia orci, quis venenatis neque sem non mi. Donec massa tellus,\r\n                ultricies eget diam sit amet, ornare semper nunc. Ut lobortis tempus libero in malesuada. Proin eget porta lectus.</p>\r\n\r\n            <p>Pellentesque gravida purus eget luctus porta. Cras hendrerit lorem ex, et faucibus ante convallis a. Quisque et mi ligula.\r\n            Duis massa lorem, dictum non dolor finibus, accumsan sodales diam. Proin eget diam orci. Nulla facilisi. Integer faucibus\r\n            felis quis leo aliquam, non ultrices metus commodo. Sed et lorem augue. Etiam suscipit purus vitae arcu fringilla aliquet.\r\n            Cras enim dolor, dignissim id fermentum sed, porttitor eu augue. Ut vel felis sit amet libero vehicula ullamcorper id vel\r\n            sapien. Vivamus convallis aliquam mauris, vel ornare mi iaculis sit amet. Curabitur posuere, enim vel tempus elementum,\r\n            urna risus dignissim felis, in porta nisl mi a ante. Nullam libero eros, consectetur et pulvinar scelerisque, commodo sodales\r\n            erat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum in velit vitae nulla pellentesque\r\n                rutrum vel vel velit.</p>\r\n            <p>Pellentesque gravida purus eget luctus porta. Cras hendrerit lorem ex, et faucibus ante convallis a. Quisque et mi ligula.\r\n                Duis massa lorem, dictum non dolor finibus, accumsan sodales diam. Proin eget diam orci. Nulla facilisi. Integer faucibus\r\n                felis quis leo aliquam, non ultrices metus commodo. Sed et lorem augue. Etiam suscipit purus vitae arcu fringilla aliquet.\r\n                Cras enim dolor, dignissim id fermentum sed, porttitor eu augue. Ut vel felis sit amet libero vehicula ullamcorper id vel\r\n                sapien. Vivamus co.</p>'),
(2, 'lessons', 'lessons', 'Lessons about web development', 'Lessons HTML, CSS, PHP, JavaScript', '<h1><p align=\"center\"><strong><font color=\"#DAA520\">Select a course you want to study</font></strong></p></h1>'),
(3, 'articles', 'articles', 'Articles about Web development', 'Articles, CSS, PHP', '<h1><p align=\"center\"><strong><font color=\"#DAA520\">Select the article you want to read</font></strong></p></h1>'),
(4, 'contacts', 'contacts', 'Contacts, about the author', 'contacts, author', '<p>Central banks in transition economies have benefited much from the wide-scale technical assistance provided regularly by\r\n                international donor community. For majority of such banks it still remains a basic source for seeking high\r\n                expert advice and covering its staff training issues. The technical cooperation of the CBA with international\r\n                donor institutions and cooperating partner banks have expanded successfully over past two decades to have its\r\n                solid contribution to and strong impact on banking and financial sector of Armenia. </p>');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `id` int(3) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`id`, `user`, `pass`) VALUES
(1, 'phpuser', 'php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
