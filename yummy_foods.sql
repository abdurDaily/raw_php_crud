-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 09:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a_yummy_foods`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `heading` varchar(256) NOT NULL,
  `details` mediumtext DEFAULT NULL,
  `button_title` varchar(256) DEFAULT NULL,
  `button_url` varchar(256) DEFAULT NULL,
  `video_url` varchar(256) DEFAULT NULL,
  `featured_img` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_title` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `category` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `detail` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `food_image` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  `time` text NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `email`, `phone`, `date`, `time`, `details`) VALUES
(1, 'dhbflj', 'saf', 'sfsd', '2024-06-22 17:48:27', 'sdf', 'sfs'),
(2, 'Lillith Orr', 'vitewy@mailinator.com', '+1 (991) 474-5948', '0000-00-00 00:00:00', 'Nisi cum omnis sed t', 'Quidem deserunt enim'),
(3, 'Malik Thornton', 'syquz@mailinator.com', '+1 (443) 393-1145', '0000-00-00 00:00:00', 'Quia similique qui n', 'Quas commodi ea null'),
(4, 'Gail Sheppard', 'mapiw@mailinator.com', '+1 (605) 173-2559', '0000-00-00 00:00:00', 'Quae consectetur rep', 'Sit omnis iusto ulla'),
(5, 'Yvonne Klein', 'poquje@mailinator.com', '+1 (368) 542-4442', '0000-00-00 00:00:00', 'Dolores quasi illo m', 'Facilis duis dolorem'),
(6, 'Emi Sanders', 'zijifo@mailinator.com', '+1 (368) 976-8067', '0000-00-00 00:00:00', 'Dolores maxime dolor', 'Aliqua Et sit natus'),
(7, 'Sarah Barrera', 'puconixypo@mailinator.com', '+1 (716) 665-6798', '0000-00-00 00:00:00', 'Est sunt consequatu', 'Eius nesciunt esse'),
(8, 'Adara Clements', 'rupatem@mailinator.com', '+1 (847) 636-7386', '0000-00-00 00:00:00', 'Cumque expedita amet', 'Tempore eiusmod aut'),
(9, 'Uma Pace', 'qozyleg@mailinator.com', '+1 (376) 578-6149', '0000-00-00 00:00:00', 'Vel in lorem eiusmod', 'Adipisci quis adipis'),
(10, 'April Eaton', 'jibypo@mailinator.com', '+1 (153) 223-8596', '0000-00-00 00:00:00', 'Maxime ipsum quod si', 'Laborum Ut dolores '),
(11, 'Devin Larson', 'fitihaty@mailinator.com', '+1 (116) 533-6653', '0000-00-00 00:00:00', 'Distinctio Laudanti', 'Consequuntur omnis u'),
(12, 'Patricia Cochran', 'rerani@mailinator.com', '+1 (674) 539-5338', '0000-00-00 00:00:00', 'Quasi error quia quo', 'Pariatur Recusandae'),
(13, 'Rhiannon Joyce', 'vesidu@mailinator.com', '+1 (459) 744-6137', '0000-00-00 00:00:00', 'Ex porro nobis dolor', 'Molestias deserunt p'),
(14, 'Adele Giles', 'lepyb@mailinator.com', '+1 (168) 322-9946', '0000-00-00 00:00:00', 'In tempore facere i', 'Consequatur quis in'),
(15, 'Julian Bowman', 'semon@mailinator.com', '+1 (174) 374-7252', '0000-00-00 00:00:00', 'Maiores vitae sequi ', 'Minima consequuntur ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `profile_img` varchar(256) DEFAULT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `profile_img`, `password`) VALUES
(22, 'Shaown Chy', '', 'shaown@gmail.com', 'user-65b721647a669.jpg', '$2y$10$pAA0mv6BA/xXYgkfTvgbVOQ.KRKLrTny/K.KM7YRoXaxre/Esh8dq'),
(23, 'the ', 'shaown', 'theshaown@gmail.com', NULL, '$2y$10$.oKAxdEFiMG123FPwazlmeHfXFmrvcsFgwqTDvzhf6BknannhyzcW'),
(24, 'Shourab', 'hi', 'shourab.cit.bd@gmail.com', NULL, '$2y$10$yYlUQkFEN4caWv35xHqnHekMt9MyRFZvJPixkEowkTU0yP1hbQlW6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
