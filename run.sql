-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 23 2017 г., 17:00
-- Версия сервера: 5.5.54-0ubuntu0.14.04.1
-- Версия PHP: 5.5.34-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `books`
--
CREATE DATABASE IF NOT EXISTS `books` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `books`;

-- --------------------------------------------------------

--
-- Структура таблицы `Author`
--

CREATE TABLE IF NOT EXISTS `Author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sec_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `Author`
--

INSERT INTO `Author` (`id`, `name`, `sec_name`) VALUES
(1, 'Andrzei', 'Sapkowski'),
(2, 'George', 'Martin'),
(3, 'Ronald', 'Tolkien'),
(4, 'Grimm', 'Brothers'),
(5, 'Charles', 'Bukowski'),
(7, 'Hadley', 'Chase'),
(8, 'Mikhail', 'Sholokhov');

-- --------------------------------------------------------

--
-- Структура таблицы `Book`
--

CREATE TABLE IF NOT EXISTS `Book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `page_count` int(11) NOT NULL,
  `publish_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `Book`
--

INSERT INTO `Book` (`id`, `name`, `isbn`, `page_count`, `publish_date`) VALUES
(1, 'ONE', '1297361827749182', 2, '2017-11-09'),
(2, 'TWO', '0091384974789128', 4, '2017-08-07'),
(3, 'THREE', '6681739084618263', 8, '2016-10-10'),
(4, 'FOUR', '9812738687281731', 1, '2017-11-08'),
(5, 'FOUR', '8791278379183013', 16, '2017-11-06'),
(6, 'FIVE', '9981720371029733', 32, '2017-11-09'),
(7, 'SIX', '8871296314687264', 64, '2017-11-11'),
(8, 'SEVEN', '1862385626578126', 128, '2017-11-05'),
(9, 'EIGHT', '8890617483518255', 256, '2017-11-01'),
(10, 'NINE', '0807563814552112', 512, '2017-11-07'),
(11, 'TEN', '0079148687253645', 1024, '2017-11-02'),
(12, 'ELEVEN', '9761865647152452', 2048, '2017-11-28'),
(13, 'TWELWE', '9176235565457240', 4096, '2017-11-04'),
(14, 'THIRTEEN', '8586598975679234', 8192, '2017-11-07');

-- --------------------------------------------------------

--
-- Структура таблицы `Book_Author`
--

CREATE TABLE IF NOT EXISTS `Book_Author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_book` bigint(20) NOT NULL,
  `id_author` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `Book_Author`
--

INSERT INTO `Book_Author` (`id`, `id_book`, `id_author`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5),
(6, 2, 1),
(7, 8, 2),
(8, 12, 5),
(9, 10, 3),
(10, 14, 7),
(11, 13, 7),
(12, 12, 4),
(13, 11, 7),
(15, 9, 1),
(16, 8, 7),
(17, 7, 2),
(18, 6, 3),
(19, 5, 3),
(20, 1, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `Book_Genre`
--

CREATE TABLE IF NOT EXISTS `Book_Genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_book` bigint(20) NOT NULL,
  `id_genre` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `Book_Genre`
--

INSERT INTO `Book_Genre` (`id`, `id_book`, `id_genre`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 2),
(4, 2, 4),
(5, 3, 3),
(6, 3, 4),
(7, 4, 2),
(8, 5, 5),
(9, 5, 1),
(10, 6, 3),
(11, 7, 4),
(12, 8, 3),
(13, 8, 4),
(14, 9, 1),
(15, 9, 4),
(16, 10, 1),
(17, 11, 3),
(18, 11, 4),
(19, 12, 1),
(20, 13, 4),
(21, 13, 2),
(22, 14, 5),
(23, 14, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Genre`
--

CREATE TABLE IF NOT EXISTS `Genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `Genre`
--

INSERT INTO `Genre` (`id`, `name`) VALUES
(1, 'Adventure'),
(2, 'Drama'),
(3, 'Comedy'),
(4, 'Detective'),
(5, 'Phantasy');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;








