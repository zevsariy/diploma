-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 29 2018 г., 07:24
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

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
(122, 'Test of GOLOS', 1, 1, 1, 8, 4, 36, 252, 0, 0, 1, 0, 0, '#ffffff', '#000000', '["Цель 1","Цель 2","gdfgdf","куцкуц"]', '["Задача 1","Задача 2","645645645","645645645"]', '[{"name":"retertert","code":"tretert","knowledges":"reterter","crafts":"terter","skills":"terterter"},{"name":"terer","code":"terter","knowledges":"terter","crafts":"terter","skills":"terter"},{"name":"rterter","code":"trete","knowledges":"terter","crafts":"tertert","skills":"erter"}]', '[{"name":"treter","description":"treter","hours":"65645","type":"3"}]', '["tretert"]', '["treterter"]'),
(123, 'Новая дисциплина', 1, 1, 0, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '[""]', '[""]', '""', '""', '""', '""'),
(124, 'Новая дисциплина', 1, 0, 2, 2, 3, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '[""]', '[""]', '', '', '', ''),
(125, 'Новая дисциплина', 1, 0, 0, 9, 2, 0, 0, 0, 0, 1, 0, 0, '#ffffff', '#000000', '[""]', '[""]', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL,
  `value` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
(20, 'c6b91ef4dad56109121ab19dfdec6ac3b60beab8', 1, '2018-05-28 05:13:53');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `op_parts`
--
ALTER TABLE `op_parts`
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
-- AUTO_INCREMENT для таблицы `op_parts`
--
ALTER TABLE `op_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
