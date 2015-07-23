-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Ven 24 Juillet 2015 à 01:05
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
  `fiche_id` int(11) DEFAULT NULL,
  `content_choice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` tinyint(1) NOT NULL,
  `point` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `choices`
--

INSERT INTO `choices` (`id`, `fiche_id`, `content_choice`, `response`, `point`) VALUES
(1, 2, 'test', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
`id` int(11) NOT NULL,
  `class_level` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Structure de la table `fiches`
--

CREATE TABLE `fiches` (
`id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `lvl_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fiches`
--

INSERT INTO `fiches` (`id`, `teacher_id`, `lvl_id`, `status_id`, `title`, `content`) VALUES
(2, 4, 1, 1, '<p>test</p>', '<p>test</p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `lvl_id`) VALUES
(4, 'alexandre', 'alexandre', 'alexandre@ecole.com', 'alexandre@ecole.com', 1, '4simih0tz5kw0cggo4o8ko0ksokgow8', 'sacenIgHKmWcvpTsYxnT4si0jkiwn4IlJ62wrSXK4dpRVVRE9o4V4SR2WgOEE4XxS83negCsiAwKJzBYQpYKrQ==', '2015-07-23 23:09:00', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 0, NULL, NULL),
(22, 'Abel', 'abel', 'able@abel.com', 'able@abel.com', 1, 'qv8tccxkjmok40w0gwkwgks0s84ck4k', 'ZRx11ESV2+BiWQ7SHdkMlxLSNw14uqp0hmY8BuQqhhH5JYi68N8aU8LE8smixaTKRtzcNmPH+oe1YJ3FX/KqaA==', '2015-07-23 23:47:43', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, NULL),
(23, 'Al', 'al', 'al@al.com', 'al@al.com', 1, 'q1230a640hwk4w40ww8s04c0ccggswc', 'uSckL866YCAgW05D31ngowizwiXUwIH67NZUe8Sa64UzVGWWYfsq2e4p2calBwpsm+9d0ha5SV+sN/7OQvZfuQ==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, NULL),
(24, 'Alan', 'alan', 'alain@yahoo.biz', 'alain@yahoo.biz', 1, 'cuqnc0xgjsowsgcc4kskcggwckskc44', 'ks0NI93vkSQG2HDLwbLFZeJvVOsVUv1zJYiqxInxTB4GnzM2AMkY1R0sO4dUGyZGsAB3iG0pL3uKjq5Mgh/l+w==', NULL, 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `questions` (
`id` int(11) NOT NULL,
  `titre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `nom`) VALUES
(1, 'publish'),
(2, 'unpublish');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `choices`
--
ALTER TABLE `choices`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_5CE9639DF522508` (`fiche_id`);

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
 ADD PRIMARY KEY (`id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT pour la table `fiches`
--
ALTER TABLE `fiches`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `scores`
--
ALTER TABLE `scores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `choices`
--
ALTER TABLE `choices`
ADD CONSTRAINT `FK_5CE9639DF522508` FOREIGN KEY (`fiche_id`) REFERENCES `fiches` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `FK_5F9E962A4B89032C` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Contraintes pour la table `fiches`
--
ALTER TABLE `fiches`
ADD CONSTRAINT `FK_459C25C96BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
ADD CONSTRAINT `FK_459C25C941807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `fos_user` (`id`),
ADD CONSTRAINT `FK_459C25C950962F74` FOREIGN KEY (`lvl_id`) REFERENCES `classes` (`id`);

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
