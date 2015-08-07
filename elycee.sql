-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 07 Août 2015 à 02:26
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `elycee`
--

-- --------------------------------------------------------

--
-- Structure de la table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `content_choice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` tinyint(1) NOT NULL,
  `point` double NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `fiche_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `choices`
--

INSERT INTO `choices` (`id`, `content_choice`, `response`, `point`, `question_id`, `fiche_id`) VALUES
(1, 'test', 1, 2, NULL, NULL),
(2, '<p>test 30</p>', 0, 0, 19, NULL),
(3, 'dsqdqs', 1, 10, 19, NULL),
(4, '<p>test60</p>', 1, 2, 20, NULL),
(5, 'test60', 0, 0, 20, 56),
(6, '<p>test90</p>', 0, 0, 22, NULL),
(7, 'test90', 1, 3, 22, NULL),
(8, 'test90', 0, 0, 22, NULL),
(9, '<p>test90</p>', 0, 0, 23, NULL),
(10, 'test90', 1, 2, 23, NULL),
(11, '<p>test100</p>', 0, 0, 24, NULL),
(12, 'test100', 1, 3, 24, NULL),
(13, '<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Souffl&eacute; brownie chocolate apple pie cotton candy liquorice caramels gingerbread marshmallow. Chupa chups drag&eacute;e bear claw marshmallow. Donut icing souffl&eacute;. Sweet gingerbread gingerbread sesame snaps chocolate croissant pie.</span></p>', 0, 0, 25, NULL),
(14, 'Soufflé brownie chocolate apple pie cotton candy liquorice caramels gingerbread marshmallow. Chupa chups dragée bear claw marshmallow. Donut icing soufflé. Sweet gingerbread gingerbread sesame snaps chocolate croissant pie.', 1, 2, 25, NULL),
(15, '<p>dfsfdsfd</p>', 0, 0, 26, NULL),
(16, 'dfsfdsfd', 1, 2, 26, NULL),
(17, '<p>qsdsqd</p>', 0, 0, 27, NULL),
(18, 'qsdqds', 1, 1, 27, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class_level` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `classes`
--

INSERT INTO `classes` (`id`, `class_level`) VALUES
(1, 'Terminale S'),
(2, 'première S'),
(3, 'Terminale S'),
(4, 'Terminale S'),
(5, 'Terminale S'),
(6, 'Terminale S'),
(7, 'Terminale S'),
(8, 'Terminale S'),
(9, 'Terminale S'),
(10, 'Terminale S'),
(11, 'Terminale S'),
(12, 'Terminale S'),
(13, 'Terminale S'),
(14, 'Terminale S'),
(15, 'Terminale S'),
(16, 'Terminale S'),
(17, 'Terminale S'),
(18, 'Terminale S'),
(19, 'Terminale S'),
(20, 'Terminale S'),
(21, 'Terminale S'),
(22, 'Terminale S'),
(26, 'Terminale S'),
(27, 'Terminale S'),
(28, 'Terminale S'),
(29, 'Terminale S'),
(30, 'Terminale S'),
(31, 'Terminale S'),
(32, 'Terminale S'),
(33, 'Terminale S'),
(34, 'Terminale S'),
(35, 'Terminale S'),
(36, 'Terminale S'),
(37, 'Terminale S'),
(38, 'Terminale S'),
(39, 'Terminale S'),
(40, 'Terminale S'),
(41, 'Terminale S'),
(42, 'Terminale S'),
(43, 'Terminale S'),
(44, 'Terminale S'),
(45, 'Terminale S');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `contents` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createAt` datetime NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `copie`
--

CREATE TABLE `copie` (
  `id` int(11) NOT NULL,
  `eleves_id` int(11) DEFAULT NULL,
  `choices_id` int(11) DEFAULT NULL,
  `reponse` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fiches`
--

CREATE TABLE `fiches` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `lvl_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fiches`
--

INSERT INTO `fiches` (`id`, `teacher_id`, `lvl_id`, `status_id`, `title`) VALUES
(21, 4, 1, 1, '<p>sdfsdf</p>'),
(22, 4, 1, 1, '<p>dfsdf</p>'),
(23, 4, 1, 1, '<p>dssd</p>'),
(24, 4, 1, 1, '<p>dssd</p>'),
(25, 4, 1, 1, '<p>rertet</p>'),
(26, 4, 1, 1, '<p>sdfsf</p>'),
(47, NULL, 22, 22, '<p>test22</p>'),
(48, NULL, 26, 26, '<p>test11</p>'),
(49, NULL, 27, 27, '<p>test11</p>'),
(50, NULL, 28, 28, '<p>test11</p>'),
(51, NULL, 29, 29, '<p>test22</p>'),
(52, NULL, 30, 30, '<p>toto</p>'),
(53, NULL, 31, 31, '<p>test22</p>'),
(54, NULL, 32, 32, '<p>test20</p>'),
(55, NULL, 33, 33, '<p>test 30</p>'),
(56, NULL, 34, 34, '<p>test60</p>'),
(57, NULL, 35, 35, '<p>test120</p>'),
(58, NULL, 36, 36, '<p>test60</p>'),
(59, NULL, 37, 37, '<p>test60</p>'),
(60, NULL, 38, 38, '<p>test60</p>'),
(61, NULL, 39, 39, '<p>test90</p>'),
(62, NULL, 40, 40, '<p>test90</p>'),
(63, NULL, 41, 41, '<p>test120</p>'),
(64, NULL, 42, 42, '<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Souffl&eacute; brownie chocolate apple pie cotton candy liquorice caramels gingerbread marshmallow. Chupa chups drag&eacute;e bear claw marshmallow. Donut icing souffl&eacute;. Sweet gingerbread gingerbread sesame snaps chocolate croissant pie.</span></p>'),
(65, NULL, 43, 1, '<p>tessdfkljsdlkfdjkls</p>'),
(66, NULL, 44, 44, '<p>dfsfdsfd</p>'),
(67, NULL, 45, 45, '<p>dffdsdffds</p>');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `lvl_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `lvl_id`) VALUES
(4, 'alexandre', 'alexandre', 'alexandre@ecole.com', 'alexandre@ecole.com', 1, '4simih0tz5kw0cggo4o8ko0ksokgow8', 'sacenIgHKmWcvpTsYxnT4si0jkiwn4IlJ62wrSXK4dpRVVRE9o4V4SR2WgOEE4XxS83negCsiAwKJzBYQpYKrQ==', '2015-08-07 01:46:52', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 0, NULL, NULL),
(22, 'Abel', 'abel', 'able@abel.com', 'able@abel.com', 1, 'qv8tccxkjmok40w0gwkwgks0s84ck4k', 'ZRx11ESV2+BiWQ7SHdkMlxLSNw14uqp0hmY8BuQqhhH5JYi68N8aU8LE8smixaTKRtzcNmPH+oe1YJ3FX/KqaA==', '2015-08-07 01:42:27', 0, 0, NULL, 'p8Kyefaa9wkcXwbLadEeBVkPB46uAPHIDhOYQG1yc8Q', '2015-08-03 13:12:19', 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(23, 'Al', 'al', 'al@al.com', 'al@al.com', 1, 'q1230a640hwk4w40ww8s04c0ccggswc', 'uSckL866YCAgW05D31ngowizwiXUwIH67NZUe8Sa64UzVGWWYfsq2e4p2calBwpsm+9d0ha5SV+sN/7OQvZfuQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(24, 'Alan', 'alan', 'alain@yahoo.biz', 'alain@yahoo.biz', 1, 'cuqnc0xgjsowsgcc4kskcggwckskc44', 'ks0NI93vkSQG2HDLwbLFZeJvVOsVUv1zJYiqxInxTB4GnzM2AMkY1R0sO4dUGyZGsAB3iG0pL3uKjq5Mgh/l+w==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(26, 'Arthur', 'arthur', 'arthur@arthur.com', 'arthur@arthur.com', 1, 'd4jfa540da0w8ggcgckwkwcw0c4kkwk', 'sHv7A+h2aihNAC9WLXb9SMGrFD8G01cockvyGiMYDQWxeDqHhvCSrCXEpzoi/TYkpQJQ7DD0+YtIYc3KFG0Bjw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(27, 'Carl', 'carl', 'carl@carl.com', 'carl@carl.com', 1, 'p7035yh50msck480g0gcc88sksskccc', 'GqdRhZCWQxmFIvwVj14EBPhlcHEfGlrMpEApqzpva3J3Gbi+1WxaVeuHPXNnj4GIVdLjcYuaO8gG7P03yQ7/rw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(28, 'Blaise', 'blaise', 'blaise@blaise.com', 'blaise@blaise.com', 1, 'idwa6vrls2gcscw4ccw4sogkwcwocww', 'JAm1C0TK3qZiWampGR60M8lrLRJEbNjvnToAVUyhO0cizEIvQVxEry2xQyszIzBQgD6KmBl0tXQLGeTuQWjDJw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(29, 'Isaac', 'isaac', 'isaac@isaac.com', 'isaac@isaac.com', 1, '1mongps2lef4w0sskw0gwo4kkk4cc8c', 'rNxEaABY498azbwJ1JemxXdSpkJQ/d31v/DbYUMkjOV9rqeEFa7jacrIHSJyizqxgwmS5O6aYq4Yw5y4mPdtyw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(30, 'Steve', 'steve', 'steve@steve.com', 'steve@steve.com', 1, '4putcfqgh1moo0gcocsckoc0wwcks88', '6IqUavlJ3bQYzWeOSb+dgGCAvDnbOpdAjzZZFbI0AvZHq8kiMWIrujiY1JL1WyNLnLTCS+uIMm/z6Dc6a7Ye0Q==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 1),
(31, 'Alfred', 'alfred', 'alfred@tatayoyo.com', 'alfred@tatayoyo.com', 1, 'adq6kd0kxb4kog8440go8ss84c4g4sw', 'QvzM9lOkazb8snrtu4MQNXn8cBTacCAWIqRe5hjr2SMp7ivBfuNRA4cUDmm2JHfwG+ZCFSAgJRay9MiDz3oZNQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(32, 'Brendan', 'brendan', 'brendan@brendan.com', 'brendan@brendan.com', 1, 'ch4bim3ahy8kwkcc88w80gkwccgo8k0', 'sbf67Q5imYNyvBhfLU75hvQFpcrG8ud3wkW1dbXLJsDU0qhBSX0ues5I5D8WMM4V3ycfdcixRpIOiD6UKddQ9A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(33, 'David', 'david', 'david@gcho.com', 'david@gcho.com', 1, '1gwgtwa3g39c84k8wkkgcowcgko08so', 'iJxz9GPROCfVKOK8gTOmGuYvrrs5jGYXBWhb7bc56P0nz+6RHF99WOuH/24FbtCR7NTWAxuhvAj4uhNI9PPPXw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(34, 'George', 'george', 'george@profonde.com', 'george@profonde.com', 1, 'fwco1ph20p44c404o0c004so4oossw', '3QNW8CCcD9YunYowRBAApZBysukwAHIPCy7HBqBTKJ1d1M0k3iYPf3NoPGqRSdKK2EI0faWR7qK4x54tDm/0mw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(35, 'Jim', 'jim', 'jim@launez.com', 'jim@launez.com', 1, '5pnjrobzpzc4w0wwogsk4g8gww40wc4', 'vI5JphO66OiqP0M9R66EBjpe1DyJUYDlZVsgByx5TUYSc17ku//IOMmxb6VxGFyH3aEvMFIZCIAPGLsbNVrp5A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(36, 'Leslie', 'leslie', 'leslie@unlivre.com', 'leslie@unlivre.com', 1, 'eutclv8julw80sossogksoow4wc8cg4', 'H6UtRWRPjaFZsB3NjeNIllZ+eWbVnc1FwAcMjVaBkap8Hfiv0P3Cb9T3itTWrvmgOMX8hW1cX+YHNuaIpbvtMg==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(37, 'Maria', 'maria', 'mari@monhomme.com', 'mari@monhomme.com', 1, 'n9aeoz818zk4k40o004kccwoo00c4w8', 'vb2HILS2vALBNm4lhgEwFeFpUK7sGz3XqM2iLSmOEE3sSJN60q3JVEkrl1Yk1LhS24yKrc/Ba/5Rzb3EytB+uQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:12:"ROLE8STUDENT";i:1;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(38, 'Rasmus', 'rasmus', 'rasmus@rasmus.com', 'rasmus@rasmus.com', 1, 'ff251c6knxcg8kc0kwg8g4008skg440', 'Umn8yB2CuHdlX7LhVDDAAY8nyqIjE0jO+xa16PLkBMe5vlGtfRnOrBBB4fVdY08u/WgvuFFCIaDl6skuzRut/A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2),
(39, 'Tim', 'tim', 'tim@authe.com', 'tim@authe.com', 1, 'v5hwij24sasgsk8000o48w48gkko8k', '4Fd3OBpKPiXHa0DiNQVPlZ7iSNz39tCT0wCu1NlWhBMRtbb8iY9gpC/H67dBuRnfj35fkyENryxw46oYI7SKIA==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `titre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `url_thumbnail` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `status_id`, `titre`, `abstract`, `content`, `date`, `url_thumbnail`) VALUES
(2, 4, 1, 'Basket : les physiciens découvrent la force de la marche aléatoire.', '<p class="content-title small-margin">En appliquant &agrave; des sports collectifs, tels que le basket, le mod&egrave;le math&eacute;matique de&nbsp;...</p>', '<p class="bodytext">La physique g&eacute;n&eacute;ralement, s&rsquo;attache &agrave; r&eacute;soudre des probl&egrave;mes fondamentaux. Elle cherche &agrave; d&eacute;couvrir de nouvelles&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-particule-elementaire-12442/">particules &eacute;l&eacute;mentaires</a>&nbsp;ou tente de d&eacute;crire les forces qui r&eacute;gissent notre univers. Mais parfois, la physique s&rsquo;int&eacute;resse &agrave; des questions plus&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/terre/infos/dico/d/structure-terre-terre-4725/">terre</a>&nbsp;&agrave; terre. Et c&rsquo;est dans cet &eacute;tat d&rsquo;esprit qu&rsquo;un groupe de physiciens am&eacute;ricains de l&rsquo;universit&eacute; du Colorado, de l&rsquo;universit&eacute; de Boston et du&nbsp;Santa Fe Institute&nbsp;a choisi d&rsquo;&eacute;tudier l&rsquo;&eacute;volution dans le temps des&nbsp;<a class="xt-&shy;click" title="In basketball, physics predicts how big a lead your team needs to win" href="http://news.sciencemag.org/physics/2015/06/basketball-physics-predicts-how-big-lead-your-team-needs-win" target="_blank">changements de leader</a>&nbsp;dans les&nbsp;<a class="xt-&shy;click" title="Le sport pr&eacute;serve notre cerveau de la vieillesse" href="http://www.futura-sciences.com/magazines/sante/infos/actu/d/sport-sport-preserve-notre-cerveau-vieillesse-55365/" target="_blank">sports</a>&nbsp;d&rsquo;&eacute;quipes. Dans le basket, en particulier, ils ont d&eacute;couvert que ces changements ob&eacute;issent aux lois de la&nbsp;<a class="xt-&shy;click" title="Math&eacute;matiques : Wendelin Werner, le seigneur des zigzags" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-mathematiques-wendelin-werner-seigneur-zigzags-9589/" target="_blank">marche al&eacute;atoire</a>.</p>\r\n<p class="bodytext">Imaginez un pion que l&rsquo;on peut faire glisser sur un &eacute;chiquier g&eacute;ant. &Agrave; chaque instant, le pion peut avancer, reculer, aller vers la droite ou aller vers la gauche, sans que son&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-mouvement-316/">mouvement</a>&nbsp;ne soit influenc&eacute; par les mouvements fait pr&eacute;c&eacute;demment. Le pion d&eacute;crit ce que les math&eacute;maticiens &ndash; et m&ecirc;me les physiciens et les &eacute;conomistes &ndash; appellent une marche&nbsp;<a class="xt-&shy;click" title="Un g&eacute;n&eacute;rateur quantique de nombres al&eacute;atoires avec un smartphone" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/cryptographie-quantique-generateur-quantique-nombres-aleatoires-smartphone-53784/" target="_blank">al&eacute;atoire</a>. Et on savait d&eacute;j&agrave; que les marches al&eacute;atoires servent de mod&egrave;les &agrave; bon nombre de ph&eacute;nom&egrave;nes physiques comme le<a class="xt-&shy;click" title="Einstein n''a pas toujours raison, comme le prouve le mouvement brownien" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-einstein-na-pas-toujours-raison-comme-prouve-mouvement-brownien-20049/" target="_blank">m</a><a class="xt-&shy;click" title="Einstein n''a pas toujours raison, comme le prouve le mouvement brownien" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-einstein-na-pas-toujours-raison-comme-prouve-mouvement-brownien-20049/" target="_blank">ouvement brownien</a>. Voil&agrave; qu&rsquo;on d&eacute;couvre aujourd&rsquo;hui qu&rsquo;elles peuvent aussi &eacute;clairer les matchs de basket !</p>\r\n<p class="fs-media"><img class=" fs-txdam-73485 diaporama-trigger" title="Un marcheur a la possibilit&eacute; de se d&eacute;placer al&eacute;atoirement vers la gauche, vers la droite, vers le haut ou vers le bas. Il d&eacute;crit alors une &laquo; marche al&eacute;atoire &raquo;. &copy; Images des math&eacute;matiques/CNRS" src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_marche_aleatoire_2D.jpg" alt="Un marcheur a la possibilit&eacute; de se d&eacute;placer al&eacute;atoirement vers la gauche, vers la droite, vers le haut ou vers le bas. Il d&eacute;crit alors une &laquo; marche al&eacute;atoire &raquo;. &copy; Images des math&eacute;matiques/CNRS" width="450" height="233" /><br /><span class="fs-media-legende">Un marcheur a la possibilit&eacute; de se d&eacute;placer al&eacute;atoirement vers la gauche, vers la droite, vers le haut ou vers le bas. Il d&eacute;crit alors une &laquo; marche al&eacute;atoire &raquo;. &copy; Images des math&eacute;matiques/CNRS</span></p>\r\n<h2>Un regard nouveau sur le basket</h2>\r\n<p class="bodytext">Traditionnellement, les analyses sportives se fondent sur la composition de l&rsquo;&eacute;quipe et sur les aptitudes individuelles de chacun des joueurs. Selon la th&eacute;orie d&eacute;velopp&eacute;e par les chercheurs am&eacute;ricains, certains facteurs ne sont pas aussi significatifs que pourrait le laisser croire l&rsquo;exp&eacute;rience du spectateur. Preuve de la l&eacute;gitimit&eacute; de la marche al&eacute;atoire, selon les auteurs : le fait que le temps durant lequel une &eacute;quipe m&egrave;ne, l&rsquo;instant auquel se produit le dernier changement de leader et le moment auquel a lieu le plus gros &eacute;cart de points sont tous les trois gouvern&eacute;s par la loi arcsinus, laquelle d&eacute;coule directement du mod&egrave;le de la marche al&eacute;atoire.</p>\r\n<p class="bodytext">Les physiciens impliqu&eacute;s dans l''&eacute;tude assurent ainsi que certaines p&eacute;riodes d''un match de basket sont plus propices que d&rsquo;autres aux changements de leader : les quelques premi&egrave;res minutes et les quelques derni&egrave;res. C&rsquo;est &eacute;galement dans ces moments-l&agrave; que la diff&eacute;rence de points peut se creuser. Les premi&egrave;res et les derni&egrave;res minutes d&rsquo;un match de basket seraient donc les plus d&eacute;terminantes. Le reste de la rencontre serait aussi impr&eacute;visible qu&rsquo;un jeu de&nbsp;<a class="xt-&shy;click" title="On a observ&eacute; un jeu de pile ou face quantique" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-on-observe-jeu-pile-face-quantique-19869/" target="_blank">pile ou face</a>. Et c&rsquo;est sans doute cette incertitude qui fait tout l&rsquo;int&eacute;r&ecirc;t d&rsquo;un match pour les amateurs de sport.</p>\r\n<p class="bodytext">Les chercheurs am&eacute;ricains vont m&ecirc;me jusqu''&agrave; proposer une&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quation</a>&nbsp;qui permet de d&eacute;finir &agrave; quel moment le leader peut se sentir en confiance, compte tenu de la diff&eacute;rence de points et du temps restant dans le match. Une &eacute;quipe qui m&egrave;ne, par exemple, de 10 points &agrave; 8 minutes de la fin de la rencontre aura 90 % de chances de l&rsquo;emporter. Idem pour une &eacute;quipe qui m&egrave;ne de 18 points &agrave; la fin de la premi&egrave;re mi-temps.</p>\r\n<p class="bodytext">Ce mod&egrave;le bas&eacute; sur la marche al&eacute;atoire semble fournir une description remarquable de la dynamique d&rsquo;un&nbsp;<a class="xt-&shy;click" title="Ob&eacute;sit&eacute; : les sports collectifs sont plus b&eacute;n&eacute;fiques" href="http://www.futura-sciences.com/magazines/sante/infos/actu/d/medecine-obesite-sports-collectifs-sont-plus-benefiques-40710/" target="_blank">sport collectif</a>. Ses pr&eacute;dictions sont &eacute;tonnamment pr&eacute;cises pour le basket et rejoignent les donn&eacute;es recueillies sur plus de 40.000 matchs professionnels ou semi-professionnels. Concernant les autres sports, comme le football am&eacute;ricain ou le hockey, par exemple, les &eacute;carts observ&eacute;s sugg&egrave;rent que des m&eacute;canismes plus complexes sont en jeu.</p>', '2015-07-03 00:00:00', 'a:7:{s:8:"fileName";s:8:"/NBA.jpg";s:12:"originalName";s:7:"NBA.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:326124;s:4:"path";s:9:"//NBA.jpg";s:5:"width";i:1200;s:6:"height";i:675;}'),
(3, 4, 1, 'John Nash, le génial mathématicien schizophrène, est mort.', '<p>John Nash (86 ans) et sa femme Alicia (82 ans) sont morts tous&nbsp;les deux suite &agrave; leur &eacute;jection d&rsquo;un taxi lors d&rsquo;un accident ...</p>', '<p class="bodytext"><em>Sic&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/espace/infos/dico/d/univers-transit-419/">transit</a>&nbsp;gloria mundi&nbsp;</em>(<em>&laquo;&nbsp;</em>Ainsi passe la gloire du monde&nbsp;<em>&raquo;</em>), pourrait-on dire en apprenant le d&eacute;c&egrave;s de John Nash dans un accident de voiture sur une autoroute situ&eacute;e dans l&rsquo;&Eacute;tat du New Jersey (&Eacute;tats-Unis). (L&rsquo;expression latine &eacute;tait prononc&eacute;e plusieurs fois devant un nouveau pape lors de sa c&eacute;r&eacute;monie d&rsquo;intronisation alors qu&rsquo;on faisait br&ucirc;ler une m&egrave;che d&rsquo;&eacute;toupe pour lui rappeler la fragilit&eacute; et l&rsquo;insignifiance de toute vie humaine). Le math&eacute;maticien de g&eacute;nie, prix Nobel d&rsquo;&eacute;conomie en 1994, rentrait en effet tout juste de l&rsquo;a&eacute;roport apr&egrave;s avoir re&ccedil;u en Norv&egrave;ge le&nbsp;<a class="xt-&shy;click" title="Le prix Abel 2009 r&eacute;compense la g&eacute;om&eacute;trie de Mikhail Gromov" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-prix-abel-2009-recompense-geometrie-mikhail-gromov-18819/">prix Abel</a>, un &eacute;quivalent du prix Nobel, mais en math&eacute;matique cette fois-ci.</p>\r\n<p class="bodytext">Pour le grand public, John Nash c&rsquo;est avant tout un homme confront&eacute; &agrave; une maladie mentale, la<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/medecine-schizophrenie-12989/">schizophr&eacute;nie</a>, qu&rsquo;incarnait au cin&eacute;ma en 2001 l&rsquo;acteur Russel Crowe dans&nbsp;<a title="un homme d''exception bande annonce" href="http://www.dailymotion.com/video/xpwfod_un-homme-d-exception-bande-annonce-vf_shortfilms" target="_blank"><em>Un homme d&rsquo;exception</em></a>(<em>A Beautiful Mind</em>) le film r&eacute;alis&eacute; par Ron Howard &agrave; partir du livre de Sylvia Nasar. Pour beaucoup, le nom de Nash est associ&eacute; &agrave; un r&eacute;sultat math&eacute;matique qu&rsquo;il a d&eacute;couvert et expos&eacute; &agrave; 21 ans dans son&nbsp;<a class="xt-&shy;click" title="La th&egrave;se de John Nash" href="https://www.princeton.edu/mudd/news/faq/topics/Non-Cooperative_Games_Nash.pdf" target="_blank">doctorat</a>&nbsp;&agrave; l&rsquo;universit&eacute; de Princeton et qui concernait la th&eacute;orie des jeux. Il s&rsquo;agissait alors d&rsquo;une toute jeune branche des math&eacute;matiques en plein essor depuis les travaux de&nbsp;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/personnalites/d/matiere-john-von-neumann-256/">John von Neumann</a>&nbsp;et Oskar Morgenstern expos&eacute;s en 1944 dans une somme impressionnante intitul&eacute;e<em>Th&eacute;orie des jeux et du comportement &eacute;conomique</em>&nbsp;(<em>Theory of Games and Economic Behavior</em>).</p>\r\n<h2>De l&rsquo;&eacute;quilibre de Nash aux &eacute;quations aux d&eacute;riv&eacute;es partielles</h2>\r\n<p class="bodytext">Cette th&eacute;orie permet de donner un cadre math&eacute;matique rigoureux et des outils d&rsquo;analyse performants pour r&eacute;soudre des probl&egrave;mes de strat&eacute;gie aussi bien en &eacute;conomie qu&rsquo;en politique et elle a &eacute;t&eacute; fr&eacute;quemment mise &agrave; contribution par la suite. L&rsquo;&eacute;quilibre de Nash, comme on l&rsquo;appelle aujourd&rsquo;hui, est d&rsquo;une certaine fa&ccedil;on le d&eacute;veloppement logique de consid&eacute;rations d&eacute;j&agrave; faites en 1938 par le math&eacute;maticien fran&ccedil;ais Antoine Augustin Cournot (bien connu pour sa d&eacute;finition du<a class="xt-&shy;click" title="Dossier : Vous avez dit hasard ?" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-vous-avez-dit-hasard-883/">hasard</a>) dans son ouvrage&nbsp;<em>Recherches sur les principes math&eacute;matiques de la th&eacute;orie des richesses.</em></p>\r\n<p class="bodytext">Mais, pour les math&eacute;maticiens, l&rsquo;homme qui vient de d&eacute;c&eacute;der &agrave; 86 ans en compagnie de son &eacute;pouse Alicia, une physicienne de formation qu&rsquo;il avait rencontr&eacute;e alors qu&rsquo;elle &eacute;tudiait au MIT en 1955, John Nash c&rsquo;est avant tout le g&eacute;nie &agrave; l&rsquo;origine de certains des&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-theoreme-383/">th&eacute;or&egrave;mes</a>&nbsp;les plus importants en analyse du XXe si&egrave;cle, en particulier en g&eacute;om&eacute;trie diff&eacute;rentielle et dans le cadre de la th&eacute;orie des&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quations</a>&nbsp;aux d&eacute;riv&eacute;es partielles. Ces deux branches des math&eacute;matiques sont fondamentales en physique th&eacute;orique dans le cadre de ce qu&rsquo;on appelle l&rsquo;analyse sur les vari&eacute;t&eacute;s, dont l&rsquo;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-application-13200/">application</a>&nbsp;la plus frappante n&rsquo;est rien de moins que la th&eacute;orie de la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-relativite-generale-3572/">relativit&eacute; g&eacute;n&eacute;rale</a>. L&rsquo;&eacute;tude de la g&eacute;om&eacute;trie de l&rsquo;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-espace-temps-322/">espace-temps</a>&nbsp;repose en effet lourdement sur la g&eacute;om&eacute;trie diff&eacute;rentielle.</p>\r\n<p class="bodytext">Quant &agrave; la th&eacute;orie des &eacute;quations aux d&eacute;riv&eacute;es partielles, il suffit de dire que les &eacute;quations d&rsquo;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/personnalites/d/physique-albert-einstein-205/">Einstein</a>&nbsp;en relativit&eacute; g&eacute;n&eacute;rale, de Maxwell pour le&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/matiere-champ-electromagnetique-3879/">champ &eacute;lectromagn&eacute;tique</a>, de&nbsp;<a class="xt-&shy;click" title="Navier-Stokes : le probl&egrave;me du Prix du mill&eacute;naire n''est pas r&eacute;solu" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-navier-stokes-probleme-prix-millenaire-nest-pas-resolu-54772/">Navier-Stokes</a>&nbsp;pour la m&eacute;canique des fluides, de Schr&ouml;dinger pour certaines parties de la&nbsp;<a class="xt-&shy;click" title="Dossier M&eacute;canique quantique : fondements et applications" href="http://www.futura-sciences.com/magazines/matiere/infos/dossiers/d/physique-mecanique-quantique-fondements-applications-1698/">m&eacute;canique quantique</a>&nbsp;et celle de&nbsp;<a class="xt-&shy;click" title="Le graph&egrave;ne viole la loi de conduction de la chaleur de Fourier" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-graphene-viole-loi-conduction-chaleur-fourier-53740/">Fourier</a>&nbsp;pour la chaleur sont des &eacute;quations aux d&eacute;riv&eacute;es partielles pour avoir un aper&ccedil;u de l&rsquo;importance des travaux de Nash ne serait-ce que pour la physique math&eacute;matique. Mais les r&eacute;sultats qu&rsquo;il a obtenus concernent aussi, et avant tout, les math&eacute;matiques pures. On pourra se faire une id&eacute;e de certaines des contributions de Nash en regardant la vid&eacute;o ci-dessous, celle d&rsquo;une conf&eacute;rence d&rsquo;un de ses grands admirateurs, le m&eacute;daill&eacute; Fields fran&ccedil;ais&nbsp;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/personnalites/d/mathematiques-cedric-villani-759/">C&eacute;dric Villani</a>.</p>\r\n<p class="fs-media"><iframe style="display: block; margin-left: auto; margin-right: auto;" src="https://player.vimeo.com/video/29267283" width="600" height="350" frameborder="0"></iframe><br /><span class="fs-media-legende">Cette conf&eacute;rence donn&eacute;e dans le cadre du cycle &laquo; Un texte, un math&eacute;maticien &raquo; a &eacute;t&eacute; organis&eacute;e par la Soci&eacute;t&eacute; Math&eacute;matique de France (SMF), la Biblioth&egrave;que nationale de France (BnF), et Animath. &copy; BnF Paris, Soc. Math&eacute;matique de France, Vim&eacute;o</span></p>\r\n<h2>Du prix Nobel au prix Abel</h2>\r\n<p class="bodytext">Mais d&rsquo;un point de vue plus personnel, qui &eacute;tait John Forbes Nash, n&eacute; le 13 juin 1928 aux &Eacute;tats-Unis&thinsp;? Son p&egrave;re &eacute;tait un ing&eacute;nieur &eacute;lectricien et sa m&egrave;re professeur de latin. Avide de lecture, joueur d&rsquo;&eacute;chec et capable de siffler des m&eacute;lodies enti&egrave;res de Bach, John Nash commence &agrave; succomber adolescent &agrave; l&rsquo;attraction des math&eacute;matiques en lisant le c&eacute;l&egrave;bre&nbsp;<a href="http://www.amazon.com/Mathematics-Touchstone-Book-E-T-Bell/dp/0671628186#reader_0671628186" target="_blank"><em>Men of Mathematics</em></a>, une biographie des plus c&eacute;l&egrave;bres math&eacute;maticiens que l&rsquo;on doit &agrave; E. T. Bell. Il commencera pourtant &agrave; faire des &eacute;tudes d&rsquo;ing&eacute;nieur chimiste avant de basculer d&eacute;finitivement du c&ocirc;t&eacute; des math&eacute;matiques.</p>\r\n<p class="bodytext">D&eacute;j&agrave; p&egrave;re d&rsquo;un enfant, il rencontre en 1955&nbsp;<a class="xt-&shy;click" title="Alicai Larde et John Nash" href="http://www.pbs.org/wgbh/amex/nash/peopleevents/p_anash.html" target="_blank">Alicia Larde</a>, une &eacute;tudiante en physique au MIT originaire du Salvador en Am&eacute;rique centrale. Il l&rsquo;&eacute;pousera en 1957 mais, en 1959, alors qu&rsquo;Alicia est enceinte de leur fils, la sant&eacute; mentale de Nash se d&eacute;t&eacute;riore au point qu&rsquo;il est admis au&nbsp;<em>McLean Hospital</em>&nbsp;o&ugrave; on lui diagnostique une schizophr&eacute;nie parano&iuml;de. Sa production math&eacute;matique va s&rsquo;arr&ecirc;ter rapidement par la suite pendant des dizaines d&rsquo;ann&eacute;es. Alicia divorce finalement en 1963 mais continue de s&rsquo;occuper de lui, l&rsquo;h&eacute;bergeant m&ecirc;me chez elle en 1970. Au d&eacute;but des ann&eacute;es 1990, Nash commen&ccedil;a &agrave; &eacute;merger de ses probl&egrave;mes, recouvrant une partie de ses impressionnantes capacit&eacute;s.</p>\r\n<p class="bodytext">Le&nbsp;<a class="xt-&shy;click" title="The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel 1994" href="http://www.nobelprize.org/nobel_prizes/economic-sciences/laureates/1994/" target="_blank">prix Nobel d&rsquo;&eacute;conomie</a>&nbsp;lui est finalement d&eacute;cern&eacute; en 1994 pour son travail de 1950 sur la th&eacute;orie des jeux. Mais, tout comme Albert Einstein avait eu son prix Nobel pour une contribution bien plus mineure que sa th&eacute;orie de la relativit&eacute;, &agrave; savoir la compr&eacute;hension de l&rsquo;effet photo-&eacute;lectrique, la majorit&eacute; des math&eacute;maticiens s&rsquo;accordaient &agrave; dire que les contributions de Nash en analyse &eacute;taient bien plus importantes. C''est pourquoi de nombreux scientifiques ont salu&eacute; son attribution du&nbsp;<a class="xt-&shy;click" title="The Abel Prize Laureates 2015" href="http://www.abelprize.no/c63466/seksjon/vis.html?tid=63467&amp;strukt_tid=63466" target="_blank">prix Abel</a>&nbsp;de math&eacute;matiques, il y a quelques mois, en compagnie de son coll&egrave;gue et ami Louis Nirenberg. Entretemps, John et Alicia s&rsquo;&eacute;taient de nouveau mari&eacute;s en 2001.</p>\r\n<p class="bodytext">Son d&eacute;c&egrave;s et celui de son &eacute;pouse, li&eacute; au non-port de la ceinture &agrave; l&rsquo;arri&egrave;re d&rsquo;un taxi, sonne comme un &eacute;v&eacute;nement tragique. Son &oelig;uvre reste cependant bien vivante et continuera &agrave; inspirer les math&eacute;maticiens des si&egrave;cles &agrave; venir. Son histoire permettra sans doute de nous interroger davantage sur les liens qu''il existe entre l&rsquo;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/corps-humain-intelligence-13498/">intelligence</a>, la cr&eacute;ativit&eacute; et les troubles mentaux. Plusieurs math&eacute;maticiens de g&eacute;nie, mais pas tous, ont en effet vu leur sant&eacute; mentale s&rsquo;alt&eacute;rer &agrave; un moment de leur vie, tels&nbsp;<a class="xt-&shy;click" title="Georg Ferdinand Cantor" href="http://serge.mehl.free.fr/chrono/Cantor.html" target="_blank">Cantor</a>, G&ouml;del et&nbsp;<a class="xt-&shy;click" title="Grothendieck : l''Albert Einstein des math&eacute;matiques du XXe si&eacute;cle est d&eacute;c&eacute;d&eacute;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/geometrie-grothendieck-albert-einstein-mathematiques-xxe-siecle-decede-56030/">Grothendieck</a>.</p>', '2015-08-03 00:00:00', 'a:7:{s:8:"fileName";s:14:"/JOHN-NASH.jpg";s:12:"originalName";s:13:"JOHN-NASH.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:237142;s:4:"path";s:15:"//JOHN-NASH.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}'),
(4, 4, 1, 'Navier-Stokes : le problème du Prix du millénaire n''est pas résolu', '<p>Le prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay concernant les &eacute;quations de Navier-Stokes va-t-il &eacute;chapper des mains du math&eacute;maticien Mukhtarbay Otelbayev ...</p>', '<p>Le prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay concernant les &eacute;quations de Navier-Stokes va-t-il &eacute;chapper des mains du math&eacute;maticien Mukhtarbay Otelbayev&thinsp;? Le Kazakh reconna&icirc;t une erreur dans sa d&eacute;monstration math&eacute;matique mais ne d&eacute;sarme pas pour autant.</p>\r\n<p class="bodytext">Dans un article pr&eacute;c&eacute;dent, Futura-Sciences s&rsquo;&eacute;tait pench&eacute; en d&eacute;tail sur la d&eacute;claration retentissante faite en janvier 2014 par Mukhtarbay Otelbayev, math&eacute;maticien kazakh de l&rsquo;<em>Eurasian National University</em>&nbsp;&agrave; Astana, au Kazakhstan. Ce brillant chercheur pensait avoir r&eacute;solu l&rsquo;un des probl&egrave;mes du prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay : la d&eacute;monstration, ou de la r&eacute;futation, d&rsquo;un&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-theoreme-383/">th&eacute;or&egrave;me</a>&nbsp;conjectur&eacute; depuis longtemps concernant les&nbsp;<a class="xt-&shy;click" title="Navier-Stokes : le probl&egrave;me du prix du mill&eacute;naire est peut-&ecirc;tre r&eacute;solu" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-navier-stokes-probleme-prix-millenaire-peut-etre-resolu-51943/" target="_blank">&eacute;quations de Navier-Stokes</a>.</p>\r\n<p class="bodytext">En r&eacute;sum&eacute;, il s&rsquo;agit de savoir si ces&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quations</a>&nbsp;math&eacute;matiques &mdash; cens&eacute;es d&eacute;crire l&rsquo;&eacute;coulement des fluides &mdash; poss&egrave;dent toujours en 3 dimensions une solution continue et qui ne finit pas par devenir&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/medecine-pathologique-2801/">pathologique</a>&nbsp;en adoptant des caract&eacute;ristiques physiquement irr&eacute;alistes. Il s&rsquo;agit d&rsquo;un probl&egrave;me de physique math&eacute;matique dont la solution aurait des r&eacute;percussions dans plusieurs branches des sciences naturelles, des&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/environnement/infos/dico/d/climatologie-prevision-meteorologique-14553/">pr&eacute;visions m&eacute;t&eacute;orologiques</a>&nbsp;&agrave; la conception des avions, par exemple et peut-&ecirc;tre m&ecirc;me avec la th&eacute;orie des&nbsp;<a class="xt-&shy;click" title="Certains trous noirs rendraient l''espace-temps turbulent" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-certains-trous-noirs-rendraient-espace-temps-turbulent-54003/">trous noirs</a>. Bien s&ucirc;r, comme toujours en math&eacute;matique, elle pourrait aussi avoir des cons&eacute;quences inattendues dans des domaines en apparence fort &eacute;loign&eacute;s de la th&eacute;orie des &eacute;quations aux d&eacute;riv&eacute;es partielles.</p>\r\n<p class="fs-media"><img class=" fs-txdam-53034 diaporama-trigger" style="display: block; margin-left: auto; margin-right: auto;" title="Le math&eacute;maticien Mukhtarbay Otelbayev a travaill&eacute; 30 ans sur le probl&egrave;me de l''existence et de l''unicit&eacute; des solutions aux &eacute;quations de Navier-Stokes en fonction de conditions initiales donn&eacute;es. Ce probl&egrave;me math&eacute;matique a de nombreuses cons&eacute;quences en m&eacute;canique des fluides." src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_navier_stokes_Mukhtarbay_Otelbaev_2012_WWW__ENU_KZ__01.jpg" alt="Le math&eacute;maticien Mukhtarbay Otelbayev a travaill&eacute; 30 ans sur le probl&egrave;me de l''existence et de l''unicit&eacute; des solutions aux &eacute;quations de Navier-Stokes en fonction de conditions initiales donn&eacute;es. Ce probl&egrave;me math&eacute;matique a de nombreuses cons&eacute;quences en m&eacute;canique des fluides." width="223" height="253" data-htmlarea-clickenlarge="1" /><br /><span class="fs-media-legende">Le math&eacute;maticien Mukhtarbay Otelbayev a travaill&eacute; 30 ans sur le probl&egrave;me de l''existence et de l''unicit&eacute; des solutions aux &eacute;quations de Navier-Stokes en fonction de conditions initiales donn&eacute;es. Ce probl&egrave;me math&eacute;matique a de nombreuses cons&eacute;quences en m&eacute;canique des fluides. &copy; L. N. Gumilyov,&nbsp;<em>Eurasian National University</em></span></p>\r\n<h2>Un maillon faible dans la cha&icirc;ne des raisonnements</h2>\r\n<p class="bodytext">Plusieurs math&eacute;maticiens de talents s&rsquo;y sont attaqu&eacute;s et pas seulement parce que celle ou celui qui trouvera la solution se verrait attribuer l&rsquo;un des Prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay et le million de dollars qui l&rsquo;accompagne. Ainsi, en 2006, la math&eacute;maticienne Penny Smith de l&rsquo;Universit&eacute; Lehigh &agrave; Bethl&eacute;em, en Pennsylvanie, pensait avoir trouv&eacute; avant Mukhtarbay Otelbaev la solution au probl&egrave;me. Elle a d&ucirc; d&eacute;chanter et retirer d&rsquo;<a class="xt-&shy;click" title="arXiv, l''archive scientifique mondialement c&eacute;l&egrave;bre, a 20 ans !" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-arxiv-archive-scientifique-mondialement-celebre-20-ans-32920/">arxiv</a>&nbsp;l&rsquo;article qu&rsquo;elle avait post&eacute; en raison d&rsquo;une erreur dans sa d&eacute;monstration. Le grand math&eacute;maticien&nbsp;<a class="xt-&shy;click" title="Math&eacute;matiques : les fabuleuses d&eacute;couvertes du surdou&eacute; Terence Tao" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-mathematiques-fabuleuses-decouvertes-surdoue-terence-tao-9730/">Terence Tao</a>&nbsp;s&rsquo;y est attaqu&eacute; lui aussi avec une approche tr&egrave;s originale comme il l&rsquo;explique sur son&nbsp;<a class="xt-&shy;click" title="Finite time blowup for an averaged three-dimensional Navier-Stokes equation" href="http://terrytao.wordpress.com/2014/02/04/finite-time-blowup-for-an-averaged-three-dimensional-navier-stokes-equation/" target="_blank">blog</a>, sans r&eacute;sultats probants cependant pour l&rsquo;instant.</p>\r\n<p class="bodytext">Les coll&egrave;gues d&rsquo;Otelbaev ont bien s&ucirc;r entrepris de v&eacute;rifier ses calculs. La t&acirc;che est en elle-m&ecirc;me difficile et s&rsquo;y est ajout&eacute; l&rsquo;inconv&eacute;nient que l&rsquo;article du chercheur kazakh &eacute;tait r&eacute;dig&eacute; en russe. R&eacute;cemment,&nbsp;<a class="xt-&shy;click" title="Stephen Montgomery-Smith" href="http://www.math.missouri.edu/~stephen/" target="_blank">Stephen Montgomery-Smith</a>, un math&eacute;maticien de l&rsquo;Universit&eacute; du Missouri &agrave;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/espace/infos/dico/d/univers-columbia-4174/">Columbia</a>&nbsp;qui lui aussi s&rsquo;est lanc&eacute; dans la course au prix du mill&eacute;naire, a envoy&eacute; un mail a Mukhtarbay Otelbaev lui pointant un probl&egrave;me. Le math&eacute;maticien russophone a d&ucirc; se rendre &agrave; l&rsquo;&eacute;vidence en r&eacute;pondant : &laquo;&nbsp;<em>&agrave; ma grande honte, &agrave; la page 56, l&rsquo;in&eacute;galit&eacute; (6.34) est incorrecte donc la proposition 6.3 (p. 54) n&rsquo;est pas prouv&eacute;e. Je suis d&eacute;sol&eacute; &raquo;</em>.</p>\r\n<p class="bodytext">Sa d&eacute;monstration s&rsquo;&eacute;croule donc. Mais le chercheur n&rsquo;abandonne pas pour autant. Il pense qu&rsquo;il devrait pouvoir contourner l&rsquo;obstacle d&rsquo;ici quelques mois. Une m&eacute;saventure similaire &eacute;tait arriv&eacute;e au math&eacute;maticien britannique&nbsp;<a class="xt-&shy;click" title="Une nouvelle d&eacute;monstration du th&eacute;or&egrave;me de Fermat-Wiles?" href="http://www.futura-sciences.com/magazines/sciences/infos/actu/d/recherche-nouvelle-demonstration-theoreme-fermat-wiles-6299/">Andrew Wiles</a>, professeur &agrave; l&rsquo;universit&eacute; de Princeton, surtout connu pour avoir d&eacute;montr&eacute; le dernier th&eacute;or&egrave;me de&nbsp;<a class="xt-&shy;click" title="Dossier : Merveilleux nombres premiers" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-merveilleux-nombres-premiers-1791/page/6/">Fermat</a>&nbsp;en 1994. Wiles &eacute;tait au bord de l&rsquo;abandon apr&egrave;s un an de travail pour corriger lui aussi une erreur dans sa d&eacute;monstration quand le chemin s&rsquo;est brutalement ouvert devant lui.</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:18:"/Navier-Stokes.jpg";s:12:"originalName";s:17:"Navier-Stokes.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:131617;s:4:"path";s:19:"//Navier-Stokes.jpg";s:5:"width";i:1200;s:6:"height";i:675;}'),
(6, 4, 1, 'Merveilleux nombres premiers', '<p>Vedettes des math&eacute;matiques, les nombres premiers, divisibles uniquement par un et par eux-m&ecirc;mes, continuent d&rsquo;occuper les math&eacute;maticiens de tous horizons. D&eacute;couvrez les propri&eacute;t&eacute;s et l&rsquo;histoire de ces nombres essentiels en cryptographie</p>', '<p class="bodytext"><strong>Tr&egrave;s t&ocirc;t, d&egrave;s les premiers partages de jouets ou de friandises, on apprend que certains nombres entiers, tel 6 = 2 x 3, se &laquo; cassent &raquo; ais&eacute;ment en deux facteurs. En revanche, on n&rsquo;arrivera jamais &agrave; d&eacute;composer ainsi les nombres 2, 5, 7, etc. Ces nombres sont nomm&eacute;s premiers.&nbsp;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/personnalites/d/mathematiques-jean-paul-delahaye-22/">Jean-Paul Delahaye</a>, auteur de&nbsp;<em>Merveilleux<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-nombre-premier-4717/">nombres premiers</a></em>, aux &eacute;ditions&nbsp;<a class="xt-&shy;click" title="Portail des &eacute;ditions Belin" href="http://www.editions-belin.com/index.php" target="_blank">Belin</a>, nous pr&eacute;sente certaines de leurs particularit&eacute;s</strong>.</p>\r\n<p class="bodytext">Euler et Gauss, deux des plus grands&nbsp;<a class="xt-&shy;click" title="Dossier : Comment peut-on &ecirc;tre math&eacute;maticien ?" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-peut-on-etre-mathematicien-90/">math&eacute;maticiens</a>&nbsp;de tous les temps, avaient bien compris l&rsquo;importance des nombres premiers, ainsi que leur myst&egrave;re. Les nombres premiers ont une importance centrale en arithm&eacute;tique, car tout nombre se d&eacute;compose de fa&ccedil;on unique en produit d&rsquo;un ou de plusieurs facteurs premiers (150 = 2 x 3 x 5 x 5 ; 7 = 7). Quant &agrave; leur myst&egrave;re, on le per&ccedil;oit en consid&eacute;rant le d&eacute;but de leur suite, par exemple les 25 nombres premiers inf&eacute;rieurs &agrave; 100 : 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97. Essayez donc de pr&eacute;dire les &eacute;carts entre ces nombres ! Nulle r&egrave;gle ne semble gouverner la succession des nombres premiers.</p>\r\n<p class="bodytext">D&egrave;s l&rsquo;abord, on pressent que le monde des nombres premiers est infiniment riche. Je vous propose de vous guider dans les parties explor&eacute;es de ce monde, jusqu&rsquo;&agrave; la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/environnement/infos/dico/d/developpement-durable-lisiere-6410/">lisi&egrave;re</a>&nbsp;de l&rsquo;inconnu, o&ugrave; les math&eacute;maticiens sont r&eacute;duits aux hypoth&egrave;ses, pour une fois d&eacute;munis de l&rsquo;arme de la preuve. La seule qualit&eacute; requise pour ce voyage est la curiosit&eacute;. Je ferai en sorte qu&rsquo;il vous amuse (le divertissement a toujours &eacute;t&eacute; l&rsquo;un des moteurs de l&rsquo;arithm&eacute;tique) tout en vous instruisant d&rsquo;un peu de math&eacute;matiques et de leur histoire. En outre, vous d&eacute;couvrirez, derri&egrave;re la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/nature/infos/dico/d/zoologie-faune-2269/">faune</a>&nbsp;bigarr&eacute;e des<a class="xt-&shy;click" title="Record : deux nouveaux nombres premiers jumeaux d&eacute;couverts !" href="http://www.futura-sciences.com/magazines/sciences/infos/actu/d/recherche-record-deux-nouveaux-nombres-premiers-jumeaux-decouverts-10230/">nombres premiers</a>, des&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-application-13200/">applications</a>&nbsp;devenues cruciales pour le d&eacute;veloppement de l&rsquo;informatique et des communications modernes.</p>\r\n<p class="fs-media"><img class=" fs-txdam-50198 diaporama-trigger" style="display: block; margin-left: auto; margin-right: auto;" title="Vue d&rsquo;artiste d&rsquo;une spirale d&rsquo;Ulam, un mode de repr&eacute;sentation des nombres premiers dans lequel on distingue d&rsquo;&eacute;tranges diagonales." src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_012_02.jpg" alt="Vue d&rsquo;artiste d&rsquo;une spirale d&rsquo;Ulam, un mode de repr&eacute;sentation des nombres premiers dans lequel on distingue d&rsquo;&eacute;tranges diagonales." width="350" height="350" data-htmlarea-clickenlarge="1" /><br /><span class="fs-media-legende">Vue d&rsquo;artiste d&rsquo;une spirale d&rsquo;Ulam, un mode de repr&eacute;sentation des nombres premiers dans lequel on distingue d&rsquo;&eacute;tranges diagonales. &copy; DR</span></p>\r\n<p class="bodytext">Dans ce dossier, certains outils math&eacute;matiques seront abord&eacute;s, comme le crible d&rsquo;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/espace/infos/personnalites/d/univers-eratosthene-663/">&Eacute;ratosth&egrave;ne</a>&nbsp;et la d&eacute;composition en&nbsp;<a class="xt-&shy;click" title="D&eacute;composition en facteurs premiers : nouveau reccord !" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-decomposition-facteurs-premiers-nouveau-reccord-409/">facteurs premiers</a>, mais aussi l&rsquo;arithm&eacute;tique modulaire. Nous finirons avec l&rsquo;histoire du plus grand nombre premier, notamment avec l&rsquo;apparition des&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/high-tech/infos/dico/d/informatique-ordinateur-586/">ordinateurs</a>, et un aper&ccedil;u des nombres premiers palindromes. Bonne lecture.</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:16:"/nb-premiers.jpg";s:12:"originalName";s:15:"nb-premiers.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:365956;s:4:"path";s:17:"//nb-premiers.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}');
INSERT INTO `posts` (`id`, `user_id`, `status_id`, `titre`, `abstract`, `content`, `date`, `url_thumbnail`) VALUES
(7, 4, 1, 'Les mathématiciens sont des artistes : l''IRM le confirme', '<p>Beaucoup de math&eacute;maticiens et de physiciens th&eacute;oriciens sont aussi des musiciens. L''id&eacute;e qu''il existe une beaut&eacute; math&eacute;matique aussi &eacute;mouvante et bouleversante que l''<em>Hyperion</em>&nbsp;de H&ouml;lderlin, le&nbsp;<em>David</em>&nbsp;de Michel-Ange&nbsp;...</p>', '<p>Beaucoup de math&eacute;maticiens et de physiciens th&eacute;oriciens sont aussi des musiciens. L''id&eacute;e qu''il existe une beaut&eacute; math&eacute;matique aussi &eacute;mouvante et bouleversante que l''<em>Hyperion</em>&nbsp;de H&ouml;lderlin, le&nbsp;<em>David</em>&nbsp;de Michel-Ange ou la&nbsp;<em>Symphonie n<sup>o</sup>&nbsp;7</em>&nbsp;de Ludwig van Beethoven n''est pas nouvelle. Elle vient d''&ecirc;tre confirm&eacute;e gr&acirc;ce &agrave; l''IRM, qui montre que les zones du cerveau qui s''activent lorsqu''un math&eacute;maticien ressent la beaut&eacute; d''une &eacute;quation ou d''une th&eacute;orie sont les m&ecirc;mes que lors d''une exp&eacute;rience intense devant la beaut&eacute; d''une &oelig;uvre d''art.<br /><br /></p>\r\n<p class="bodytext">L&rsquo;id&eacute;e qu&rsquo;il puisse exister un lien profond entre l&rsquo;activit&eacute; d&rsquo;un math&eacute;maticien et celle d&rsquo;un artiste est g&eacute;n&eacute;ralement d&eacute;concertante pour les non-math&eacute;maticiens. Nombreux sont ceux qui ne retiennent des&nbsp;<a class="xt-&shy;click" title="Dossier : La beaut&eacute; math&eacute;matique en chronologie" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-beaute-mathematique-chronologie-1057/">math&eacute;matiques</a>&nbsp;que l&rsquo;id&eacute;e d&rsquo;une pratique technique et aride, o&ugrave; le raisonnement logique domine. Cela semble n&rsquo;avoir rien en commun avec l&rsquo;&eacute;motion, la cr&eacute;ativit&eacute; et la beaut&eacute;, toutes choses que le po&egrave;te, le musicien, le peintre ou d&rsquo;autres artistes mettent en avant quand ils parlent de leurs travaux.</p>\r\n<p class="bodytext">Pourtant, les math&eacute;maticiens (et il n&rsquo;est nul besoin d&rsquo;entendre par l&agrave; uniquement les math&eacute;maticiens professionnels) ont une tout autre vision des choses. Quelques-uns vont peut-&ecirc;tre dire qu&rsquo;ils aiment r&eacute;soudre des &eacute;nigmes et des puzzles, mais tous t&eacute;moignent d&rsquo;exp&eacute;riences &eacute;motionnelles intenses parfaitement comparables &agrave; celles qu&rsquo;&eacute;prouve un artiste. &Agrave; en entendre certains, le besoin de faire des math&eacute;matiques, la fascination esth&eacute;tique qu&rsquo;elles engendrent, qu&rsquo;elles soient pures ou appliqu&eacute;es aux sciences comme la physique th&eacute;orique, sont aussi imp&eacute;rieux et irr&eacute;sistibles que ceux &agrave; l&rsquo;origine des &oelig;uvres d&rsquo;artistes comme&nbsp;<a class="xt-&shy;click" title="Friedrich H&ouml;lderlin : L&rsquo;intense br&ucirc;lure des dieux" href="http://www.espritsnomades.com/sitelitterature/holderlin/holderlin.html" target="_blank">H&ouml;lderlin</a>,&nbsp;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/high-tech/infos/personnalites/d/high-tech-leonard-vinci-210/">L&eacute;onard de Vinci</a>&nbsp;ou&nbsp;<a class="xt-&shy;click" title="Johann Sebastian Bach Klavierkonzert d moll mvmt 3" href="http://www.youtube.com/watch?v=XIct48FJ0EQ" target="_blank">Bach</a>. Les th&eacute;ories et les&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quations</a>&nbsp;math&eacute;matiques, m&ecirc;me celles que l&rsquo;on retrouve en physique th&eacute;orique (des &eacute;quations de la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-relativite-generale-3572/">relativit&eacute; g&eacute;n&eacute;rale</a>&nbsp;&agrave; celles de la th&eacute;orie quantique des champs en passant par les&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/matiere-equations-maxwell-3892/">&eacute;quations de Maxwell</a>&nbsp;et de&nbsp;<a class="xt-&shy;click" title="Navier-Stokes : le probl&egrave;me du prix du mill&eacute;naire est peut-&ecirc;tre r&eacute;solu" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-navier-stokes-probleme-prix-millenaire-peut-etre-resolu-51943/">Navier-Stokes</a>), sont per&ccedil;ues comme des &oelig;uvres d&rsquo;art &agrave; part enti&egrave;re.</p>\r\n<p class="fs-media"><iframe style="display: block; margin-left: auto; margin-right: auto;" src="http://www.youtube.com/embed/I1hN3ihK5lw" width="600" height="350" frameborder="0"></iframe><br /><span class="fs-media-legende">Interview de C&eacute;dric Villani, dans la cadre de l''exposition &laquo; Math&eacute;matiques, un d&eacute;paysement soudain &raquo;. Le math&eacute;maticien compare son travail et celui de ses coll&egrave;gues &agrave; celui des artistes pour conclure &agrave; d''importantes similitudes. &copy; fondationcartier, YouTube</span></p>\r\n<p class="bodytext">Il semble que ces id&eacute;es soient tr&egrave;s anciennes, surtout chez les math&eacute;maticiens-philosophes grecs. Chez Pythagore comme chez Platon, la g&eacute;om&eacute;trie, l&rsquo;arithm&eacute;tique, la musique et l&rsquo;astronomie sont li&eacute;es au sein de la philosophie. Elles participent des id&eacute;es de beaut&eacute;, d&rsquo;harmonie, de mesure et de raison et sont consid&eacute;r&eacute;es comme ayant un int&eacute;r&ecirc;t intrins&egrave;que, en elles-m&ecirc;mes, par del&agrave; toute<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-application-13200/">application</a>&nbsp;pratique possible, m&ecirc;me si elles donnent les cl&eacute;s d&rsquo;une connaissance du monde.</p>\r\n<h2><strong>Les math&eacute;matiques et l''harmonie du monde</strong></h2>\r\n<p class="bodytext">On sait par exemple que dans le&nbsp;<em>Tim&eacute;e</em>, Platon expose une sorte de th&eacute;orie des&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-particule-elementaire-12442/">particules &eacute;l&eacute;mentaires</a>&nbsp;du cosmos en utilisant des consid&eacute;rations sur les poly&egrave;dres r&eacute;guliers. Il y a cette perception que le monde doit &ecirc;tre construit non &agrave; base d&rsquo;objets mat&eacute;riels mais de formes math&eacute;matiques pures et &eacute;l&eacute;gantes.&nbsp;<a class="xt-&shy;click" title="La partie et le tout : Le monde de la physique atomique" href="http://www.amazon.fr/partie-tout-physique-Souvenirs-1920-1965/dp/2081244829/ref=la_B004MSMZLI_1_1?s=books&amp;ie=UTF8&amp;qid=1392976923&amp;sr=1-1" target="_blank">Heisenberg</a>&nbsp;racontera plus tard comment la lecture du&nbsp;<em>Tim&eacute;e</em>l&rsquo;avait men&eacute; sur la voie de la d&eacute;couverte des &eacute;quations de la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-mecanique-quantique-844/">m&eacute;canique quantique</a>&nbsp;sous leur forme matricielle. Plus tard, les conceptions de Platon le pousseront &agrave; mettre en avant l&rsquo;id&eacute;e que les particules &eacute;l&eacute;mentaires sont avant tout des&nbsp;<a class="xt-&shy;click" title="Dossier : L''&eacute;l&eacute;gante efficacit&eacute; des sym&eacute;tries" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-elegante-efficacite-symetries-1671/">sym&eacute;tries</a>&nbsp;dans les &eacute;quations de la th&eacute;orie quantique des champs. Le&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/espace/infos/dico/d/univers-modele-standard-3850/">mod&egrave;le standard</a>&nbsp;en physique des particules a donn&eacute; une confirmation spectaculaire de ces id&eacute;es. &Agrave; travers la&nbsp;<a class="xt-&shy;click" title="&Eacute;variste Galois : le g&eacute;nie des math&eacute;matiques mort &agrave; 20 ans" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-evariste-galois-genie-mathematiques-mort-20-ans-34217/">th&eacute;orie des groupes</a>, les sym&eacute;tries y acqui&egrave;rent une importance et une puissance extr&ecirc;mes.</p>\r\n<p class="bodytext">R&eacute;p&eacute;tons-le, pour des math&eacute;maticiens comme l&rsquo;&eacute;taient Platon et Pythagore, les math&eacute;matiques ne doivent pas &ecirc;tre cultiv&eacute;es uniquement en vue d&rsquo;applications pratiques, mais pour ce qu&rsquo;elles sont en elles-m&ecirc;mes, comme la musique, la peinture ou la sculpture. L&rsquo;une des apologies les plus connues de ce point de vue se trouve dans les d&eacute;clarations du math&eacute;maticien allemand&nbsp;<a class="xt-&shy;click" title="Pr&eacute;sentation de Gustav Jacobi" href="http://serge.mehl.free.fr/chrono/Jacobi.html" target="_blank">Gustav Jacobi</a>&nbsp;au XIX<sup>e</sup>&nbsp;si&egrave;cle :&nbsp;<em>&laquo; Monsieur&nbsp;<a class="xt-&shy;click" title="Pr&eacute;sentation de Fourier" href="http://serge.mehl.free.fr/chrono/Fourier.html" target="_blank">Fourier</a>&nbsp;avait l''opinion que le but principal des math&eacute;matiques &eacute;tait l''utilit&eacute; publique et l''explication des ph&eacute;nom&egrave;nes naturels. Un philosophe tel que lui aurait d&ucirc; savoir que le but unique de la science, c''est l''honneur de l''esprit humain et que, sous ce titre, une question de nombres vaut bien une question de syst&egrave;me du monde &raquo;</em>. Le math&eacute;maticien&nbsp;<a class="xt-&shy;click" title="Dieudonn&eacute; Jean Alexandre, fran&ccedil;ais, 1906-1992" href="http://serge.mehl.free.fr/chrono/Dieudonne.html" target="_blank">Jean Dieudonn&eacute;</a>, l&rsquo;un des fondateurs du c&eacute;l&egrave;bre groupe Bourbaki, ne s&rsquo;y est pas tromp&eacute;. Cette citation se trouve en exergue d&rsquo;un tr&egrave;s beau&nbsp;<a class="xt-&shy;click" title="Mathematics - The Music of Reason" href="http://www.amazon.com/Mathematics-Music-Reason-Jean-Dieudonne/dp/354053346X#reader_354053346X" target="_blank">livre</a>&nbsp;qu&rsquo;il a &eacute;crit pour l&rsquo;amateur passionn&eacute;, lui permettant de visiter la cath&eacute;drale des math&eacute;matiques dans l&rsquo;&eacute;tat de construction qu&rsquo;elle a atteint au XX<sup>e</sup>&nbsp;si&egrave;cle.</p>\r\n<p class="fs-media"><iframe style="display: block; margin-left: auto; margin-right: auto;" src="http://www.youtube.com/embed/ScNsIviP3uk" width="600" height="350" frameborder="0"></iframe><br /><span class="fs-media-legende">Comme l''explique Jean-Pierre Luminet (avec la participation de Dominique Proust) dans cette vid&eacute;o, Kepler, en tant que math&eacute;maticien et astronome, travaillait avec l''id&eacute;e d''une secr&egrave;te harmonie entre la musique, les math&eacute;matiques et l''architecture du monde. En droite ligne avec les conceptions de Pythagore et Platon, celles de Kepler n''en ont pas moins r&eacute;volutionn&eacute; l''astronomie et, &agrave; terme, les math&eacute;matiques et la physique. C''est un extrait du documentaire&nbsp;<em>Les musiciens c&eacute;lestes</em>&nbsp;(universit&eacute; de Provence, 2009). &copy; Jean-Pierre Luminet, YouTube</span></p>\r\n<p class="bodytext">L&rsquo;importance de la beaut&eacute; en math&eacute;matique que l&rsquo;on trouve chez les Grecs, on la retrouve aussi chez les math&eacute;maticiens du XX<sup>e</sup>&nbsp;si&egrave;cle. Pour preuve, voici quelques-unes des d&eacute;clarations parmi les plus c&eacute;l&egrave;bres.</p>\r\n<h2><strong>Les math&eacute;matiques, la musique de la raison</strong></h2>\r\n<p class="bodytext">La premi&egrave;re nous vient du math&eacute;maticien britannique&nbsp;<a class="xt-&shy;click" title="Hardy Godefroy Harold, anglais, 1877-1947" href="http://serge.mehl.free.fr/chrono/Hardy.html" target="_blank">G. H. Hardy</a>&nbsp;(1877-1947), grand sp&eacute;cialiste de l&rsquo;extraordinaire th&eacute;orie analytique des nombres et bien connu pour ses travaux avec le &laquo; math&eacute;magicien &raquo; indien&nbsp;<a class="xt-&shy;click" title="Math&eacute;matiques : de myst&eacute;rieuses formules dues &agrave; Ramanujan enfin &eacute;lucid&eacute;es !" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-mathematiques-mysterieuses-formules-dues-ramanujan-enfin-elucidees-10460/">Srinivasa Ramanujan</a>.<em>&nbsp;&laquo; Les sch&eacute;mas du math&eacute;maticien, comme ceux du peintre ou du po&egrave;te, doivent &ecirc;tre beaux ; les id&eacute;es, comme les&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-couleur-4126/">couleurs</a>&nbsp;ou les mots, doivent s''assembler de fa&ccedil;on harmonieuse. La beaut&eacute; est le premier test : il n''y a pas de place durable dans le monde pour les math&eacute;matiques laides. &raquo;</em></p>\r\n<p class="bodytext">La deuxi&egrave;me est de David&nbsp;<a class="xt-&shy;click" title="Pr&eacute;sentation de Hilbert" href="http://serge.mehl.free.fr/chrono/Hilbert.html" target="_blank">Hilbert</a>, probablement avec&nbsp;<a class="xt-&shy;click" title="Henri Poincar&eacute;, pionnier de la relativit&eacute;, est mort il y a 100 ans" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-henri-poincare-pionnier-relativite-mort-il-y-100-ans-40110/">Henri Poincar&eacute;</a>&nbsp;le math&eacute;maticien le plus important et le plus universel entre 1900 et 1920. Ses travaux couvrent en effet de vastes domaines allant de la th&eacute;orie alg&eacute;brique des nombres &agrave; l&rsquo;analyse fonctionnelle (avec les fameux espaces portant son nom), en passant par la th&eacute;orie des&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-invariant-379/">invariants</a>&nbsp;et celle des fondements des math&eacute;matiques (avec Paul Bernays). Pour Hilbert,&nbsp;<em>&laquo; dans un certain sens, l&rsquo;analyse math&eacute;matique est une symphonie de l&rsquo;<a class="xt-&shy;click" title="Dossier L''infini est-il paradoxal en math&eacute;matiques : Infini, Cantor d&eacute;couvre un r&eacute;sultat &eacute;tonnant" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-infini-il-paradoxal-mathematiques-1590/page/5/">infini</a>&nbsp;&raquo;</em>.</p>\r\n<p class="bodytext">La troisi&egrave;me &eacute;mane d&rsquo;<a class="xt-&shy;click" title="Hermann Weyl itin&eacute;raire d&rsquo;un parcours scientifique et intellectuel" href="http://images.math.cnrs.fr/Hermann-Weyl.html" target="_blank">Hermann Weyl</a>, l&rsquo;&eacute;l&egrave;ve le plus dou&eacute; d&rsquo;Hilbert selon Dieudonn&eacute;, &agrave; qui l&rsquo;on doit d&rsquo;importants travaux sur la&nbsp;<a class="xt-&shy;click" title="Conjecture de Poincar&eacute; : les r&eacute;v&eacute;lations de Perelman" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-conjecture-poincare-revelations-perelman-9975/">topologie</a>&nbsp;des&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-surface-riemann-4663/">surfaces de Riemann</a>&nbsp;et surtout la th&eacute;orie des groupes de Lie, &agrave; la fronti&egrave;re entre la g&eacute;om&eacute;trie, l&rsquo;alg&egrave;bre et la physique th&eacute;orique.&nbsp;<em>&laquo; Dans mon travail, j&rsquo;ai toujours tent&eacute; d&rsquo;unir le vrai et le beau, et lorsque je devais faire un choix entre les deux, je choisissais d&rsquo;ordinaire le beau. &raquo;</em></p>\r\n<h2><strong>L''identit&eacute; d''Euler &agrave; l''IRM</strong></h2>\r\n<p class="bodytext">Pour ceux qui ne seraient pas encore convaincus que les math&eacute;maticiens et les amateurs &eacute;clair&eacute;s de math&eacute;matiques ont une &acirc;me d&rsquo;artiste, le neurobiologiste Semir Zeki vient fournir du grain &agrave; moudre.</p>\r\n<p class="bodytext">Le chercheur est parti d&rsquo;un constat simple que nous avons d&eacute;j&agrave; &eacute;voqu&eacute;.&nbsp;<em>&laquo; Pour beaucoup d''entre nous, des formules math&eacute;matiques semblent s&egrave;ches et inaccessibles, mais pour un&nbsp;<a class="xt-&shy;click" title="Dossier : Comment peut-on &ecirc;tre math&eacute;maticien ?" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-peut-on-etre-mathematicien-90/">math&eacute;maticien</a>, une &eacute;quation peut incarner la quintessence de la beaut&eacute;. La beaut&eacute; d''une formule peut r&eacute;sulter de la simplicit&eacute;, de la sym&eacute;trie, l''&eacute;l&eacute;gance ou l''expression d''une v&eacute;rit&eacute; immuable. Pour Platon, le caract&egrave;re abstrait des math&eacute;matiques exprimait le sommet ultime de la beaut&eacute;. &raquo;</em>&nbsp;Mais pour un sp&eacute;cialiste du&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/biologie-cerveau-3125/">cerveau</a>&nbsp;comme lui,<em>&nbsp;&laquo; on est alors curieux de savoir si l''exp&eacute;rience de la beaut&eacute; provenant d&rsquo;une source aussi hautement intellectuelle et abstraite que les math&eacute;matiques est en corr&eacute;lation avec l''activit&eacute; dans la m&ecirc;me partie du cerveau &eacute;motionnel que celle d&eacute;riv&eacute;e de sources plus fond&eacute;es sur la perception des sens &raquo;.</em></p>\r\n<p class="bodytext">Cherchant &agrave; en avoir le c&oelig;ur net, comme lui et ses coll&egrave;gues l&rsquo;expliquent dans un article en acc&egrave;s libre publi&eacute; dans&nbsp;<a title="The experience of mathematical beauty and its neural correlates" href="http://www.frontiersin.org/Journal/10.3389/fnhum.2014.00068/abstract" target="_blank"><em>Frontiers in Human Neuroscience</em></a>, il a d&eacute;cid&eacute; d&rsquo;utiliser les l&rsquo;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/medecine-irm-8096/">IRM</a>&nbsp;pour &eacute;tudier l&rsquo;activit&eacute; du cerveau de 15 math&eacute;maticiens. Le&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/high-tech/infos/dico/d/high-tech-protocole-1285/">protocole</a>&nbsp;de l&rsquo;exp&eacute;rience r&eacute;alis&eacute;e n&rsquo;est pas difficile &agrave; comprendre. On a commenc&eacute; par soumettre aux cobayes&nbsp;<a class="xt-&shy;click" title="&Eacute;quations et beaut&eacute; math&eacute;matiques" href="http://www.frontiersin.org/Journal/DownloadFile.ashx?sup=1&amp;articleId=74738&amp;FileId=390082&amp;FileName=Data%20Sheet%202.PDF&amp;contentType=Data%20Sheet&amp;contentTypeId=6&amp;version=1" target="_blank">60 formules</a>&nbsp;ou &eacute;quations math&eacute;matiques en leur demandant de les noter chacune sur une &eacute;chelle allant de -5 (affreuse) &agrave; 5 (sublime). Deux semaines plus tard, l&rsquo;exp&eacute;rience a &eacute;t&eacute; r&eacute;p&eacute;t&eacute;e, mais cette fois-ci en observant &agrave; l&rsquo;IRM ce qui se passait dans le cerveau des math&eacute;maticiens. Les neurobiologistes ont alors constat&eacute; que l&rsquo;activit&eacute; du&nbsp;<a class="xt-&shy;click" title="Une possible liaison entre g&eacute;n&eacute;tique et d&eacute;pendance aux drogues" href="http://www.futura-sciences.com/magazines/sante/infos/actu/d/genetique-possible-liaison-genetique-dependance-drogues-14124/">cortex orbitofrontal</a>&nbsp;m&eacute;dian se corr&eacute;lait bien avec l&rsquo;intensit&eacute; de l&rsquo;exp&eacute;rience de la beaut&eacute; associ&eacute;e aux formules math&eacute;matiques jug&eacute;es comme telles par les math&eacute;maticiens. Or, on sait qu&rsquo;il en est de m&ecirc;me pour le sentiment de beaut&eacute; associ&eacute; &agrave; des &oelig;uvres d&rsquo;art, notamment avec la musique.</p>\r\n<p class="fs-media"><img class=" fs-txdam-54364" title="L''identit&eacute; d''Euler semble trop belle pour &ecirc;tre vraie : elle l''est pourtant bel et bien. Elle rassemble en une seule &eacute;quation les nombres les plus magiques des math&eacute;matiques : 1, 0 et les nombres transcendants que sont &pi; et e, ainsi que le nombre imaginaire i." src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_euler_identite_DP.gif" alt="L''identit&eacute; d''Euler semble trop belle pour &ecirc;tre vraie : elle l''est pourtant bel et bien. Elle rassemble en une seule &eacute;quation les nombres les plus magiques des math&eacute;matiques : 1, 0 et les nombres transcendants que sont &pi; et e, ainsi que le nombre imaginaire i." width="138" height="41" data-htmlarea-clickenlarge="1" /><br /><span class="fs-media-legende">L''identit&eacute; d''Euler semble trop belle pour &ecirc;tre vraie : elle l''est pourtant bel et bien. Elle rassemble en une seule &eacute;quation les nombres les plus magiques des math&eacute;matiques : 1, 0 et les nombres transcendants que sont &pi; et e, ainsi que le nombre imaginaire i. &copy; DP</span></p>\r\n<h2><strong>Le cerveau et la beaut&eacute; des math&eacute;matiques</strong></h2>\r\n<p class="bodytext">Sans surprise, sont arriv&eacute;es en t&ecirc;te du classement la fameuse identit&eacute; d&rsquo;Euler liant les nombres les plus importants des math&eacute;matiques ainsi que les conditions de Cauchy-Riemann &eacute;voquant la puissante et &eacute;l&eacute;gante th&eacute;orie des&nbsp;<a class="xt-&shy;click" title="Cours d''analyse complexe" href="http://www-irma.u-strasbg.fr/~maudin/analysecomp.pdf" target="_blank">fonctions analytiques</a>. En dernier, on trouve l&rsquo;une des s&eacute;ries infinies de Ramanujan permettant de calculer le nombre &pi; ainsi que, et c&rsquo;est plus surprenant (au moins pour l&rsquo;auteur de cet article), la fameuse relation fonctionnelle de Riemann associant la<a class="xt-&shy;click" title="L''ordinateur quantique r&eacute;futera-t-il la fameuse hypoth&egrave;se de Riemann ?" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-ordinateur-quantique-refutera-t-il-fameuse-hypothese-riemann-45541/">fonction z&ecirc;ta de Riemann</a>&nbsp;et la fonction gamma d&rsquo;Euler.</p>\r\n<p class="bodytext">Pour Zeki, l&rsquo;affaire est entendue :&nbsp;<em>&laquo; Nous avons trouv&eacute; que, comme avec l''exp&eacute;rience de la beaut&eacute; visuelle ou musicale, l''activit&eacute; dans le cerveau est fortement li&eacute;e &agrave; l&rsquo;intensit&eacute; de l&rsquo;exp&eacute;rience de la beaut&eacute; d&eacute;clar&eacute;e, m&ecirc;me dans cet exemple o&ugrave; la source de la beaut&eacute; est tr&egrave;s abstraite. Cela r&eacute;pond &agrave; une importante question dans le domaine de l''esth&eacute;tique, une de celles d&eacute;battues depuis l''Antiquit&eacute;, &agrave; savoir si les exp&eacute;riences esth&eacute;tiques peuvent &ecirc;tre quantifi&eacute;es. &raquo;</em></p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:12:"/vitruve.jpg";s:12:"originalName";s:11:"vitruve.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:525042;s:4:"path";s:13:"//vitruve.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fiche_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id`, `content`, `fiche_id`) VALUES
(18, 'fdgdf', 21),
(19, 'test 30', NULL),
(20, 'test60', 56),
(22, 'test90', 61),
(23, 'test90', 62),
(24, 'test100', 63),
(25, 'Soufflé brownie chocolate apple pie cotton candy liquorice caramels gingerbread marshmallow. Chupa chups dragée bear claw marshmallow. Donut icing soufflé. Sweet gingerbread gingerbread sesame snaps chocolate croissant pie.', 64),
(26, 'dfsfdsfd', 66),
(27, 'sdqq', 67);

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `fiche_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `note` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `nom`) VALUES
(1, 'publish'),
(2, 'unpublish'),
(22, 'publish'),
(26, 'publish'),
(27, 'publish'),
(28, 'publish'),
(29, 'publish'),
(30, 'publish'),
(31, 'publish'),
(32, 'publish'),
(33, 'publish'),
(34, 'publish'),
(35, 'publish'),
(36, 'publish'),
(37, 'publish'),
(38, 'publish'),
(39, 'publish'),
(40, 'publish'),
(41, 'publish'),
(42, 'publish'),
(43, 'publish'),
(44, 'publish'),
(45, 'publish');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `choices`
--
ALTER TABLE `choices`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_5CE96391E27F6BF` (`question_id`),
ADD KEY `IDX_5CE9639DF522508` (`fiche_id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_5F9E962A4B89032C` (`post_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `UNIQ_4C62E638E7927C74` (`email`);

--
-- Index pour la table `copie`
--
ALTER TABLE `copie`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_A6E330BCC2140342` (`eleves_id`),
ADD KEY `IDX_A6E330BC163CD901` (`choices_id`);

--
-- Index pour la table `fiches`
--
ALTER TABLE `fiches`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_459C25C941807E1D` (`teacher_id`),
ADD KEY `IDX_459C25C950962F74` (`lvl_id`),
ADD KEY `IDX_459C25C96BF700BD` (`status_id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
ADD KEY `IDX_957A647950962F74` (`lvl_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_885DBAFAA76ED395` (`user_id`),
ADD KEY `IDX_885DBAFA6BF700BD` (`status_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_8ADC54D5DF522508` (`fiche_id`);

--
-- Index pour la table `scores`
--
ALTER TABLE `scores`
ADD PRIMARY KEY (`id`),
ADD KEY `IDX_750375EDF522508` (`fiche_id`),
ADD KEY `IDX_750375ECB944F1A` (`student_id`),
ADD KEY `IDX_750375E6BF700BD` (`status_id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `choices`
--
ALTER TABLE `choices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `copie`
--
ALTER TABLE `copie`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fiches`
--
ALTER TABLE `fiches`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `scores`
--
ALTER TABLE `scores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `choices`
--
ALTER TABLE `choices`
ADD CONSTRAINT `FK_5CE96391E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
ADD CONSTRAINT `FK_5CE9639DF522508` FOREIGN KEY (`fiche_id`) REFERENCES `fiches` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `FK_5F9E962A4B89032C` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Contraintes pour la table `copie`
--
ALTER TABLE `copie`
ADD CONSTRAINT `FK_A6E330BC163CD901` FOREIGN KEY (`choices_id`) REFERENCES `choices` (`id`),
ADD CONSTRAINT `FK_A6E330BCC2140342` FOREIGN KEY (`eleves_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `fiches`
--
ALTER TABLE `fiches`
ADD CONSTRAINT `FK_459C25C941807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `fos_user` (`id`),
ADD CONSTRAINT `FK_459C25C950962F74` FOREIGN KEY (`lvl_id`) REFERENCES `classes` (`id`),
ADD CONSTRAINT `FK_459C25C96BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Contraintes pour la table `fos_user`
--
ALTER TABLE `fos_user`
ADD CONSTRAINT `FK_957A647950962F74` FOREIGN KEY (`lvl_id`) REFERENCES `classes` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `FK_885DBAFA6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
ADD CONSTRAINT `FK_885DBAFAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
ADD CONSTRAINT `FK_8ADC54D5DF522508` FOREIGN KEY (`fiche_id`) REFERENCES `fiches` (`id`);

--
-- Contraintes pour la table `scores`
--
ALTER TABLE `scores`
ADD CONSTRAINT `FK_750375E6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
ADD CONSTRAINT `FK_750375ECB944F1A` FOREIGN KEY (`student_id`) REFERENCES `fos_user` (`id`),
ADD CONSTRAINT `FK_750375EDF522508` FOREIGN KEY (`fiche_id`) REFERENCES `fiches` (`id`);
