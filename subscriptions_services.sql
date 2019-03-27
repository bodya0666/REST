-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 27 2019 г., 10:02
-- Версия сервера: 5.7.23
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `subscriptions_services`
--

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`id`, `timestamp`, `message`) VALUES
(132, 1553383640, 'new subscription'),
(133, 1553383640, 'new request'),
(134, 1553383705, 'Subscription update'),
(135, 1553383705, 'new request'),
(136, 1553383821, 'Subscription update'),
(137, 1553383821, 'new request'),
(138, 1553383889, 'new request'),
(139, 1553385602, 'subscription update'),
(140, 1553385602, 'new request'),
(141, 1553385690, 'subscription update'),
(142, 1553385690, 'new request'),
(143, 1553385757, 'Subscription update'),
(144, 1553385757, 'new request'),
(145, 1553386019, 'Subscription update'),
(146, 1553386019, 'new request'),
(147, 1553386085, 'subscription update'),
(148, 1553386085, 'new request'),
(149, 1553386243, 'new request'),
(150, 1553386250, 'Subscription update'),
(151, 1553386250, 'new request'),
(152, 1553386254, 'Subscription update'),
(153, 1553386254, 'new request'),
(154, 1553386368, 'new request'),
(155, 1553386374, 'Subscription update'),
(156, 1553386374, 'new request'),
(157, 1553386381, 'Subscription update'),
(158, 1553386381, 'new request'),
(159, 1553387948, 'subscription update'),
(160, 1553387948, 'new request'),
(161, 1553388247, 'subscription update'),
(162, 1553388248, 'new request'),
(163, 1553388712, 'subscription update'),
(164, 1553388712, 'new request'),
(165, 1553388993, 'subscription update'),
(166, 1553388993, 'new request'),
(167, 1553395226, 'new request'),
(168, 1553395882, 'subscription update'),
(169, 1553395882, 'new request'),
(170, 1553400227, 'new request'),
(171, 1553400982, 'new request'),
(172, 1553407592, 'new subscription'),
(173, 1553407592, 'new request'),
(174, 1553486762, 'new subscription'),
(175, 1553486762, 'new request'),
(176, 1553475358, 'Subscription update'),
(177, 1553475433, 'new request'),
(178, 1553475441, 'new request'),
(179, 1553476478, 'Subscription update'),
(180, 1553476478, 'new request'),
(181, 1553476523, 'Subscription update'),
(182, 1553476523, 'new request'),
(183, 1553476817, 'Subscription update'),
(184, 1553476817, 'new request'),
(185, 1553476943, 'Subscription update'),
(186, 1553476943, 'new request'),
(187, 1553477333, 'Subscription update'),
(188, 1553477333, 'new request'),
(189, 1553477336, 'new request'),
(190, 1553477337, 'new request'),
(191, 1553477337, 'new request'),
(192, 1553477337, 'new request'),
(193, 1553477337, 'new request'),
(194, 1553477337, 'new request'),
(195, 1553477337, 'new request'),
(196, 1553477338, 'new request'),
(197, 1553477377, 'new request'),
(198, 1553478500, 'Subscription update'),
(199, 1553478500, 'new request'),
(200, 1553478561, 'Subscription update'),
(201, 1553478561, 'new request'),
(202, 1553478624, 'Subscription update'),
(203, 1553478624, 'new request'),
(204, 1553478698, 'Subscription update'),
(205, 1553478698, 'new request'),
(206, 1553480460, 'Subscription update'),
(207, 1553480460, 'new request'),
(208, 1553480463, 'new request'),
(209, 1553480537, 'Subscription update'),
(210, 1553480537, 'new request'),
(211, 1553480547, 'Subscription update'),
(212, 1553480547, 'new request'),
(213, 1553480555, 'Subscription update'),
(214, 1553480555, 'new request'),
(215, 1553480845, 'new request'),
(216, 1553481462, 'new request'),
(217, 1553481871, 'Subscription update'),
(218, 1553481871, 'new request'),
(219, 1553481873, 'new request'),
(220, 1553483026, 'Subscription update'),
(221, 1553483026, 'new request'),
(222, 1553483158, 'Subscription update'),
(223, 1553483158, 'new request'),
(224, 1553483241, 'Subscription update'),
(225, 1553483241, 'new request'),
(226, 1553483262, 'new request'),
(227, 1553483424, 'Subscription update'),
(228, 1553483424, 'new request'),
(229, 1553483490, 'Subscription update'),
(230, 1553483490, 'new request'),
(231, 1553483493, 'new request'),
(232, 1553483497, 'Subscription update'),
(233, 1553483497, 'new request'),
(234, 1553483849, 'Subscription update'),
(235, 1553483849, 'new request'),
(236, 1553483851, 'new request'),
(237, 1553483900, 'Subscription update'),
(238, 1553483900, 'new request'),
(239, 1553483914, 'Subscription update'),
(240, 1553483915, 'new request'),
(241, 1553483917, 'new request'),
(242, 1553483918, 'Subscription update'),
(243, 1553483918, 'new request'),
(244, 1553483920, 'new request'),
(245, 1553484416, 'new request'),
(246, 1553484497, 'new request'),
(247, 1553484601, 'new request'),
(248, 1553484675, 'new request'),
(249, 1553485024, 'new subscription'),
(250, 1553485024, 'new request'),
(251, 1553485032, 'subscription update'),
(252, 1553485032, 'new request'),
(253, 1553485038, 'Subscription update'),
(254, 1553485038, 'new request'),
(255, 1553485041, 'new request'),
(256, 1553485144, 'new request'),
(257, 1553485158, 'new request'),
(258, 1553485204, 'Subscription update'),
(259, 1553485204, 'new request'),
(260, 1553485266, 'Subscription update'),
(261, 1553485266, 'new request'),
(262, 1553485274, 'Subscription update'),
(263, 1553485274, 'new request'),
(264, 1553485279, 'Subscription update'),
(265, 1553485279, 'new request'),
(266, 1553485287, 'Subscription update'),
(267, 1553485287, 'new request'),
(268, 1553485292, 'new request'),
(269, 1553485305, 'Subscription update'),
(270, 1553485306, 'new request'),
(271, 1553485318, 'new request'),
(272, 1553485325, 'Subscription update'),
(273, 1553485325, 'new request'),
(274, 1553485329, 'new request'),
(275, 1553485445, 'new request'),
(276, 1553485595, 'Subscription update'),
(277, 1553485595, 'new request'),
(278, 1553485644, 'new request'),
(279, 1553485646, 'new request'),
(280, 1553485657, 'new request'),
(281, 1553485661, 'new request'),
(282, 1553485665, 'new subscription'),
(283, 1553485665, 'new request'),
(284, 1553485677, 'new subscription'),
(285, 1553485677, 'new request'),
(286, 1553485682, 'subscription update'),
(287, 1553485682, 'new request'),
(288, 1553485687, 'Subscription update'),
(289, 1553485687, 'new request'),
(290, 1553485690, 'new request'),
(291, 1553485697, 'Subscription update'),
(292, 1553485697, 'new request'),
(293, 1553485702, 'new request'),
(294, 1553485707, 'Subscription update'),
(295, 1553485707, 'new request'),
(296, 1553485710, 'new request'),
(297, 1553485921, 'subscription update'),
(298, 1553485921, 'new request'),
(299, 1553485929, 'new request'),
(300, 1553486050, 'subscription update'),
(301, 1553486050, 'new request'),
(302, 1553486057, 'new request'),
(303, 1553556850, 'new request'),
(304, 1553557151, 'subscription update'),
(305, 1553557151, 'new request'),
(306, 1553557248, 'subscription update'),
(307, 1553557248, 'new request'),
(308, 1553557256, 'new request'),
(309, 1553557308, 'new request'),
(310, 1553557310, 'new request'),
(311, 1553557310, 'new request'),
(312, 1553557311, 'new request'),
(313, 1553557347, 'new request'),
(314, 1553557434, 'new request'),
(315, 1553558245, 'new subscription'),
(316, 1553558245, 'new request'),
(317, 1553558478, 'subscription update'),
(318, 1553558478, 'new request'),
(319, 1553558501, 'subscription update'),
(320, 1553558501, 'new request'),
(321, 1553558518, 'Subscription update'),
(322, 1553558518, 'new request'),
(323, 1553558542, 'new request'),
(324, 1553558629, 'Subscription update'),
(325, 1553558629, 'new request'),
(326, 1553558638, 'new request'),
(327, 1553558645, 'Subscription update'),
(328, 1553558645, 'new request'),
(329, 1553558655, 'Subscription update'),
(330, 1553558655, 'new request'),
(331, 1553558665, 'new request'),
(332, 1553558681, 'Subscription update'),
(333, 1553558681, 'new request'),
(334, 1553558689, 'new request'),
(335, 1553560181, 'new request'),
(336, 1553561597, 'new request'),
(337, 1553561602, 'new request'),
(338, 1553561622, 'new request'),
(339, 1553561633, 'new request'),
(340, 1553561645, 'new request'),
(341, 1553561699, 'new request'),
(342, 1553561757, 'new request'),
(343, 1553561774, 'new request'),
(344, 1553561863, 'new request'),
(345, 1553561881, 'new request'),
(346, 1553561881, 'new request'),
(347, 1553561894, 'new request'),
(348, 1553561894, 'new request'),
(349, 1553562021, 'new request'),
(350, 1553562021, 'new request'),
(351, 1553562101, 'new request'),
(352, 1553562101, 'new request'),
(353, 1553562370, 'new request'),
(354, 1553562370, 'new request'),
(355, 1553562370, 'new request'),
(356, 1553564264, 'new request'),
(357, 1553564282, 'new request'),
(358, 1553564290, 'new request'),
(359, 1553564290, 'new request'),
(360, 1553564466, 'new request'),
(361, 1553564968, 'new request'),
(362, 1553564987, 'new request'),
(363, 1553564996, 'new request'),
(364, 1553564996, 'new request'),
(365, 1553565147, 'Subscription update'),
(366, 1553565147, 'new request'),
(367, 1553565158, 'Subscription update'),
(368, 1553565158, 'new request'),
(369, 1553565711, 'new request'),
(370, 1553565711, 'new request'),
(371, 1553609221, 'new request'),
(372, 1553609227, 'new request'),
(373, 1553609232, 'Subscription update'),
(374, 1553609232, 'new request'),
(375, 1553609236, 'new request'),
(376, 1553609240, 'new request'),
(377, 1553609241, 'new request'),
(378, 1553609242, 'new request'),
(379, 1553609243, 'new request'),
(380, 1553609244, 'new request'),
(381, 1553609268, 'new request'),
(382, 1553609268, 'new request'),
(383, 1553609268, 'new request'),
(384, 1553609284, 'subscription update'),
(385, 1553609284, 'new request'),
(386, 1553609288, 'subscription update'),
(387, 1553609288, 'new request'),
(388, 1553609294, 'new request'),
(389, 1553609298, 'Subscription update'),
(390, 1553609299, 'new request'),
(391, 1553609303, 'Subscription update'),
(392, 1553609303, 'new request'),
(393, 1553609308, 'Subscription update'),
(394, 1553609308, 'new request'),
(395, 1553609311, 'new request'),
(396, 1553609311, 'new request'),
(397, 1553609311, 'new request'),
(398, 1553609336, 'subscription update'),
(399, 1553609336, 'new request'),
(400, 1553609343, 'new request'),
(401, 1553609343, 'new request'),
(402, 1553609343, 'new request'),
(403, 1553609406, 'subscription update'),
(404, 1553609406, 'new request'),
(405, 1553609412, 'new request'),
(406, 1553609412, 'new request'),
(407, 1553609412, 'new request'),
(408, 1553609526, 'subscription update'),
(409, 1553609526, 'new request'),
(410, 1553609535, 'new request'),
(411, 1553609535, 'new request'),
(412, 1553609535, 'new request'),
(413, 1553609832, 'subscription update'),
(414, 1553609832, 'new request'),
(415, 1553609852, 'subscription update'),
(416, 1553609852, 'new request'),
(417, 1553610629, 'subscription update'),
(418, 1553610629, 'new request'),
(419, 1553610635, 'new request'),
(420, 1553610635, 'new request'),
(421, 1553610635, 'new request'),
(422, 1553610721, 'Subscription update'),
(423, 1553610721, 'new request'),
(424, 1553610728, 'new request'),
(425, 1553610732, 'Subscription update'),
(426, 1553610732, 'new request'),
(427, 1553610737, 'new request'),
(428, 1553610737, 'new request'),
(429, 1553610738, 'new request'),
(430, 1553611382, 'new request'),
(431, 1553611382, 'new request'),
(432, 1553611386, 'new request'),
(433, 1553611386, 'new request'),
(434, 1553611387, 'subscription update'),
(435, 1553611387, 'new request'),
(436, 1553611552, 'new request'),
(437, 1553611563, 'Subscription update'),
(438, 1553611563, 'new request'),
(439, 1553611566, 'new request'),
(440, 1553611566, 'new request'),
(441, 1553611566, 'new request'),
(442, 1553611998, 'new request'),
(443, 1553611998, 'new request'),
(444, 1553612400, 'new request'),
(445, 1553612401, 'new request');

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190319122910', '2019-03-19 12:29:21'),
('20190319123331', '2019-03-19 12:33:35'),
('20190319124453', '2019-03-19 12:45:03'),
('20190319125750', '2019-03-19 12:58:13'),
('20190319130121', '2019-03-19 13:01:28'),
('20190319130249', '2019-03-19 13:02:56'),
('20190319145443', '2019-03-19 14:55:17'),
('20190321124856', '2019-03-21 12:49:08'),
('20190321125428', '2019-03-21 12:54:38'),
('20190321125532', '2019-03-21 12:55:38'),
('20190321141012', '2019-03-21 14:10:16'),
('20190321141115', '2019-03-21 14:11:21'),
('20190322191423', '2019-03-22 19:14:39');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `subscriptions_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exec_time` double NOT NULL,
  `operation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `subscriptions_id`, `timestamp`, `request`, `response`, `exec_time`, `operation_id`) VALUES
(61, 71, 1553388248, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.038563966751099, 5),
(62, 71, 1553388712, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.037577152252197, 5),
(63, 71, 1553388993, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 0.036922931671143, 5),
(64, 71, 1553395882, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"2.99\"}', '{\"response\":\"Success\"}', 0.038440942764282, 5),
(65, 71, 1553476478, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.024861812591553, 3),
(66, 71, 1553476523, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.021528005599976, 3),
(67, 71, 1553476817, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.019996881484985, 3),
(68, 71, 1553476943, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.03770899772644, 3),
(69, 71, 1553477333, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.03912091255188, 3),
(70, 71, 1553478500, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12, 71\"}', '{\"response\":\"Success\"}', 0.039731025695801, 3),
(71, 71, 1553478561, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12, 71\"}', '{\"response\":\"Success\"}', 0.018314123153687, 3),
(72, 71, 1553478624, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.019160032272339, 3),
(73, 71, 1553478698, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 0.020382165908813, 3),
(74, 71, 1553480460, '\"first\",\"12\"', '{\"response\":\"Success\"}', 0.022647142410278, 3),
(75, 71, 1553480537, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.018811941146851, 6),
(76, 71, 1553480547, '\"first\",\"12\"', '{\"response\":\"Success\"}', 0.038478136062622, 3),
(77, 71, 1553480555, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.047529935836792, 6),
(78, 71, 1553481871, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.039813995361328, 3),
(79, 71, 1553483026, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.037979125976562, 3),
(80, 71, 1553483158, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.037027835845947, 3),
(81, 71, 1553483241, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.01871395111084, 3),
(82, 71, 1553483424, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.017908096313477, 3),
(83, 71, 1553483490, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.018414974212646, 6),
(84, 71, 1553483497, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.017644882202148, 3),
(85, 71, 1553483849, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.021775960922241, 6),
(86, 71, 1553483900, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.037451982498169, 3),
(87, 71, 1553483914, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.020977020263672, 6),
(88, 71, 1553483918, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 0.014260053634644, 3),
(89, 73, 1553485032, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 0.037795066833496, 5),
(90, 73, 1553485038, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.01717209815979, 6),
(91, 73, 1553485204, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 0.036847829818726, 3),
(92, 73, 1553485266, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 0.036758184432983, 3),
(93, 73, 1553485274, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.037408113479614, 6),
(94, 73, 1553485279, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 0.03758716583252, 3),
(95, 73, 1553485287, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.019161939620972, 6),
(96, 73, 1553485305, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 0.018121957778931, 3),
(97, 73, 1553485325, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.039138078689575, 6),
(98, 73, 1553485595, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.038386106491089, 3),
(99, 76, 1553485682, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"23\"}', '{\"response\":\"Success\"}', 0.026206970214844, 5),
(100, 76, 1553485687, '{\"name\":\"first\"},{\"uid\":\"1111\"}', '{\"response\":\"Success\"}', 0.024631977081299, 6),
(101, 76, 1553485697, '{\"name\":\"first\"},{\"uid\":\"1111\"}', '{\"response\":\"Success\"}', 0.038671016693115, 3),
(102, 76, 1553485707, '{\"name\":\"first\"},{\"uid\":\"1111\"}', '{\"response\":\"Success\"}', 0.024492025375366, 6),
(103, 76, 1553485921, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"1\"}', '{\"response\":\"Success\"}', 0.038249015808105, 5),
(104, 76, 1553486050, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"23\"}', '{\"response\":\"Success\"}', 0.036466121673584, 5),
(105, 76, 1553557151, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.1287670135498, 5),
(106, 76, 1553557248, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.034740924835205, 5),
(107, 77, 1553558478, '{\"name\":\"first\"},{\"uid\":\"456\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 0.038093090057373, 5),
(108, 77, 1553558501, '{\"name\":\"first\"},{\"uid\":\"456\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 0.037517070770264, 5),
(109, 77, 1553558518, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 0.024619817733765, 6),
(110, 77, 1553558629, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 0.037221908569336, 3),
(111, 77, 1553558645, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 0.024564981460571, 6),
(112, 77, 1553558655, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Success\"}', 0.024909019470215, 3),
(113, 77, 1553558681, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 0.025670051574707, 6),
(114, 77, 1553565147, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Success\"}', 0.020762920379639, 3),
(115, 76, 1553565158, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"Success\"}', 0.01858115196228, 3),
(116, 73, 1553609232, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.026730060577393, 6),
(117, 73, 1553609284, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.039831161499023, 3),
(118, 73, 1553609288, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.025900840759277, 5),
(119, 73, 1553609299, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.025222063064575, 6),
(120, 73, 1553609303, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 0.02537202835083, 3),
(121, 73, 1553609308, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.024315118789673, 6),
(122, 73, 1553609336, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.03688907623291, 5),
(123, 73, 1553609406, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.036377906799316, 5),
(124, 73, 1553609526, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.039140939712524, 5),
(125, 73, 1553609832, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.039280891418457, 5),
(126, 73, 1553609852, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.037477016448975, 5),
(127, 73, 1553610629, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 0.039068937301636, 5),
(128, 73, 1553610721, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 0.03730297088623, 3),
(129, 73, 1553610732, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.025837898254395, 6),
(130, 73, 1553611387, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.0155029296875, 3),
(131, 73, 1553611563, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 0.01816201210022, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `operation`
--

INSERT INTO `operation` (`id`, `name`) VALUES
(1, 'subscription new'),
(2, 'subscription check'),
(3, 'subscription stop'),
(4, 'notification activation'),
(5, 'notification billing'),
(6, 'notification stop'),
(7, 'get user info');

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_status` int(11) NOT NULL,
  `exec_time` double NOT NULL,
  `operation_id` int(11) NOT NULL,
  `subscriptions_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `timestamp`, `request`, `response`, `http_status`, `exec_time`, `operation_id`, `subscriptions_id`) VALUES
(123, 1553383640, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.040969133377075, 1, 71),
(124, 1553383705, '\"first\"\"first\"\"2\"', '{\"response\":\"Success\"}', 200, 0.032149076461792, 3, 71),
(125, 1553383821, '\"first\"\"12\"', '{\"response\":\"Success\"}', 200, 0.045775890350342, 3, 71),
(126, 1553383889, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.035817861557007, 2, 71),
(127, 1553385602, '\"first\"\"first\"\"2\"', '{\"response\":\"Success\"}', 200, 0.051704883575439, 3, 71),
(128, 1553385690, '\"first\"\"12\"\"2\"', '{\"response\":\"Success\"}', 200, 0.047014951705933, 3, 71),
(129, 1553385757, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.046358823776245, 3, 71),
(130, 1553386019, '\"first\"\"12\"', '{\"response\":\"Success\"}', 200, 0.044465065002441, 3, 71),
(131, 1553386085, '{\"name\":\"first\"}{\"uid\":\"12\"}{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 200, 0.044087171554565, 3, 71),
(132, 1553386243, '{\"name\":\"first\"}{\"uid\":\"12\"}', '{\"response\":\"Operation failed\"}', 400, 0.035913944244385, 3, NULL),
(133, 1553386250, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.045617818832397, 3, 71),
(134, 1553386254, '{\"name\":\"first\"}{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.029457092285156, 3, 71),
(135, 1553386368, '[\"{\\\"name\\\":\\\"first\\\"}\",\"{\\\"uid\\\":\\\"12\\\"}\"]', '{\"response\":\"Operation failed\"}', 400, 0.03520679473877, 3, NULL),
(136, 1553386374, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.045366048812866, 3, 71),
(137, 1553386381, '[\"{\\\"name\\\":\\\"first\\\"}\",\"{\\\"uid\\\":\\\"12\\\"}\"]', '{\"response\":\"Success\"}', 200, 0.028844118118286, 3, 71),
(138, 1553387948, '{\"name\":\"first\"}{\"uid\":\"12\"}{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.045083999633789, 3, 71),
(139, 1553388248, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.045072078704834, 3, 71),
(140, 1553388712, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.044155120849609, 3, 71),
(141, 1553388993, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 200, 0.043184995651245, 3, 71),
(142, 1553395226, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.078258037567139, 2, 71),
(143, 1553395882, '{\"name\":\"first\"},{\"uid\":\"12\"},{\"amount\":\"2.99\"}', '{\"response\":\"Success\"}', 200, 0.0449538230896, 3, 71),
(144, 1553400227, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.037086009979248, 2, 71),
(145, 1553400982, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.034777164459229, 2, 71),
(146, 1553407592, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"11\"}', '{\"response\":\"Success\"}', 200, 0.042032957077026, 1, 72),
(147, 1553486762, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.1774640083313, 1, 73),
(148, 1553475433, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.028816938400269, 3, NULL),
(149, 1553475441, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.042201995849609, 3, NULL),
(150, 1553476478, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.031810998916626, 3, 71),
(151, 1553476523, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.030457019805908, 3, 71),
(152, 1553476817, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.026493072509766, 3, 71),
(153, 1553476943, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.044462919235229, 3, 71),
(154, 1553477333, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.046958923339844, 3, 71),
(155, 1553477336, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.023581027984619, 3, NULL),
(156, 1553477337, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.013164043426514, 3, NULL),
(157, 1553477337, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.013105154037476, 3, NULL),
(158, 1553477337, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.013505935668945, 3, NULL),
(159, 1553477337, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.012261867523193, 3, NULL),
(160, 1553477337, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.012342214584351, 3, NULL),
(161, 1553477337, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.014046907424927, 3, NULL),
(162, 1553477338, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.01350212097168, 3, NULL),
(163, 1553477377, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.037919044494629, 3, NULL),
(164, 1553478500, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12, 71\"}', '{\"response\":\"Success\"}', 200, 0.046548128128052, 3, 71),
(165, 1553478561, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12, 71\"}', '{\"response\":\"Success\"}', 200, 0.025264978408813, 3, 71),
(166, 1553478624, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.026281118392944, 3, 71),
(167, 1553478698, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.027911186218262, 3, 71),
(168, 1553480460, '\"first\",\"12\"', '{\"response\":\"Success\"}', 200, 0.02978515625, 3, 71),
(169, 1553480463, '\"first\",\"12\"', '{\"response\":\"Operation failed\"}', 200, 0.017305850982666, 3, NULL),
(170, 1553480537, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.026709794998169, 3, 71),
(171, 1553480547, '\"first\",\"12\"', '{\"response\":\"Success\"}', 200, 0.044737100601196, 3, 71),
(172, 1553480555, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.05510687828064, 3, 71),
(173, 1553480845, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.015796184539795, 2, 71),
(174, 1553481462, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.034117937088013, 2, 71),
(175, 1553481871, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.048020124435425, 3, 71),
(176, 1553481873, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.014379978179932, 3, NULL),
(177, 1553483026, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.044918060302734, 3, 71),
(178, 1553483158, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.043878793716431, 3, 71),
(179, 1553483241, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.02698802947998, 3, 71),
(180, 1553483262, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.036691188812256, 3, NULL),
(181, 1553483424, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.024528026580811, 3, 71),
(182, 1553483490, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.025264978408813, 3, 71),
(183, 1553483493, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.014084815979004, 2, 71),
(184, 1553483497, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.024811983108521, 3, 71),
(185, 1553483849, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.02842903137207, 3, 71),
(186, 1553483851, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.014601230621338, 2, 71),
(187, 1553483900, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.043059825897217, 3, 71),
(188, 1553483915, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.027589082717896, 3, 71),
(189, 1553483917, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"success\"}', 200, 0.014787912368774, 2, 71),
(190, 1553483918, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Success\"}', 200, 0.01738715171814, 3, 71),
(191, 1553483920, '{\"name\":\"first\"},{\"uid\":\"12\"}', '{\"response\":\"Operation failed\"}', 200, 0.014074087142944, 3, NULL),
(192, 1553484416, 'name,id', '{\"response\":\"Operation failed\"}', 200, 0.035202980041504, 3, NULL),
(193, 1553484497, 'name,id', '{\"response\":\"Operation failed\"}', 400, 0.036062002182007, 3, NULL),
(194, 1553484601, 'name,id,23', '{\"response\":\"Operation failed\"}', 400, 0.015182018280029, 3, NULL),
(195, 1553484675, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"12\"}', '{\"response\":\"User id don\'t find\"}', 400, 0.035372018814087, 2, NULL),
(196, 1553485024, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"84\"}', '{\"response\":\"Success\"}', 200, 0.022066116333008, 1, 74),
(197, 1553485032, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 200, 0.044543027877808, 3, 73),
(198, 1553485038, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.024518013000488, 3, 73),
(199, 1553485041, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"success\"}', 200, 0.017868041992188, 2, 73),
(200, 1553485144, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"success\"}', 200, 0.033802032470703, 2, 73),
(201, 1553485158, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Operation failed\"}', 400, 0.016117811203003, 3, NULL),
(202, 1553485204, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.044589996337891, 3, 73),
(203, 1553485266, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.043826103210449, 3, 73),
(204, 1553485274, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.043728113174438, 3, 73),
(205, 1553485279, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.04438304901123, 3, 73),
(206, 1553485287, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.026027917861938, 3, 73),
(207, 1553485292, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"success\"}', 200, 0.015954971313477, 2, 73),
(208, 1553485306, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.024933099746704, 3, 73),
(209, 1553485318, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Operation failed\"}', 200, 0.015109062194824, 3, NULL),
(210, 1553485325, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.046404123306274, 3, 73),
(211, 1553485329, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"success\"}', 200, 0.014811992645264, 2, 73),
(212, 1553485445, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"success\"}', 200, 0.035535097122192, 2, 73),
(213, 1553485595, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.045390129089355, 3, 73),
(214, 1553485644, 'name,id,23', '{\"response\":\"Operation failed\"}', 400, 0.035152912139893, 3, NULL),
(215, 1553485646, 'name,id,23', '{\"response\":\"Operation failed\"}', 400, 0.014717817306519, 3, NULL),
(216, 1553485657, '{\"name\":\"first\"},{\"uid\":null}', '{\"response\":\"Operation failed\"}', 200, 0.036239862442017, 3, NULL),
(217, 1553485661, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"11\"}', '{\"response\":\"Operation failed\"}', 400, 0.025104999542236, 1, NULL),
(218, 1553485665, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1134\"}', '{\"response\":\"Success\"}', 200, 0.027225017547607, 1, 75),
(219, 1553485677, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"Success\"}', 200, 0.027520895004272, 1, 76),
(220, 1553485682, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"23\"}', '{\"response\":\"Success\"}', 200, 0.031704902648926, 3, 76),
(221, 1553485687, '{\"name\":\"first\"},{\"uid\":\"1111\"}', '{\"response\":\"Success\"}', 200, 0.028690099716187, 3, 76),
(222, 1553485690, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"success\"}', 200, 0.022530794143677, 2, 76),
(223, 1553485697, '{\"name\":\"first\"},{\"uid\":\"1111\"}', '{\"response\":\"Success\"}', 200, 0.045455932617188, 3, 76),
(224, 1553485702, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"Operation failed\"}', 200, 0.023822069168091, 3, NULL),
(225, 1553485707, '{\"name\":\"first\"},{\"uid\":\"1111\"}', '{\"response\":\"Success\"}', 200, 0.028489112854004, 3, 76),
(226, 1553485710, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"success\"}', 200, 0.024072885513306, 2, 76),
(227, 1553485921, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"1\"}', '{\"response\":\"Success\"}', 200, 0.044790029525757, 3, 76),
(228, 1553485929, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"success\"}', 200, 0.023955821990967, 2, 76),
(229, 1553486050, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"23\"}', '{\"response\":\"Success\"}', 200, 0.042486906051636, 3, 76),
(230, 1553486057, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"success\"}', 200, 0.0364670753479, 2, 76),
(231, 1553556850, '{name},{uid},{amount}', '{\"response\":\"Operation failed\"}', 400, 0.25611805915833, 3, NULL),
(232, 1553557151, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.18792009353638, 5, 76),
(233, 1553557248, '{\"name\":\"first\"},{\"uid\":\"1111\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.041656970977783, 5, 76),
(234, 1553557256, '{\"name\":\"first\"},{\"uid\":\"te\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.023427963256836, 5, NULL),
(235, 1553557308, '{\"name\":\"first\"},{\"uid\":\"te\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.038075923919678, 5, NULL),
(236, 1553557310, '{\"name\":\"first\"},{\"uid\":\"te\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.012656927108765, 5, NULL),
(237, 1553557310, '{\"name\":\"first\"},{\"uid\":\"te\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.013691186904907, 5, NULL),
(238, 1553557311, '{\"name\":\"first\"},{\"uid\":\"te\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.040666103363037, 5, NULL),
(239, 1553557347, '{\"name\":\"first\"},{\"uid\":\"uid\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.025596141815186, 5, NULL),
(240, 1553557434, '{\"name\":\"first\"},{\"das\":\"uid\"},{\"amount\":\"24\"}', '{\"response\":\"Operation failed\"}', 400, 0.035041093826294, 5, NULL),
(241, 1553558245, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.041018009185791, 1, 77),
(242, 1553558478, '{\"name\":\"first\"},{\"uid\":\"456\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 200, 0.045666933059692, 5, 77),
(243, 1553558501, '{\"name\":\"first\"},{\"uid\":\"456\"},{\"amount\":\"2\"}', '{\"response\":\"Success\"}', 200, 0.044452905654907, 5, 77),
(244, 1553558518, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.028978824615479, 3, 77),
(245, 1553558542, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"success\"}', 200, 0.02348804473877, 2, 77),
(246, 1553558629, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.043860912322998, 3, 77),
(247, 1553558638, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Operation failed\"}', 200, 0.023607015609741, 3, NULL),
(248, 1553558645, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.029186010360718, 3, 77),
(249, 1553558655, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.029625177383423, 3, 77),
(250, 1553558665, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Operation failed\"}', 400, 0.023279190063477, 2, NULL),
(251, 1553558681, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.030715942382812, 3, 77),
(252, 1553558689, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"success\"}', 200, 0.021916151046753, 2, 77),
(253, 1553560181, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"success\"}', 200, 0.10256695747375, 2, 77),
(254, 1553561597, 'billing', '{\"billing\":[{\"amount\":\"2.99\",\"time\":\"2019-03-24 04:51:22\"},{\"amount\":\"2\",\"time\":\"2019-03-24 02:56:33\"},{\"amount\":\"24\",\"time\":\"2019-03-24 02:51:52\"},{\"amount\":\"24\",\"time\":\"2019-03-24 02:44:08\"}]}', 200, 1553388248, 5, 71),
(255, 1553561602, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(256, 1553561622, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(257, 1553561633, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(258, 1553561645, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(259, 1553561699, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(260, 1553561757, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(261, 1553561774, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 1553558478, 5, 77),
(262, 1553561863, 'date_end', '{\"date_end\":1627570572}', 200, 0.025428056716919, 5, 71),
(263, 1553561881, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.019168853759766, 5, 77),
(264, 1553561881, 'date_end', '{\"date_end\":1555282898}', 200, 0.010448932647705, 5, 77),
(265, 1553561894, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.019027948379517, 5, 77),
(266, 1553561894, 'date_end', '{\"date_end\":1555282898}', 200, 0.011132001876831, 5, 77),
(267, 1553562021, 'billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.019179105758667, 7, 77),
(268, 1553562021, 'date_end', '{\"date_end\":1555282898}', 200, 0.010454893112183, 7, 77),
(269, 1553562101, '\"456\",billing', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.018062114715576, 7, 77),
(270, 1553562101, '\"456\",date_end', '{\"date_end\":1555282898}', 200, 0.011745929718018, 7, 77),
(271, 1553562370, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"success\"}', 200, 0.015361070632935, 2, 77),
(272, 1553562370, '\"456\",\"billing\"', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.012575149536133, 7, 77),
(273, 1553562370, '\"456\",\"date_end\"', '{\"date_end\":1555282898}', 200, 0.0085270404815674, 7, 77),
(274, 1553564264, '{\"uid\":\"456\"},\"date_end\"', '{\"date_end\":1555282898}', 200, 0.019464015960693, 7, 77),
(275, 1553564282, '{\"uid\":\"456\"},\"date_end\"', '{\"date_end\":1555282898}', 200, 0.017397165298462, 7, 77),
(276, 1553564290, '{\"uid\":\"456\"},\"billing\"', '{\"billing\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.020411968231201, 7, 77),
(277, 1553564290, '{\"uid\":\"456\"},\"date_end\"', '{\"date_end\":1555282898}', 200, 0.011096000671387, 7, 77),
(278, 1553564466, '{\"uid\":\"456\"},\"date_end\"', '{\"date_end\":1555282898}', 200, 0.017534017562866, 7, 77),
(279, 1553564968, '{\"uid\":\"23424\"},\"date_end\"', '{\"response\":\"Operation failed\"}', 200, 0.013990163803101, 7, NULL),
(280, 1553564987, '{\"uid\":\"23424\"},\"date_end\"', '{\"response\":\"Operation failed\"}', 200, 0.013788938522339, 7, NULL),
(281, 1553564996, '{\"uid\":\"456\"},\"billing\"', '{\"response\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.018719911575317, 7, 77),
(282, 1553564996, '{\"uid\":\"456\"},\"date_end\"', '{\"response\":1555282898}', 200, 0.0098052024841309, 7, 77),
(283, 1553565147, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"456\"}', '{\"response\":\"Success\"}', 200, 0.028220891952515, 3, 77),
(284, 1553565158, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"1111\"}', '{\"response\":\"Success\"}', 200, 0.025811195373535, 3, 76),
(285, 1553608911, '{\"uid\":\"456\"},\"billing\"', '{\"response\":[{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:41\"},{\"amount\":\"2\",\"time\":\"2019-03-26 02:01:18\"}]}', 200, 0.020662069320679, 7, 77),
(286, 1553608911, '{\"uid\":\"456\"},\"date_end\"', '{\"response\":1555282898}', 200, 0.0097999572753906, 7, 77),
(287, 1553609221, '{\"name\":\"first\"},{\"uid\":\"456\"}', '{\"response\":\"Operation failed\"}', 200, 0.037035942077637, 3, NULL),
(288, 1553609227, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Operation failed\"}', 400, 0.034746170043945, 2, NULL),
(289, 1553609232, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.033029079437256, 3, 73),
(290, 1553609236, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.021755933761597, 2, 73),
(291, 1553609240, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.022485971450806, 2, 73),
(292, 1553609241, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.012853860855103, 2, 73),
(293, 1553609242, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.013044118881226, 2, 73),
(294, 1553609243, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.022552013397217, 2, 73),
(295, 1553609244, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.012516021728516, 2, 73),
(296, 1553609268, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.023177862167358, 2, 73),
(297, 1553609268, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.012462854385376, 7, 73),
(298, 1553609268, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1556053200}', 200, 0.01020884513855, 7, 73),
(299, 1553609284, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.046558141708374, 3, 73),
(300, 1553609288, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.030566930770874, 5, 73),
(301, 1553609294, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Operation failed\"}', 200, 0.022494077682495, 3, NULL),
(302, 1553609299, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.029173135757446, 3, 73),
(303, 1553609303, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.029220819473267, 3, 73),
(304, 1553609308, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.028182029724121, 3, 73),
(305, 1553609311, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.023164033889771, 2, 73),
(306, 1553609311, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.012181997299194, 7, 73),
(307, 1553609311, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1556053440}', 200, 0.0094599723815918, 7, 73),
(308, 1553609336, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.043544054031372, 5, 73),
(309, 1553609343, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.022958993911743, 2, 73),
(310, 1553609343, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.014675855636597, 7, 73),
(311, 1553609343, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1556053680}', 200, 0.0090389251708984, 7, 73),
(312, 1553609406, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.043054819107056, 5, 73),
(313, 1553609412, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.035571098327637, 2, 73),
(314, 1553609412, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.015534162521362, 7, 73),
(315, 1553609412, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1556053920}', 200, 0.0095000267028809, 7, 73),
(316, 1553609526, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.045643091201782, 5, 73),
(317, 1553609535, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.038068056106567, 2, 73),
(318, 1553609535, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.015018939971924, 7, 73),
(319, 1553609535, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1556054160}', 200, 0.009282112121582, 7, 73),
(320, 1553609832, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.045922994613647, 5, 73),
(321, 1553609852, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.044167041778564, 5, 73),
(322, 1553610629, '{\"name\":\"first\"},{\"uid\":\"8417\"},{\"amount\":\"24\"}', '{\"response\":\"Success\"}', 200, 0.045508861541748, 5, 73),
(323, 1553610635, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.035588979721069, 2, 73),
(324, 1553610635, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.02163290977478, 7, 73),
(325, 1553610635, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.0088198184967041, 7, 73),
(326, 1553610721, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.043975114822388, 3, 73),
(327, 1553610728, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Operation failed\"}', 400, 0.022725105285645, 2, NULL),
(328, 1553610732, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.029780864715576, 3, 73),
(329, 1553610737, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.02484917640686, 2, 73),
(330, 1553610737, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.011644840240479, 7, 73),
(331, 1553610738, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.0098309516906738, 7, 73),
(332, 1553611382, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.011843919754028, 7, 73),
(333, 1553611382, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.018676042556763, 7, 73),
(334, 1553611386, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.013592958450317, 7, 73),
(335, 1553611386, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.0093209743499756, 7, 73),
(336, 1553611387, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.017799854278564, 3, 73),
(337, 1553611552, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Operation failed\"}', 400, 0.015513896942139, 2, NULL),
(338, 1553611563, '{\"name\":\"first\"},{\"uid\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.02585506439209, 3, 73),
(339, 1553611566, '{\"token\":\"5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe\",\"user_id\":\"8417\"}', '{\"response\":\"Success\"}', 200, 0.015627145767212, 2, 73),
(340, 1553611566, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.012899875640869, 7, 73),
(341, 1553611566, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.0091731548309326, 7, 73),
(342, 1553611998, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.01320219039917, 7, 73),
(343, 1553611998, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.0088980197906494, 7, 73),
(344, 1553612400, '{\"uid\":\"8417\"},\"billing\"', '{\"response\":[{\"amount\":\"24\",\"time\":\"2019-03-26 16:30:29\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:32\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:17:12\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:12:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:10:06\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:56\"},{\"amount\":\"24\",\"time\":\"2019-03-26 16:08:08\"},{\"amount\":\"2\",\"time\":\"2019-03-25 05:37:12\"}]}', 200, 0.01471209526062, 7, 73),
(345, 1553612401, '{\"uid\":\"8417\"},\"date_end\"', '{\"response\":1576962160}', 200, 0.012316942214966, 7, 73);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `token`, `status`) VALUES
(1, 'first', '5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe', 1),
(2, 'second', 'TNyQWyhkWkx55NedoGds1g_gOvQSK5wd', 0),
(3, 'test', 'hh0Te-hn3jMEqLraoiRUBE3UASPPhRbX', 1),
(5, 'test1', 'rREK7P5VZjAkUj_I-mXPhA5WYJH1B1JW', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_start` int(11) NOT NULL,
  `date_end` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `billing` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `services_id`, `user_id`, `date_start`, `date_end`, `status`, `billing`) VALUES
(71, 1, 12, 1553383640, 1627570572, 1, 84.99),
(72, 1, 11, 1553407592, NULL, 0, 0),
(73, 1, 8417, 1553486762, 1576962160, 1, 170),
(74, 1, 84, 1553485024, NULL, 1, 0),
(75, 1, 1134, 1553485665, NULL, 0, 0),
(76, 1, 1111, 1553485677, 1618174800, 0, 95),
(77, 1, 456, 1553558245, 1555282898, 0, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6000B0D3688E3B5D` (`subscriptions_id`),
  ADD KEY `IDX_6000B0D344AC3583` (`operation_id`);

--
-- Индексы таблицы `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7B85D65144AC3583` (`operation_id`),
  ADD KEY `IDX_7B85D651688E3B5D` (`subscriptions_id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7332E1695F37A13B` (`token`),
  ADD UNIQUE KEY `UNIQ_7332E1695E237E06` (`name`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4778A01A76ED395` (`user_id`),
  ADD KEY `IDX_4778A01AEF5A6C1` (`services_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT для таблицы `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_6000B0D344AC3583` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`),
  ADD CONSTRAINT `FK_6000B0D3688E3B5D` FOREIGN KEY (`subscriptions_id`) REFERENCES `subscriptions` (`id`);

--
-- Ограничения внешнего ключа таблицы `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `FK_7B85D65144AC3583` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`),
  ADD CONSTRAINT `FK_7B85D651688E3B5D` FOREIGN KEY (`subscriptions_id`) REFERENCES `subscriptions` (`id`);

--
-- Ограничения внешнего ключа таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `FK_4778A01AEF5A6C1` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
