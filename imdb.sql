-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 27 2019 г., 23:35
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `imdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `photo_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `born` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `films` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `created_at`, `updated_at`, `name`, `photo_link`, `bio`, `born`, `films`) VALUES
(23, '2019-08-27 18:15:11', NULL, 'Sylvester Stallone', 'https://m.media-amazon.com/images/M/MV5BMTQwMTk3NDU2OV5BMl5BanBnXkFtZTcwNTA3MTI0Mw@@._V1_UY317_CR6,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000230/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1946-7-6, July 6, 1946, New York City, New York, USA', 'Роккi, Роккi IV, Крiд: Спадок Рокi Бальбоа, Роккi III, '),
(25, '2019-08-27 18:17:21', NULL, 'Renée Zellweger', 'https://m.media-amazon.com/images/M/MV5BMmI2NTU4NTYtNTdiZi00YjNhLTk5ZGUtMmFkZjBjYTliYjg1XkEyXkFqcGdeQXVyNzczNzg0ODc@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000250/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1969-4-25, April 25, 1969, Katy, Texas, USA', 'Чикаго, Холодна гора, Джерi Магуайер, Щоденник Брiджит Джонс, '),
(58, '2019-08-27 18:16:38', NULL, 'Luke Perry', 'https://m.media-amazon.com/images/M/MV5BMTA1Nzk4NDE5MjdeQTJeQWpwZ15BbWU3MDI3MDg2NTg@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000580/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1966-10-11, October 11, 1966, Mansfield, Ohio, USA', 'Beverly Hills, 90210, П\'ятий елемент, Buffy the Vampire Slayer, 8 Seconds, '),
(93, '2019-08-27 18:14:05', NULL, 'Brad Pitt', 'https://m.media-amazon.com/images/M/MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000093/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1963-12-18, December 18, 1963, Shawnee, Oklahoma, USA', 'Мiстер i мiсiс Смiт, Дванадцять мавп, Людина, яка змiнила все, Всесвiтня вiйна Z, '),
(98, '2019-08-27 18:16:00', NULL, 'Jennifer Aniston', 'https://m.media-amazon.com/images/M/MV5BNjk1MjIxNjUxNF5BMl5BanBnXkFtZTcwODk2NzM4Mg@@._V1_UY317_CR3,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000098/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1969-2-11, February 11, 1969, Sherman Oaks, California, USA', 'Друзi, Торт, Ми - Мiллери, Полювання на колишню, '),
(115, '2019-08-27 18:16:58', NULL, 'Nicolas Cage', 'https://m.media-amazon.com/images/M/MV5BZmRlOTBlZWItMzE4Mi00YTUzLTgwYzAtY2U1ZDJlMjJlODU4XkEyXkFqcGdeQXVyNjk1MjYyNTA@._V1_UY317_CR10,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000115/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1964-1-7, January 7, 1964, Long Beach, California, USA', 'Без обличчя, Покидаючи Лас-Вегас, Скеля, Збройний барон, '),
(124, '2019-08-27 18:15:35', NULL, 'Jennifer Connelly', 'https://m.media-amazon.com/images/M/MV5BOTczNTgzODYyMF5BMl5BanBnXkFtZTcwNjk4ODk4Mw@@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000124/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1970-12-12, December 12, 1970, Catskill Mountains, New York, USA', 'Iгри розуму, Будинок iз пiску та туману, Реквieм за мрieю, The Rocketeer, '),
(129, '2019-08-27 18:15:31', NULL, 'Tom Cruise', 'https://m.media-amazon.com/images/M/MV5BMTk1MjM3NTU5M15BMl5BanBnXkFtZTcwMTMyMjAyMg@@._V1_UY317_CR14,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000129/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1962-7-3, July 3, 1962, Syracuse, New York, USA', 'Кращий стрiлець, Останнiй самурай, Джерi Магуайер, Особлива думка, '),
(134, '2019-08-27 18:16:19', NULL, 'Robert De Niro', 'https://m.media-amazon.com/images/M/MV5BMjAwNDU3MzcyOV5BMl5BanBnXkFtZTcwMjc0MTIxMw@@._V1_UY317_CR13,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000134/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1943-8-17, August 17, 1943, New York City, New York, USA', 'Мис Страху, Скажений бик, Таксист, Злi вулицi, '),
(136, '2019-08-27 18:16:52', NULL, 'Johnny Depp', 'https://m.media-amazon.com/images/M/MV5BMTM0ODU5Nzk2OV5BMl5BanBnXkFtZTcwMzI2ODgyNQ@@._V1_UY317_CR4,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000136/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1963-6-9, June 9, 1963, Owensboro, Kentucky, USA', 'Суiннi Тодд: демон-перукар iз Флiт-стрiт, Пiрати Карибського моря: Прокляття Чорноii перлини, Пiрати Карибського моря: На краю свiту, Пiрати Карибського моря: Скриня мерця, '),
(138, '2019-08-27 18:14:15', NULL, 'Leonardo DiCaprio', 'https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY317_CR10,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000138/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1974-11-11, November 11, 1974, Hollywood, Los Angeles, California, USA', 'Початок, Вiдступники, Вовк з Уолл-стрiт, Титанiк, '),
(142, '2019-08-27 18:15:23', NULL, 'Clint Eastwood', 'https://m.media-amazon.com/images/M/MV5BMTg3MDc0MjY0OV5BMl5BanBnXkFtZTcwNzU1MDAxOA@@._V1_UY317_CR10,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000142/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1930-5-31, May 31, 1930, San Francisco, California, USA', 'Крихiтка на мiльйон доларiв, Непрощенний, Гран Торiно, Мости округу Медiсон, '),
(157, '2019-08-27 18:16:26', NULL, 'Edward Norton', 'https://m.media-amazon.com/images/M/MV5BMTYwNjQ5MTI1NF5BMl5BanBnXkFtZTcwMzU5MTI2Mw@@._V1_UY317_CR16,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0001570/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1969-8-18, August 18, 1969, Boston, Massachusetts, USA', 'Keeping the Faith, Американська iсторiя Iкс, Первiсний страх, Бердмен, '),
(158, '2019-08-27 18:17:04', NULL, 'Tom Hanks', 'https://m.media-amazon.com/images/M/MV5BMTQ2MjMwNDA3Nl5BMl5BanBnXkFtZTcwMTA2NDY3NQ@@._V1_UY317_CR2,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000158/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1956-7-9, July 9, 1956, Concord, California, USA', 'Вигнанець, Великий, Форрест Гамп, Врятувати рядового Раяна, '),
(173, '2019-08-27 18:15:38', NULL, 'Nicole Kidman', 'https://m.media-amazon.com/images/M/MV5BMTk1MjM5NDg4MF5BMl5BanBnXkFtZTcwNDg1OTQ4Nw@@._V1_UY317_CR10,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000173/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1967-6-20, June 20, 1967, Honolulu, Hawaii, USA', 'Мулен Руж, Години, Холодна гора, Iншi, '),
(179, '2019-08-27 18:14:16', NULL, 'Sharon Tate', 'https://m.media-amazon.com/images/M/MV5BMTE5MTIyODU5OV5BMl5BanBnXkFtZTYwOTQwODI2._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0001790/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1943-1-24, January 24, 1943, Dallas, Texas, USA', 'Valley of the Dolls, The Wrecking Crew, Dance of the Vampires, Eye of the Devil, '),
(186, '2019-08-27 18:14:23', NULL, 'Alicia Witt', 'https://m.media-amazon.com/images/M/MV5BNzkxNzI5NDkyNl5BMl5BanBnXkFtZTcwMDc1MTgyNw@@._V1_UY317_CR1,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0001860/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1975-8-21, August 21, 1975, Worcester, Massachusetts, USA', '88 хвилин, Urban Legend, Дюна, Кохання з попередженням, '),
(203, '2019-08-27 18:15:14', NULL, 'River Phoenix', 'https://m.media-amazon.com/images/M/MV5BMTI1MTcwMzc2Ml5BMl5BanBnXkFtZTYwOTUyNDI2._V1_UY317_CR24,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000203/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1970-8-23, August 23, 1970, Madras, Oregon, USA', 'My Own Private Idaho, Залишся зi мною, Running on Empty, The Mosquito Coast, '),
(206, '2019-08-27 18:14:02', NULL, 'Keanu Reeves', 'https://m.media-amazon.com/images/M/MV5BNjUxNDcwMTg4Ml5BMl5BanBnXkFtZTcwMjU4NDYyOA@@._V1_UY317_CR15,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000206/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1964-9-2, September 2, 1964, Beirut, Lebanon', 'Матриця, Швидкiсть, На гребенi хвилi, Матриця: Перезавантаження, '),
(213, '2019-08-27 18:16:39', NULL, 'Winona Ryder', 'https://m.media-amazon.com/images/M/MV5BMTQ3NzM3MTc2NF5BMl5BanBnXkFtZTcwODMxNjA0NA@@._V1_UY317_CR9,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000213/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1971-10-29, October 29, 1971, Winona, Minnesota, USA', 'Маленькi жiнки, Смертельний потяг, Чужий: Воскресiння, Перерване життя, '),
(223, '2019-08-27 18:14:26', NULL, 'Elisabeth Shue', 'https://m.media-amazon.com/images/M/MV5BOWFkZTIxN2ItODhlOC00MDMwLWEyYTEtZWMxNWQ2MzU3ZjZmXkEyXkFqcGdeQXVyNjk1MjYyNTA@._V1_UY317_CR51,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000223/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1963-10-6, October 6, 1963, Wilmington, Delaware, USA', 'Покидаючи Лас-Вегас, Adventures in Babysitting, The Saint, Людина-невидимка, '),
(226, '2019-08-27 18:16:49', NULL, 'Will Smith', 'https://m.media-amazon.com/images/M/MV5BNTczMzk1MjU1MV5BMl5BanBnXkFtZTcwNDk2MzAyMg@@._V1_UY317_CR2,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000226/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1968-9-25, September 25, 1968, Philadelphia, Pennsylvania, USA', 'Принц iз Беверлi-Хiллз, Люди в чорному, Я - легенда, Дикий, дикий Вест, '),
(233, '2019-08-27 18:13:55', NULL, 'Quentin Tarantino', 'https://m.media-amazon.com/images/M/MV5BMTgyMjI3ODA3Nl5BMl5BanBnXkFtZTcwNzY2MDYxOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000233/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1963-3-27, March 27, 1963, Knoxville, Tennessee, USA', 'Скаженi пси, Кримiнальне чтиво, Вiд заходу до свiтанку, Мерзенна вiсiмка, '),
(234, '2019-08-27 18:14:33', NULL, 'Charlize Theron', 'https://m.media-amazon.com/images/M/MV5BMTk5Mzc4ODU0Ml5BMl5BanBnXkFtZTcwNjU1NTI0Mw@@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000234/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1975-8-7, August 7, 1975, Benoni, Transvaal, South Africa', 'Монстр, Шалений Макс: Дорога гнiву, Бiлоснiжка та Мисливець, Tully, '),
(375, '2019-08-27 18:15:34', NULL, 'Robert Downey Jr.', 'https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000375/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1965-4-4, April 4, 1965, Manhattan, New York City, New York, USA', 'Залiзна людина, Шерлок Холмс, Залiзна людина 3, Месники, '),
(379, '2019-08-27 18:15:42', NULL, 'Kirsten Dunst', 'https://m.media-amazon.com/images/M/MV5BMTQ3NzkwNzM1MV5BMl5BanBnXkFtZTgwMzE2MTQ3MjE@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000379/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-4-30, April 30, 1982, Point Pleasant, New Jersey, USA', 'Людина-павук, Меланхолiя, Iнтерв\'ю з вампiром: хронiка життя вампiра, Марiя-Антуанетта, '),
(399, '2019-08-27 18:14:45', NULL, 'David Fincher', 'https://m.media-amazon.com/images/M/MV5BMTc1NDkwMTQ2MF5BMl5BanBnXkFtZTcwMzY0ODkyMg@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000399/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1962-8-28, August 28, 1962, Denver, Colorado, USA', 'Сiм, Загублена, Соцiальна мережа, Зодiак, '),
(403, '2019-08-27 18:15:54', NULL, 'Bridget Fonda', 'https://m.media-amazon.com/images/M/MV5BMjAzMzk5OTQzNl5BMl5BanBnXkFtZTYwMjc0OTk0._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000403/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1964-1-27, January 27, 1964, Los Angeles, California, USA', 'Простий план, Самотня бiла жiнка, Lake Placid, Джекi Браун, '),
(656, '2019-08-27 18:16:45', NULL, 'Madeleine Stowe', 'https://m.media-amazon.com/images/M/MV5BMTA3OTI0NzkzODVeQTJeQWpwZ15BbWU3MDEyMzYyOTY@._V1_UY317_CR3,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000656/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1958-8-18, August 18, 1958, Los Angeles, California, USA', 'Дванадцять мавп, Короткi iсторii, Донька генерала, Останнiй iз могiкан, '),
(664, '2019-08-27 18:14:25', NULL, 'Patrick Swayze', 'https://m.media-amazon.com/images/M/MV5BNDM2NjI0MjYyMV5BMl5BanBnXkFtZTYwMjY1ODMz._V1_UY317_CR3,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0000664/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1952-8-18, August 18, 1952, Houston, Texas, USA', 'Бруднi танцi, Road House, На гребенi хвилi, Привид, '),
(1174, '2019-08-27 18:16:03', NULL, 'Barbara Eden', 'https://m.media-amazon.com/images/M/MV5BMTk0MDA3MjUyNV5BMl5BanBnXkFtZTgwOTI3NTE0MTE@._V1_UY317_CR5,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0001174/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1931-8-23, August 23, 1931, Tucson, Arizona, USA', 'I Dream of Jeannie, Harper Valley P.T.A., The Brass Bottle, Burke\'s Law, '),
(1228, '2019-08-27 18:14:00', NULL, 'Peter Fonda', 'https://m.media-amazon.com/images/M/MV5BMGFhNmQwMzgtOGVkYS00MzEwLWFjMjktNmVmNjhlNDRlOTBmXkEyXkFqcGdeQXVyMjA4MTU1NzQ@._V1_UY317_CR35,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0001228/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1940-2-23, February 23, 1940, New York City, New York, USA', 'Безтурботний байкер, Потяг до Юми, Примарний вершник, Реальнi кабани, '),
(1303, '2019-08-27 18:16:54', NULL, 'Carla Gugino', 'https://m.media-amazon.com/images/M/MV5BNzQyNTgzOTI2OF5BMl5BanBnXkFtZTgwNTMyMDk0NjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0001303/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1971-8-29, August 29, 1971, Sarasota, Florida, USA', 'Хранителi, Gerald\'s Game, Гангстер, Розлом Сан-Андреас, '),
(4802, '2019-08-27 18:16:43', NULL, 'Linda Cardellini', 'https://m.media-amazon.com/images/M/MV5BMTQ2MDM4MTM2NF5BMl5BanBnXkFtZTgwMTM4MjYyMDE@._V1_UY317_CR7,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0004802/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1975-6-25, June 25, 1975, Redwood City, California, USA', 'Горбата гора, Месники: Ера Альтрона, Скубi-Ду, Бiлявка в законi, '),
(5251, '2019-08-27 18:14:03', NULL, 'Carrie-Anne Moss', 'https://m.media-amazon.com/images/M/MV5BMTYxMjgwNzEwOF5BMl5BanBnXkFtZTcwNTQ0NzI5Ng@@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0005251/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1967-8-21, August 21, 1967, Vancouver, British Columbia, Canada', 'Матриця, Пам\'ятай, Fido, Матриця: Революцiя, '),
(5253, '2019-08-27 18:15:58', NULL, 'Elisabeth Moss', 'https://m.media-amazon.com/images/M/MV5BNTMwMDg1MDkyNV5BMl5BanBnXkFtZTcwNzEwMzg1Nw@@._V1_UY317_CR131,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0005253/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-7-24, July 24, 1982, Los Angeles, California, USA', 'The One I Love, Оповiдь служницi, Queen of Earth, Перерване життя, '),
(5286, '2019-08-27 18:16:36', NULL, 'Haley Joel Osment', 'https://m.media-amazon.com/images/M/MV5BZjY0MjRhNjEtNGVlYi00YzZhLWFhNDEtMjlhNjBiNzM3Y2RkXkEyXkFqcGdeQXVyMjQxMDQzMjA@._V1_UY317_CR104,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0005286/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1988-4-10, April 10, 1988, Los Angeles, California, USA', 'Шосте чуття, Штучний розум, Заплати iншому, Secondhand Lions, '),
(5351, '2019-08-27 18:16:47', NULL, 'Ryan Reynolds', 'https://m.media-amazon.com/images/M/MV5BOTI3ODk1MTMyNV5BMl5BanBnXkFtZTcwNDEyNTE2Mg@@._V1_UY317_CR6,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0005351/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1976-10-23, October 23, 1976, Vancouver, British Columbia, Canada', 'Дедпул, Дедпул 2, Похований живцем, Люди Iкс: Початок. Росомаха, '),
(5541, '2019-08-27 18:17:06', NULL, 'Marlon Wayans', 'https://m.media-amazon.com/images/M/MV5BMTEwMDU2NDYyNTheQTJeQWpwZ15BbWU3MDYxNDYzMzg@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0005541/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1972-7-23, July 23, 1972, New York City, New York, USA', 'White Chicks, Little Man, G.I. Joe: Атака кобри, Дуже страшне кiно, '),
(10698, '2019-08-27 18:14:21', NULL, 'Dominique McElligott', 'https://m.media-amazon.com/images/M/MV5BMjE2NDAxMDc0OV5BMl5BanBnXkFtZTcwNzk3MDI2OA@@._V1_UY317_CR131,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1069800/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-5-3, May 3, 1986, Dublin, Ireland', 'Картковий будинок, Iрлaндець, Мiсяць 2112, Hell on Wheels, '),
(10736, '2019-08-27 18:14:09', NULL, 'Amy Adams', 'https://m.media-amazon.com/images/M/MV5BMTg2NTk2MTgxMV5BMl5BanBnXkFtZTgwNjcxMjAzMTI@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0010736/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1974-8-20, August 20, 1974, Vicenza, Veneto, Italy', 'Прибуття, Зачарована, Американська афера, Сумнiв, '),
(12493, '2019-08-27 18:14:42', NULL, 'Gerard Butler', 'https://m.media-amazon.com/images/M/MV5BMjE4NDMwMzc4Ml5BMl5BanBnXkFtZTcwMDg4Nzg4Mg@@._V1_UY317_CR6,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0124930/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1969-11-13, November 13, 1969, Paisley, Scotland, UK', 'Привид опери, 300 спартанцiв, Законослухняний громадянин, Полювання на колишню, '),
(14169, '2019-08-27 18:15:45', NULL, 'Shantel VanSanten', 'https://m.media-amazon.com/images/M/MV5BMzk4NjFhYWItODg5OC00MmM1LTljMzItNDBjOWYzMTdiNjVjXkEyXkFqcGdeQXVyMTQxMTcxNzc@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1416900/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1985-7-25, July 25, 1985, Luverne, Minnesota, USA', 'Shooter, One Tree Hill, Флеш, Пункт призначення 4, '),
(20037, '2019-08-27 18:15:47', NULL, 'Chace Crawford', 'https://m.media-amazon.com/images/M/MV5BMjM4Nzc3Njc0N15BMl5BanBnXkFtZTgwMjE0MDEzMTE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2003700/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1985-7-18, July 18, 1985, Lubbock, Texas, USA', 'The Covenant, Чого чекати, коли чекаeш на дитину?, Плiткарка, The Haunting of Molly Hartley, '),
(42406, '2019-08-27 18:15:25', NULL, 'Scarlett Johansson', 'https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_UY317_CR23,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0424060/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1984-11-22, November 22, 1984, New York City, New York, USA', 'Вона, Труднощi перекладу, Месники, Пiд шкiрою, '),
(63424, '2019-08-27 18:17:01', NULL, 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_UY317_CR7,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0634240/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1970-7-30, July 30, 1970, London, England, UK', 'Дюнкерк, Престиж, Початок, Iнтeрстеллар, '),
(68338, '2019-08-27 18:17:11', NULL, 'Kristen Bell', 'https://m.media-amazon.com/images/M/MV5BMjA1Njc0MTUzN15BMl5BanBnXkFtZTgwNTg1MjEwNDI@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0068338/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1980-7-18, July 18, 1980, Huntington Woods, Michigan, USA', 'Крижане серце, Veronica Mars, Веронiка Марс, В прольотi, '),
(95561, '2019-08-27 18:16:25', NULL, 'Mika Boorem', 'https://m.media-amazon.com/images/M/MV5BOGVhM2E5OTEtOWExZC00YTdhLWE0NjctMjhlOWVjYWUzZTE1XkEyXkFqcGdeQXVyMjAwMDUxMDc@._V1_UY317_CR20,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0095561/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1987-8-18, August 18, 1987, Tucson, Arizona, USA', 'Hollywood.Con, Blue Crush, Good Day for It, Along Came a Spider, '),
(116511, '2019-08-27 18:15:44', NULL, 'Chris Hemsworth', 'https://m.media-amazon.com/images/M/MV5BOTU2MTI0NTIyNV5BMl5BanBnXkFtZTcwMTA4Nzc3OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1165110/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1983-8-11, August 11, 1983, Melbourne, Victoria, Australia', 'Месники, Тор: Рагнарок, Тор, Бiлоснiжка та Мисливець, '),
(147147, '2019-08-27 18:17:12', NULL, 'Henry Cavill', 'https://m.media-amazon.com/images/M/MV5BMTUxNTExMzUzOF5BMl5BanBnXkFtZTgwOTI1MjA3OTE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0147147/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1983-5-5, May 5, 1983, Jersey, Channel Islands', 'Людина зi сталi, Бетмен проти Супермена: На зорi справедливостi, Лiга справедливостi, Агенти U.N.C.L.E., '),
(148964, '2019-08-27 18:14:36', NULL, 'Michael Cerveris', 'https://m.media-amazon.com/images/M/MV5BMTc1NDcwMDI5MV5BMl5BanBnXkFtZTcwMzI4OTIzMQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0148964/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1960-11-6, November 6, 1960, Bethesda, Maryland, USA', 'Cirque du Freak: The Vampire\'s Assistant, Мексиканець, Fame, Stake Land, '),
(155534, '2019-08-27 18:14:39', NULL, 'Alison Brie', 'https://m.media-amazon.com/images/M/MV5BMjJkNDg5ZDctM2RlZS00NjFmLTkxZjktMWE5NGQzMDg4NDFhXkEyXkFqcGdeQXVyMTMwMDM1OTQ@._V1_UY317_CR8,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1555340/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-12-29, December 29, 1982, Los Angeles County, California, USA', 'Lego фiльм, Спiльнота, Sleeping with Other People, 5 рокiв майже одруженi, '),
(159776, '2019-08-27 18:15:27', NULL, 'Erika Christensen', 'https://m.media-amazon.com/images/M/MV5BNjQ3ODYyNTczOF5BMl5BanBnXkFtZTgwOTU1NDE2MDI@._V1_UY317_CR9,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0159776/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-8-19, August 19, 1982, Seattle, Washington, USA', 'Трафiк, Iлюзiя польоту, Swimfan, Parenthood, '),
(219312, '2019-08-27 18:14:10', NULL, 'Hannah Gross', 'https://m.media-amazon.com/images/M/MV5BMTc2MDY3NTA0OF5BMl5BanBnXkFtZTgwMjAzNTMyNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2193120/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Мисливець на розум, Unless, Deadwax, Marjorie Prime, '),
(253705, '2019-08-27 18:14:28', NULL, 'Christine Elise', 'https://m.media-amazon.com/images/M/MV5BZTkxNGUyZjYtZjE3Yy00ZDg1LWJmMzUtOGNkNzYxZjIwMzBlXkEyXkFqcGdeQXVyMDk1Mjk2OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0253705/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1965-2-12, February 12, 1965, Boston, Massachusetts, USA', 'Беверлi Хiллз 90210, Beverly Hills, 90210, Child\'s Play 2, Швидка допомога, '),
(262635, '2019-08-27 18:15:49', NULL, 'Chris Evans', 'https://m.media-amazon.com/images/M/MV5BMTU2NTg1OTQzMF5BMl5BanBnXkFtZTcwNjIyMjkyMg@@._V1_UY317_CR6,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0262635/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1981-6-13, June 13, 1981, Boston, Massachusetts, USA', 'Месники, Перший месник, Перший месник: Протистояння, Перший месник: Друга вiйна, '),
(266824, '2019-08-27 18:15:16', NULL, 'Dakota Fanning', 'https://m.media-amazon.com/images/M/MV5BMjAwNjM3NjY5MF5BMl5BanBnXkFtZTcwMjM4NTYwOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0266824/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1994-2-23, February 23, 1994, Conyers, Georgia, USA', 'Вiйна свiтiв, Я - Сем, Лють, Коралiна у свiтi кошмарiв, '),
(272581, '2019-08-27 18:15:18', NULL, 'Rebecca Ferguson', 'https://m.media-amazon.com/images/M/MV5BNzA4NDA1MTA5NV5BMl5BanBnXkFtZTcwNjMyNTQ3OA@@._V1_UY317_CR6,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0272581/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1983-10-19, October 19, 1983, Sweden', 'Мiсiя: Нездiйсненна - Нацiя iзгоiiв, Mission: Impossible - Fallout, Життя, Despite the Falling Snow, '),
(296219, '2019-08-27 18:16:32', NULL, 'Joanne Froggatt', 'https://m.media-amazon.com/images/M/MV5BODg4ODkzOTMzNF5BMl5BanBnXkFtZTgwMjA4MDgxNDE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0296219/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1980-8-23, August 23, 1980, Scarborough, North Yorkshire, England, UK', 'Абатство Даунтон, Dark Angel, Liar, In Our Name, '),
(303073, '2019-08-27 18:16:31', NULL, 'Melissa Fumero', 'https://m.media-amazon.com/images/M/MV5BMTY1OTk1NzQwOF5BMl5BanBnXkFtZTgwNDUzNTA3NjE@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0303073/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-8-19, August 19, 1982, Lyndhurst, New Jersey, USA', 'Brooklyn Nine-Nine, I Hope They Serve Beer in Hell, One Life to Live, All My Children, '),
(362766, '2019-08-27 18:14:44', NULL, 'Tom Hardy', 'https://m.media-amazon.com/images/M/MV5BMTQ3ODEyNjA4Nl5BMl5BanBnXkFtZTgwMTE4ODMyMjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0362766/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1977-9-15, September 15, 1977, Hammersmith, London, England, UK', 'Початок, Темний лицар повертаеться, Лок, Шалений Макс: Дорога гнiву, '),
(369513, '2019-08-27 18:16:21', NULL, 'Cole Hauser', 'https://m.media-amazon.com/images/M/MV5BZWRiOTdjN2UtY2M1Yy00YzBjLWJmMzQtYTAyZGY4ZGFmZDRkXkEyXkFqcGdeQXVyNDI3NzU1NDE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0369513/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1975-3-22, March 22, 1975, Santa Barbara, California, USA', 'Подвiйний форсаж, Пiд кайфом та збентеженi, Розумник Вiлл Хантiнг, Rogue, '),
(380632, '2019-08-27 18:14:18', NULL, 'Damon Herriman', 'https://m.media-amazon.com/images/M/MV5BMTEzNjU3OTQzMjBeQTJeQWpwZ15BbWU4MDE3ODk5NDkx._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0380632/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1970-3-31, March 31, 1970, Adelaide, South Australia, Australia', '100 Bloody Acres, '),
(397171, '2019-08-27 18:16:29', NULL, 'Bryce Dallas Howard', 'https://m.media-amazon.com/images/M/MV5BODEzNzBhODYtOWEzNi00Y2I3LWFjMGEtNzAxNzU5ZjZiMDRiXkEyXkFqcGdeQXVyMjQ0MTg4Nw@@._V1_UY317_CR15,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0397171/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1981-3-2, March 2, 1981, Los Angeles, California, USA', 'Свiт Юрського перiоду, Прислуга, Gold, '),
(425005, '2019-08-27 18:15:06', NULL, 'Dwayne Johnson', 'https://m.media-amazon.com/images/M/MV5BMTkyNDQ3NzAxM15BMl5BanBnXkFtZTgwODIwMTQ0NTE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0425005/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1972-5-2, May 2, 1972, Hayward, California, USA', 'Джуманджi: Поклик джунглiв, Подорож 2: Таемничий острiв, Ваяна, G.I. Joe: Атака кобри 2, '),
(445612, '2019-08-27 18:16:02', NULL, 'Elizabeth Debicki', 'https://m.media-amazon.com/images/M/MV5BMWRiNzczYzMtOGE1Yi00Njg0LWFkNTUtYzE3NmVkZDZkMjg5XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR21,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4456120/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1990-8-24, August 24, 1990, Paris, France', 'Великий Гетсбi, Вдови, Вартовi Галактики 2, Еверест, '),
(458736, '2019-08-27 18:15:12', NULL, 'Gayle Rankin', 'https://m.media-amazon.com/images/M/MV5BZWZmYTVhMGYtODY2YS00ZTNhLWFmMzgtZjY3NGE1NzhmOGNlXkEyXkFqcGdeQXVyMzA0NDgyMDU@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4587360/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Найвеличнiший шоумен, GLOW, Iсторii сiм\'ii Майровiц, Frank the Bastard, '),
(468942, '2019-08-27 18:15:48', NULL, 'Carrie Coon', 'https://m.media-amazon.com/images/M/MV5BMTk1ODEzMTAyNF5BMl5BanBnXkFtZTgwNDExMTY5MTI@._V1_UY317_CR104,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4689420/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1981-1-24, January 24, 1981, Copley, Ohio, USA', 'Загублена, Месники: Вiйна нескiнченностi, Секретне досьe, The Leftovers, '),
(479471, '2019-08-27 18:16:55', NULL, 'Shia LaBeouf', 'https://m.media-amazon.com/images/M/MV5BMjFhNTM3NDItMDllNC00YzAyLThmY2QtYmViMjBjODJjODdiXkEyXkFqcGdeQXVyMDU5Njk5MQ@@._V1_UY317_CR5,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0479471/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-6-11, June 11, 1986, Los Angeles, California, USA', 'Трансформери, Сокiл з арахiсового масла, Лють, Honey Boy, '),
(488953, '2019-08-27 18:15:43', NULL, 'Brie Larson', 'https://m.media-amazon.com/images/M/MV5BMjExODkxODU3NF5BMl5BanBnXkFtZTgwNTM0MTk3NjE@._V1_UY317_CR7,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0488953/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1989-10-1, October 1, 1989, Sacramento, California, USA', 'Кiмната, Капiтан Марвел, Short Term 12, Месники: Завершення, '),
(564697, '2019-08-27 18:13:58', NULL, 'Holt McCallany', 'https://m.media-amazon.com/images/M/MV5BYjY2YTQ3MGItM2RjOS00YWI5LTg4ZGYtNWY2YWJlZTljNGQxXkEyXkFqcGdeQXVyNzAzNzg4NTg@._V1_UY317_CR28,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0564697/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1963-9-3, September 3, 1963, New York City, New York, USA', 'The Losers, Бiйцiвський клуб, Пострiл в безодню, Run All Night, '),
(595626, '2019-08-27 18:15:24', NULL, 'Britt Baron', 'https://m.media-amazon.com/images/M/MV5BZjU3NzcxMjUtYjdjMC00NjYwLTgzZjktYjM3ZjVmNmU3ZjA1XkEyXkFqcGdeQXVyNTA2MzQ0ODc@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm5956260/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'GLOW, Анатомiя Грей, Rob Riggle\'s Ski Master Academy, Halo 5: Guardians, '),
(597388, '2019-08-27 18:15:40', NULL, 'Jason Momoa', 'https://m.media-amazon.com/images/M/MV5BMTI5MTU5NjM1MV5BMl5BanBnXkFtZTcwODc4MDk0Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0597388/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1979-8-1, August 1, 1979, Honolulu, Hawaii, USA', 'Аквамен, Лiга справедливостi, Конан-варвар, Зоряна брама: Атлантида, '),
(614165, '2019-08-27 18:15:32', NULL, 'Cillian Murphy', 'https://m.media-amazon.com/images/M/MV5BMTUzMjg1NzIyOV5BMl5BanBnXkFtZTYwMzg2Mjgy._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0614165/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1976-5-25, May 25, 1976, Douglas, Cork, Ireland', '28 днiв потому, Початок, Red Eye, Пекло, '),
(659363, '2019-08-27 18:15:19', NULL, 'Hayden Panettiere', 'https://m.media-amazon.com/images/M/MV5BOTY2OTI1NzA0NV5BMl5BanBnXkFtZTcwOTczMTA2Mw@@._V1_UY317_CR13,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0659363/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1989-8-21, August 21, 1989, Palisades, New York, USA', 'Heroes, I Love You, Beth Cooper, Remember the Titans, Крик 4, '),
(683253, '2019-08-27 18:16:56', NULL, 'Rosamund Pike', 'https://m.media-amazon.com/images/M/MV5BNDQ5MDIyMjg3NV5BMl5BanBnXkFtZTgwOTU2NTE0NDM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0683253/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1979-1-27, January 27, 1979, Hammersmith, London, England, UK', 'Загублена, 007: Помри, але не зараз, Гордiсть та упередження, Джек Рiчер, '),
(736622, '2019-08-27 18:17:18', NULL, 'Seth Rogen', 'https://m.media-amazon.com/images/M/MV5BMTQ0NjgzNzcwNV5BMl5BanBnXkFtZTcwODExMDYxOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0736622/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-4-15, April 15, 1982, Vancouver, British Columbia, Canada', 'Це кiнець, Супер перцi, Ананасовий експрес, Трiшки вагiтна, '),
(755267, '2019-08-27 18:15:28', NULL, 'Katee Sackhoff', 'https://m.media-amazon.com/images/M/MV5BMTc4MTAxMDMxMV5BMl5BanBnXkFtZTgwMTYxNjE5MDI@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0755267/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1980-4-8, April 8, 1980, Portland, Oregon, USA', 'Battlestar Galactica, Рiддiк, Oculus, Halloween: Resurrection, '),
(803889, '2019-08-27 18:15:52', NULL, 'Bill Skarsgård', 'https://m.media-amazon.com/images/M/MV5BMTg3MzMwODMwN15BMl5BanBnXkFtZTgwNDkxODU5NTM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0803889/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1990-8-9, August 9, 1990, Vällingby, Sweden', 'Воно, Дивергент 3: Вiддана, Дедпул 2, Атомна Блондинка, '),
(881631, '2019-08-27 18:14:12', NULL, 'Karl Urban', 'https://m.media-amazon.com/images/M/MV5BMTU2Njg3MDgyN15BMl5BanBnXkFtZTcwNjgyNTA4Mg@@._V1_UY317_CR5,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0881631/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1972-6-7, June 7, 1972, Wellington, New Zealand', 'Зоряний шлях, Володар перснiв: Двi вежi, Володар перснiв: Повернення короля, Doom, '),
(891895, '2019-08-27 18:15:57', NULL, 'Paz Vega', 'https://m.media-amazon.com/images/M/MV5BYzYxYjYwOTQtM2ZlMS00OGFjLTkxM2QtYTgyZTk0ZjNmZjk1XkEyXkFqcGdeQXVyODgyNDE2OA@@._V1_UY317_CR32,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0891895/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1976-1-2, January 2, 1976, Seville, Seville, Andalucía, Spain', 'Люсiя i секс, Iспанська англiйська, Убити посланця, The Spirit, '),
(905152, '2019-08-27 18:14:41', NULL, 'Lilly Wachowski', 'https://m.media-amazon.com/images/M/MV5BMTU1Mjc1MjkzNV5BMl5BanBnXkFtZTgwOTc1NDQ1ODE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0905152/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1967-12-29, December 29, 1967, Chicago, Illinois, USA', 'Матриця, Зв\'язок, Хмарний атлас, Матриця: Перезавантаження, '),
(905154, '2019-08-27 18:14:13', NULL, 'Lana Wachowski', 'https://m.media-amazon.com/images/M/MV5BMjEzMTc2MDQ5OV5BMl5BanBnXkFtZTcwNjkzNDY0OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0905154/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1965-6-21, June 21, 1965, Chicago, Illinois, USA', 'Матриця, Зв\'язок, Хмарний атлас, Матриця: Перезавантаження, '),
(935395, '2019-08-27 18:14:11', NULL, 'Katheryn Winnick', 'https://m.media-amazon.com/images/M/MV5BNTFmMjg2MTYtZjY4Ni00ZTQzLWI2OWMtNTA5NWQ0OGJhZWQ3XkEyXkFqcGdeQXVyMTE1MzA3MTI@._V1_UY317_CR130,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm0935395/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1977-12-17, December 17, 1977, Toronto, Ontario, Canada', 'Вiкiнги, 50 перших поцiлункiв, Полярний, Amusement, '),
(1092086, '2019-08-27 18:16:01', NULL, 'David Harbour', 'https://m.media-amazon.com/images/M/MV5BZTc5ODUzMDAtZGFhZS00NmExLTlhYWYtZDY0NGI2MGMwYTIzXkEyXkFqcGdeQXVyODY0MzQyODc@._V1_UY317_CR20,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1092086/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1975-4-10, April 10, 1975, New York, USA', 'Життя спочатку, Хеллбой, Загiн самогубцiв, A Walk Among the Tombstones, '),
(1102278, '2019-08-27 18:13:59', NULL, 'Antony Starr', 'https://m.media-amazon.com/images/M/MV5BMTQxMDg1Nzc0OV5BMl5BanBnXkFtZTcwODc4NTkyNw@@._V1_UY317_CR6,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1102278/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1975-10-25, October 25, 1975, New Zealand', 'Outrageous Fortune, Wish You Were Here, Without a Paddle, Найпрудкiший Iндiан, '),
(1144419, '2019-08-27 18:16:20', NULL, 'Danny McBride', 'https://m.media-amazon.com/images/M/MV5BMTk5NTM0ODI4NF5BMl5BanBnXkFtZTcwNzg3MjY0Mg@@._V1_UY317_CR16,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1144419/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1976-12-29, December 29, 1976, Statesboro, Georgia, USA', 'Ананасовий експрес, Vice Principals, Вище неба, Це кiнець, '),
(1157048, '2019-08-27 18:16:28', NULL, 'Zachary Levi', 'https://m.media-amazon.com/images/M/MV5BMTU5NjEwOTgwMF5BMl5BanBnXkFtZTgwOTEzMDk1NTM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1157048/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1980-9-29, September 29, 1980, Lake Charles, Louisiana, USA', 'Чак, Шазам!, Рапунцель: Заплутана iсторiя, Тор 2: Царство темряви, '),
(1218924, '2019-08-27 18:14:22', NULL, 'Michelle Borth', 'https://m.media-amazon.com/images/M/MV5BZjlkZmYxNjUtZTRjMi00Y2IzLWFlYjItYTQ1ZjdkOGZhY2EzXkEyXkFqcGdeQXVyNzk2NzE1MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1218924/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1978-8-19, August 19, 1978, Secaucus, New Jersey, USA', 'Шазам!, Hawaii Five-0, Teenage Cocktail, Стара добра оргiя, '),
(1231899, '2019-08-27 18:17:13', NULL, 'Priyanka Chopra', 'https://m.media-amazon.com/images/M/MV5BMjAxNzUwNjExOV5BMl5BanBnXkFtZTcwNDUyMTUxNw@@._V1_UY317_CR105,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1231899/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-7-18, July 18, 1982, Jamshedpur, Bihar, India', 'Рятувальники Малiбу, Bajirao Mastani, Don 2, Barfi!, '),
(1275259, '2019-08-27 18:14:20', NULL, 'Alexandra Daddario', 'https://m.media-amazon.com/images/M/MV5BMTY3Nzg2NjA1OF5BMl5BanBnXkFtZTgwMjY5NTU1MzI@._V1_UY317_CR10,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1275259/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-3-16, March 16, 1986, New York City, New York, USA', 'Рятувальники Малiбу, Техаська рiзанина бензопилою 3D, Персi Джексон та Викрадач блискавок, Персi Джексон: Море чудовиськ, '),
(1289434, '2019-08-27 18:17:08', NULL, 'Emily Blunt', 'https://m.media-amazon.com/images/M/MV5BMTUxNDY4MTMzM15BMl5BanBnXkFtZTcwMjg5NzM2Ng@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1289434/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1983-2-23, February 23, 1983, Roehampton, London, England, UK', 'На межi майбутнього, Диявол носить Прада, Мiняючи реальнiсть, Риба моеii мрii, '),
(1297015, '2019-08-27 18:17:23', NULL, 'Emma Stone', 'https://m.media-amazon.com/images/M/MV5BMjI4NjM1NDkyN15BMl5BanBnXkFtZTgwODgyNTY1MjE@._V1.._UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1297015/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1988-11-6, November 6, 1988, Scottsdale, Arizona, USA', 'Ла-Ла Ленд, Вiдмiнниця легкоii поведiнки, Прислуга, Бердмен, '),
(1306344, '2019-08-27 18:15:56', NULL, 'Stacey Roca', 'https://m.media-amazon.com/images/M/MV5BMTA1MTY0NjY2OTBeQTJeQWpwZ15BbWU4MDUyNjYyOTIx._V1_UY317_CR82,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1306344/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Офiс, Мисливець на розум, Waking the Dead, Things to Do Before You\'re 30, '),
(1325419, '2019-08-27 18:15:08', NULL, 'Kristen Wiig', 'https://m.media-amazon.com/images/M/MV5BMTg5MTA0MDA5NF5BMl5BanBnXkFtZTgwODMyMjA1NzE@._V1_UY317_CR1,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1325419/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1973-8-22, August 22, 1973, Canandaigua, New York, USA', 'Подруги нареченоii, The Skeleton Twins, Таемне життя Волтера Мiттi, Зразковий самець 2, '),
(1396022, '2019-08-27 18:13:56', NULL, 'Anna Torv', 'https://m.media-amazon.com/images/M/MV5BMzQ0NDg0MjQ3NV5BMl5BanBnXkFtZTgwOTI5OTAwODE@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1396022/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1979-6-7, June 7, 1979, Melbourne, Victoria, Australia', 'Межа, Heavenly Sword, Heavenly Sword, Мисливець на розум, '),
(1537825, '2019-08-27 18:17:20', NULL, 'Sam Heughan', 'https://m.media-amazon.com/images/M/MV5BMTUwNzAyMzA2MF5BMl5BanBnXkFtZTgwNzA0MjQ1ODE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1537825/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1980-4-30, April 30, 1980, New Galloway, Dumfriesshire, Scotland, UK', 'Outlander, Принцеса на Рiздво, Island at War, Young Alexander the Great, '),
(1638321, '2019-08-27 18:14:24', NULL, 'Maya Hawke', 'https://m.media-amazon.com/images/M/MV5BOGYzNjE2MDYtMjhhNi00MGE4LTk1ZDUtM2ZmODZlMmQ2ZjE3XkEyXkFqcGdeQXVyNjUxMjc1OTM@._V1_UY317_CR131,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1638321/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1998-7-8, July 8, 1998, New York City, New York, USA', 'Дивнi дива, Одного разу... в Голлiвудi, Little Women, As They Slept, '),
(1720028, '2019-08-27 18:14:37', NULL, 'Amber Heard', 'https://m.media-amazon.com/images/M/MV5BMjA4NDkyODA3M15BMl5BanBnXkFtZTgwMzUzMjYzNzM@._V1_UY317_CR51,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1720028/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-4-22, April 22, 1986, Austin, Texas, USA', 'Аквамен, Ромовий щоденник, Скаженi перегони, Мачете вбивае, '),
(1740127, '2019-08-27 18:16:23', NULL, 'Clare Grant', 'https://m.media-amazon.com/images/M/MV5BZjhmYmJkOTgtZmU3NS00ZjVjLWI2ZWMtNjJjNWI1NzY1N2YzL2ltYWdlXkEyXkFqcGdeQXVyNDA4MDY4OA@@._V1_UY317_CR2,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1740127/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1979-8-23, August 23, 1979, Memphis, Tennessee, USA', 'Переступити межу, Changeland, Годзiлла II: Король монстрiв, Castle, '),
(1834115, '2019-08-27 18:16:50', NULL, 'Annabelle Wallis', 'https://m.media-amazon.com/images/M/MV5BMTc2NjM5MTUzNl5BMl5BanBnXkFtZTcwNzQyOTM2Nw@@._V1_UY317_CR24,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1834115/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1984-9-5, September 5, 1984, Oxford, Oxfordshire, England, UK', 'Мумiя, Анабель, Люди Iкс: Перший клас, Король Артур: Легенда меча, '),
(1869101, '2019-08-27 18:15:39', NULL, 'Ana de Armas', 'https://m.media-amazon.com/images/M/MV5BMjA3NjYzMzE1MV5BMl5BanBnXkFtZTgwNTA4NDY4OTE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1869101/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1988-4-30, April 30, 1988, Havana, Cuba', 'Той, хто бiжить по лезу 2049, No Time to Die, Knives Out, Hands of Stone, '),
(1882929, '2019-08-27 18:16:42', NULL, 'Liana Liberato', 'https://m.media-amazon.com/images/M/MV5BYjc3MjZiNDctMTJlOC00YTFkLWEyYjYtZmVlOTUwNmUyYThmXkEyXkFqcGdeQXVyODc5NzU2MDU@._V1_UY317_CR17,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1882929/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1995-8-20, August 20, 1995, Galveston, Texas, USA', 'Якщо я залишусь, Довiра, Найкраще в менi, Stuck in Love., '),
(1935086, '2019-08-27 18:15:13', NULL, 'Tessa Thompson', 'https://m.media-amazon.com/images/M/MV5BNjk4MDU3NDg4NF5BMl5BanBnXkFtZTcwMjMxMjcwNA@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm1935086/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1983-10-3, October 3, 1983, Los Angeles, California, USA', 'Крiд: Спадок Рокi Бальбоа, Тор: Рагнарок, Dear White People, Анiгiляцiя, '),
(2017943, '2019-08-27 18:16:59', NULL, 'Hayley Atwell', 'https://m.media-amazon.com/images/M/MV5BZmRhZWVjZWMtMzUwZi00OTI3LThiMzAtY2VmMjU5YjQ0YjVjXkEyXkFqcGdeQXVyODMzMTM1MDc@._V1_UY317_CR16,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2017943/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-4-5, April 5, 1982, London, England, UK', 'Перший месник, Герцогиня, Людина-мураха, Перший месник: Друга вiйна, '),
(2088803, '2019-08-27 18:14:40', NULL, 'Yvonne Strahovski', 'https://m.media-amazon.com/images/M/MV5BMzI5NDIzNTQ1Nl5BMl5BanBnXkFtZTgwMjQ0Mzc1MTE@._V1_UY317_CR4,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2088803/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1982-7-30, July 30, 1982, Maroubra, Sydney, New South Wales, Australia', 'Декстер, 24: Прожити ще один день, Професiонал, Louie, '),
(2225369, '2019-08-27 18:15:51', NULL, 'Jennifer Lawrence', 'https://m.media-amazon.com/images/M/MV5BOTU3NDE5MDQ4MV5BMl5BanBnXkFtZTgwMzE5ODQ3MDI@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2225369/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1990-8-15, August 15, 1990, Louisville, Kentucky, USA', 'Голоднi iгри, Збiрка промiнцiв надii, Американська афера, Люди Iкс: Перший клас, '),
(2365811, '2019-08-27 18:14:17', NULL, 'Betty Gilpin', 'https://m.media-amazon.com/images/M/MV5BMTY3NDY3NjM5OV5BMl5BanBnXkFtZTgwNTQ0NTUzNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2365811/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-7-21, July 21, 1986, USA', 'Хiба це не романтично, GLOW, Правдива iсторiя, Мiсто привидiв, '),
(2377903, '2019-08-27 18:16:34', NULL, 'Lucy Boynton', 'https://m.media-amazon.com/images/M/MV5BMTk4ZWI3ZDktNzBiYS00MzdiLTk2MDEtOWNlOTY0ZDg3NDBhXkEyXkFqcGdeQXVyODY2MTA2OTg@._V1_UY317_CR104,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2377903/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1994-1-0, 1994, New York City, New York, USA', 'Сiнг Стрiт, Богемна рапсодiя, Вбивство в Схiдному експресi, Miss Potter, '),
(2394794, '2019-08-27 18:15:21', NULL, 'Karen Gillan', 'https://m.media-amazon.com/images/M/MV5BMTQwMDQ0NDk1OV5BMl5BanBnXkFtZTcwNDcxOTExNg@@._V1_UY317_CR2,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2394794/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1987-11-28, November 28, 1987, Inverness, Scotland, UK', 'Селфi, Вартовi Галактики, Not Another Happy Ending, Месники: Завершення, '),
(2458843, '2019-08-27 18:15:17', NULL, 'Lauren Glazier', 'https://m.media-amazon.com/images/M/MV5BZGRhYmI3YTUtYTdiNS00YWIzLWJlYTMtMGJiYzU4M2VmZDYyXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR2,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2458843/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', ', Kelowna, British Columbia, Canada', 'Червоний горобець, Загублена, Мисливець на розум, '),
(2539953, '2019-08-27 18:17:07', NULL, 'Alicia Vikander', 'https://m.media-amazon.com/images/M/MV5BZmMxYzk1OWEtMjE0MC00NTRlLTgwNTEtMGQ1YjA1Yzg1Nzc3XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR3,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2539953/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1988-10-3, October 3, 1988, Gothenburg, Västra Götalands län, Sweden', 'Екс-махiна, Дiвчина з Данii, Агенти U.N.C.L.E., Сьомий син, '),
(2555462, '2019-08-27 18:15:36', NULL, 'Eiza González', 'https://m.media-amazon.com/images/M/MV5BYjI0MjU0YjgtNzRkZC00ZGNlLWEyMzMtOGM2MDEzZDFlYmRjXkEyXkFqcGdeQXVyNjA1OTA1Njk@._V1_UY317_CR20,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2555462/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1990-1-30, January 30, 1990, Mexico City, Distrito Federal, Mexico', 'На драйвi, Алiта: Бойовий ангел, '),
(2581521, '2019-08-27 18:14:38', NULL, 'Austin Butler', 'https://m.media-amazon.com/images/M/MV5BMjI2MDcwODc2NV5BMl5BanBnXkFtZTcwOTg2NzcwOQ@@._V1_UY317_CR11,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2581521/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1991-8-17, August 17, 1991, Anaheim, California, USA', 'Untitled Elvis Presley Project, Одного разу... в Голлiвудi, The Dead Don\'t Die, The Carrie Diaries, '),
(2605345, '2019-08-27 18:15:55', NULL, 'Gemma Arterton', 'https://m.media-amazon.com/images/M/MV5BOTAwNTMwMzE5OF5BMl5BanBnXkFtZTgwMjYwNzI2MjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2605345/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-2-2, February 2, 1986, Gravesend, Kent, England, UK', 'Принц Персii: Пiски часу, Нова ера Z, Битва титанiв, 007: Квант милосердя, '),
(2652095, '2019-08-27 18:14:29', NULL, 'Laura Haddock', 'https://m.media-amazon.com/images/M/MV5BMTcyNzMxNjE3Nl5BMl5BanBnXkFtZTcwODM4MzYzOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2652095/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1985-8-21, August 21, 1985, England, UK', 'Вартовi Галактики, Трансформери: Останнiй лицар, Вартовi Галактики 2, Переростки, '),
(2676147, '2019-08-27 18:13:57', NULL, 'Jonathan Groff', 'https://m.media-amazon.com/images/M/MV5BMTUzMDM1NzkxN15BMl5BanBnXkFtZTgwOTg0MzMwNDI@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2676147/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1985-3-26, March 26, 1985, Lancaster, Pennsylvania, USA', 'Крижане серце, Мисливець на розум, Looking, Taking Woodstock, '),
(2794962, '2019-08-27 18:16:24', NULL, 'Hailee Steinfeld', 'https://m.media-amazon.com/images/M/MV5BMTY1NjAwODIzOV5BMl5BanBnXkFtZTgwNjkwNDk3NTE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2794962/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1996-12-11, December 11, 1996, Tarzana, Los Angeles, California, USA', 'Справжня мужнiсть, Майже сiмнадцять, Бамблбi, Iдеальний голос 2, '),
(2858875, '2019-08-27 18:15:15', NULL, 'Sydney Sweeney', 'https://m.media-amazon.com/images/M/MV5BODc2YWFkMmItMjBjYi00MWNjLTkyMzctNzkzNTRlOThkNzliXkEyXkFqcGdeQXVyNzM1NTU0NA@@._V1_UY317_CR20,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2858875/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', ', Washington, USA', 'Euphoria, Оповiдь служницi, Гострi предмети, Everything Sucks!, '),
(2933757, '2019-08-27 18:16:33', NULL, 'Gal Gadot', 'https://m.media-amazon.com/images/M/MV5BMjUzZTJmZDItODRjYS00ZGRhLTg2NWQtOGE0YjJhNWVlMjNjXkEyXkFqcGdeQXVyMTg4NDI0NDM@._V1_UY317_CR51,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm2933757/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1985-4-30, April 30, 1985, Rosh Ha\'ayin, Israel', 'Диво-Жiнка, Бетмен проти Супермена: На зорi справедливостi, Форсаж 7, Встигнути за Джонсами, '),
(3034501, '2019-08-27 18:16:30', NULL, 'Natalia Dyer', 'https://m.media-amazon.com/images/M/MV5BOTIxMzc4NjI5NF5BMl5BanBnXkFtZTgwNjQ0NTUzNjM@._V1_UY317_CR131,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3034501/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Дивнi дива, Оксамитова бензопилка, I Believe in Unicorns, Hannah Montana: The Movie, '),
(3034977, '2019-08-27 18:14:06', NULL, 'Samara Weaving', 'https://m.media-amazon.com/images/M/MV5BMTU1Njc2NTc3OV5BMl5BanBnXkFtZTgwMzUyNjU5NDM@._V1_UY317_CR131,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3034977/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1992-2-23, February 23, 1992, Adelaide, South Australia, Australia', 'Три бiлборди пiд Еббiнгом, Мiссурi, Mayhem, The Babysitter, Гра в хованки, '),
(3053338, '2019-08-27 18:13:53', NULL, 'Margot Robbie', 'https://m.media-amazon.com/images/M/MV5BMTgxNDcwMzU2Nl5BMl5BanBnXkFtZTcwNDc4NzkzOQ@@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3053338/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1990-7-2, July 2, 1990, Dalby, Queensland, Australia', 'Загiн самогубцiв, Вовк з Уолл-стрiт, Я, Тоня, Фокус, '),
(3154303, '2019-08-27 18:16:35', NULL, 'Timothée Chalamet', 'https://m.media-amazon.com/images/M/MV5BOWU1Nzg0M2ItYjEzMi00ODliLThkODAtNGEyYzRkZTBmMmEzXkEyXkFqcGdeQXVyNDk2Mzk2NDg@._V1_UY317_CR13,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3154303/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1995-12-27, December 27, 1995, New York City, New York, USA', 'Call Me by Your Name, Ледi Бьорд, Гарний хлопчик, Iнтeрстеллар, ');
INSERT INTO `actors` (`id`, `created_at`, `updated_at`, `name`, `photo_link`, `bio`, `born`, `films`) VALUES
(3255459, '2019-08-27 18:17:15', NULL, 'Jillian Bell', 'https://m.media-amazon.com/images/M/MV5BMTgxMjgxOTMzN15BMl5BanBnXkFtZTgwNDQ5MzM4NjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3255459/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1984-4-25, April 25, 1984, Las Vegas, Nevada, USA', 'Мачо i Ботан 2, Розваги дорослих дiвчат, Новорiчний корпоратив, Вроджена вада, '),
(3480246, '2019-08-27 18:16:41', NULL, 'Ella Purnell', 'https://m.media-amazon.com/images/M/MV5BMWE1NGM4OTQtMzZiNC00NmU5LWJlNWQtZTk5ZjQ0ZTU5OTM1XkEyXkFqcGdeQXVyMjA5OTY5Mjc@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3480246/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1996-9-17, September 17, 1996, London, England, UK', 'Miss Peregrine\'s Home for Peculiar Children, Не вiдпускай мене, Пипець 2, Wildlike, '),
(3512758, '2019-08-27 18:16:22', NULL, 'Sarah Snook', 'https://m.media-amazon.com/images/M/MV5BNDQxYjA0ZWYtNjU3Yi00NTRlLWJhOTUtZTFhYjM2OTVjYmFlXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR4,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3512758/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1987-7-28, July 28, 1987, Adelaide, South Australia, Australia', 'Призначення, Стiв Джобс, Кравчиня. Помста вiд кутюр, Спляча красуня, '),
(3592338, '2019-08-27 18:15:53', NULL, 'Emilia Clarke', 'https://m.media-amazon.com/images/M/MV5BNjg3OTg4MDczMl5BMl5BanBnXkFtZTgwODc0NzUwNjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3592338/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1986-10-23, October 23, 1986, London, England, UK', 'Гра Престолiв, Термiнатор: Генезис, До зустрiчi з тобою, Соло. Зорянi вiйни. Iсторiя, '),
(3918035, '2019-08-27 18:14:27', NULL, 'Zendaya', 'https://m.media-amazon.com/images/M/MV5BMjAxZTk4NDAtYjI3Mi00OTk3LTg0NDEtNWFlNzE5NDM5MWM1XkEyXkFqcGdeQXVyOTI3MjYwOQ@@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3918035/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1996-9-1, September 1, 1996, Oakland, California, USA', 'Найвеличнiший шоумен, Людина-павук: Повернення додому, Людина-павук: Далеко вiд дому, K.C. Undercover, '),
(3920288, '2019-08-27 18:15:09', NULL, 'Taissa Farmiga', 'https://m.media-amazon.com/images/M/MV5BNzZlN2IyMjMtNTMzZi00NGY2LTkxN2QtNzJhZDAxMjRmY2Y3XkEyXkFqcGdeQXVyNDMxNTQ4ODY@._V1_UY317_CR131,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3920288/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1994-8-17, August 17, 1994, Readington, New Jersey, USA', 'Останнi дiвчата, Екстрасенс 2: Лабiринти розуму, 6 Years, Елiтне суспiльство, '),
(3929195, '2019-08-27 18:13:51', NULL, 'Erin Moriarty', 'https://m.media-amazon.com/images/M/MV5BMTUxNTM4OTgwN15BMl5BanBnXkFtZTcwODMzOTQ2OQ@@._V1_UY317_CR15,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3929195/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1994-6-24, June 24, 1994, New York City, New York, USA', 'Blood Father, Капiтан Фантастiк, Сусiди на стрьомi, The Kings of Summer, '),
(3948952, '2019-08-27 18:14:16', NULL, 'Vanessa Kirby', 'https://m.media-amazon.com/images/M/MV5BYzUzNjkwMjMtODRiNi00ZTliLWE3Y2ItMDJmZmFmNjg1YTMyXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR1,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3948952/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Корона, Mission: Impossible - Fallout, Коханий з майбутнього, '),
(3967796, '2019-08-27 18:15:07', NULL, 'Oliver Cooper', 'https://m.media-amazon.com/images/M/MV5BNjBiZDYyN2EtOGE3YS00ZjhjLWJlYTAtNTNmMGM0YzY0M2Q4XkEyXkFqcGdeQXVyNTUyNTQxNDc@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm3967796/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Проект X: Дорвались-вiдiрвались, Californication, Red Oaks, Мисливець на розум, '),
(4023073, '2019-08-27 18:14:34', NULL, 'Rosa Salazar', 'https://m.media-amazon.com/images/M/MV5BM2FkNDAwMDItMWQwNy00YzE5LWJiM2EtZmNhZTZjZDk1YmJlXkEyXkFqcGdeQXVyMjQwMTcxMzA@._V1_UY317_CR12,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4023073/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1985-7-16, July 16, 1985', 'Алiта: Бойовий ангел, Той, що бiжить лабiринтом: Випробування вогнем, Той, що бiжить лабiринтом: Лiки вiд смертi, Пташиний короб, '),
(4043618, '2019-08-27 18:14:31', NULL, 'Tom Holland', 'https://m.media-amazon.com/images/M/MV5BNTAzMzA3NjQwOF5BMl5BanBnXkFtZTgwMDUzODQ5MTI@._V1_UY317_CR23,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4043618/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1996-6-1, June 1, 1996, Kingston upon Thames, England, UK', 'Людина-павук: Повернення додому, Людина-павук: Далеко вiд дому, Неможливе, Перший месник: Протистояння, '),
(4141252, '2019-08-27 18:15:46', NULL, 'Lily James', 'https://m.media-amazon.com/images/M/MV5BMTgxMjM2NTAyMV5BMl5BanBnXkFtZTgwOTU4NjU2NDE@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4141252/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1989-4-5, April 5, 1989, Esher, Surrey, England, UK', 'Попелюшка, Гордiсть i упередження i зомбi, На драйвi, Мамма Мiа! 2, '),
(4223882, '2019-08-27 18:14:30', NULL, 'Dacre Montgomery', 'https://m.media-amazon.com/images/M/MV5BZGRiNGRjNGEtZWM0ZC00NzUwLTgyNGUtMzIzZTBlYjgwMzRmXkEyXkFqcGdeQXVyMjQ0NDA5NDM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4223882/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1994-11-22, November 22, 1994, Perth, Australia', 'Дивнi дива, Saban\'s Могутнi рейнджери, Better Watch Out, Пiслявесiльний розгром, '),
(4305463, '2019-08-27 18:14:35', NULL, 'Naomi Scott', 'https://m.media-amazon.com/images/M/MV5BMzQ5YWRlYjktZDM5My00N2YwLTg4N2ItYmY2ZDQ4ZGYwMzBkXkEyXkFqcGdeQXVyNDU1NjUxOTc@._V1_UY317_CR27,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4305463/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1993-5-6, May 6, 1993, London, England, UK', 'Аладдiн, Saban\'s Могутнi рейнджери, The 33, Терра Нова, '),
(4425051, '2019-08-27 18:14:07', NULL, 'Jack Quaid', 'https://m.media-amazon.com/images/M/MV5BY2Y2MmIzOGEtNTgyYi00OWUyLTljNzEtYmFlOWU2MzFkZTg1XkEyXkFqcGdeQXVyMjYyNDg5NzY@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4425051/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1992-4-24, April 24, 1992, Los Angeles, California, USA', 'Голоднi iгри, Голоднi iгри: У вогнi, Удача Лохана, Ремпейдж, '),
(4874651, '2019-08-27 18:16:41', NULL, 'Dove Cameron', 'https://m.media-amazon.com/images/M/MV5BMTUzNDA3NTI2M15BMl5BanBnXkFtZTgwNDA2NDI1NDM@._V1_UY317_CR1,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4874651/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1996-1-15, January 15, 1996, Seattle, Washington, USA', 'Descendants, Hairspray Live!, '),
(4960279, '2019-08-27 18:13:56', NULL, 'Margaret Qualley', 'https://m.media-amazon.com/images/M/MV5BYWZmMDFlMDYtYzk3My00YTg1LTllZWUtYzY2Y2QyNjk2NTZmXkEyXkFqcGdeQXVyMzcxMTAwMDM@._V1_UY317_CR78,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm4960279/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1994-10-23, October 23, 1994, Montana, USA', 'Одного разу... в Голлiвудi, Fosse/Verdon, Kenzo World, Novitiate, '),
(5016878, '2019-08-27 18:15:29', NULL, 'Jacob Tremblay', 'https://m.media-amazon.com/images/M/MV5BOWJiOTg5YzQtOWIzNy00NTdkLWEzNmEtYWFkZmY1NTc2OTk5XkEyXkFqcGdeQXVyMzM0MDI2MTE@._V1_UY317_CR5,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm5016878/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '2006-10-5, October 5, 2006, Vancouver, British Columbia, Canada', 'Кiмната, Диво, Сомнiя, Хижак, '),
(5097044, '2019-08-27 18:14:19', NULL, 'Isabela Moner', 'https://m.media-amazon.com/images/M/MV5BMTY0MTg4MzQ2Ml5BMl5BanBnXkFtZTgwNzM1NjkwNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm5097044/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '2001-7-10, July 10, 2001, Cleveland, Ohio, USA', 'Трансформери: Останнiй лицар, Родина за хвилину, Sicario: Day of the Soldado, Дора i загублене мiсто, '),
(5473782, '2019-08-27 18:16:27', NULL, 'Taron Egerton', 'https://m.media-amazon.com/images/M/MV5BMTYzODU2OTI2Nl5BMl5BanBnXkFtZTgwMTUyMTAwMzE@._V1_UY317_CR7,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm5473782/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1989-11-10, November 10, 1989, Birkenhead, Cheshire, England, UK', 'Kingsman: Таемна служба, Рокетмен, Еддi \'Орел\', Kingsman: Золоте кiльце, '),
(5611121, '2019-08-27 18:14:08', NULL, 'Millie Bobby Brown', 'https://m.media-amazon.com/images/M/MV5BMjA5NzA0NzQzMF5BMl5BanBnXkFtZTgwMTQxNjUzNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm5611121/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '2004-2-19, February 19, 2004, Málaga, Andalucía, Spain', 'Дивнi дива, Годзiлла II: Король монстрiв, Морська полiцiя, Once Upon a Time in Wonderland, '),
(5866359, '2019-08-27 18:15:20', NULL, 'Cameron Britton', 'https://m.media-amazon.com/images/M/MV5BZjMyMTMxZjUtNjUxOC00ZDMzLWJlNzctMTUyYmJjZjBhZDY4XkEyXkFqcGdeQXVyNjk1MjYyNTA@._V1_UY317_CR9,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm5866359/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Мисливець на розум, Дiвчина у павутиннi, Stitchers, Академiя Амбрелла, '),
(6073955, '2019-08-27 18:15:50', NULL, 'Florence Pugh', 'https://m.media-amazon.com/images/M/MV5BNTk4YWEwOGEtMDBhZS00OTc0LThjZGQtMjU4YjZhM2Q1YjdlXkEyXkFqcGdeQXVyNTQ1OTQ0OTA@._V1_UY317_CR3,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm6073955/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1996-1-3, January 3, 1996, Oxford, Oxfordshire, England, UK', 'The Falling, Marcella, Lady Macbeth, Пасажир, '),
(6780145, '2019-08-27 18:16:40', NULL, 'JayR Tinaco', 'https://m.media-amazon.com/images/M/MV5BN2IzYjkyMGUtNjhjYS00NDY1LTk2M2ItNWU1MDM3MmNjN2RlXkEyXkFqcGdeQXVyMzc3ODkxNDU@._V1_UX214_CR0,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm6780145/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Another Life, Always Be My Maybe, Рейк, '),
(7232332, '2019-08-27 18:16:44', NULL, 'Karen Fukuhara', 'https://m.media-amazon.com/images/M/MV5BODI4NjUwMjQyOF5BMl5BanBnXkFtZTgwMzMwOTg0NjM@._V1_UY317_CR130,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm7232332/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '1992-2-10, February 10, 1992, Los Angeles County, California, USA', 'Загiн самогубцiв, Хлопаки, Stray, She-Ra and the Princesses of Power, '),
(9476408, '2019-08-27 18:17:22', NULL, 'Hunter Schafer', 'https://m.media-amazon.com/images/M/MV5BMzFjYjM1N2QtMjQxZS00ZjVmLWIxNzgtYzhlNGIwOWI0NGU2XkEyXkFqcGdeQXVyMTAwNjA0Njgy._V1_UY317_CR5,0,214,317_AL_.jpg', '<a href=\"https://www.imdb.com/name/nm9476408/bio?ref_=nm_ov_bio_sm\">See full bio...</a>', '&mdash;', 'Euphoria, Ports1961: Spring/Summer 2019 at London Fashion Week, Coach: Spring/Summer 2019 at NYFW, Rick Owens: Spring/Summer 2019 at Paris Fashion Week, ');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(57, '2014_10_12_000000_create_users_table', 1),
(58, '2014_10_12_100000_create_password_resets_table', 1),
(59, '2019_08_22_180701_create_actors_table', 1),
(60, '2019_08_26_190558_create_parser_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `parser`
--

CREATE TABLE `parser` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_parsed_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `last_parsed_actor_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `parser`
--

INSERT INTO `parser` (`id`, `created_at`, `updated_at`, `last_parsed_url`, `last_parsed_actor_group`) VALUES
(1, NULL, NULL, 'https://www.imdb.com/search/name/?gender=male,female&start=1&ref_=rlm', 51),
(2, NULL, NULL, 'https://www.imdb.com/search/name/?gender=male,female&start=51&ref_=rlm', 101),
(3, NULL, NULL, 'https://www.imdb.com/search/name/?gender=male,female&start=101&ref_=rlm', 151);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `parser`
--
ALTER TABLE `parser`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9476409;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `parser`
--
ALTER TABLE `parser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
