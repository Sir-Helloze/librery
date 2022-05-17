-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 17 2022 г., 14:13
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pets`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `cost` double DEFAULT NULL,
  `description` text,
  `ord` int DEFAULT NULL,
  `img` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `cost`, `description`, `ord`, `img`) VALUES
(1, 'Стрижка и тримминг собак всех пород', 2500, 'необходим собакам жесткошёрстных пород – почти всем терьерам и шнауцерам, жесткошёрстным таксам и многих другим. Созревшую, отмершую шерсть удаляют механически, выщипывая руками или при помощи инструментов. Тримминг включен в комплексный уход.', 1, 'good1.png'),
(2, 'Мытьё сушка', 1699, 'Мытье: Тут очень важно правильно подобрать косметику по типу шерсти и частоте мытья. Мы используем профессиональные средства Crown Royale по типу шерсти.<br>Сушка: Важно быстро высушить собаку, чтобы снизить её тревожность. Поэтому наши мастера при сушке подбирают разные насадки и режимы обдува шерсти.', 2, 'good2.png'),
(3, 'Подстригание когтей', 1200, 'Предлагаем стрижку когтей у кошек и собак, в нашей клинике можно записаться на удобное время. Работой занимаются специалисты с большим опытом. Мы сделаем все аккуратно и безболезненно для животного. У нас только профессиональные стерильные инструменты, которые предназначены для стрижки когтей, поэтому ваш питомец не почувствует никакого дискомфорта.', 3, 'good3.png'),
(4, 'Гигиеническая чистка зубов и ушей', 900, 'Гигиеническая стрижка проводится для поддержания чистоты и опрятного внешнего вида собаки. Процедура пользуется популярностью у владельцев длинношерстных собак, но требуется представителям почти всех пород. Гигиену необходимо проводить не реже 1 раза в месяц.', 4, 'good4.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
