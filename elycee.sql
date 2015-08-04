-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Mar 04 Août 2015 à 19:22
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
  `content_choice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` tinyint(1) NOT NULL,
  `point` double NOT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `choices`
--

INSERT INTO `choices` (`id`, `content_choice`, `response`, `point`, `question_id`) VALUES
(1, 'test', 1, 2, NULL);

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
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `matiere` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fiches`
--

INSERT INTO `fiches` (`id`, `teacher_id`, `lvl_id`, `status_id`, `title`, `content`, `matiere`) VALUES
(2, 4, 1, 1, '<p>test</p>', '<p>test</p>', ''),
(3, 4, 1, 1, '<p>res</p>', '<p>sqdqs</p>', '<p>sdqsd</p>'),
(4, 4, 1, 1, '<p>res</p>', '<p>sqdqs</p>', '<p>sdqsd</p>'),
(5, 4, 1, 1, '<p>res</p>', '<p>sqdqs</p>', '<p>sdqsd</p>'),
(6, 4, 1, 1, '<p>res</p>', '<p>sqdqs</p>', '<p>sdqsd</p>'),
(7, 4, 1, 1, '<p>res</p>', '<p>sqdqs</p>', '<p>sdqsd</p>'),
(8, 4, 1, 1, '<p>eddsdsdf</p>', '<p>sdfsd</p>', '<p>dsfdsd</p>'),
(9, 4, 1, 1, '<p>&nbsp;KLJ</p>', '<p>&nbsp;KJLJ</p>', '<p>&nbsp;KJLJ</p>');

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
(4, 'alexandre', 'alexandre', 'alexandre@ecole.com', 'alexandre@ecole.com', 1, '4simih0tz5kw0cggo4o8ko0ksokgow8', 'sacenIgHKmWcvpTsYxnT4si0jkiwn4IlJ62wrSXK4dpRVVRE9o4V4SR2WgOEE4XxS83negCsiAwKJzBYQpYKrQ==', '2015-08-04 15:48:07', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:12:"ROLE_TEACHER";}', 0, NULL, NULL),
(22, 'Abel', 'abel', 'able@abel.com', 'able@abel.com', 1, 'qv8tccxkjmok40w0gwkwgks0s84ck4k', 'ZRx11ESV2+BiWQ7SHdkMlxLSNw14uqp0hmY8BuQqhhH5JYi68N8aU8LE8smixaTKRtzcNmPH+oe1YJ3FX/KqaA==', '2015-08-04 14:16:26', 0, 0, NULL, 'p8Kyefaa9wkcXwbLadEeBVkPB46uAPHIDhOYQG1yc8Q', '2015-08-03 13:12:19', 'a:1:{i:0;s:12:"ROLE_STUDENT";}', 0, NULL, NULL),
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
(2, 4, 1, 'Basket : les physiciens découvrent la force de la marche aléatoire', '<p class="content-title small-margin">En appliquant &agrave; des sports collectifs, tels que le basket, le mod&egrave;le math&eacute;matique de&nbsp;...</p>', '<p class="bodytext">La physique g&eacute;n&eacute;ralement, s&rsquo;attache &agrave; r&eacute;soudre des probl&egrave;mes fondamentaux. Elle cherche &agrave; d&eacute;couvrir de nouvelles&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-particule-elementaire-12442/">particules &eacute;l&eacute;mentaires</a>&nbsp;ou tente de d&eacute;crire les forces qui r&eacute;gissent notre univers. Mais parfois, la physique s&rsquo;int&eacute;resse &agrave; des questions plus&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/terre/infos/dico/d/structure-terre-terre-4725/">terre</a>&nbsp;&agrave; terre. Et c&rsquo;est dans cet &eacute;tat d&rsquo;esprit qu&rsquo;un groupe de physiciens am&eacute;ricains de l&rsquo;universit&eacute; du Colorado, de l&rsquo;universit&eacute; de Boston et du&nbsp;Santa Fe Institute&nbsp;a choisi d&rsquo;&eacute;tudier l&rsquo;&eacute;volution dans le temps des&nbsp;<a class="xt-&shy;click" title="In basketball, physics predicts how big a lead your team needs to win" href="http://news.sciencemag.org/physics/2015/06/basketball-physics-predicts-how-big-lead-your-team-needs-win" target="_blank">changements de leader</a>&nbsp;dans les&nbsp;<a class="xt-&shy;click" title="Le sport pr&eacute;serve notre cerveau de la vieillesse" href="http://www.futura-sciences.com/magazines/sante/infos/actu/d/sport-sport-preserve-notre-cerveau-vieillesse-55365/" target="_blank">sports</a>&nbsp;d&rsquo;&eacute;quipes. Dans le basket, en particulier, ils ont d&eacute;couvert que ces changements ob&eacute;issent aux lois de la&nbsp;<a class="xt-&shy;click" title="Math&eacute;matiques : Wendelin Werner, le seigneur des zigzags" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-mathematiques-wendelin-werner-seigneur-zigzags-9589/" target="_blank">marche al&eacute;atoire</a>.</p>\r\n<p class="bodytext">Imaginez un pion que l&rsquo;on peut faire glisser sur un &eacute;chiquier g&eacute;ant. &Agrave; chaque instant, le pion peut avancer, reculer, aller vers la droite ou aller vers la gauche, sans que son&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-mouvement-316/">mouvement</a>&nbsp;ne soit influenc&eacute; par les mouvements fait pr&eacute;c&eacute;demment. Le pion d&eacute;crit ce que les math&eacute;maticiens &ndash; et m&ecirc;me les physiciens et les &eacute;conomistes &ndash; appellent une marche&nbsp;<a class="xt-&shy;click" title="Un g&eacute;n&eacute;rateur quantique de nombres al&eacute;atoires avec un smartphone" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/cryptographie-quantique-generateur-quantique-nombres-aleatoires-smartphone-53784/" target="_blank">al&eacute;atoire</a>. Et on savait d&eacute;j&agrave; que les marches al&eacute;atoires servent de mod&egrave;les &agrave; bon nombre de ph&eacute;nom&egrave;nes physiques comme le<a class="xt-&shy;click" title="Einstein n''a pas toujours raison, comme le prouve le mouvement brownien" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-einstein-na-pas-toujours-raison-comme-prouve-mouvement-brownien-20049/" target="_blank">m</a><a class="xt-&shy;click" title="Einstein n''a pas toujours raison, comme le prouve le mouvement brownien" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-einstein-na-pas-toujours-raison-comme-prouve-mouvement-brownien-20049/" target="_blank">ouvement brownien</a>. Voil&agrave; qu&rsquo;on d&eacute;couvre aujourd&rsquo;hui qu&rsquo;elles peuvent aussi &eacute;clairer les matchs de basket !</p>\r\n<p class="fs-media"><img class=" fs-txdam-73485 diaporama-trigger" title="Un marcheur a la possibilit&eacute; de se d&eacute;placer al&eacute;atoirement vers la gauche, vers la droite, vers le haut ou vers le bas. Il d&eacute;crit alors une &laquo; marche al&eacute;atoire &raquo;. &copy; Images des math&eacute;matiques/CNRS" src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_marche_aleatoire_2D.jpg" alt="Un marcheur a la possibilit&eacute; de se d&eacute;placer al&eacute;atoirement vers la gauche, vers la droite, vers le haut ou vers le bas. Il d&eacute;crit alors une &laquo; marche al&eacute;atoire &raquo;. &copy; Images des math&eacute;matiques/CNRS" width="450" height="233" /><br /><span class="fs-media-legende">Un marcheur a la possibilit&eacute; de se d&eacute;placer al&eacute;atoirement vers la gauche, vers la droite, vers le haut ou vers le bas. Il d&eacute;crit alors une &laquo; marche al&eacute;atoire &raquo;. &copy; Images des math&eacute;matiques/CNRS</span></p>\r\n<h2>Un regard nouveau sur le basket</h2>\r\n<p class="bodytext">Traditionnellement, les analyses sportives se fondent sur la composition de l&rsquo;&eacute;quipe et sur les aptitudes individuelles de chacun des joueurs. Selon la th&eacute;orie d&eacute;velopp&eacute;e par les chercheurs am&eacute;ricains, certains facteurs ne sont pas aussi significatifs que pourrait le laisser croire l&rsquo;exp&eacute;rience du spectateur. Preuve de la l&eacute;gitimit&eacute; de la marche al&eacute;atoire, selon les auteurs : le fait que le temps durant lequel une &eacute;quipe m&egrave;ne, l&rsquo;instant auquel se produit le dernier changement de leader et le moment auquel a lieu le plus gros &eacute;cart de points sont tous les trois gouvern&eacute;s par la loi arcsinus, laquelle d&eacute;coule directement du mod&egrave;le de la marche al&eacute;atoire.</p>\r\n<p class="bodytext">Les physiciens impliqu&eacute;s dans l''&eacute;tude assurent ainsi que certaines p&eacute;riodes d''un match de basket sont plus propices que d&rsquo;autres aux changements de leader : les quelques premi&egrave;res minutes et les quelques derni&egrave;res. C&rsquo;est &eacute;galement dans ces moments-l&agrave; que la diff&eacute;rence de points peut se creuser. Les premi&egrave;res et les derni&egrave;res minutes d&rsquo;un match de basket seraient donc les plus d&eacute;terminantes. Le reste de la rencontre serait aussi impr&eacute;visible qu&rsquo;un jeu de&nbsp;<a class="xt-&shy;click" title="On a observ&eacute; un jeu de pile ou face quantique" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-on-observe-jeu-pile-face-quantique-19869/" target="_blank">pile ou face</a>. Et c&rsquo;est sans doute cette incertitude qui fait tout l&rsquo;int&eacute;r&ecirc;t d&rsquo;un match pour les amateurs de sport.</p>\r\n<p class="bodytext">Les chercheurs am&eacute;ricains vont m&ecirc;me jusqu''&agrave; proposer une&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quation</a>&nbsp;qui permet de d&eacute;finir &agrave; quel moment le leader peut se sentir en confiance, compte tenu de la diff&eacute;rence de points et du temps restant dans le match. Une &eacute;quipe qui m&egrave;ne, par exemple, de 10 points &agrave; 8 minutes de la fin de la rencontre aura 90 % de chances de l&rsquo;emporter. Idem pour une &eacute;quipe qui m&egrave;ne de 18 points &agrave; la fin de la premi&egrave;re mi-temps.</p>\r\n<p class="bodytext">Ce mod&egrave;le bas&eacute; sur la marche al&eacute;atoire semble fournir une description remarquable de la dynamique d&rsquo;un&nbsp;<a class="xt-&shy;click" title="Ob&eacute;sit&eacute; : les sports collectifs sont plus b&eacute;n&eacute;fiques" href="http://www.futura-sciences.com/magazines/sante/infos/actu/d/medecine-obesite-sports-collectifs-sont-plus-benefiques-40710/" target="_blank">sport collectif</a>. Ses pr&eacute;dictions sont &eacute;tonnamment pr&eacute;cises pour le basket et rejoignent les donn&eacute;es recueillies sur plus de 40.000 matchs professionnels ou semi-professionnels. Concernant les autres sports, comme le football am&eacute;ricain ou le hockey, par exemple, les &eacute;carts observ&eacute;s sugg&egrave;rent que des m&eacute;canismes plus complexes sont en jeu.</p>', '2015-07-03 00:00:00', 'a:7:{s:8:"fileName";s:8:"/NBA.jpg";s:12:"originalName";s:7:"NBA.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:326124;s:4:"path";s:9:"//NBA.jpg";s:5:"width";i:1200;s:6:"height";i:675;}'),
(3, 4, 1, 'John Nash, le génial mathématicien schizophrène, est mort', '<p>John Nash (86 ans) et sa femme Alicia (82 ans) sont morts tous&nbsp;les deux suite &agrave; leur &eacute;jection d&rsquo;un taxi lors d&rsquo;un accident ...</p>', '<p class="bodytext"><em>Sic&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/espace/infos/dico/d/univers-transit-419/">transit</a>&nbsp;gloria mundi&nbsp;</em>(<em>&laquo;&nbsp;</em>Ainsi passe la gloire du monde&nbsp;<em>&raquo;</em>), pourrait-on dire en apprenant le d&eacute;c&egrave;s de John Nash dans un accident de voiture sur une autoroute situ&eacute;e dans l&rsquo;&Eacute;tat du New Jersey (&Eacute;tats-Unis). (L&rsquo;expression latine &eacute;tait prononc&eacute;e plusieurs fois devant un nouveau pape lors de sa c&eacute;r&eacute;monie d&rsquo;intronisation alors qu&rsquo;on faisait br&ucirc;ler une m&egrave;che d&rsquo;&eacute;toupe pour lui rappeler la fragilit&eacute; et l&rsquo;insignifiance de toute vie humaine). Le math&eacute;maticien de g&eacute;nie, prix Nobel d&rsquo;&eacute;conomie en 1994, rentrait en effet tout juste de l&rsquo;a&eacute;roport apr&egrave;s avoir re&ccedil;u en Norv&egrave;ge le&nbsp;<a class="xt-&shy;click" title="Le prix Abel 2009 r&eacute;compense la g&eacute;om&eacute;trie de Mikhail Gromov" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-prix-abel-2009-recompense-geometrie-mikhail-gromov-18819/">prix Abel</a>, un &eacute;quivalent du prix Nobel, mais en math&eacute;matique cette fois-ci.</p>\r\n<p class="bodytext">Pour le grand public, John Nash c&rsquo;est avant tout un homme confront&eacute; &agrave; une maladie mentale, la<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/medecine-schizophrenie-12989/">schizophr&eacute;nie</a>, qu&rsquo;incarnait au cin&eacute;ma en 2001 l&rsquo;acteur Russel Crowe dans&nbsp;<a title="un homme d''exception bande annonce" href="http://www.dailymotion.com/video/xpwfod_un-homme-d-exception-bande-annonce-vf_shortfilms" target="_blank"><em>Un homme d&rsquo;exception</em></a>(<em>A Beautiful Mind</em>) le film r&eacute;alis&eacute; par Ron Howard &agrave; partir du livre de Sylvia Nasar. Pour beaucoup, le nom de Nash est associ&eacute; &agrave; un r&eacute;sultat math&eacute;matique qu&rsquo;il a d&eacute;couvert et expos&eacute; &agrave; 21 ans dans son&nbsp;<a class="xt-&shy;click" title="La th&egrave;se de John Nash" href="https://www.princeton.edu/mudd/news/faq/topics/Non-Cooperative_Games_Nash.pdf" target="_blank">doctorat</a>&nbsp;&agrave; l&rsquo;universit&eacute; de Princeton et qui concernait la th&eacute;orie des jeux. Il s&rsquo;agissait alors d&rsquo;une toute jeune branche des math&eacute;matiques en plein essor depuis les travaux de&nbsp;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/personnalites/d/matiere-john-von-neumann-256/">John von Neumann</a>&nbsp;et Oskar Morgenstern expos&eacute;s en 1944 dans une somme impressionnante intitul&eacute;e<em>Th&eacute;orie des jeux et du comportement &eacute;conomique</em>&nbsp;(<em>Theory of Games and Economic Behavior</em>).</p>\r\n<h2>De l&rsquo;&eacute;quilibre de Nash aux &eacute;quations aux d&eacute;riv&eacute;es partielles</h2>\r\n<p class="bodytext">Cette th&eacute;orie permet de donner un cadre math&eacute;matique rigoureux et des outils d&rsquo;analyse performants pour r&eacute;soudre des probl&egrave;mes de strat&eacute;gie aussi bien en &eacute;conomie qu&rsquo;en politique et elle a &eacute;t&eacute; fr&eacute;quemment mise &agrave; contribution par la suite. L&rsquo;&eacute;quilibre de Nash, comme on l&rsquo;appelle aujourd&rsquo;hui, est d&rsquo;une certaine fa&ccedil;on le d&eacute;veloppement logique de consid&eacute;rations d&eacute;j&agrave; faites en 1938 par le math&eacute;maticien fran&ccedil;ais Antoine Augustin Cournot (bien connu pour sa d&eacute;finition du<a class="xt-&shy;click" title="Dossier : Vous avez dit hasard ?" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-vous-avez-dit-hasard-883/">hasard</a>) dans son ouvrage&nbsp;<em>Recherches sur les principes math&eacute;matiques de la th&eacute;orie des richesses.</em></p>\r\n<p class="bodytext">Mais, pour les math&eacute;maticiens, l&rsquo;homme qui vient de d&eacute;c&eacute;der &agrave; 86 ans en compagnie de son &eacute;pouse Alicia, une physicienne de formation qu&rsquo;il avait rencontr&eacute;e alors qu&rsquo;elle &eacute;tudiait au MIT en 1955, John Nash c&rsquo;est avant tout le g&eacute;nie &agrave; l&rsquo;origine de certains des&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-theoreme-383/">th&eacute;or&egrave;mes</a>&nbsp;les plus importants en analyse du XXe si&egrave;cle, en particulier en g&eacute;om&eacute;trie diff&eacute;rentielle et dans le cadre de la th&eacute;orie des&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quations</a>&nbsp;aux d&eacute;riv&eacute;es partielles. Ces deux branches des math&eacute;matiques sont fondamentales en physique th&eacute;orique dans le cadre de ce qu&rsquo;on appelle l&rsquo;analyse sur les vari&eacute;t&eacute;s, dont l&rsquo;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-application-13200/">application</a>&nbsp;la plus frappante n&rsquo;est rien de moins que la th&eacute;orie de la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-relativite-generale-3572/">relativit&eacute; g&eacute;n&eacute;rale</a>. L&rsquo;&eacute;tude de la g&eacute;om&eacute;trie de l&rsquo;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/physique-espace-temps-322/">espace-temps</a>&nbsp;repose en effet lourdement sur la g&eacute;om&eacute;trie diff&eacute;rentielle.</p>\r\n<p class="bodytext">Quant &agrave; la th&eacute;orie des &eacute;quations aux d&eacute;riv&eacute;es partielles, il suffit de dire que les &eacute;quations d&rsquo;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/personnalites/d/physique-albert-einstein-205/">Einstein</a>&nbsp;en relativit&eacute; g&eacute;n&eacute;rale, de Maxwell pour le&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/matiere-champ-electromagnetique-3879/">champ &eacute;lectromagn&eacute;tique</a>, de&nbsp;<a class="xt-&shy;click" title="Navier-Stokes : le probl&egrave;me du Prix du mill&eacute;naire n''est pas r&eacute;solu" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-navier-stokes-probleme-prix-millenaire-nest-pas-resolu-54772/">Navier-Stokes</a>&nbsp;pour la m&eacute;canique des fluides, de Schr&ouml;dinger pour certaines parties de la&nbsp;<a class="xt-&shy;click" title="Dossier M&eacute;canique quantique : fondements et applications" href="http://www.futura-sciences.com/magazines/matiere/infos/dossiers/d/physique-mecanique-quantique-fondements-applications-1698/">m&eacute;canique quantique</a>&nbsp;et celle de&nbsp;<a class="xt-&shy;click" title="Le graph&egrave;ne viole la loi de conduction de la chaleur de Fourier" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-graphene-viole-loi-conduction-chaleur-fourier-53740/">Fourier</a>&nbsp;pour la chaleur sont des &eacute;quations aux d&eacute;riv&eacute;es partielles pour avoir un aper&ccedil;u de l&rsquo;importance des travaux de Nash ne serait-ce que pour la physique math&eacute;matique. Mais les r&eacute;sultats qu&rsquo;il a obtenus concernent aussi, et avant tout, les math&eacute;matiques pures. On pourra se faire une id&eacute;e de certaines des contributions de Nash en regardant la vid&eacute;o ci-dessous, celle d&rsquo;une conf&eacute;rence d&rsquo;un de ses grands admirateurs, le m&eacute;daill&eacute; Fields fran&ccedil;ais&nbsp;<a class="definition personnalite external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/personnalite.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/personnalites/d/mathematiques-cedric-villani-759/">C&eacute;dric Villani</a>.</p>\r\n<p class="fs-media"><iframe style="display: block; margin-left: auto; margin-right: auto;" src="https://player.vimeo.com/video/29267283" width="600" height="350" frameborder="0"></iframe><br /><span class="fs-media-legende">Cette conf&eacute;rence donn&eacute;e dans le cadre du cycle &laquo; Un texte, un math&eacute;maticien &raquo; a &eacute;t&eacute; organis&eacute;e par la Soci&eacute;t&eacute; Math&eacute;matique de France (SMF), la Biblioth&egrave;que nationale de France (BnF), et Animath. &copy; BnF Paris, Soc. Math&eacute;matique de France, Vim&eacute;o</span></p>\r\n<h2>Du prix Nobel au prix Abel</h2>\r\n<p class="bodytext">Mais d&rsquo;un point de vue plus personnel, qui &eacute;tait John Forbes Nash, n&eacute; le 13 juin 1928 aux &Eacute;tats-Unis&thinsp;? Son p&egrave;re &eacute;tait un ing&eacute;nieur &eacute;lectricien et sa m&egrave;re professeur de latin. Avide de lecture, joueur d&rsquo;&eacute;chec et capable de siffler des m&eacute;lodies enti&egrave;res de Bach, John Nash commence &agrave; succomber adolescent &agrave; l&rsquo;attraction des math&eacute;matiques en lisant le c&eacute;l&egrave;bre&nbsp;<a href="http://www.amazon.com/Mathematics-Touchstone-Book-E-T-Bell/dp/0671628186#reader_0671628186" target="_blank"><em>Men of Mathematics</em></a>, une biographie des plus c&eacute;l&egrave;bres math&eacute;maticiens que l&rsquo;on doit &agrave; E. T. Bell. Il commencera pourtant &agrave; faire des &eacute;tudes d&rsquo;ing&eacute;nieur chimiste avant de basculer d&eacute;finitivement du c&ocirc;t&eacute; des math&eacute;matiques.</p>\r\n<p class="bodytext">D&eacute;j&agrave; p&egrave;re d&rsquo;un enfant, il rencontre en 1955&nbsp;<a class="xt-&shy;click" title="Alicai Larde et John Nash" href="http://www.pbs.org/wgbh/amex/nash/peopleevents/p_anash.html" target="_blank">Alicia Larde</a>, une &eacute;tudiante en physique au MIT originaire du Salvador en Am&eacute;rique centrale. Il l&rsquo;&eacute;pousera en 1957 mais, en 1959, alors qu&rsquo;Alicia est enceinte de leur fils, la sant&eacute; mentale de Nash se d&eacute;t&eacute;riore au point qu&rsquo;il est admis au&nbsp;<em>McLean Hospital</em>&nbsp;o&ugrave; on lui diagnostique une schizophr&eacute;nie parano&iuml;de. Sa production math&eacute;matique va s&rsquo;arr&ecirc;ter rapidement par la suite pendant des dizaines d&rsquo;ann&eacute;es. Alicia divorce finalement en 1963 mais continue de s&rsquo;occuper de lui, l&rsquo;h&eacute;bergeant m&ecirc;me chez elle en 1970. Au d&eacute;but des ann&eacute;es 1990, Nash commen&ccedil;a &agrave; &eacute;merger de ses probl&egrave;mes, recouvrant une partie de ses impressionnantes capacit&eacute;s.</p>\r\n<p class="bodytext">Le&nbsp;<a class="xt-&shy;click" title="The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel 1994" href="http://www.nobelprize.org/nobel_prizes/economic-sciences/laureates/1994/" target="_blank">prix Nobel d&rsquo;&eacute;conomie</a>&nbsp;lui est finalement d&eacute;cern&eacute; en 1994 pour son travail de 1950 sur la th&eacute;orie des jeux. Mais, tout comme Albert Einstein avait eu son prix Nobel pour une contribution bien plus mineure que sa th&eacute;orie de la relativit&eacute;, &agrave; savoir la compr&eacute;hension de l&rsquo;effet photo-&eacute;lectrique, la majorit&eacute; des math&eacute;maticiens s&rsquo;accordaient &agrave; dire que les contributions de Nash en analyse &eacute;taient bien plus importantes. C''est pourquoi de nombreux scientifiques ont salu&eacute; son attribution du&nbsp;<a class="xt-&shy;click" title="The Abel Prize Laureates 2015" href="http://www.abelprize.no/c63466/seksjon/vis.html?tid=63467&amp;strukt_tid=63466" target="_blank">prix Abel</a>&nbsp;de math&eacute;matiques, il y a quelques mois, en compagnie de son coll&egrave;gue et ami Louis Nirenberg. Entretemps, John et Alicia s&rsquo;&eacute;taient de nouveau mari&eacute;s en 2001.</p>\r\n<p class="bodytext">Son d&eacute;c&egrave;s et celui de son &eacute;pouse, li&eacute; au non-port de la ceinture &agrave; l&rsquo;arri&egrave;re d&rsquo;un taxi, sonne comme un &eacute;v&eacute;nement tragique. Son &oelig;uvre reste cependant bien vivante et continuera &agrave; inspirer les math&eacute;maticiens des si&egrave;cles &agrave; venir. Son histoire permettra sans doute de nous interroger davantage sur les liens qu''il existe entre l&rsquo;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/corps-humain-intelligence-13498/">intelligence</a>, la cr&eacute;ativit&eacute; et les troubles mentaux. Plusieurs math&eacute;maticiens de g&eacute;nie, mais pas tous, ont en effet vu leur sant&eacute; mentale s&rsquo;alt&eacute;rer &agrave; un moment de leur vie, tels&nbsp;<a class="xt-&shy;click" title="Georg Ferdinand Cantor" href="http://serge.mehl.free.fr/chrono/Cantor.html" target="_blank">Cantor</a>, G&ouml;del et&nbsp;<a class="xt-&shy;click" title="Grothendieck : l''Albert Einstein des math&eacute;matiques du XXe si&eacute;cle est d&eacute;c&eacute;d&eacute;" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/geometrie-grothendieck-albert-einstein-mathematiques-xxe-siecle-decede-56030/">Grothendieck</a>.</p>', '2015-08-03 00:00:00', 'a:7:{s:8:"fileName";s:24:"/john_forbes_nash_jr.jpg";s:12:"originalName";s:23:"john_forbes_nash_jr.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:157261;s:4:"path";s:25:"//john_forbes_nash_jr.jpg";s:5:"width";i:1200;s:6:"height";i:675;}'),
(4, 4, 1, 'Navier-Stokes : le problème du Prix du millénaire n''est pas résolu', '<p>Le prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay concernant les &eacute;quations de Navier-Stokes va-t-il &eacute;chapper des mains du math&eacute;maticien Mukhtarbay Otelbayev ...</p>', '<p>Le prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay concernant les &eacute;quations de Navier-Stokes va-t-il &eacute;chapper des mains du math&eacute;maticien Mukhtarbay Otelbayev&thinsp;? Le Kazakh reconna&icirc;t une erreur dans sa d&eacute;monstration math&eacute;matique mais ne d&eacute;sarme pas pour autant.</p>\r\n<p class="bodytext">Dans un article pr&eacute;c&eacute;dent, Futura-Sciences s&rsquo;&eacute;tait pench&eacute; en d&eacute;tail sur la d&eacute;claration retentissante faite en janvier 2014 par Mukhtarbay Otelbayev, math&eacute;maticien kazakh de l&rsquo;<em>Eurasian National University</em>&nbsp;&agrave; Astana, au Kazakhstan. Ce brillant chercheur pensait avoir r&eacute;solu l&rsquo;un des probl&egrave;mes du prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay : la d&eacute;monstration, ou de la r&eacute;futation, d&rsquo;un&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-theoreme-383/">th&eacute;or&egrave;me</a>&nbsp;conjectur&eacute; depuis longtemps concernant les&nbsp;<a class="xt-&shy;click" title="Navier-Stokes : le probl&egrave;me du prix du mill&eacute;naire est peut-&ecirc;tre r&eacute;solu" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-navier-stokes-probleme-prix-millenaire-peut-etre-resolu-51943/" target="_blank">&eacute;quations de Navier-Stokes</a>.</p>\r\n<p class="bodytext">En r&eacute;sum&eacute;, il s&rsquo;agit de savoir si ces&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dico/d/mathematiques-equation-375/">&eacute;quations</a>&nbsp;math&eacute;matiques &mdash; cens&eacute;es d&eacute;crire l&rsquo;&eacute;coulement des fluides &mdash; poss&egrave;dent toujours en 3 dimensions une solution continue et qui ne finit pas par devenir&nbsp;<a class="definition glossaire external-link xt-&shy;click" href="http://www.futura-sciences.com/magazines/sante/infos/dico/d/medecine-pathologique-2801/">pathologique</a>&nbsp;en adoptant des caract&eacute;ristiques physiquement irr&eacute;alistes. Il s&rsquo;agit d&rsquo;un probl&egrave;me de physique math&eacute;matique dont la solution aurait des r&eacute;percussions dans plusieurs branches des sciences naturelles, des&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/environnement/infos/dico/d/climatologie-prevision-meteorologique-14553/">pr&eacute;visions m&eacute;t&eacute;orologiques</a>&nbsp;&agrave; la conception des avions, par exemple et peut-&ecirc;tre m&ecirc;me avec la th&eacute;orie des&nbsp;<a class="xt-&shy;click" title="Certains trous noirs rendraient l''espace-temps turbulent" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-certains-trous-noirs-rendraient-espace-temps-turbulent-54003/">trous noirs</a>. Bien s&ucirc;r, comme toujours en math&eacute;matique, elle pourrait aussi avoir des cons&eacute;quences inattendues dans des domaines en apparence fort &eacute;loign&eacute;s de la th&eacute;orie des &eacute;quations aux d&eacute;riv&eacute;es partielles.</p>\r\n<p class="fs-media"><img class=" fs-txdam-53034 diaporama-trigger" style="display: block; margin-left: auto; margin-right: auto;" title="Le math&eacute;maticien Mukhtarbay Otelbayev a travaill&eacute; 30 ans sur le probl&egrave;me de l''existence et de l''unicit&eacute; des solutions aux &eacute;quations de Navier-Stokes en fonction de conditions initiales donn&eacute;es. Ce probl&egrave;me math&eacute;matique a de nombreuses cons&eacute;quences en m&eacute;canique des fluides." src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_navier_stokes_Mukhtarbay_Otelbaev_2012_WWW__ENU_KZ__01.jpg" alt="Le math&eacute;maticien Mukhtarbay Otelbayev a travaill&eacute; 30 ans sur le probl&egrave;me de l''existence et de l''unicit&eacute; des solutions aux &eacute;quations de Navier-Stokes en fonction de conditions initiales donn&eacute;es. Ce probl&egrave;me math&eacute;matique a de nombreuses cons&eacute;quences en m&eacute;canique des fluides." width="223" height="253" data-htmlarea-clickenlarge="1" /><br /><span class="fs-media-legende">Le math&eacute;maticien Mukhtarbay Otelbayev a travaill&eacute; 30 ans sur le probl&egrave;me de l''existence et de l''unicit&eacute; des solutions aux &eacute;quations de Navier-Stokes en fonction de conditions initiales donn&eacute;es. Ce probl&egrave;me math&eacute;matique a de nombreuses cons&eacute;quences en m&eacute;canique des fluides. &copy; L. N. Gumilyov,&nbsp;<em>Eurasian National University</em></span></p>\r\n<h2>Un maillon faible dans la cha&icirc;ne des raisonnements</h2>\r\n<p class="bodytext">Plusieurs math&eacute;maticiens de talents s&rsquo;y sont attaqu&eacute;s et pas seulement parce que celle ou celui qui trouvera la solution se verrait attribuer l&rsquo;un des Prix du mill&eacute;naire de l&rsquo;institut de math&eacute;matiques Clay et le million de dollars qui l&rsquo;accompagne. Ainsi, en 2006, la math&eacute;maticienne Penny Smith de l&rsquo;Universit&eacute; Lehigh &agrave; Bethl&eacute;em, en Pennsylvanie, pensait avoir trouv&eacute; avant Mukhtarbay Otelbaev la solution au probl&egrave;me. Elle a d&ucirc; d&eacute;chanter et retirer d&rsquo;<a class="xt-&shy;click" title="arXiv, l''archive scientifique mondialement c&eacute;l&egrave;bre, a 20 ans !" href="http://www.futura-sciences.com/magazines/matiere/infos/actu/d/physique-arxiv-archive-scientifique-mondialement-celebre-20-ans-32920/">arxiv</a>&nbsp;l&rsquo;article qu&rsquo;elle avait post&eacute; en raison d&rsquo;une erreur dans sa d&eacute;monstration. Le grand math&eacute;maticien&nbsp;<a class="xt-&shy;click" title="Math&eacute;matiques : les fabuleuses d&eacute;couvertes du surdou&eacute; Terence Tao" href="http://www.futura-sciences.com/magazines/mathematiques/infos/actu/d/mathematiques-mathematiques-fabuleuses-decouvertes-surdoue-terence-tao-9730/">Terence Tao</a>&nbsp;s&rsquo;y est attaqu&eacute; lui aussi avec une approche tr&egrave;s originale comme il l&rsquo;explique sur son&nbsp;<a class="xt-&shy;click" title="Finite time blowup for an averaged three-dimensional Navier-Stokes equation" href="http://terrytao.wordpress.com/2014/02/04/finite-time-blowup-for-an-averaged-three-dimensional-navier-stokes-equation/" target="_blank">blog</a>, sans r&eacute;sultats probants cependant pour l&rsquo;instant.</p>\r\n<p class="bodytext">Les coll&egrave;gues d&rsquo;Otelbaev ont bien s&ucirc;r entrepris de v&eacute;rifier ses calculs. La t&acirc;che est en elle-m&ecirc;me difficile et s&rsquo;y est ajout&eacute; l&rsquo;inconv&eacute;nient que l&rsquo;article du chercheur kazakh &eacute;tait r&eacute;dig&eacute; en russe. R&eacute;cemment,&nbsp;<a class="xt-&shy;click" title="Stephen Montgomery-Smith" href="http://www.math.missouri.edu/~stephen/" target="_blank">Stephen Montgomery-Smith</a>, un math&eacute;maticien de l&rsquo;Universit&eacute; du Missouri &agrave;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/espace/infos/dico/d/univers-columbia-4174/">Columbia</a>&nbsp;qui lui aussi s&rsquo;est lanc&eacute; dans la course au prix du mill&eacute;naire, a envoy&eacute; un mail a Mukhtarbay Otelbaev lui pointant un probl&egrave;me. Le math&eacute;maticien russophone a d&ucirc; se rendre &agrave; l&rsquo;&eacute;vidence en r&eacute;pondant : &laquo;&nbsp;<em>&agrave; ma grande honte, &agrave; la page 56, l&rsquo;in&eacute;galit&eacute; (6.34) est incorrecte donc la proposition 6.3 (p. 54) n&rsquo;est pas prouv&eacute;e. Je suis d&eacute;sol&eacute; &raquo;</em>.</p>\r\n<p class="bodytext">Sa d&eacute;monstration s&rsquo;&eacute;croule donc. Mais le chercheur n&rsquo;abandonne pas pour autant. Il pense qu&rsquo;il devrait pouvoir contourner l&rsquo;obstacle d&rsquo;ici quelques mois. Une m&eacute;saventure similaire &eacute;tait arriv&eacute;e au math&eacute;maticien britannique&nbsp;<a class="xt-&shy;click" title="Une nouvelle d&eacute;monstration du th&eacute;or&egrave;me de Fermat-Wiles?" href="http://www.futura-sciences.com/magazines/sciences/infos/actu/d/recherche-nouvelle-demonstration-theoreme-fermat-wiles-6299/">Andrew Wiles</a>, professeur &agrave; l&rsquo;universit&eacute; de Princeton, surtout connu pour avoir d&eacute;montr&eacute; le dernier th&eacute;or&egrave;me de&nbsp;<a class="xt-&shy;click" title="Dossier : Merveilleux nombres premiers" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-merveilleux-nombres-premiers-1791/page/6/">Fermat</a>&nbsp;en 1994. Wiles &eacute;tait au bord de l&rsquo;abandon apr&egrave;s un an de travail pour corriger lui aussi une erreur dans sa d&eacute;monstration quand le chemin s&rsquo;est brutalement ouvert devant lui.</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:18:"/Navier-Stokes.jpg";s:12:"originalName";s:17:"Navier-Stokes.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:131617;s:4:"path";s:19:"//Navier-Stokes.jpg";s:5:"width";i:1200;s:6:"height";i:675;}'),
(5, 4, 1, 'Science décalée : calculer Pi avec… un fusil à pompe', '<p>Le nombre Pi (&Pi;) suscite l&rsquo;int&eacute;r&ecirc;t des math&eacute;maticiens depuis l&rsquo;Antiquit&eacute;. De multiples m&eacute;thodes ont &eacute;t&eacute; utilis&eacute;es pour tenter de lui donner une approximation...</p>', '<p>Le nombre Pi (&Pi;) suscite l&rsquo;int&eacute;r&ecirc;t des math&eacute;maticiens depuis l&rsquo;Antiquit&eacute;. De multiples m&eacute;thodes ont &eacute;t&eacute; utilis&eacute;es pour tenter de lui donner une approximation. Des chercheurs canadiens proposent une nouvelle m&eacute;thode, pas la plus efficace mais selon eux utilisable en cas d&rsquo;attaque de zombies. Il suffit de recourir &agrave; un fusil &agrave; pompe charg&eacute; de cartouches &agrave; plombs.<br /><br /></p>\r\n<p class="bodytext">Deux scientifiques canadiens ont imagin&eacute; un sc&eacute;nario tordu pour donner plus de cr&eacute;dit &agrave; leur nouvelle m&eacute;thode farfelue pour calculer le fameux nombre &Pi;. Leurs outils principaux : une feuille d&rsquo;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/matiere/infos/dico/d/chimie-aluminium-14515/">aluminium</a>&nbsp;et un fusil &agrave; pompe. Le tout publi&eacute; dans&nbsp;<a class="xt-&shy;click" title="A Ballistic Monte Carlo Approximation of &Pi;" href="http://arxiv.org/abs/1404.1499" target="_blank">arxiv</a>, une revue o&ugrave; les scientifiques d&eacute;posent volontiers leurs travaux</p>\r\n<h2>Le contexte : le fusil &agrave; pompe, l&rsquo;alternative aux zombies</h2>\r\n<p class="bodytext">Imaginons un monde o&ugrave; un mal &eacute;trange frapperait le genre humain, transformant les victimes en morts-vivants dont la seule volont&eacute; serait de retirer l&rsquo;<a class="xt-&shy;click" title="Comment l''humanit&eacute; a perdu sa diversit&eacute;" href="http://www.futura-sciences.com/magazines/terre/infos/actu/d/paleontologie-humanite-perdu-diversite-20827/">humanit&eacute;</a>&nbsp;qui resterait &agrave; ceux qui sont encore &eacute;pargn&eacute;s&hellip; Heureusement, la nature am&egrave;ne &agrave; une telle&nbsp;<a class="xt-&shy;click" title="Dossier : Diversit&eacute; g&eacute;n&eacute;tique et questions de races" href="http://www.futura-sciences.com/magazines/sante/infos/dossiers/d/genetique-diversite-genetique-questions-races-786/">diversit&eacute; g&eacute;n&eacute;tique</a>&nbsp;que l&rsquo;on peut esp&eacute;rer que parmi les sept milliards d&rsquo;hommes et de femmes, certains seront en mesure de r&eacute;sister.</p>\r\n<p class="bodytext">N&eacute;anmoins, la&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/maison/infos/dico/d/maison-resistance-10889/">r&eacute;sistance</a>&nbsp;doit s&rsquo;organiser, et face &agrave; ces zombies d&eacute;c&eacute;r&eacute;br&eacute;s, la science demeure probablement l&rsquo;un des piliers sur lesquels reposer. Mais avec quels moyens, si les acc&egrave;s aux<a class="xt-&shy;click" title="Pascal, un supercalculateur dans un processeur graphique NVidia" href="http://www.futura-sciences.com/magazines/high-tech/infos/actu/d/informatique-pascal-supercalculateur-processeur-graphique-nvidia-53017/">supercalculateurs</a>&nbsp;sont obstru&eacute;s par une horde de revenants affam&eacute;s ? Ceux du bord, &eacute;videmment.</p>\r\n<p class="bodytext">Deux scientifiques canadiens, Vincent Dumoulin et F&eacute;lix Thouin, de l&rsquo;<a class="xt-&shy;click" title="Universit&eacute; de Montr&eacute;al" href="http://www.umontreal.ca/" target="_blank">universit&eacute; de Montr&eacute;al</a>, offrent &agrave; tous les survivants la possibilit&eacute; de poursuivre les calculs et de trouver une solution face &agrave; cette apocalypse&nbsp;<a class="xt-&shy;click" title="Des bact&eacute;ries parasites transforment des plantes en zombie" href="http://www.futura-sciences.com/magazines/nature/infos/actu/d/botanique-bacteries-parasites-transforment-plantes-zombie-53301/">zombie</a>, en recourant &agrave; une arme probablement tr&egrave;s utile dans ce cas de figure : le fusil &agrave; pompe. En voici le principe.</p>\r\n<h2>L&rsquo;&eacute;tude : du tir aux pi-geons &agrave; Monte Carlo</h2>\r\n<p class="bodytext">Prenons un carr&eacute; de c&ocirc;t&eacute; r=1, dans lequel on trace un quart de cercle qui commence dans un coin et finit dans celui oppos&eacute;. La surface totale de ce carr&eacute; est donc &eacute;gale &agrave; 1. Celle du quart de cercle vaut &Pi;r<sup>2</sup>/4 soit &Pi;/4 puisque r<sup>2</sup>&nbsp;= 1. Reste &agrave; d&eacute;terminer la surface. Comment faire ?</p>\r\n<p class="fs-media"><img class=" fs-txdam-58342 diaporama-trigger" style="display: block; margin-left: auto; margin-right: auto;" title="Repr&eacute;sentation de l&rsquo;arc de cercle dans un carr&eacute;. La surface gris&eacute;e &eacute;quivaut &agrave; &Pi;/4." src="http://fr.cdn.v5.futura-sciences.com/builds/images/rte/RTEmagicC_dumoulin-et-al_arxiv.jpg" alt="Repr&eacute;sentation de l&rsquo;arc de cercle dans un carr&eacute;. La surface gris&eacute;e &eacute;quivaut &agrave; &Pi;/4." width="303" height="250" data-htmlarea-clickenlarge="1" /><br /><span class="fs-media-legende">Repr&eacute;sentation de l&rsquo;arc de cercle dans un carr&eacute;. La surface gris&eacute;e &eacute;quivaut &agrave; &Pi;/4. &copy; Dumoulin et Thouin,&nbsp;<em>arXiv</em></span></p>\r\n<p class="bodytext">Voici une id&eacute;e simple : il suffit de disposer de tr&egrave;s nombreux grains de taille identique et de les disposer al&eacute;atoirement de mani&egrave;re &agrave; recouvrir une grande partie du dessin. En les comptant un &agrave; un, on peut obtenir un ratio entre la surface totale du carr&eacute; et celle de l&rsquo;arc de disque et, &agrave; terme, estimer &Pi;. On peut le faire avec des grains de&nbsp;<a class="xt-&shy;click" title="Premi&egrave;re carte compl&egrave;te du g&eacute;nome du riz" href="http://www.futura-sciences.com/magazines/sciences/infos/actu/d/recherche-premiere-carte-complete-genome-riz-6939/">riz</a>&nbsp;par exemple, mais en cas d&rsquo;apocalypse plus que dans toute autre situation, il ne faut pas&nbsp;<a class="xt-&shy;click" title="B&eacute;b&eacute; : pour &eacute;viter le surpoids, laissez-le manger avec ses doigts !" href="http://www.futura-sciences.com/magazines/sante/infos/actu/d/medecine-bebe-eviter-surpoids-laissez-manger-doigts-36627/">jouer avec la nourriture</a>. C&rsquo;est l&agrave; que le fusil &agrave; pompe intervient.</p>\r\n<p class="bodytext">Cette approximation statistique est une m&eacute;thode dite de Monte Carlo (qui utilise un moyen al&eacute;atoire). Les deux chercheurs ont choisi un Mossberg 500, l&rsquo;une des&nbsp;<a class="xt-&shy;click" title="Open hardware : bient&ocirc;t des armes &agrave; feu imprimables en 3D" href="http://www.futura-sciences.com/magazines/high-tech/infos/actu/d/technologie-open-hardware-bientot-armes-feu-imprimables-3d-46217/">armes &agrave; feu</a>&nbsp;les plus courantes aux &Eacute;tats-Unis voisins, avec lequel ils ont tir&eacute; &agrave; 200 reprises sur une cible en&nbsp;<a class="xt-&shy;click" title="Dossier : L''Aluminium un m&eacute;tal d''exception" href="http://www.futura-sciences.com/magazines/terre/infos/dossiers/d/geologie-aluminium-metal-exception-780/">aluminium</a>, &agrave; 20 m de distance. Les cartouches explosent en de multiples &eacute;clats, si bien qu&rsquo;en tout, les auteurs ont compt&eacute; 30.857 trous de plomb sur la cible.</p>\r\n<p class="fs-media"><img class=" fs-txdam-58340" style="display: block; margin-left: auto; margin-right: auto;" title="Un exemple de fusil &agrave; pompe Mossberg 500. Cette arme est pris&eacute;e aux &Eacute;tats-Unis, notamment pour son bon rapport qualit&eacute;/prix. M&ecirc;me la police en est &eacute;quip&eacute;e." src="http://www.renders-graphiques.fr/image/upload/normal/M1014.png" alt="Un exemple de fusil &agrave; pompe Mossberg 500. Cette arme est pris&eacute;e aux &Eacute;tats-Unis, notamment pour son bon rapport qualit&eacute;/prix. M&ecirc;me la police en est &eacute;quip&eacute;e." width="512" height="308" data-htmlarea-clickenlarge="1" /><br /><span class="fs-media-legende">Un exemple de fusil &agrave; pompe Mossberg 500. Cette arme est pris&eacute;e aux &Eacute;tats-Unis, notamment pour son bon rapport qualit&eacute;/prix. M&ecirc;me la police en est &eacute;quip&eacute;e. &copy; Fluzwup, Wikip&eacute;dia, cc by sa 3.0</span></p>\r\n<p class="bodytext">Ensuite, malheureusement, il ne suffit pas de compter. Il y a une petite subtilit&eacute; essentielle. En fonction du&nbsp;<a class="definition glossaire external-link xt-&shy;click" style="color: #0055b0; text-decoration: none; border-color: #0055b0; padding-right: 11px; background-image: url(''http://fr.cdn.v5.futura-sciences.com/systeme/design/Images/Systeme/IconesLiens/glossaire.png''); background-position: 100% 100%; background-repeat: no-repeat;" href="http://www.futura-sciences.com/magazines/environnement/infos/dico/d/climatologie-vent-14560/">vent</a>, de la hauteur du fusil au moment du tir et d&rsquo;autres param&egrave;tres incontr&ocirc;lables, la r&eacute;partition de chacun de ces points n&rsquo;est pas al&eacute;atoire. Il leur a donc fallu estimer la densit&eacute; de d&eacute;flagrations selon la zone de la cible. Ainsi, 10.000 des impacts ont permis une telle cartographie. Avec les 20.857 points restants, les auteurs ont pu faire leurs comptes et trouver une valeur de &Pi; &eacute;gale &agrave; 3,131. Soit une approximation pr&eacute;cise &agrave; 99,66 %.</p>\r\n<h2>L&rsquo;&oelig;il ext&eacute;rieur : Pi n&rsquo;a rien d&rsquo;absurde</h2>\r\n<p class="bodytext">&Eacute;videmment, cette &eacute;tude, bien que bas&eacute;e sur des calculs s&eacute;rieux, est tout &agrave; fait loufoque. N&eacute;anmoins, elle montre qu&rsquo;avec de petits moyens, il est possible de retrouver des constantes math&eacute;matiques essentielles, puisque&nbsp;<a class="xt-&shy;click" title="Dossier Initiation &agrave; la g&eacute;om&eacute;trie : Pi, le rapport de la circonf&eacute;rence au diam&egrave;tre" href="http://www.futura-sciences.com/magazines/mathematiques/infos/dossiers/d/mathematiques-initiation-geometrie-1443/page/6/">&Pi;</a>&nbsp;fait l&rsquo;objet d&rsquo;&eacute;tudes depuis l&rsquo;Antiquit&eacute;.</p>\r\n<p class="bodytext">Il existe d&rsquo;autres m&eacute;thodes, plus simples, pour aboutir &agrave; des approximations de ce nombre infini, &agrave; l&rsquo;aide d&rsquo;une roue par exemple. Mais celle-ci devait &ecirc;tre trop classique aux yeux des deux chercheurs, d&eacute;sireux de cr&eacute;er leur propre m&eacute;thode&hellip; par l&rsquo;absurde.</p>', '2015-04-17 00:00:00', 'a:7:{s:8:"fileName";s:28:"/8476624791_daae549edf_o.jpg";s:12:"originalName";s:27:"8476624791_daae549edf_o.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:191629;s:4:"path";s:29:"//8476624791_daae549edf_o.jpg";s:5:"width";i:1200;s:6:"height";i:675;}'),
(6, 4, 1, 'Open du web 2015, nos étudiants y', '<p>L&rsquo;&Eacute;cole Multim&eacute;dia &eacute;tait partenaire de la 5e &eacute;dition des Open du web. Une vingtaine de nos &eacute;tudiants ont particip&eacute; &agrave; ce grand concours-&eacute;v&eacute;nement qui rassemblait plus de 350 participants &agrave; Paris, Tunis, Lille et Bordeaux.</p>', '<p>Dans l&rsquo;ar&egrave;ne, des centaines de passionn&eacute;s et professionnels &eacute;voluant dans le domaine du web se sont s&rsquo;affront&eacute;s dans un cadre ludique et &eacute;lectrique pour d&eacute;montrer leur savoir-faire. Le format &eacute;tait simple : r&eacute;ussir un maximum d&rsquo;&eacute;preuves en 2 heures, toutes cat&eacute;gories confondues : D&eacute;veloppement, Int&eacute;gration, Community management, Administration syst&egrave;me, Webdesign, SEO-SEM. Jean-Marie Cl&eacute;ry, professeur en d&eacute;veloppement web et Fabio Soares, professeur de webdesign &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, faisaient partis du jury pour corriger les &eacute;preuves en temps r&eacute;el afin d&rsquo;&eacute;tablir le classement. Apr&egrave;s plus de 2h d&rsquo;&eacute;preuves, le verdict est tomb&eacute; : Alicia est arriv&eacute;e 2e dans la cat&eacute;gorie Webdesign, Tanguy 2e en D&eacute;veloppement et Adrien 5e en Int&eacute;gration. &Agrave; la suite du concours, les participants ont eu la possibilit&eacute; de rencontrer des recruteurs pr&eacute;sents pour postuler aux offres d&rsquo;emploi ou tout simplement &eacute;changer. L</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:18:"/maxresdefault.jpg";s:12:"originalName";s:17:"maxresdefault.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:159179;s:4:"path";s:19:"//maxresdefault.jpg";s:5:"width";i:1920;s:6:"height";i:1080;}');
INSERT INTO `posts` (`id`, `user_id`, `status_id`, `titre`, `abstract`, `content`, `date`, `url_thumbnail`) VALUES
(7, 4, 1, 'Open du web kjlljl', '<p>L&rsquo;&Eacute;cole Multim&eacute;dia &eacute;tait partenaire de la 5e &eacute;dition des Open du web. Une vingtaine de nos &eacute;tudiants ont particip&eacute; &agrave; ce grand concours-&eacute;v&eacute;nement qui rassemblait plus de 350 participants &agrave; Paris, Tunis, Lille et Bordeaux.</p>', '<p>Dans l&rsquo;ar&egrave;ne, des centaines de passionn&eacute;s et professionnels &eacute;voluant dans le domaine du web se sont s&rsquo;affront&eacute;s dans un cadre ludique et &eacute;lectrique pour d&eacute;montrer leur savoir-faire. format &eacute;tait simple : r&eacute;ussir un maximum d&rsquo;&eacute;preuves en 2 heures, toutes cat&eacute;gories confondues : D&eacute;veloppement, Int&eacute;gration, Community management, Administration syst&egrave;me, Webdesign, SEO-SEM. Jean-Marie Cl&eacute;ry, professeur en d&eacute;veloppement web et Fabio Soares, professeur de webdesign &agrave; L&rsquo;&Eacute;cole Multim&eacute;dia, faisaient partis du jury pour corriger les &eacute;preuves en temps r&eacute;el afin d&rsquo;&eacute;tablir le classement. Apr&egrave;s plus de 2h d&rsquo;&eacute;preuves, le verdict est tomb&eacute; : Alicia est arriv&eacute;e 2e dans la cat&eacute;gorie Webdesign, Tanguy 2e en D&eacute;veloppement et Adrien 5e en Int&eacute;gration. &Agrave; la suite du concours, les participants ont eu la possibilit&eacute; de rencontrer des recruteurs pr&eacute;sents pour postuler aux offres d&rsquo;emploi ou tout simplement &eacute;changer. L</p>', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:13:"/graphics.jpg";s:12:"originalName";s:12:"graphics.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:187115;s:4:"path";s:14:"//graphics.jpg";s:5:"width";i:2000;s:6:"height";i:1000;}'),
(8, NULL, 1, 'Open du web kjlljl', 'L’École Multimédia était partenaire de la 5e édition des Open du web. Une vingtaine de nos étudiants ont participé à ce grand concours-événement qui rassemblait plus de 350 participants à Paris, Tunis, Lille et Bordeaux.', 'Dans l’arène, des centaines de passionnés et professionnels évoluant dans le domaine du web se sont s’affrontés dans un cadre ludique et électrique pour démontrer leur savoir-faire.  format était simple : réussir un maximum d’épreuves en 2 heures, toutes catégories confondues : Développement, Intégration, Community management, Administration système, Webdesign, SEO-SEM.\r\n\r\nJean-Marie Cléry, professeur en développement web et Fabio Soares, professeur de webdesign à L’École Multimédia, faisaient partis du jury pour corriger les épreuves en temps réel afin d’établir le classement. Après plus de 2h d’épreuves, le verdict est tombé : Alicia est arrivée 2e dans la catégorie Webdesign, Tanguy 2e en Développement et Adrien 5e en Intégration.\r\n\r\nÀ la suite du concours, les participants ont eu la possibilité de rencontrer des recruteurs présents pour postuler aux offres d’emploi ou tout simplement échanger.\r\n\r\nL', '2010-01-01 00:00:00', 'a:7:{s:8:"fileName";s:12:"/5423931.jpg";s:12:"originalName";s:11:"5423931.jpg";s:8:"mimeType";s:10:"image/jpeg";s:4:"size";i:12267;s:4:"path";s:13:"//5423931.jpg";s:5:"width";i:478;s:6:"height";i:268;}');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
`id` int(11) NOT NULL,
  `titre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fiche_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id`, `titre`, `content`, `fiche_id`) VALUES
(1, 'sqdssq', 'sqdsq', 3),
(2, 'dsd', 'sdsd', 4),
(3, 'sdfd', 'dsfsd', 5),
(4, 'dfdfd', 'dfdf', 6),
(5, 'sdfd', 'sdfd', 7),
(6, 'KLJLJ', ',JLKJ', NULL);

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
-- AUTO_INCREMENT pour la table `copie`
--
ALTER TABLE `copie`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fiches`
--
ALTER TABLE `fiches`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
