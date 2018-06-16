-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 16 2018 г., 07:13
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diploma_tst`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actions`
--

CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `actions`
--

INSERT INTO `actions` (`id`, `user_id`, `url`, `ip`, `date`) VALUES
(1, 1, '/index.php?module=plans&action=view', '::1', '2018-06-03 09:55:37'),
(2, 1, '/index.php?module=plans&action=view', '::1', '2018-06-03 09:55:49'),
(3, 1, '/index.php?module=plans&action=view', '::1', '2018-06-03 09:56:15'),
(4, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 09:56:17'),
(5, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 09:57:11'),
(6, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 10:48:25'),
(7, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 10:48:55'),
(8, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 10:50:22'),
(9, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests=1&guests=2&guests=4', '::1', '2018-06-03 10:50:52'),
(10, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests=1&guests=2&guests=4', '::1', '2018-06-03 10:51:47'),
(11, 1, '/index.php?module=dialogs&action=view', '127.0.0.1', '2018-06-03 10:51:53'),
(12, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests=1&guests=2&guests=3&guests=4', '::1', '2018-06-03 10:51:59'),
(13, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 10:52:55'),
(14, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 10:52:56'),
(15, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3', '::1', '2018-06-03 10:53:02'),
(16, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 10:53:15'),
(17, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:53:25'),
(18, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:53:33'),
(19, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:55:49'),
(20, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:55:52'),
(21, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:56:52'),
(22, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:57:13'),
(23, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:58:11'),
(24, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 10:58:35'),
(25, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 11:20:14'),
(26, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 11:20:38'),
(27, 1, '/index.php?module=dialogs&action=create&name=%D0%9D%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2&guests%5B%5D=3&guests%5B%5D=5', '::1', '2018-06-03 11:24:08'),
(28, 1, '/index.php', '127.0.0.1', '2018-06-03 15:39:19'),
(29, 1, '/index.php?module=dialogs&action=view', '127.0.0.1', '2018-06-03 15:39:22'),
(30, 1, '/?module=dialogs&action=open&id=10', '127.0.0.1', '2018-06-03 15:39:24'),
(31, 1, '/?module=dialogs&action=open&id=10', '127.0.0.1', '2018-06-03 16:32:59'),
(32, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:33:07'),
(33, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:33:38'),
(34, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:33:53'),
(35, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:34:00'),
(36, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:35:08'),
(37, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 16:35:12'),
(38, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:35:14'),
(39, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:38:16'),
(40, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:39:10'),
(41, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:39:34'),
(42, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:40:44'),
(43, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:56:55'),
(44, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 16:59:19'),
(45, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:00:10'),
(46, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:00:36'),
(47, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:02:22'),
(48, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:03:43'),
(49, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:04:36'),
(50, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:34:35'),
(51, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:34:56'),
(52, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:53:57'),
(53, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:55:06'),
(54, 1, '/?id=10&module=dialogs&action=send&message=%D0%A2%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%BE%D0%B5', '::1', '2018-06-03 17:55:11'),
(55, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 17:55:22'),
(56, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:55:23'),
(57, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:55:48'),
(58, 1, '/?id=10&module=dialogs&action=send&message=%D0%92%D1%82%D0%BE%D1%80%D0%BE%D0%B5', '::1', '2018-06-03 17:55:53'),
(59, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:55:53'),
(60, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:55:57'),
(61, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:55:58'),
(62, 2, '/index.php', '::1', '2018-06-03 17:56:19'),
(63, 2, '/index.php', '::1', '2018-06-03 17:56:37'),
(64, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 17:56:39'),
(65, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:56:41'),
(66, 2, '/?id=10&module=dialogs&action=send&message=%D0%A0%D0%B0%D1%81%D1%87%D0%B5%D1%82+%D0%BE%D0%BA%D0%BE%D0%BD%D1%87%D0%B5%D0%BD', '::1', '2018-06-03 17:56:49'),
(67, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:56:49'),
(68, 1, '/index.php?module=plans&action=view', '::1', '2018-06-03 17:57:15'),
(69, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 17:57:20'),
(70, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:57:22'),
(71, 1, '/?id=10&module=dialogs&action=send&message=%D0%9D%D0%B5%D1%82', '::1', '2018-06-03 17:57:26'),
(72, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:57:26'),
(73, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:58:10'),
(74, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:58:44'),
(75, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:58:51'),
(76, 2, '/?id=10&module=dialogs&action=send&message=%D0%94%D0%BB%D0%B8%D0%BD%D0%BD%D0%BE%D0%B5+%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5', '::1', '2018-06-03 17:59:04'),
(77, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 17:59:04'),
(78, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:02:31'),
(79, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:03:49'),
(80, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:07:06'),
(81, 2, '/?id=10&module=dialogs&action=send&message=%D0%9C%D0%9D%D0%BE%D0%B3%D0%BE%D1%81%D1%82%D1%80%D0%BE%D1%87%D0%BD%D0%BE%D0%B5', '::1', '2018-06-03 18:07:19'),
(82, 2, '/?module=dialogs&action=open&id=10', '127.0.0.1', '2018-06-03 18:07:25'),
(83, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:07:33'),
(84, 2, '/?id=10&module=dialogs&action=send&message=%D0%A2%D1%83%D1%82%0D%0A12%0D%0A321%0D%0A342%0D%0A4%0D%0A324%0D%0A23%0D%0A23%0D%0A', '::1', '2018-06-03 18:07:40'),
(85, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 18:07:44'),
(86, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:07:45'),
(87, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:11:15'),
(88, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:13:33'),
(89, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:14:41'),
(90, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:14:47'),
(91, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 18:20:51'),
(92, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:21:15'),
(93, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:21:24'),
(94, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:21:26'),
(95, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 18:21:27'),
(96, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:21:30'),
(97, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 18:32:00'),
(98, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:14:56'),
(99, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:15:11'),
(100, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:15:34'),
(101, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:16:02'),
(102, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:16:10'),
(103, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:16:17'),
(104, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:17:48'),
(105, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:17:56'),
(106, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:18:06'),
(107, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:18:19'),
(108, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:18:29'),
(109, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:18:45'),
(110, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:18:47'),
(111, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:18:48'),
(112, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:19:17'),
(113, 2, '/index.php?module=access&action=denied', '::1', '2018-06-03 19:19:17'),
(114, 2, '/', '::1', '2018-06-03 19:19:57'),
(115, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:19:59'),
(116, 2, '/index.php?module=access&action=denied', '::1', '2018-06-03 19:19:59'),
(117, 2, '/', '::1', '2018-06-03 19:20:32'),
(118, 2, '/index.php?module=access&action=denied', '::1', '2018-06-03 19:20:34'),
(119, 2, '/', '::1', '2018-06-03 19:20:36'),
(120, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:20:37'),
(121, 2, '/', '::1', '2018-06-03 19:20:38'),
(122, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:28:17'),
(123, 2, '/', '::1', '2018-06-03 19:28:18'),
(124, 2, '/index.php?module=access&action=denied', '::1', '2018-06-03 19:28:19'),
(125, 2, '/', '::1', '2018-06-03 19:28:21'),
(126, 2, '/index.php?module=access&action=denied', '::1', '2018-06-03 19:28:24'),
(127, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-03 19:28:31'),
(128, 2, '/index.php?module=access&action=denied', '::1', '2018-06-03 19:28:31'),
(129, 2, '/', '::1', '2018-06-03 19:28:32'),
(130, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:28:34'),
(131, 2, '/index.php?module=dialogs&action=create&name=%D0%A2%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2', '::1', '2018-06-03 19:28:51'),
(132, 2, '/index.php?module=dialogs&action=create&name=%D0%A2%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9+%D0%B4%D0%B8%D0%B0%D0%BB%D0%BE%D0%B3&guests%5B%5D=1&guests%5B%5D=2', '::1', '2018-06-03 19:29:09'),
(133, 2, '/?module=plan_editor&action=edit&id=12', '::1', '2018-06-03 19:29:09'),
(134, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:29:27'),
(135, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-03 19:29:31'),
(136, 2, '/?id=12&module=dialogs&action=send&message=%D1%82%D1%8B+%D1%82%D1%83%D1%82%3F%0D%0A', '::1', '2018-06-03 19:29:38'),
(137, 2, '/?id=12&module=dialogs&action=send&message=%D1%82%D1%8B+%D1%82%D1%83%D1%82%3F%0D%0A', '::1', '2018-06-03 19:29:59'),
(138, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-03 19:29:59'),
(139, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:30:05'),
(140, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:30:07'),
(141, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:30:09'),
(142, 1, '/?module=dialogs&action=open&id=12', '::1', '2018-06-03 19:30:10'),
(143, 1, '/?id=12&module=dialogs&action=send&message=%D0%94%D0%B0', '::1', '2018-06-03 19:30:17'),
(144, 1, '/?module=dialogs&action=open&id=12', '::1', '2018-06-03 19:30:17'),
(145, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-03 19:30:20'),
(146, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:31:08'),
(147, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:31:41'),
(148, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-03 19:31:42'),
(149, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:31:44'),
(150, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:31:44'),
(151, 2, '/?id=11&module=dialogs&action=send&message=%D0%9F%D0%A0%D0%B8%D0%B2%D0%B5%D1%82', '::1', '2018-06-03 19:31:49'),
(152, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:31:49'),
(153, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 19:31:53'),
(154, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:31:54'),
(155, 1, '/?id=11&module=dialogs&action=send&message=%D0%9F%D1%80%D0%B8%D0%B2%D0%B5%D1%82', '::1', '2018-06-03 19:31:58'),
(156, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:31:58'),
(157, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:31:59'),
(158, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:32:50'),
(159, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:32:51'),
(160, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:33:45'),
(161, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:33:53'),
(162, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:36:37'),
(163, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:36:45'),
(164, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:38:49'),
(165, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:40:03'),
(166, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:41:19'),
(167, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:42:13'),
(168, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:43:06'),
(169, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:43:17'),
(170, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:44:04'),
(171, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:44:19'),
(172, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:45:06'),
(173, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:45:14'),
(174, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:46:11'),
(175, 2, '/index.php?module=plans&action=view', '::1', '2018-06-03 19:48:20'),
(176, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:52:48'),
(177, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:53:02'),
(178, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:53:48'),
(179, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:56:51'),
(180, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:57:16'),
(181, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 19:58:08'),
(182, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 20:01:22'),
(183, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 20:01:33'),
(184, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 20:01:56'),
(185, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 20:06:40'),
(186, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-03 20:08:10'),
(187, 1, '/index.php?module=plans&action=view', '::1', '2018-06-03 20:08:27'),
(188, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-03 20:10:01'),
(189, 1, '/index.php', '::1', '2018-06-05 07:57:46'),
(190, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 07:58:39'),
(191, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 07:58:41'),
(192, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 08:00:26'),
(193, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 08:00:46'),
(194, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 08:03:12'),
(195, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 08:04:12'),
(196, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 08:04:34'),
(197, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:04:36'),
(198, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:05:55'),
(199, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 08:05:57'),
(200, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:06:58'),
(201, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:08:05'),
(202, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:08:49'),
(203, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:09:59'),
(204, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 08:11:42'),
(205, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 08:14:04'),
(206, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 08:14:51'),
(207, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:15:06'),
(208, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:15:25'),
(209, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 08:15:28'),
(210, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:16:26'),
(211, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:23:34'),
(212, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:23:54'),
(213, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:24:04'),
(214, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:24:40'),
(215, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:26:40'),
(216, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:27:01'),
(217, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:27:24'),
(218, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:27:27'),
(219, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:27:29'),
(220, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:27:31'),
(221, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:27:33'),
(222, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:32:42'),
(223, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 08:32:47'),
(224, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:32:49'),
(225, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:34:42'),
(226, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:35:11'),
(227, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:35:56'),
(228, 1, '/?module=dialogs&action=open&id=12', '::1', '2018-06-05 08:36:01'),
(229, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:36:08'),
(230, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:36:17'),
(231, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:36:29'),
(232, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:36:36'),
(233, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:36:51'),
(234, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:37:00'),
(235, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 08:37:50'),
(236, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 08:38:04'),
(237, 1, '/index.php', '::1', '2018-06-05 09:02:49'),
(238, 1, '/index.php?module=auth&action=login', '::1', '2018-06-05 09:08:41'),
(239, 1, '/index.php', '::1', '2018-06-05 09:08:41'),
(240, 1, '/index.php', '::1', '2018-06-05 09:08:42'),
(241, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 09:08:46'),
(242, 1, '/index.php?module=plans&action=view', '127.0.0.1', '2018-06-05 09:08:49'),
(243, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 09:08:59'),
(244, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 09:09:49'),
(245, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 09:10:51'),
(246, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 09:16:37'),
(247, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 09:16:42'),
(248, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 09:16:45'),
(249, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 09:18:11'),
(250, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 09:18:13'),
(251, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 09:18:15'),
(252, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 09:20:45'),
(253, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 09:23:09'),
(254, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 09:23:25'),
(255, 1, '/?module=dialogs&action=open&id=11', '::1', '2018-06-05 09:23:28'),
(256, 1, '/index.php?module=access&action=log', '::1', '2018-06-05 09:23:33'),
(257, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 09:23:35'),
(258, 1, '/index.php', '127.0.0.1', '2018-06-05 17:15:08'),
(259, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:15:12'),
(260, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 17:15:26'),
(261, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-05 17:15:28'),
(262, 1, '/index.php?module=plans&action=view', '::1', '2018-06-05 17:15:39'),
(263, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:15:56'),
(264, 2, '/index.php', '::1', '2018-06-05 17:16:14'),
(265, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:16:18'),
(266, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-05 17:16:22'),
(267, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:16:25'),
(268, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-05 17:16:26'),
(269, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:16:26'),
(270, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 17:16:32'),
(271, 2, '/?module=dialogs&action=open&id=11', '::1', '2018-06-05 17:16:32'),
(272, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:16:37'),
(273, 2, '/?module=dialogs&action=open&id=10', '::1', '2018-06-05 17:16:48'),
(274, 2, '/index.php?module=access&action=denied', '::1', '2018-06-05 17:16:48'),
(275, 2, '/index.php?module=dialogs&action=view', '::1', '2018-06-05 17:16:56'),
(276, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-05 17:16:57'),
(277, 2, '/?id=12&module=dialogs&action=send&message=gfdgdfgdf', '::1', '2018-06-05 17:17:00'),
(278, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-05 17:17:00'),
(279, 2, '/?module=dialogs&action=open&id=12', '::1', '2018-06-05 17:17:02'),
(280, 2, '/index.php?module=plans&action=view', '::1', '2018-06-05 17:17:03'),
(281, 2, '/index.php?module=access&action=log', '::1', '2018-06-05 17:17:04'),
(282, 2, '/index.php?module=plans&action=view', '::1', '2018-06-05 17:17:14'),
(283, 1, '/index.php', '::1', '2018-06-08 11:37:05'),
(284, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-08 11:37:19'),
(285, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-08 11:37:31'),
(286, 1, '/index.php?module=plans&action=view', '::1', '2018-06-08 11:38:03'),
(287, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-08 11:38:05'),
(288, 1, '/index.php', '::1', '2018-06-11 11:55:50'),
(289, 1, '/index.php?module=access&action=log', '::1', '2018-06-11 11:56:09'),
(290, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-11 11:56:33'),
(291, 1, '/index.php?module=plans&action=view', '::1', '2018-06-11 11:56:39'),
(292, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-11 11:56:42'),
(293, 1, '/?module=subjects&action=savetodocx&id=126', '::1', '2018-06-11 11:57:41'),
(294, 1, '/index.php?module=plans&action=view', '::1', '2018-06-11 12:02:08'),
(295, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-11 12:02:46'),
(296, 1, '/index.php?module=plans&action=view', '::1', '2018-06-11 12:02:53'),
(297, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-11 12:02:56'),
(298, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-11 12:02:58'),
(299, 1, '/?module=dialogs&action=open&id=12', '::1', '2018-06-11 12:03:11'),
(300, 1, '/?module=dialogs&action=open&id=16', '::1', '2018-06-11 12:03:15'),
(301, 1, '/index.php?module=access&action=denied', '::1', '2018-06-11 12:03:15'),
(302, 1, '/', '::1', '2018-06-11 12:03:21'),
(303, 1, '/', '::1', '2018-06-11 17:37:43'),
(304, 1, '/', '127.0.0.1', '2018-06-11 17:59:53'),
(305, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-11 18:05:37'),
(306, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-12 08:14:09'),
(307, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-12 08:14:22'),
(308, 1, '/?module=plan_editor&action=edit&id=1', '127.0.0.1', '2018-06-12 09:31:30'),
(309, 1, '/index.php?module=plans&action=view', '::1', '2018-06-12 09:31:34'),
(310, 1, '/?module=plan_editor&action=edit&id=2', '::1', '2018-06-12 09:31:37'),
(311, 1, '/index.php?module=plans&action=view', '::1', '2018-06-12 09:31:40'),
(312, 1, '/?module=plan_editor&action=edit&id=3', '::1', '2018-06-12 09:31:41'),
(313, 1, '/index.php?module=plans&action=view', '::1', '2018-06-12 09:31:44'),
(314, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-12 09:31:46'),
(315, 1, '/index.php', '127.0.0.1', '2018-06-14 04:24:11'),
(316, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-14 04:24:19'),
(317, 1, '/index.php', '127.0.0.1', '2018-06-14 14:05:02'),
(318, 1, '/index.php?module=plans&action=view', '::1', '2018-06-14 14:05:13'),
(319, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-14 14:05:15'),
(320, 1, '/?module=dialogs&action=open&id=10', '::1', '2018-06-14 14:05:17'),
(321, 1, '/index.php?module=dialogs&action=view', '::1', '2018-06-14 14:05:19'),
(322, 1, '/', '127.0.0.1', '2018-06-15 03:32:50'),
(323, 1, '/', '127.0.0.1', '2018-06-15 03:35:46'),
(324, 1, '/', '127.0.0.1', '2018-06-15 03:36:32'),
(325, 1, '/index.php?module=auth&action=logoff', '127.0.0.1', '2018-06-15 03:36:36'),
(326, 1, '/index.php', '::1', '2018-06-15 03:37:32'),
(327, 1, '/index.php', '::1', '2018-06-15 03:38:21'),
(328, 1, '/index.php?module=access&action=log', '::1', '2018-06-15 03:38:33'),
(329, 1, '/index.php?module=plans&action=view', '::1', '2018-06-15 03:38:35'),
(330, 1, '/index.php?module=auth&action=logoff', '::1', '2018-06-15 03:39:43'),
(331, 1, '/index.php', '::1', '2018-06-15 03:45:58'),
(332, 1, '/?module=plan_editor&action=edit&id=1', '127.0.0.1', '2018-06-15 03:46:04'),
(333, 1, '/index.php?module=plans&action=view', '::1', '2018-06-15 03:51:36'),
(334, 1, '/?module=plan_editor&action=edit&id=1', '::1', '2018-06-15 03:52:23'),
(335, 1, '/index.php?module=plans&action=view', '::1', '2018-06-15 03:52:37');

-- --------------------------------------------------------

--
-- Структура таблицы `dialogs`
--

CREATE TABLE IF NOT EXISTS `dialogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dialogs`
--

INSERT INTO `dialogs` (`id`, `name`, `owner`) VALUES
(10, 'Новый диалог', 1),
(11, 'Тестовый диалог', 2),
(12, 'Тестовый диалог', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `dialog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `dialog_id`, `user_id`, `status`, `text`, `type`, `date`) VALUES
(1, 10, 1, 0, 'Первое сообщение', 0, '2018-06-03 17:03:33'),
(2, 10, 1, 0, 'Тестовое', 0, '2018-06-03 17:55:11'),
(3, 10, 1, 0, 'Второе', 0, '2018-06-03 17:55:53'),
(4, 10, 2, 0, 'Расчет окончен', 0, '2018-06-03 17:56:49'),
(5, 10, 1, 0, 'Нет', 0, '2018-06-03 17:57:26'),
(6, 10, 2, 0, 'Длинное сообщение', 0, '2018-06-03 17:59:04'),
(7, 10, 2, 0, 'МНогострочное', 0, '2018-06-03 18:07:19'),
(8, 10, 2, 0, 'Тут\r\n12\r\n321\r\n342\r\n4\r\n324\r\n23\r\n23\r\n', 0, '2018-06-03 18:07:40'),
(9, 12, 2, 0, 'ты тут?\r\n', 0, '2018-06-03 19:29:38'),
(10, 12, 2, 0, 'ты тут?\r\n', 0, '2018-06-03 19:29:59'),
(11, 12, 1, 0, 'Да', 0, '2018-06-03 19:30:17'),
(12, 11, 2, 0, 'ПРивет', 0, '2018-06-03 19:31:49'),
(13, 11, 1, 0, 'Привет', 0, '2018-06-03 19:31:58'),
(14, 12, 2, 0, 'gfdgdfgdf', 0, '2018-06-05 17:17:00');

-- --------------------------------------------------------

--
-- Структура таблицы `op_parts`
--

CREATE TABLE IF NOT EXISTS `op_parts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bg_color` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `op_parts`
--

INSERT INTO `op_parts` (`id`, `name`, `bg_color`, `text_color`) VALUES
(1, 'Базовая', '3914AF', 'FFF'),
(2, 'Вариативная', 'FF8300', '000'),
(3, 'По выбору', 'FFD300', '000'),
(4, 'Факультативная', '00CC00', '000'),
(5, 'Практика', 'A60000', 'FFF'),
(6, 'ГИА', 'FFF', '000');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `target_id` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `type`, `target_id`, `access`) VALUES
(1, 1, 'dialog', 10, 1),
(2, 2, 'dialog', 10, 0),
(3, 3, 'dialog', 10, 1),
(4, 5, 'dialog', 10, 1),
(5, 1, 'dialog', 11, 1),
(6, 2, 'dialog', 11, 1),
(7, 1, 'dialog', 12, 1),
(8, 2, 'dialog', 12, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `semesters` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `plans`
--

INSERT INTO `plans` (`id`, `name`, `year`, `semesters`, `hours`, `spec_id`, `type`) VALUES
(1, 'Тестовый', 2018, 8, 30, 1, 'очная'),
(2, 'Новый тестовый план', 2019, 8, 30, 0, ''),
(3, 'Новый тестовый план', 2019, 8, 30, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `photo` varchar(512) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `second_name`, `photo`) VALUES
(1, 1, 'Иван', 'Чикунов', 'Михайлович', '/CSS/images/Chikuniv_I_M.jpeg'),
(2, 2, 'Сергей', 'Ткаченко', 'Юрьевич', '/CSS/images/Tkachenko_S_Y.jpeg'),
(3, 3, 'Сергей', 'Иванов', 'Георгиевич', ''),
(4, 4, 'Юрий', 'Ремер', 'Николаевич', ''),
(5, 5, 'Михаил', 'Дружной', 'Сергеевич', '');

-- --------------------------------------------------------

--
-- Структура таблицы `specialties`
--

CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specialties`
--

INSERT INTO `specialties` (`id`, `name`, `code`) VALUES
(1, 'Информационные системы и технологии', '09.03.02');

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `zuch_ed` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `lections` int(11) NOT NULL,
  `seminars` int(11) NOT NULL,
  `labs` int(11) NOT NULL,
  `selfwork` int(11) NOT NULL,
  `part` int(11) NOT NULL,
  `kurs_project` int(11) NOT NULL,
  `kurs_work` int(11) NOT NULL,
  `bg_color` varchar(50) NOT NULL,
  `text_color` varchar(50) NOT NULL,
  `targets` text NOT NULL,
  `tasks` text NOT NULL,
  `competences` text NOT NULL,
  `themes` text NOT NULL,
  `bibliographys` text NOT NULL,
  `softwares` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `type`, `plan_id`, `position`, `zuch_ed`, `semester`, `lections`, `seminars`, `labs`, `selfwork`, `part`, `kurs_project`, `kurs_work`, `bg_color`, `text_color`, `targets`, `tasks`, `competences`, `themes`, `bibliographys`, `softwares`) VALUES
(1, 'Русский язык', 1, 0, 12, 1, 5, 18, 18, 18, 18, 1, 1, 1, '#ffffff', '#000000', '', '', '', '', '', ''),
(2, 'Математика', 1, 0, 6, 2, 4, 2, 4, 3, 2, 5, 1, 0, '#ff1a1f', '#ffffff', '', '', '', '', '', ''),
(3, 'Программирование на Питон', 1, 0, 9, 1, 4, 0, 0, 0, 0, 3, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(4, 'Программирование на JS', 1, 0, 7, 1, 4, 0, 0, 0, 0, 4, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(13, 'Тестовая дисциплина', 1, 0, 5, 1, 3, 1, 1, 1, 1, 5, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(14, 'Новая дисциплина111112', 1, 0, 0, 17, 1, 0, 0, 0, 0, 1, 0, 0, '#FFF', '#000', '', '', '', '', '', ''),
(55, 'Новая дисциплина', 1, 0, 13, 1, 5, 0, 0, 0, 0, 2, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(56, 'Разработка мобильных приложений', 2, 0, 0, 10, 1, 1, 2, 3, 3, 2, 1, 1, '#ffffff', '#000000', '', '', '', '', '', ''),
(57, 'Новая дисциплина', 1, 0, 1, 13, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(58, 'Обучение грамотной разработке с нуля', 3, 0, 2, 7, 1, 10, 0, 0, 0, 4, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(59, 'Новая дисциплина', 1, 0, 3, 22, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(60, 'Программирование на Питон', 2, 0, 10, 1, 4, 10, 10, 10, 0, 3, 1, 1, '#ffffff', '#000000', '', '', '', '', '', ''),
(61, 'Разработка документации', 1, 0, 11, 1, 5, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(63, 'Веб-аналитика', 2, 0, 14, 1, 6, 10, 0, 0, 0, 2, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(64, 'Новая дисциплина', 2, 0, 8, 1, 4, 2, 2, 3, 4, 1, 1, 0, '#000000', '#ffffff', '', '', '', '', '', ''),
(65, 'Новая дисциплина', 1, 0, 18, 1, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(66, 'Новая дисциплина', 1, 0, 15, 1, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(67, 'Новая дисциплина', 1, 0, 16, 1, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(68, 'Новая дисциплина', 1, 0, 23, 1, 8, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(69, 'Новая дисциплина', 1, 0, 17, 1, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(70, 'Новая дисциплина', 1, 0, 22, 1, 8, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(71, 'Новая дисциплина', 1, 0, 24, 1, 8, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(72, 'Новая дисциплина', 1, 0, 25, 1, 8, 24, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(73, 'Новая дисциплина', 1, 0, 26, 1, 8, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(74, 'Новая дисциплина', 1, 0, 27, 1, 8, 0, 2, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(75, 'Новая дисциплина', 1, 0, 19, 1, 7, 0, 0, 0, 44, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(76, 'Новая дисциплина', 1, 0, 20, 1, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(77, 'Новая дисциплина', 1, 0, 21, 1, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(86, 'Новая дисциплина', 1, 0, 4, 6, 3, 0, 0, 0, 0, 1, 0, 0, '#8bff22', '#000000', '', '', '', '', '', ''),
(87, 'Новая дисциплина', 1, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(88, 'Новая дисциплина', 1, 2, 1, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(89, 'Стартер', 1, 2, 2, 2, 2, 72, 0, 0, 0, 1, 0, 0, '#ffe217', '#2b7aff', '', '', '', '', '', ''),
(90, 'Новая дисциплина', 1, 2, 3, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(91, 'Новая дисциплина', 1, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(92, 'Новая дисциплина', 1, 0, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(93, 'Новая дисциплина', 1, 0, 0, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(94, 'Новая дисциплина', 1, 0, 0, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(95, 'Новая дисциплина', 1, 0, 3, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(96, 'Новая дисциплина', 1, 0, 6, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(97, 'Новая дисциплина', 1, 0, 9, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(98, 'Новая дисциплина', 1, 0, 12, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(99, 'Новая дисциплина', 1, 0, 17, 2, 4, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(100, 'Новая дисциплина', 1, 0, 1, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(101, 'Новая дисциплина', 1, 0, 4, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(102, 'Новая дисциплина', 1, 0, 7, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(103, 'Новая дисциплина', 1, 0, 10, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(104, 'Новая дисциплина', 1, 0, 13, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(105, 'Новая дисциплина', 1, 0, 15, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(106, 'Новая дисциплина', 1, 0, 18, 2, 4, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(107, 'Новая дисциплина', 1, 0, 2, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(108, 'Новая дисциплина', 1, 0, 5, 2, 2, 6, 66, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(109, 'Новая дисциплина', 1, 0, 8, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(110, 'Новая дисциплина', 1, 0, 11, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(111, 'Новая дисциплина', 1, 0, 14, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(112, 'Новая дисциплина', 1, 0, 16, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(113, 'Новая дисциплина', 1, 0, 19, 2, 4, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(114, 'Новая дисциплина', 1, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(115, 'Новая дисциплина', 1, 0, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(116, 'fdsfdsfsdfsdfds', 1, 0, 2, 2, 2, 0, 72, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(117, 'Новая дисциплина', 1, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(118, 'Новая дисциплина', 1, 0, 1, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(119, 'Новая дисциплина', 1, 0, 2, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(120, 'Новая дисциплина', 1, 0, 3, 10, 4, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(121, 'Новая дисциплина', 1, 0, 4, 2, 5, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '', '', '', '', '', ''),
(122, 'Test of GOLOS', 2, 1, 7, 6, 2, 36, 0, 180, 0, 1, 0, 0, '#804040', '#ffffff', '["Цель 1","Цель 2","gdfgdf","куцкуц"]', '["Задача 1","Задача 2","645645645","645645645"]', '[{"name":"retertert","code":"tretert","knowledges":"reterter","crafts":"terter","skills":"terterter"},{"name":"terer","code":"terter","knowledges":"terter","crafts":"terter","skills":"terter"},{"name":"rterter","code":"trete","knowledges":"terter","crafts":"tertert","skills":"erter"}]', '[{"name":"treter","description":"treter","hours":"65645","type":"3"}]', '["tretert"]', '["treterter"]'),
(123, 'Новая дисциплина', 1, 1, 8, 2, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '[""]', '[""]', '""', '""', '""', '""'),
(124, 'Новая дисциплина', 1, 0, 2, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '[""]', '[""]', '', '', '', ''),
(125, 'Новая дисциплина', 1, 0, 0, 9, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '[""]', '[""]', '', '', '', ''),
(126, 'Математика', 2, 1, 9, 28, 3, 1008, 0, 0, 0, 4, 1, 0, '#5500f2', '#ffffff', '[""]', '["",""]', '""', '""', '[""]', '[""]'),
(127, 'Новая дисциплина', 1, 1, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(128, 'Новая дисциплина', 1, 1, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(129, 'Новая дисциплина', 1, 1, 2, 2, 0, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(130, 'Новая дисциплина', 1, 1, 3, 24, 0, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(131, 'Новая дисциплина', 1, 1, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(132, 'Новая дисциплина', 1, 1, 3, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(133, 'Новая дисциплина', 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(134, 'Новая дисциплина', 1, 1, 2, 2, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(135, 'Новая дисциплина', 1, 1, 4, 22, 1, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(136, 'Новая дисциплина', 1, 1, 10, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(137, 'Новая дисциплина', 1, 1, 5, 9, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(138, 'Новая дисциплина', 1, 1, 6, 13, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(139, 'Новая дисциплина', 1, 1, 11, 14, 4, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(140, 'Новая дисциплина', 1, 1, 12, 16, 4, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(141, 'Новая дисциплина', 1, 1, 13, 4, 5, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(142, 'Новая дисциплина', 1, 1, 14, 5, 5, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(143, 'Новая дисциплина', 1, 1, 15, 14, 5, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(144, 'Новая дисциплина', 1, 1, 16, 2, 5, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(145, 'Новая дисциплина', 1, 1, 17, 11, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(146, 'Новая дисциплина', 1, 1, 18, 10, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(147, 'Новая дисциплина', 1, 1, 19, 7, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(148, 'Новая дисциплина', 1, 1, 20, 2, 6, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(149, 'Новая дисциплина', 1, 1, 21, 5, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(150, 'Новая дисциплина', 1, 1, 22, 5, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(151, 'Новая дисциплина', 1, 1, 23, 7, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""'),
(152, 'Новая дисциплина', 1, 1, 24, 13, 7, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '""', '""', '""', '""', '""', '""');

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL,
  `value` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`id`, `value`, `user_id`, `date`) VALUES
(2, '654', 654645, '2018-05-21 07:48:28'),
(3, '1', 0, '2018-05-21 09:17:53'),
(4, '1', 0, '2018-05-21 09:17:58'),
(5, '1', 0, '2018-05-21 09:22:01'),
(6, '1', 0, '2018-05-21 09:39:47'),
(7, '1', 12, '2018-05-21 09:39:55'),
(8, '1', 29, '2018-05-21 09:40:12'),
(9, '1', 4, '2018-05-21 09:40:49'),
(10, '1', 2147483647, '2018-05-21 09:40:54'),
(11, '617f31d9c27da71fef89c3b589aa907ab38470be', 1, '2018-05-21 09:41:26'),
(12, '04b7670e2c940f50b0b28d1b828ca34f3b1cfbcf', 1, '2018-05-21 09:55:15'),
(13, 'b87fd2dbf02f09fd781ca1cff823709ca320ac8a', 1, '2018-05-22 15:29:09'),
(14, 'de1f825e73e6d80a7d2c56a4799e0f77261dd897', 1, '2018-05-22 15:38:35'),
(15, 'f32a53e153e22e5d263fab14f69b97b53bf08045', 1, '2018-05-24 07:04:07'),
(16, 'c44a8bb8c74d238065cd3a55b3d41d80ea9a538d', 1, '2018-05-24 14:41:19'),
(17, 'f23053b2209c7a812b076899262f29b4340ac0a8', 1, '2018-05-24 19:44:22'),
(18, '5c663642000372767403000161f0035beb39d756', 1, '2018-05-26 06:39:40'),
(19, 'd06ff7b6f11c0cafca8ec14bfc1d86e675cbff9e', 1, '2018-05-27 11:05:33'),
(20, 'c6b91ef4dad56109121ab19dfdec6ac3b60beab8', 1, '2018-05-28 05:13:53'),
(21, '118055d99f8bb22f69249a2ddfa45582daf815b9', 1, '2018-05-30 09:37:08'),
(22, 'd4fc40e2eafa67851db57df91b1ebee196f0b288', 1, '2018-05-30 17:03:19'),
(23, '1563b006345706b218c95dd5b298f50bbe3d48fe', 1, '2018-06-01 08:47:17'),
(24, '37770cabdeca3e451223f82af12663c289b67672', 1, '2018-06-03 07:30:23'),
(25, '1978f864ee43be2fe27c11245c8cd5722e4a34f4', 2, '2018-06-03 17:56:19'),
(26, '3f347c3497a633a386a82e30e241ecfcfeba8fe9', 1, '2018-06-05 07:57:46'),
(27, '9d2403021edce99ee0f64bbac68e1aeb20ce29eb', 1, '2018-06-05 09:02:49'),
(28, 'e8982a48ded0c7c98cc3dfefd5cb2c3515850fff', 1, '2018-06-05 09:08:41'),
(29, 'd041d60b7f0d48f0caaa2bce71c1dde647ab1f71', 1, '2018-06-05 17:15:08'),
(30, '5bbc250b1b3717f56f5f00ee0bcfdd41656521bc', 2, '2018-06-05 17:16:14'),
(31, '2b68658d16e789ce3a028f2f5cd57d759dbdd292', 1, '2018-06-08 11:37:05'),
(32, '13d896062b8d6f3602bb688bcf70be2b973d3cdc', 1, '2018-06-11 11:55:49'),
(33, '91e8434d6066f5128ce074251dd7f0dcef6efeea', 1, '2018-06-14 04:24:11'),
(34, '7f8d1a0ee3caec4aeaae29bf2123fb914e988ccc', 1, '2018-06-14 14:05:02'),
(35, '351a5fe43ea8f8c2b6ecf64d61809ec3eaf89808', 1, '2018-06-15 03:37:32'),
(36, 'fe53ae8a28e65287834b5b9b2d925f20f3a21039', 1, '2018-06-15 03:45:58'),
(37, '62076b24d8964df0745e49c14c518c871e4c5be6', 1, '2018-06-15 07:19:52'),
(38, 'd92f818c5c0230a964b0bdb0adc5729e1ed5eed2', 1, '2018-06-15 16:16:32');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', 1),
(2, 'user1', '25d55ad283aa400af464c76d713c07ad', 1),
(3, 'user3', '25d55ad283aa400af464c76d713c07ad', 2),
(4, 'user2', '25d55ad283aa400af464c76d713c07ad', 2),
(5, 'user4', '25d55ad283aa400af464c76d713c07ad', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dialogs`
--
ALTER TABLE `dialogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `op_parts`
--
ALTER TABLE `op_parts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT для таблицы `dialogs`
--
ALTER TABLE `dialogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `op_parts`
--
ALTER TABLE `op_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
