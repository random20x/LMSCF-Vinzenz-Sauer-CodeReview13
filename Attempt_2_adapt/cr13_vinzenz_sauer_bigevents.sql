-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 04:51 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr13_david_riediger_bigevents`
--

-- --------------------------------------------------------

--
-- Table structure for table `bigevents`
--

CREATE TABLE `bigevents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dueDate` datetime NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `www` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bigevents`
--

INSERT INTO `bigevents` (`id`, `title`, `dueDate`, `description`, `image`, `capacity`, `email`, `phone`, `location`, `address`, `www`, `eventType`) VALUES
(1, 'Red Vienna 1919 to 1934', '2019-01-01 00:00:00', 'The first free and unrestricted elections for the Vienna City Council in May 1919 give the Social Democratic Workers’ Party of Austria the absolute majority of votes and mandates. A reform project commences, attracting much international attention and fierce antagonism from opponents at home. The aim is a dramatic improvement in workers’ living conditions and a far-reaching democratization of society. The basic question about “how to live” is intensively and widely debated, not without controversy. Many ideas, including the theoretical foundations of Austromarxism, emerge during the period prior to World War I. The city\'s new status as a discrete federal province opens up substantial scope for political and economic activity.', 'https://events.wien.info/media/full/DasRoteWien_Pressefoto_12.jpg', 4000, 'johndoe@mail.mail', '+43 5555555', 'Wien Museum MUSA', 'Felderstraße 6-8, 1010 Wien', 'https://www.wien.info/en/locations/musa', 'Exhibitions'),
(2, 'test', '2014-01-19 00:00:00', 'test', 'test', 0, 'test', 'test', 'testloc', 'test', 'test', 'Theater'),
(4, 'Dance to Lorem', '2018-01-01 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://placekitten.com/600/400', 1337, 'johndoe@mail.mail', '+43 5555555', 'Ein Location', 'Teststraße 555', '#', 'Concerts'),
(5, 'Lorem is reading Ipsum', '2022-01-01 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi laboriosam magni repudiandae animi numquam enim, vel illo deserunt quis aliquid fugit, eaque optio nemo. Numquam, voluptates! Ab sapiente quibusdam illum itaque eligendi. Assumenda reprehenderit animi accusantium accusamus aliquam rem sunt vero commodi sit! Laudantium, soluta officiis. Cupiditate dolores sint magnam dolore vel eaque. Id soluta eaque in, quisquam doloremque beatae ducimus ullam quod alias voluptatum, voluptatibus consequatur quis earum aliquid neque quidem enim accusamus tempore fuga, reiciendis atque.\r\n\r\n	Adipisci aliquid accusamus, error consectetur distinctio nostrum iste! Magnam eum alias expedita laborum aperiam eveniet enim tenetur nisi vel omnis soluta sequi saepe error a blanditiis, sunt quis perspiciatis dolorum itaque voluptate nihil! Eaque asperiores blanditiis quam facere aliquam, sed, animi inventore iste dolore sunt voluptate! Minima iusto natus architecto vero provident laboriosam laudantium in quasi nobis deleniti nemo odio, facilis ipsam tempora corporis animi inventore, placeat voluptatibus a sapiente eaque autem consectetur totam reprehenderit consequatur! Enim nulla sapiente esse non accusamus, incidunt temporibus perspiciatis, nobis porro earum commodi officiis omnis animi tempora, ullam ipsa obcaecati similique. Autem blanditiis perferendis voluptatum minima itaque fugiat id excepturi animi ducimus sequi ad earum, placeat, sit unde fugit beatae nesciunt iure libero neque aspernatur expedita dicta, adipisci mollitia cupiditate. At labore mollitia, nulla, accusantium animi expedita, odio maxime eos aspernatur nihil, accusamus quod laboriosam amet! Repudiandae rerum assumenda fuga laborum fugiat architecto vel nihil, quia ipsa, distinctio eius, odio sunt provident consequatur possimus eum laudantium obcaecati excepturi dolorum eligendi necessitatibus! Ducimus, architecto. Eius aut nobis dicta similique accusantium, quis! A quod dolor consectetur assumenda facilis sint, delectus, tenetur et quos architecto dolore dignissimos rem neque natus repellat. Accusantium magni laborum doloremque exercitationem quibusdam saepe voluptatibus possimus vel velit itaque. Dolores amet accusamus quo eligendi quasi, iste voluptates adipisci, ducimus eum quos! Corrupti molestias sunt perspiciatis, labore odio laudantium temporibus corporis velit delectus aut. Magni vitae nostrum earum beatae velit, quo tenetur esse voluptates exercitationem tempore neque reprehenderit, necessitatibus, ad perferendis quod autem quia! Quo necessitatibus consequatur cupiditate! Est aut magnam, temporibus minima ipsam sint. Nobis facilis itaque, eveniet earum, dolorem placeat accusamus labore modi similique corrupti quod quo doloribus natus debitis dolores, optio autem dolore cumque numquam vitae, et! Minima, distinctio ratione debitis nihil sit molestias fugit maiores nam dolor. Facere distinctio nulla quibusdam repudiandae quidem maiores molestiae temporibus, ipsam aut perferendis doloribus rem ab omnis cupiditate, praesentium quisquam est, necessitatibus recusandae dicta soluta esse inventore quaerat mollitia. Eveniet quam quidem recusandae enim voluptatem mollitia eius reiciendis optio nesciunt dolore. Aperiam labore ipsam at, omnis nisi enim veritatis temporibus provident voluptatum aliquid officia dolor nesciunt, illo fugiat voluptatem sit id deserunt magnam soluta voluptatibus. Voluptatibus doloribus earum maxime, aperiam minima magni facilis quaerat consectetur voluptatem. Veniam aliquid, vel temporibus odio iure eum commodi consequuntur quam aut voluptatibus laborum facere deserunt, eos nam et excepturi minus earum exercitationem maiores mollitia, consectetur nostrum repellendus. Omnis voluptatem assumenda facilis rerum, iure, illum saepe nesciunt commodi debitis velit doloribus libero vero aliquam quia molestias quae, quisquam recusandae nemo exercitationem.', 'https://placekitten.com/601/400', 69, 'johndoe@mail.mail', '+ 69 69696969', 'Ein Location2', 'Teststraße 555', '#', 'Concerts'),
(6, 'le major Opernball? Ô_ô', '2014-01-01 00:00:00', 'le major le major le majorle majorle majorle majorle majorle major', 'https://placekitten.com/599/401', 100000, 'le major mail', '+43 le major', 'le major Opernhaus!', 'le major straße', 'le major url', 'Major Events');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bigevents`
--
ALTER TABLE `bigevents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F76C829E2B36786B` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bigevents`
--
ALTER TABLE `bigevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
