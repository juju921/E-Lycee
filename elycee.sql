-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Jeu 16 Juillet 2015 à 22:33
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
  `fiches_id` int(11) DEFAULT NULL,
  `content_choice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` int(11) NOT NULL,
  `point` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `lvl_id`) VALUES
(4, 'alexandre', 'alexandre', 'alexandre@ecole.com', 'alexandre@ecole.com', 1, '4simih0tz5kw0cggo4o8ko0ksokgow8', 'sacenIgHKmWcvpTsYxnT4si0jkiwn4IlJ62wrSXK4dpRVVRE9o4V4SR2WgOEE4XxS83negCsiAwKJzBYQpYKrQ==', '2015-07-16 10:20:05', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 0, NULL, NULL),
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
(2, 4, 1, 'Jury de fin d’études : les développeurs devant les pros ! ro', 'Mercredi 24 juin, les étudiants de la filière Informatique Multimédia ont présenté leur projet de fin d''études devant un jury d''exception.', 'Pascale Neveu (@pascaleneveu), Directrice des études et co-fondatrice de L’École Multimédia et Thierry Tranchina, professeur référent de la filière Informatique Multimédia étaient accompagnés pour l’occasion de :\r\n\r\n    Maya Noël, Responsable pôle web – Chasseuse de têtes spécialisée en Javascript, Ruby et Python, chez Mobiskill\r\n    Tran Nguyen Ngoc, Freelance chez Fruit du Dragon\r\n    Olivier Reix , Co-fondateur et Producteur digital chez Ultranoir\r\n    Samuel Pott, Chef d’entreprise chez IQ12\r\n    Maxime Sarri, Développeur en freelance\r\n    Jean-Christophe Suzanne, Développeur en freelance\r\n    Pauline Touchet, Office manager chez AF83\r\n    Ludivine Réaut, Responsable du pôle recrutement/création digitale et Emmanuelle Rasse, Talent Acquisition Specialist – Recruiter Digital chez Aquent\r\n    Patricia Brouquère, Professeur de la filière création digitale\r\n    Fabio Soares, Professeur de la filière Direction Artistique Multimédia\r\n    Cyril Lebret, Directeur Artistique en freelance\r\n    Fabienne Schouler, Designer chez Orange\r\n\r\n \r\n\r\nCe sont des sujets de recherche et de développement qui ont demandé des qualités techniques et une aptitude à comprendre les enjeux du web d’aujourd’hui et de demain.\r\n\r\nCe jury vient clôturer pour nos étudiants leurs trois années passées après le bac.\r\n\r\nUn grand bravo à nos étudiants qui ont su montrer des projets de qualité et innovants, nous leur souhaitons une bonne continuation pour la suite ! Nous en retrouverons beaucoup en alternance dans quelques mois.\r\n\r\nNous remercions les prestigieux membres du jury pour leur confiance.', '2015-07-03 00:00:00', 'a:7:{s:8:"fileName";s:12:"/berline.jpg";s:12:"originalName";s:11:"berline.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:149912;s:4:"path";s:13:"//berline.jpg";s:5:"width";i:1600;s:6:"height";i:800;}'),
(3, 4, 1, 'Job Dating spécial « Métiers du numérique » : nouvelle édition mardi 29 septembre !', 'Mardi 29 septembre de 14h30 à 17h30, recrutements immédiats à L’École Multimédia ! Une vingtaine d''entreprises partenaires présentes, de nombreux postes à pourvoir, pour s''inscrire...', 'Mardi 29 septembre de 14h30 à 17h30, recrutements immédiats à L’École Multimédia !\r\n\r\nAfin de faciliter les rencontres étudiants/entreprises, L’École Multimédia organise plusieurs fois par an des Job Datings permettant aux candidats présélectionnés de passer en une après-midi plusieurs entretiens avec les recruteurs, des entreprises partenaires de l’école. Autant de chances pour les entreprises de dénicher la perle rare et pour les candidats d’optimiser leur recherche d’emploi, de stage ou de contrat en alternance.\r\n\r\nDe nombreux postes seront à pourvoir (CDI/CDD/contrats alternance/stages) : directeur artistique multimédia, chef de projet digital, UX designer, motion designer 2D/3D, développeur web…\r\n\r\nComment participer :\r\n\r\nVous êtes une entreprise, un recruteur ?\r\n\r\nRéservez dès maintenant votre place via ce formulaire de réservation. Si vous ne pouvez pas y participer, remplissez le formulaire pour recevoir une sélection de profils répondant à vos besoins.\r\n\r\nVous candidatez pour un emploi, un stage ou une alternance ?\r\n\r\nCe Job  Dating est ouvert aux étudiants et stagiaires qui suivent ou qui ont suivi une formation à L’École Multimédia, aux jeunes diplômés bac+2/3/4 souhaitant poursuivre leurs études en alternance à l’école, mais également aux étudiants d’autres écoles et aux professionnels en recherche d’un emploi.\r\n\r\nL’entrée au Job Dating est soumise à la validation de votre CV. Cette validation permet de faire coïncider les profils des candidats avec les postes recherchés par les entreprises.\r\n\r\nIls nous ont fait confiance lors de la précédente édition de juin :\r\n\r\nImage et dialogue group, Nexity consulting, Extrême Sensio, Jin, Len Médical, Les Artisans Numériques, TH-Industrie, Groupe Cayola, Better Art pour Michel Ajerstejn Studio, Eddo Communications, Disko, Toutpratique.com, Bouygues Energies et Services, 1000mercis, Acatus Informatique, Philharmonie de Paris, Guiz digital, Welcomeurope', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:12:"/5423931.jpg";s:12:"originalName";s:11:"5423931.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:12267;s:4:"path";s:13:"//5423931.jpg";s:5:"width";i:478;s:6:"height";i:268;}'),
(4, 4, 1, 'Open du web 2015, nos étudiants y étaient !', 'L’École Multimédia était partenaire de la 5e édition des Open du web. Une vingtaine de nos étudiants ont participé à ce grand concours-événement qui rassemblait plus de 350 participants à Paris, Tunis, Lille et Bordeaux.', 'Dans l’arène, des centaines de passionnés et professionnels évoluant dans le domaine du web se sont s’affrontés dans un cadre ludique et électrique pour démontrer leur savoir-faire. Le format était simple : réussir un maximum d’épreuves en 2 heures, toutes catégories confondues : Développement, Intégration, Community management, Administration système, Webdesign, SEO-SEM.\r\n\r\nJean-Marie Cléry, professeur en développement web et Fabio Soares, professeur de webdesign à L’École Multimédia, faisaient partis du jury pour corriger les épreuves en temps réel afin d’établir le classement. Après plus de 2h d’épreuves, le verdict est tombé : Alicia est arrivée 2e dans la catégorie Webdesign, Tanguy 2e en Développement et Adrien 5e en Intégration.\r\n\r\nÀ la suite du concours, les participants ont eu la possibilité de rencontrer des recruteurs présents pour postuler aux offres d’emploi ou tout simplement échanger.\r\n\r\nL', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:52:"/1010491_10204964268325809_6130020402444396237_n.jpg";s:12:"originalName";s:51:"1010491_10204964268325809_6130020402444396237_n.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:7583;s:4:"path";s:53:"//1010491_10204964268325809_6130020402444396237_n.jpg";s:5:"width";i:180;s:6:"height";i:180;}'),
(5, 4, 1, 'Open du web 2015, nos étudiants y étaient', 'L’École Multimédia était partenaire de la 5e édition des Open du web. Une vingtaine de nos étudiants ont participé à ce grand concours-événement qui rassemblait plus de 350 participants à Paris, Tunis, Lille et Bordeaux.', 'Dans l’arène, des centaines de passionnés et professionnels évoluant dans le domaine du web se sont s’affrontés dans un cadre ludique et électrique pour démontrer leur savoir-faire. Le format était simple : réussir un maximum d’épreuves en 2 heures, toutes catégories confondues : Développement, Intégration, Community management, Administration système, Webdesign, SEO-SEM.\r\n\r\nJean-Marie Cléry, professeur en développement web et Fabio Soares, professeur de webdesign à L’École Multimédia, faisaient partis du jury pour corriger les épreuves en temps réel afin d’établir le classement. Après plus de 2h d’épreuves, le verdict est tombé : Alicia est arrivée 2e dans la catégorie Webdesign, Tanguy 2e en Développement et Adrien 5e en Intégration.\r\n\r\nÀ la suite du concours, les participants ont eu la possibilité de rencontrer des recruteurs présents pour postuler aux offres d’emploi ou tout simplement échanger.\r\n\r\nL', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:12:"/5423931.jpg";s:12:"originalName";s:11:"5423931.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:12267;s:4:"path";s:13:"//5423931.jpg";s:5:"width";i:478;s:6:"height";i:268;}'),
(6, 4, 1, 'Open du web 2015, nos étudiants y', 'L’École Multimédia était partenaire de la 5e édition des Open du web. Une vingtaine de nos étudiants ont participé à ce grand concours-événement qui rassemblait plus de 350 participants à Paris, Tunis, Lille et Bordeaux.', 'Dans l’arène, des centaines de passionnés et professionnels évoluant dans le domaine du web se sont s’affrontés dans un cadre ludique et électrique pour démontrer leur savoir-faire. Le format était simple : réussir un maximum d’épreuves en 2 heures, toutes catégories confondues : Développement, Intégration, Community management, Administration système, Webdesign, SEO-SEM.\r\n\r\nJean-Marie Cléry, professeur en développement web et Fabio Soares, professeur de webdesign à L’École Multimédia, faisaient partis du jury pour corriger les épreuves en temps réel afin d’établir le classement. Après plus de 2h d’épreuves, le verdict est tombé : Alicia est arrivée 2e dans la catégorie Webdesign, Tanguy 2e en Développement et Adrien 5e en Intégration.\r\n\r\nÀ la suite du concours, les participants ont eu la possibilité de rencontrer des recruteurs présents pour postuler aux offres d’emploi ou tout simplement échanger.\r\n\r\nL', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:12:"/5423931.jpg";s:12:"originalName";s:11:"5423931.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:12267;s:4:"path";s:13:"//5423931.jpg";s:5:"width";i:478;s:6:"height";i:268;}'),
(7, 4, 1, 'Open du web kjlljl', 'L’École Multimédia était partenaire de la 5e édition des Open du web. Une vingtaine de nos étudiants ont participé à ce grand concours-événement qui rassemblait plus de 350 participants à Paris, Tunis, Lille et Bordeaux.', 'Dans l’arène, des centaines de passionnés et professionnels évoluant dans le domaine du web se sont s’affrontés dans un cadre ludique et électrique pour démontrer leur savoir-faire.  format était simple : réussir un maximum d’épreuves en 2 heures, toutes catégories confondues : Développement, Intégration, Community management, Administration système, Webdesign, SEO-SEM.\r\n\r\nJean-Marie Cléry, professeur en développement web et Fabio Soares, professeur de webdesign à L’École Multimédia, faisaient partis du jury pour corriger les épreuves en temps réel afin d’établir le classement. Après plus de 2h d’épreuves, le verdict est tombé : Alicia est arrivée 2e dans la catégorie Webdesign, Tanguy 2e en Développement et Adrien 5e en Intégration.\r\n\r\nÀ la suite du concours, les participants ont eu la possibilité de rencontrer des recruteurs présents pour postuler aux offres d’emploi ou tout simplement échanger.\r\n\r\nL', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:15:"/Question 7.jpg";s:12:"originalName";s:14:"Question 7.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:324908;s:4:"path";s:16:"//Question+7.jpg";s:5:"width";i:2000;s:6:"height";i:1218;}'),
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
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_5CE9639E9756732` (`fiches_id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
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