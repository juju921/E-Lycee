-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 23 Juillet 2015 à 02:25
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `elycee`
--

-- --------------------------------------------------------

--
-- Structure de la table `choices`
--

CREATE TABLE IF NOT EXISTS `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fiches_id` int(11) DEFAULT NULL,
  `content_choice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` int(11) NOT NULL,
  `point` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5CE9639E9756732` (`fiches_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_level` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `classes`
--

INSERT INTO `classes` (`id`, `class_level`) VALUES
(1, 'Terminale S'),
(2, 'première S');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `contents` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createAt` datetime NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F9E962A4B89032C` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4C62E638E7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `fiches`
--

CREATE TABLE IF NOT EXISTS `fiches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `lvl_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_459C25C941807E1D` (`teacher_id`),
  KEY `IDX_459C25C950962F74` (`lvl_id`),
  KEY `IDX_459C25C96BF700BD` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `lvl_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  KEY `IDX_957A647950962F74` (`lvl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `lvl_id`) VALUES
(4, 'alexandre', 'alexandre', 'alexandre@ecole.com', 'alexandre@ecole.com', 1, '4simih0tz5kw0cggo4o8ko0ksokgow8', 'sacenIgHKmWcvpTsYxnT4si0jkiwn4IlJ62wrSXK4dpRVVRE9o4V4SR2WgOEE4XxS83negCsiAwKJzBYQpYKrQ==', '2015-07-23 02:08:07', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 0, NULL, NULL),
(5, 'Abel', 'abel', 'Abel@ecole.com', 'abel@ecole.com', 0, 'odizbs92zms40w00s8owkkggswg0s88', '2G3wc/izm5Au9nr7HV2SX1GiHMJjOU3Ttm/UERyawgRyPBSMn+Gj13EsLa4k20W9tUd9mczchuI2WZCDU4I27w==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(6, 'Al', 'al', 'al@ecole.com', 'al@ecole.com', 1, 'a9uzphue0pkcgkk0o4kc00sk840cs0g', 'vrwrJDs5vhhkeMT6Wezlihe3/qll3y96XymvxWLA5fXOdB0RsUXSdVAt26fyig3IpRuKMfp8lV9YFcRaaqsFcg==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(7, 'Alain', 'alain', 'alain@ecole.com', 'alain@ecole.com', 1, 'xcd8hyy1xm8skk84400wogs88s0w0k', 'thBk7As6hYDGqVP4J62sMZirS7ph38RM17XKT57PbkAarMA+4K/NOyzgSxsxgDLLGQvhha0HfkYllwghRsVVXw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(8, 'Arthur', 'arthur', 'arthur@ecole.com', 'arthur@ecole.com', 1, 'spl25hc5gaowwos80gcwocw0ks08s40', 'VyiS7Tvrkd43sSlv/Q6PLfAu9NHdADLnTdbdc+Y+BeoMt5Tcmwve8jGzijxbPN1fEMCItcj4zCq/7j/wnGt97g==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(9, 'Carl', 'carl', 'carl@ecole.com', 'carl@ecole.com', 1, '9nf6ylh2i0co0sw8s0wkc4w0ows4ows', 'EKdooEGuCYUcrdG2/QuxUz3pZH/V6BUxA0pSX7lYWtEgPF2ZTXPDXTnWSH+qCr0+WTetr+HziR9NNUeAIJOPrw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(10, 'Blaise', 'blaise', 'blaise@ecole.com', 'blaise@ecole.com', 1, '84ivv1leydc04c8c0kg4ws48s4ko0oo', 'ZaS1N8epAhGGSCqXm7UVp5un0Ae9SvBDDVaVQAlFcPCylrKIlYt4QNlyybwK00MntLXIqLXeJ54VDLCZUrmVIw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(11, 'Isaac', 'isaac', 'isaac@ecole.com', 'isaac@ecole.com', 1, 'bcu7556jr7woggk4cwsk404s8ckc0w4', 'Bvbhr4UjoUM3+/V9un6LyEd31DQSUmoVru33Ar4feQlRMqS3lwR7pgh8CObPuV55z1+rSNVUgYnzqVm7npEzqg==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(12, 'Steve', 'steve', 'steve@ecole.com', 'steve@ecole.com', 1, '45mkikahyuskccooc4gsgwo4w4k8c8c', '5dhb4Q/cLVCVfzNLtbV3Kyek+soS7jQQh6TERuIHwSV5qm6TgaDw81GXNdbqpHBVWZTNsCl6elxVRflwc5sv6A==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FIRST_CLASS";}', 0, NULL, NULL),
(13, 'Alfred', 'alfred', 'alfred@ecole.com', 'alfred@ecole.com', 1, 'o1ypfl89rn4oco04ckk484o44s8c00g', 'Ghg7UfCPrYOgnTyFCAXEjbQWYGHHfMEZ0/bA0KL+1EEtsLf6r4ATccHVVmvZ97WIfl6WGmIgUwDflPHx6xJVEA==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL),
(14, 'Brendan', 'brendan', 'brandan@ecole.com', 'brandan@ecole.com', 1, 'mo9bb72vo004w0ogs888ogg8sk8gokg', 'lo/a7mIM72K2faNIznXZMllGkuIx3gAFgncnrA/oHQ62tV28hnRnWzfOdybkYe7z9LuJ1eWWkcU61H8IvQf9Lg==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL),
(15, 'David', 'david', 'david@ecole.com', 'david@ecole.com', 1, 'i0v9y7c03ig404g8sckwokc44cgoow4', 'qKFLqMnTXfN+Mv7+Lmxu4hAi4H1lpwzFpINT+8TtUqZVDOIZuCPaC4zNWG3Wnsh2et/ckrElbQZRlEyBWchFgQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL),
(16, 'Goerge', 'goerge', 'george@ecole.com', 'george@ecole.com', 1, 'b68kpfbwg1csg0kw48so04080o4g44o', 'MMzmeu2Xgsd+sL5UpwkbLMTWCK//B3QM/RbjjmwXac0jCsjFS8KAOYNAT0nblyMVEWs8obUMLFWr8DljqiBlyA==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL),
(17, 'Jim', 'jim', 'jim@ecole.com', 'jim@ecole.com', 1, 'wi24qsv5fpcwww884oc0kgg0kw48ww', '9/dapKjBj6s4cb6jDFc+077AL7EC051QXMVRwbU+m//AISHZOXgcvXRKqHUWbV9zOzfJQHskbB618qm30VRtcg==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL),
(18, 'Leslie', 'leslie', 'leslie@ecole.com', 'leslie@ecole.com', 1, '5ojo2guoyuscsw48kkgw0wwogkwo4o4', 'zP7bCEuUybcZH8PrWZfzN8ytTdic9+t4oy+SJkmhLKI8BiC6LmdPHRpZP1qnFalIQvMwr6S6mrtqXPewQWN9/Q==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL),
(19, 'Maria', 'maria', 'maria@ecole.com', 'maria@ecole.com', 1, 'm3eieor68dwcco880os88swcg0cgwws', 'Ov7vla1aJH4lZ2pS64dg5H45H9EpD1jLttIIeR4IaiSr78MACLXB1K41l4rlT//g35FBk34p3QyXZsS9tH2mfQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL),
(20, 'Rasmus', 'rasmus', 'rasmus@ecole.com', 'rasmus@ecole.com', 1, '7nsg01ppp5og4wssgccswcg0c8kgokw', 'KKy9KCbVxuj2bAJ2I7EKGGP0uK/Nczh0rBOdCIvHOKCtDszlVCXzC0W2nvK1WFDi7HQuK505NO5Ue/11/aweLw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL),
(21, 'Tim', 'tim', 'tim@ecole.com', 'tim@ecole.com', 1, 'ht1o6kdut4gsw4k4s0wkg4kgos4kk04', 'bX3rLti3ng4wO1fQ8i+qTn6PZIw+GVJTtknk3ZF+1F3zgMQH3P1b1KqXWEeVrpKvr0pkD77VLQDwnAgdxPLRKw==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:11:"FINAL_CLASS";}', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `titre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `url_thumbnail` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_885DBAFAA76ED395` (`user_id`),
  KEY `IDX_885DBAFA6BF700BD` (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `status_id`, `titre`, `abstract`, `content`, `date`, `url_thumbnail`) VALUES
(2, 4, 1, 'Jury de fin d’études : les développeurs devant les pros ! ro', '<p>Mercredi 24 juin, les &eacute;tudiants de la fili&egrave;re Informatique Multim&eacute;dia ont pr&eacute;sent&eacute; leur projet de fin d''&eacute;tudes devant un jury d''exception.</p>', '<p>Pascale Neveu (@pascaleneveu), Directrice des &eacute;tudes et co-fondatrice de L&rsquo;&Eacute;cole Multim&eacute;dia et Thierry Tranchina, professeur r&eacute;f&eacute;rent de la fili&egrave;re Informatique Multim&eacute;dia &eacute;taient accompagn&eacute;s pour l&rsquo;occasion de : Maya No&euml;l, Responsable p&ocirc;le web &ndash; Chasseuse de t&ecirc;tes sp&eacute;cialis&eacute;e en Javascript, Ruby et Python, chez Mobiskill Tran Nguyen Ngoc, Freelance chez Fruit du Dragon Olivier Reix , Co-fondateur et Producteur digital chez Ultranoir Samuel Pott, Chef d&rsquo;entreprise chez IQ12 Maxime Sarri, D&eacute;veloppeur en freelance Jean-Christophe Suzanne, D&eacute;veloppeur en freelance Pauline Touchet, Office manager chez AF83 Ludivine R&eacute;aut, Responsable du p&ocirc;le recrutement/cr&eacute;ation digitale et Emmanuelle Rasse, Talent Acquisition Specialist &ndash; Recruiter Digital chez Aquent Patricia Brouqu&egrave;re, Professeur de la fili&egrave;re cr&eacute;ation digitale Fabio Soares, Professeur de la fili&egrave;re Direction Artistique Multim&eacute;dia Cyril Lebret, Directeur Artistique en freelance Fabienne Schouler, Designer chez Orange Ce sont des sujets de recherche et de d&eacute;veloppement qui ont demand&eacute; des qualit&eacute;s techniques et une aptitude &agrave; comprendre les enjeux du web d&rsquo;aujourd&rsquo;hui et de demain. Ce jury vient cl&ocirc;turer pour nos &eacute;tudiants leurs trois ann&eacute;es pass&eacute;es apr&egrave;s le bac. Un grand bravo &agrave; nos &eacute;tudiants qui ont su montrer des projets de qualit&eacute; et innovants, nous leur souhaitons une bonne continuation pour la suite ! Nous en retrouverons beaucoup en alternance dans quelques mois. Nous remercions les prestigieux membres du jury pour leur confiance.</p>', '2015-07-03 00:00:00', 'a:7:{s:8:"fileName";s:16:"/open_du_web.jpg";s:12:"originalName";s:15:"open_du_web.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:240740;s:4:"path";s:17:"//open_du_web.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}'),
(3, 4, 1, 'Job Dating spécial « Métiers du numérique » : nouvelle édition mardi 29 septembre !', '<p>Mardi 29 septembre de 14h30 &agrave; 17h30, recrutements imm&eacute;diats &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia ! Une vingtaine d''entreprises partenaires pr&eacute;sentes, de nombreux postes &agrave; pourvoir, pour s''inscrire...</p>', '<p>Mardi 29 septembre de 14h30 &agrave; 17h30, recrutements imm&eacute;diats &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia ! Afin de faciliter les rencontres &eacute;tudiants/entreprises, L&rsquo;&Eacute;cole Multim&eacute;dia organise plusieurs fois par an des Job Datings permettant aux candidats pr&eacute;s&eacute;lectionn&eacute;s de passer en une apr&egrave;s-midi plusieurs entretiens avec les recruteurs, des entreprises partenaires de l&rsquo;&eacute;cole. Autant de chances pour les entreprises de d&eacute;nicher la perle rare et pour les candidats d&rsquo;optimiser leur recherche d&rsquo;emploi, de stage ou de contrat en alternance. De nombreux postes seront &agrave; pourvoir (CDI/CDD/contrats alternance/stages) : directeur artistique multim&eacute;dia, chef de projet digital, UX designer, motion designer 2D/3D, d&eacute;veloppeur web&hellip; Comment participer : Vous &ecirc;tes une entreprise, un recruteur ? R&eacute;servez d&egrave;s maintenant votre place via ce formulaire de r&eacute;servation. Si vous ne pouvez pas y participer, remplissez le formulaire pour recevoir une s&eacute;lection de profils r&eacute;pondant &agrave; vos besoins. Vous candidatez pour un emploi, un stage ou une alternance ? Ce Job Dating est ouvert aux &eacute;tudiants et stagiaires qui suivent ou qui ont suivi une formation &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, aux jeunes dipl&ocirc;m&eacute;s bac+2/3/4 souhaitant poursuivre leurs &eacute;tudes en alternance &agrave; l&rsquo;&eacute;cole, mais &eacute;galement aux &eacute;tudiants d&rsquo;autres &eacute;coles et aux professionnels en recherche d&rsquo;un emploi. L&rsquo;entr&eacute;e au Job Dating est soumise &agrave; la validation de votre CV. Cette validation permet de faire co&iuml;ncider les profils des candidats avec les postes recherch&eacute;s par les entreprises. Ils nous ont fait confiance lors de la pr&eacute;c&eacute;dente &eacute;dition de juin : Image et dialogue group, Nexity consulting, Extr&ecirc;me Sensio, Jin, Len M&eacute;dical, Les Artisans Num&eacute;riques, TH-Industrie, Groupe Cayola, Better Art pour Michel Ajerstejn Studio, Eddo Communications, Disko, Toutpratique.com, Bouygues Energies et Services, 1000mercis, Acatus Informatique, Philharmonie de Paris, Guiz digital, Welcomeurope</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:8:"/Web.jpg";s:12:"originalName";s:7:"Web.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:152442;s:4:"path";s:9:"//Web.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}'),
(4, 4, 1, 'Open du web 2015, nos étudiants y étaient !', '<p>L&rsquo;&Eacute;cole Multim&eacute;dia &eacute;tait partenaire de la 5e &eacute;dition des Open du web. Une vingtaine de nos &eacute;tudiants ont particip&eacute; &agrave; ce grand concours-&eacute;v&eacute;nement qui rassemblait plus de 350 participants &agrave; Paris, Tunis, Lille et Bordeaux.</p>', '<p>Dans l&rsquo;ar&egrave;ne, des centaines de passionn&eacute;s et professionnels &eacute;voluant dans le domaine du web se sont s&rsquo;affront&eacute;s dans un cadre ludique et &eacute;lectrique pour d&eacute;montrer leur savoir-faire. Le format &eacute;tait simple : r&eacute;ussir un maximum d&rsquo;&eacute;preuves en 2 heures, toutes cat&eacute;gories confondues : D&eacute;veloppement, Int&eacute;gration, Community management, Administration syst&egrave;me, Webdesign, SEO-SEM. Jean-Marie Cl&eacute;ry, professeur en d&eacute;veloppement web et Fabio Soares, professeur de webdesign &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, faisaient partis du jury pour corriger les &eacute;preuves en temps r&eacute;el afin d&rsquo;&eacute;tablir le classement. Apr&egrave;s plus de 2h d&rsquo;&eacute;preuves, le verdict est tomb&eacute; : Alicia est arriv&eacute;e 2e dans la cat&eacute;gorie Webdesign, Tanguy 2e en D&eacute;veloppement et Adrien 5e en Int&eacute;gration. &Agrave; la suite du concours, les participants ont eu la possibilit&eacute; de rencontrer des recruteurs pr&eacute;sents pour postuler aux offres d&rsquo;emploi ou tout simplement &eacute;changer. L</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:20:"/LES-OPEN-DU-WEB.jpg";s:12:"originalName";s:19:"LES-OPEN-DU-WEB.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:153927;s:4:"path";s:21:"//LES-OPEN-DU-WEB.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}'),
(5, 4, 1, 'Open du web 2015, nos étudiants y étaient', '<p>L&rsquo;&Eacute;cole Multim&eacute;dia &eacute;tait partenaire de la 5e &eacute;dition des Open du web. Une vingtaine de nos &eacute;tudiants ont particip&eacute; &agrave; ce grand concours-&eacute;v&eacute;nement qui rassemblait plus de 350 participants &agrave; Paris, Tunis, Lille et Bordeaux.</p>', '<p>Dans l&rsquo;ar&egrave;ne, des centaines de passionn&eacute;s et professionnels &eacute;voluant dans le domaine du web se sont s&rsquo;affront&eacute;s dans un cadre ludique et &eacute;lectrique pour d&eacute;montrer leur savoir-faire. Le format &eacute;tait simple : r&eacute;ussir un maximum d&rsquo;&eacute;preuves en 2 heures, toutes cat&eacute;gories confondues : D&eacute;veloppement, Int&eacute;gration, Community management, Administration syst&egrave;me, Webdesign, SEO-SEM. Jean-Marie Cl&eacute;ry, professeur en d&eacute;veloppement web et Fabio Soares, professeur de webdesign &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, faisaient partis du jury pour corriger les &eacute;preuves en temps r&eacute;el afin d&rsquo;&eacute;tablir le classement. Apr&egrave;s plus de 2h d&rsquo;&eacute;preuves, le verdict est tomb&eacute; : Alicia est arriv&eacute;e 2e dans la cat&eacute;gorie Webdesign, Tanguy 2e en D&eacute;veloppement et Adrien 5e en Int&eacute;gration. &Agrave; la suite du concours, les participants ont eu la possibilit&eacute; de rencontrer des recruteurs pr&eacute;sents pour postuler aux offres d&rsquo;emploi ou tout simplement &eacute;changer. L</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:16:"/open_du_web.jpg";s:12:"originalName";s:15:"open_du_web.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:202615;s:4:"path";s:17:"//open_du_web.jpg";s:5:"width";i:2048;s:6:"height";i:1152;}'),
(6, 4, 1, 'Open du web 2015, nos étudiants y', '<p>L&rsquo;&Eacute;cole Multim&eacute;dia &eacute;tait partenaire de la 5e &eacute;dition des Open du web. Une vingtaine de nos &eacute;tudiants ont particip&eacute; &agrave; ce grand concours-&eacute;v&eacute;nement qui rassemblait plus de 350 participants &agrave; Paris, Tunis, Lille et Bordeaux.</p>', '<p>Dans l&rsquo;ar&egrave;ne, des centaines de passionn&eacute;s et professionnels &eacute;voluant dans le domaine du web se sont s&rsquo;affront&eacute;s dans un cadre ludique et &eacute;lectrique pour d&eacute;montrer leur savoir-faire. Le format &eacute;tait simple : r&eacute;ussir un maximum d&rsquo;&eacute;preuves en 2 heures, toutes cat&eacute;gories confondues : D&eacute;veloppement, Int&eacute;gration, Community management, Administration syst&egrave;me, Webdesign, SEO-SEM. Jean-Marie Cl&eacute;ry, professeur en d&eacute;veloppement web et Fabio Soares, professeur de webdesign &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, faisaient partis du jury pour corriger les &eacute;preuves en temps r&eacute;el afin d&rsquo;&eacute;tablir le classement. Apr&egrave;s plus de 2h d&rsquo;&eacute;preuves, le verdict est tomb&eacute; : Alicia est arriv&eacute;e 2e dans la cat&eacute;gorie Webdesign, Tanguy 2e en D&eacute;veloppement et Adrien 5e en Int&eacute;gration. &Agrave; la suite du concours, les participants ont eu la possibilit&eacute; de rencontrer des recruteurs pr&eacute;sents pour postuler aux offres d&rsquo;emploi ou tout simplement &eacute;changer. L</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:18:"/maxresdefault.jpg";s:12:"originalName";s:17:"maxresdefault.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:159179;s:4:"path";s:19:"//maxresdefault.jpg";s:5:"width";i:1920;s:6:"height";i:1080;}'),
(7, 4, 1, 'Open du web kjlljl', '<p>L&rsquo;&Eacute;cole Multim&eacute;dia &eacute;tait partenaire de la 5e &eacute;dition des Open du web. Une vingtaine de nos &eacute;tudiants ont particip&eacute; &agrave; ce grand concours-&eacute;v&eacute;nement qui rassemblait plus de 350 participants &agrave; Paris, Tunis, Lille et Bordeaux.</p>', '<p>Dans l&rsquo;ar&egrave;ne, des centaines de passionn&eacute;s et professionnels &eacute;voluant dans le domaine du web se sont s&rsquo;affront&eacute;s dans un cadre ludique et &eacute;lectrique pour d&eacute;montrer leur savoir-faire. format &eacute;tait simple : r&eacute;ussir un maximum d&rsquo;&eacute;preuves en 2 heures, toutes cat&eacute;gories confondues : D&eacute;veloppement, Int&eacute;gration, Community management, Administration syst&egrave;me, Webdesign, SEO-SEM. Jean-Marie Cl&eacute;ry, professeur en d&eacute;veloppement web et Fabio Soares, professeur de webdesign &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, faisaient partis du jury pour corriger les &eacute;preuves en temps r&eacute;el afin d&rsquo;&eacute;tablir le classement. Apr&egrave;s plus de 2h d&rsquo;&eacute;preuves, le verdict est tomb&eacute; : Alicia est arriv&eacute;e 2e dans la cat&eacute;gorie Webdesign, Tanguy 2e en D&eacute;veloppement et Adrien 5e en Int&eacute;gration. &Agrave; la suite du concours, les participants ont eu la possibilit&eacute; de rencontrer des recruteurs pr&eacute;sents pour postuler aux offres d&rsquo;emploi ou tout simplement &eacute;changer. L</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:13:"/graphics.jpg";s:12:"originalName";s:12:"graphics.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:187115;s:4:"path";s:14:"//graphics.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}'),
(8, NULL, 1, 'Open du web kjlljl', 'L’École Multimédia était partenaire de la 5e édition des Open du web. Une vingtaine de nos étudiants ont participé à ce grand concours-événement qui rassemblait plus de 350 participants à Paris, Tunis, Lille et Bordeaux.', 'Dans l’arène, des centaines de passionnés et professionnels évoluant dans le domaine du web se sont s’affrontés dans un cadre ludique et électrique pour démontrer leur savoir-faire.  format était simple : réussir un maximum d’épreuves en 2 heures, toutes catégories confondues : Développement, Intégration, Community management, Administration système, Webdesign, SEO-SEM.\r\n\r\nJean-Marie Cléry, professeur en développement web et Fabio Soares, professeur de webdesign à L’École Multimédia, faisaient partis du jury pour corriger les épreuves en temps réel afin d’établir le classement. Après plus de 2h d’épreuves, le verdict est tombé : Alicia est arrivée 2e dans la catégorie Webdesign, Tanguy 2e en Développement et Adrien 5e en Intégration.\r\n\r\nÀ la suite du concours, les participants ont eu la possibilité de rencontrer des recruteurs présents pour postuler aux offres d’emploi ou tout simplement échanger.\r\n\r\nL', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:12:"/5423931.jpg";s:12:"originalName";s:11:"5423931.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:12267;s:4:"path";s:13:"//5423931.jpg";s:5:"width";i:478;s:6:"height";i:268;}');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fiche_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `note` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_750375EDF522508` (`fiche_id`),
  KEY `IDX_750375ECB944F1A` (`student_id`),
  KEY `IDX_750375E6BF700BD` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `nom`) VALUES
(1, 'publish'),
(2, 'unpublish');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `FK_5CE9639E9756732` FOREIGN KEY (`fiches_id`) REFERENCES `fiches` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_5F9E962A4B89032C` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

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
-- Contraintes pour la table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `FK_750375E6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_750375ECB944F1A` FOREIGN KEY (`student_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_750375EDF522508` FOREIGN KEY (`fiche_id`) REFERENCES `fiches` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
