-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 08:07 AM
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
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'mera naam', 'meranaam@email.com', '1593578624', 'Mera naam send ho jaa database mein.', '2024-03-24 16:23:08'),
(2, 'Ankur Yadav', 'vy8651@gmail.com', '8652591296', 'My post is on machine learning.', '2024-03-24 20:45:45'),
(3, 'aaa', 'aa@gmail.com', '1234567895', 'New Blog', '2024-03-24 22:25:31'),
(4, 'Ankur Yadav', 'abc@gmail.com', '12652591296', 'Abc', '2024-03-24 22:49:27'),
(5, 'A', 'abc@gmail.com', '0865259129', 'Hi', '2024-03-24 23:03:31'),
(6, 'abc', 'abc@gmail.com', '1234567890', 'Hi, Abc here', '2024-03-24 23:11:14'),
(7, 'Ankur Yadav', 'ankur@gmail.com', '8652591269', 'Hi, Ankur here', '2024-03-24 23:12:47'),
(8, 'Alex', 'alex@gmail.com', '1234567895', 'Hi alex here', '2024-03-24 23:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Let\'s learn about stocks in very easy-manner.', 'This is first post updated', 'first-post1', 'Stocks consist of all the shares[a] by which ownership of a corporation or company is divided.[1] A single share of the stock means fractional ownership of the corporation in proportion to the total number of shares.', '2024-03-25 11:09:38', 'home-bg.jpg'),
(6, 'CodeCraft Chronicles', 'Unraveling the Art of Programming', 'codecraft-chronicles', 'Dive into the intricate world of coding with CodeCraft Chronicles. From beginner tutorials to advanced techniques, we\'re here to guide you through every step of your coding journey. Join us as we explore the endless possibilities of programming and unleash your creativity one line of code at a time.', '2024-04-09 11:18:10', 'home-bg.jpg'),
(7, 'TechTalk Central', 'Where Innovation Meets Insight', 'techtalk-central', 'Welcome to TechTalk Central, your go-to source for all things tech. Whether you\'re a tech enthusiast, a seasoned developer, or just curious about the latest trends, we\'ve got you covered. Join us as we delve into cutting-edge technologies, discuss industry insights, and uncover the future of innovation in the digital age.', '2024-04-09 11:19:27', 'home-bg.jpg'),
(8, 'ByteBrilliance', 'Illuminating the World of Coding', 'byte-brilliance', 'Welcome to ByteBrilliance, where coding meets creativity. Get ready to unlock the secrets of programming and discover the beauty of coding languages. From practical tips to in-depth tutorials, we\'re here to inspire and empower you on your coding journey. Let\'s illuminate the world, one byte at a time.', '2024-04-09 11:20:03', 'home-bg.jpg'),
(9, 'CodeNest Insights', 'Nesting Knowledge, Building Solutions', ' code-nest-insights', 'Step into the CodeNest and gain valuable insights into the world of coding and technology. Our mission is simple: to provide you with the knowledge and tools you need to build innovative solutions and overcome coding challenges. Join us as we explore coding techniques, share industry best practices, and foster a community of passionate developers dedicated to continuous learning and growth.', '2024-04-09 11:20:40', 'home-bg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
