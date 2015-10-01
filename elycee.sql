-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Jeu 01 Octobre 2015 à 16:00
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

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
  `question_id` int(11) DEFAULT NULL,
  `content_choice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` tinyint(1) NOT NULL,
  `point` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `choices`
--

INSERT INTO `choices` (`id`, `question_id`, `content_choice`, `response`, `point`) VALUES
(1, 1, '<p>kjljl</p>', 1, 2),
(2, 1, 'jljljlj', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
`id` int(11) NOT NULL,
  `class_level` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `classes`
--

INSERT INTO `classes` (`id`, `class_level`) VALUES
(1, 'premiere'),
(2, 'terminal'),
(3, 'premiere');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fiches`
--

INSERT INTO `fiches` (`id`, `teacher_id`, `lvl_id`, `status_id`, `title`) VALUES
(1, NULL, 1, NULL, '<p>Institut Sup&eacute;ieur Des Arts De Multimedias</p>');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
`id` int(11) NOT NULL,
  `lvl_id` int(11) DEFAULT NULL,
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
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `lvl_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, NULL, 'alexandre', 'alexandre', 'alex@legros.com', 'alex@legros.com', 1, 'ko1cqx2ck0gc8s440ososokc04sg4sk', 'y54B2kr7yXRbxXNPvoJdiXrd87SEWzx/6jaFZvAwyHGK3KMIiCKDd0Zfndi9w0RkSF9tj0kanpIvJGChbDNnug==', '2015-10-01 15:53:51', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 0, NULL),
(2, 1, 'abel', 'abel', 'able@yahoo.fr', 'able@yahoo.fr', 1, '9e5a3x6w09gc088skcokw004kkssog8', 'y1mMrQagiNccBqppNiav65WzqYMUWeDanLHL2DgYnT8S6PW+dLZTwAWVrcuJsE/YfZtmK8B79QZIwlK1Ne9v1A==', '2015-09-23 16:46:20', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(23, 1, 'Al', 'al', 'al@al.com', 'al@al.com', 1, 'q1230a640hwk4w40ww8s04c0ccggswc', 'uSckL866YCAgW05D31ngowizwiXUwIH67NZUe8Sa64UzVGWWYfsq2e4p2calBwpsm+9d0ha5SV+sN/7OQvZfuQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(24, 1, 'Alan', 'alan', 'alain@yahoo.biz', 'alain@yahoo.biz', 1, 'cuqnc0xgjsowsgcc4kskcggwckskc44', 'ks0NI93vkSQG2HDLwbLFZeJvVOsVUv1zJYiqxInxTB4GnzM2AMkY1R0sO4dUGyZGsAB3iG0pL3uKjq5Mgh/l+w==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(26, 1, 'Arthur', 'arthur', 'arthur@arthur.com', 'arthur@arthur.com', 1, 'd4jfa540da0w8ggcgckwkwcw0c4kkwk', 'sHv7A+h2aihNAC9WLXb9SMGrFD8G01cockvyGiMYDQWxeDqHhvCSrCXEpzoi/TYkpQJQ7DD0+YtIYc3KFG0Bjw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(27, 1, 'Carl', 'carl', 'carl@carl.com', 'carl@carl.com', 1, 'p7035yh50msck480g0gcc88sksskccc', 'GqdRhZCWQxmFIvwVj14EBPhlcHEfGlrMpEApqzpva3J3Gbi+1WxaVeuHPXNnj4GIVdLjcYuaO8gG7P03yQ7/rw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(28, 1, 'Blaise', 'blaise', 'blaise@blaise.com', 'blaise@blaise.com', 1, 'idwa6vrls2gcscw4ccw4sogkwcwocww', 'JAm1C0TK3qZiWampGR60M8lrLRJEbNjvnToAVUyhO0cizEIvQVxEry2xQyszIzBQgD6KmBl0tXQLGeTuQWjDJw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(29, 1, 'Isaac', 'isaac', 'isaac@isaac.com', 'isaac@isaac.com', 1, '1mongps2lef4w0sskw0gwo4kkk4cc8c', 'rNxEaABY498azbwJ1JemxXdSpkJQ/d31v/DbYUMkjOV9rqeEFa7jacrIHSJyizqxgwmS5O6aYq4Yw5y4mPdtyw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(30, 1, 'Steve', 'steve', 'steve@steve.com', 'steve@steve.com', 1, '4putcfqgh1moo0gcocsckoc0wwcks88', '6IqUavlJ3bQYzWeOSb+dgGCAvDnbOpdAjzZZFbI0AvZHq8kiMWIrujiY1JL1WyNLnLTCS+uIMm/z6Dc6a7Ye0Q==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(31, 2, 'Alfred', 'alfred', 'alfred@tatayoyo.com', 'alfred@tatayoyo.com', 1, 'adq6kd0kxb4kog8440go8ss84c4g4sw', 'QvzM9lOkazb8snrtu4MQNXn8cBTacCAWIqRe5hjr2SMp7ivBfuNRA4cUDmm2JHfwG+ZCFSAgJRay9MiDz3oZNQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(32, 2, 'Brendan', 'brendan', 'brendan@brendan.com', 'brendan@brendan.com', 1, 'ch4bim3ahy8kwkcc88w80gkwccgo8k0', 'sbf67Q5imYNyvBhfLU75hvQFpcrG8ud3wkW1dbXLJsDU0qhBSX0ues5I5D8WMM4V3ycfdcixRpIOiD6UKddQ9A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(33, 2, 'David', 'david', 'david@gcho.com', 'david@gcho.com', 1, '1gwgtwa3g39c84k8wkkgcowcgko08so', 'iJxz9GPROCfVKOK8gTOmGuYvrrs5jGYXBWhb7bc56P0nz+6RHF99WOuH/24FbtCR7NTWAxuhvAj4uhNI9PPPXw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(34, 2, 'George', 'george', 'george@profonde.com', 'george@profonde.com', 1, 'fwco1ph20p44c404o0c004so4oossw', '3QNW8CCcD9YunYowRBAApZBysukwAHIPCy7HBqBTKJ1d1M0k3iYPf3NoPGqRSdKK2EI0faWR7qK4x54tDm/0mw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(35, 2, 'Jim', 'jim', 'jim@launez.com', 'jim@launez.com', 1, '5pnjrobzpzc4w0wwogsk4g8gww40wc4', 'vI5JphO66OiqP0M9R66EBjpe1DyJUYDlZVsgByx5TUYSc17ku//IOMmxb6VxGFyH3aEvMFIZCIAPGLsbNVrp5A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(36, 2, 'Leslie', 'leslie', 'leslie@unlivre.com', 'leslie@unlivre.com', 1, 'eutclv8julw80sossogksoow4wc8cg4', 'H6UtRWRPjaFZsB3NjeNIllZ+eWbVnc1FwAcMjVaBkap8Hfiv0P3Cb9T3itTWrvmgOMX8hW1cX+YHNuaIpbvtMg==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(37, 2, 'Maria', 'maria', 'mari@monhomme.com', 'mari@monhomme.com', 1, 'n9aeoz818zk4k40o004kccwoo00c4w8', 'vb2HILS2vALBNm4lhgEwFeFpUK7sGz3XqM2iLSmOEE3sSJN60q3JVEkrl1Yk1LhS24yKrc/Ba/5Rzb3EytB+uQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:12:"ROLE8STUDENT";i:1;s:12:"ROLE_STUDENT";}', 0, NULL),
(38, 2, 'Rasmus', 'rasmus', 'rasmus@rasmus.com', 'rasmus@rasmus.com', 1, 'ff251c6knxcg8kc0kwg8g4008skg440', 'Umn8yB2CuHdlX7LhVDDAAY8nyqIjE0jO+xa16PLkBMe5vlGtfRnOrBBB4fVdY08u/WgvuFFCIaDl6skuzRut/A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL),
(39, 2, 'Tim', 'tim', 'tim@authe.com', 'tim@authe.com', 1, 'v5hwij24sasgsk8000o48w48gkko8k', '4Fd3OBpKPiXHa0DiNQVPlZ7iSNz39tCT0wCu1NlWhBMRtbb8iY9gpC/H67dBuRnfj35fkyENryxw46oYI7SKIA==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL);

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
  `url_thumbnail` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
`id` int(11) NOT NULL,
  `fiche_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id`, `fiche_id`, `content`) VALUES
(1, 1, 'jhkhk');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `choices`
--
ALTER TABLE `choices`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_5CE96391E27F6BF` (`question_id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_5F9E962A4B89032C` (`post_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_4C62E638E7927C74` (`email`);

--
-- Index pour la table `copie`
--
ALTER TABLE `copie`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_A6E330BCC2140342` (`eleves_id`), ADD KEY `IDX_A6E330BC163CD901` (`choices_id`);

--
-- Index pour la table `fiches`
--
ALTER TABLE `fiches`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_459C25C941807E1D` (`teacher_id`), ADD KEY `IDX_459C25C950962F74` (`lvl_id`), ADD KEY `IDX_459C25C96BF700BD` (`status_id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`), ADD KEY `IDX_957A647950962F74` (`lvl_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_885DBAFAA76ED395` (`user_id`), ADD KEY `IDX_885DBAFA6BF700BD` (`status_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_8ADC54D5DF522508` (`fiche_id`);

--
-- Index pour la table `scores`
--
ALTER TABLE `scores`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_750375EDF522508` (`fiche_id`), ADD KEY `IDX_750375ECB944F1A` (`student_id`), ADD KEY `IDX_750375E6BF700BD` (`status_id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `scores`
--
ALTER TABLE `scores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `choices`
--
ALTER TABLE `choices`
ADD CONSTRAINT `FK_5CE96391E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

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
