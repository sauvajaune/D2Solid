-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 19 déc. 2018 à 14:49
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `D2Solid`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `TITRE_CATEGORIE` varchar(40) NOT NULL,
  `DESCRIPTION` text,
  `ORDRE` int(11) NOT NULL DEFAULT '1',
  `ID_MERE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`ID_CATEGORIE`, `TITRE_CATEGORIE`, `DESCRIPTION`, `ORDRE`, `ID_MERE`) VALUES
(273, 'Animation', '', 0, NULL),
(274, 'LÃ -haut', 'Carl Fredricksen, petit garÃ§on, rÃªve d\'Ãªtre un explorateur depuis qu\'il a vu aux actualitÃ©s du cinÃ©ma les exploits de Charles Muntz', 3, 273),
(275, 'Les Simpsons', 'Matt Groening a conÃ§u la famille Simpson en 1986 dans l\'entrÃ©e du bureau du producteur James L. Brooks.Elle met en scÃ¨ne les Simpson, stÃ©rÃ©otype d\'une famille de classe moyenne2,3. Leurs aventures servent une satire du mode de vie amÃ©ricain. Les membres de la famille, ayant tous la peau de couleur jaune, sont Homer, Marge, Bart, Lisa et Maggie.', 1, 273),
(276, 'Futurama', 'Philip J. Fry, dit Fry, jeune livreur malchanceux de pizzas Ã  New York, est accidentellement cryogÃ©nisÃ© le 1er janvier 2000 juste aprÃ¨s minuit. Il se rÃ©veille mille ans plus tard, le 31 dÃ©cembre 2999. New York est devenue New New York et bien des choses ont changÃ©.', 2, 273),
(277, 'Animaux', '', 2, NULL),
(278, 'Chats', 'The internet is made of cats !\n', 1, 277),
(279, 'Chiens', 'Le meilleur ami de l\'homme', 2, 277),
(280, 'Nutrition & Recettes', '', 3, NULL),
(283, 'Bacon', 'Le bacon c\'est fabuleux ! J\'en mangerais toutes les nuits', 1, 280),
(284, 'Recettes', 'De dÃ©licieuses recettes de cochon', 2, 280);

-- --------------------------------------------------------

--
-- Structure de la table `categories_products`
--

CREATE TABLE `categories_products` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `ID_PRODUCT` int(11) NOT NULL,
  `ORDRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories_products`
--

INSERT INTO `categories_products` (`ID_CATEGORIE`, `ID_PRODUCT`, `ORDRE`) VALUES
(274, 277, 1),
(274, 282, 1),
(274, 283, 1),
(274, 284, 1),
(274, 304, 1),
(274, 309, 1),
(275, 274, 1),
(275, 281, 1),
(276, 278, 1),
(276, 279, 1),
(276, 280, 1),
(278, 307, 1),
(278, 308, 1),
(279, 276, 1),
(279, 305, 1),
(279, 306, 1),
(279, 312, 1),
(283, 285, 1),
(283, 286, 1),
(283, 287, 1),
(283, 302, 1),
(283, 303, 1),
(283, 310, 1),
(284, 287, 2),
(284, 301, 1),
(284, 303, 2),
(284, 310, 2);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `ID_CLIENT` int(11) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `PRENOM` varchar(100) NOT NULL,
  `EMAIL` varchar(300) NOT NULL,
  `TEL` varchar(14) DEFAULT NULL,
  `MOB` varchar(14) DEFAULT NULL,
  `ADRESSE` varchar(300) NOT NULL,
  `CODE_POSTAL` varchar(5) NOT NULL,
  `COMMUNE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`ID_CLIENT`, `NOM`, `PRENOM`, `EMAIL`, `TEL`, `MOB`, `ADRESSE`, `CODE_POSTAL`, `COMMUNE`) VALUES
(1, 'Gaertner', 'Julien', 'ju.g@lecnam.net', '0601020403', '', '20 rue Principale', '12321', 'JajuCity'),
(2, 'Juju', 'Jaja', 'juja@jaju.fr', '', '', '1 de la rue du la', '12321', 'JajuCity'),
(3, 'Paug', 'Emi', 'paugemi@lecnam.fr', '', '', '123 de la bas', '12321', 'La bas'),
(5, 'Paugam', 'Emi', 'em.p@yahoo.fr', '', '', '7 qt havane', '95178', 'Straaat'),
(6, 'Ada', 'Fred', 'julien@cnam.fr', '', '', '123 qt la havane', '12345', 'La bas'),
(7, 'Ada', 'Julien', 'exam@cnam.fr', '', '', '123 la bas ', '15698', 'La bas');

-- --------------------------------------------------------

--
-- Structure de la table `clients_commandes`
--

CREATE TABLE `clients_commandes` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_COMMANDE` varchar(26) NOT NULL,
  `DATE_COMMANDE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients_commandes`
--

INSERT INTO `clients_commandes` (`ID_CLIENT`, `ID_COMMANDE`, `DATE_COMMANDE`) VALUES
(1, 'e0hak8sgksr3f5psatrbh5e301', '2017-02-11 16:07:28'),
(2, 'ujv76abmmd0h045q8fups5j996', '2017-02-11 16:36:20'),
(3, 'gkgbu3tbcsllvhnfu7an16nhn1', '2017-02-14 08:06:48'),
(5, 'o4lrdb8qb2o4sfb3bqa6c3hbm4', '2017-02-17 10:24:02'),
(6, 'ut2lc417c4pijbqko35th4bdg3', '2017-02-22 16:29:51'),
(7, 'arp51p5lmn4ff3u3ktk9v8joh5', '2017-03-02 16:21:59');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `ID_COMMANDE` varchar(26) NOT NULL,
  `ID_PRODUCT` int(11) NOT NULL,
  `QUANTITE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`ID_COMMANDE`, `ID_PRODUCT`, `QUANTITE`) VALUES
('007um0tqejtmmfrapqa96pf2g3', 310, 1),
('4ojbim3k4trlmjfrlsimefhcv3', 309, 1),
('6qq45ueuhps3regtm90g63nsa6', 310, 1),
('9kim1lkd1muadjki3ur5lbtuo6', 310, 1),
('arp51p5lmn4ff3u3ktk9v8joh5', 312, 1),
('b87g9b22pn96stcl534m618dg6', 310, 1),
('bm18ip2ndeq32kqsupiqke6bq0', 310, 1),
('d5vl2ug4775bivr2vp2njc8nh3', 310, 1),
('e0hak8sgksr3f5psatrbh5e301', 285, 2),
('e0hak8sgksr3f5psatrbh5e301', 302, 1),
('fmbid8t9l5ekfpboio1b8un0a0', 310, 1),
('g8u5h3c53t28blf7mpp5i5ph45', 280, 1),
('g8u5h3c53t28blf7mpp5i5ph45', 309, 1),
('gkgbu3tbcsllvhnfu7an16nhn1', 308, 1),
('hdq2929escbl7dek0i01uusdv1', 312, 1),
('o4lrdb8qb2o4sfb3bqa6c3hbm4', 308, 1),
('o4lrdb8qb2o4sfb3bqa6c3hbm4', 310, 1),
('sv9hbj3t0q8ci2gns94odnd564', 312, 1),
('ujv76abmmd0h045q8fups5j996', 287, 1),
('ujv76abmmd0h045q8fups5j996', 302, 2),
('ujv76abmmd0h045q8fups5j996', 309, 1),
('ujv76abmmd0h045q8fups5j996', 310, 1),
('ut2lc417c4pijbqko35th4bdg3', 285, 1),
('ut2lc417c4pijbqko35th4bdg3', 286, 1),
('ut2lc417c4pijbqko35th4bdg3', 287, 1),
('ut2lc417c4pijbqko35th4bdg3', 305, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `ID_CONTACT` int(11) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `PRENOM` varchar(100) NOT NULL,
  `EMAIL` varchar(300) NOT NULL,
  `TEL` varchar(14) DEFAULT NULL,
  `MOB` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`ID_CONTACT`, `NOM`, `PRENOM`, `EMAIL`, `TEL`, `MOB`) VALUES
(3, 'Gaertner', 'Julien', 'julien@cnam.fr', '', ''),
(4, 'Ada', 'Fred', 'exam@cnam.fr', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `ID_POST` int(11) NOT NULL,
  `TITLE` varchar(40) NOT NULL,
  `CONTENU` text NOT NULL,
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_USER` int(11) DEFAULT NULL,
  `ACTIVE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`ID_POST`, `TITLE`, `CONTENU`, `CREATED`, `ID_USER`, `ACTIVE`) VALUES
(1, 'Porchetta', 'Porchetta capicola pastrami, corned beef t-bone shoulder bresaola drumstick tail ground round. \n  Kevin doner salami ribeye andouille spare ribs fatback ball tip strip steak prosciutto cow. Pork capicola t-bone \n  strip steak filet mignon beef. Spare ribs andouille bresaola pork chop, swine frankfurter ribeye. Beef picanha \n  boudin biltong kielbasa doner. Salami ham hock boudin turkey beef ribs pig. Capicola drumstick short loin l\n  andjaeger tenderloin, boudin pastrami ham hock.', '2017-02-06 14:40:04', 1, 0),
(2, 'Ribeye', 'Ribeye tri-tip cupim alcatra strip steak sirloin beef corned beef drumstick burgdoggen bacon doner \n  capicola landjaeger. Leberkas beef ribs doner bresaola pancetta pork bacon shank t-bone tongue tri-tip sirloin \n  alcatra. Short ribs pork belly shoulder tenderloin ham hock boudin spare ribs drumstick ground round turkey. \n  Leberkas drumstick pig hamburger flank. Venison bresaola chuck jerky flank sausage strip steak shoulder shank \n  ribeye meatloaf tongue tri-tip. Sausage shank doner pork belly ball tip tail filet mignon bacon kevin shoulder \n  swine short ribs.', '2017-02-06 14:41:43', 1, 1),
(3, 'Meatloaf', 'Meatloaf brisket picanha pancetta salami. Hamburger pancetta sausage chuck picanha spare ribs. Landjaeger tail bacon andouille pastrami ribeye venison short loin jerky ball tip chuck porchetta meatloaf tenderloin bresaola. Pork chop jowl short ribs sausage. Venison shankle swine ball tip pork chop cow tri-tip flank boudin. Kielbasa tongue sausage ground round swine.', '2017-02-21 16:18:48', 2, 1),
(4, 'Boundin', 'Boudin fatback porchetta, turducken beef ribeye jowl flank frankfurter picanha spare ribs drumstick pork kielbasa biltong. Pig hamburger shoulder, drumstick salami pork chop pork belly bacon fatback chicken ham hock andouille picanha pancetta. Kielbasa jowl burgdoggen, drumstick t-bone beef ribs alcatra turkey picanha boudin ground round bresaola andouille tongue. Kevin pork loin alcatra brisket sirloin corned beef, pork belly swine meatball. Alcatra meatloaf porchetta pork loin. Biltong beef alcatra brisket pork belly beef ribs pig filet mignon hamburger jowl shoulder jerky tri-tip. Filet mignon ribeye kevin, shankle venison bresaola salami short ribs.', '2017-02-21 16:19:02', 2, 1),
(5, 'Ea velit', 'Ea velit pig officia pariatur, burgdoggen ham hock veniam nostrud meatloaf eiusmod ipsum tongue. Commodo bresaola shoulder in laboris alcatra pork chop velit. Mollit pork belly enim alcatra. Sint ut picanha ground round, proident pork belly cupidatat in dolore jowl tongue strip steak minim short loin.', '2017-02-23 17:22:03', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `ID_PRODUCT` int(11) NOT NULL,
  `TITRE_PRODUCT` varchar(40) NOT NULL,
  `REFERENCE` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(4000) NOT NULL,
  `KEYWORDS` varchar(1000) NOT NULL,
  `VIGNETTE` varchar(40) NOT NULL,
  `IMAGE` varchar(40) NOT NULL,
  `PRIX` decimal(11,0) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`ID_PRODUCT`, `TITRE_PRODUCT`, `REFERENCE`, `DESCRIPTION`, `KEYWORDS`, `VIGNETTE`, `IMAGE`, `PRIX`, `created`) VALUES
(274, 'Consectetur', '530044b2', 'Consecteturadipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'mollit,pariatur,officia', 'vig_simpsons-4.jpg', 'simpsons-4.jpg', '130', '2017-01-25 18:30:42'),
(276, 'Eaque ipsas', '640041c3', 'Eaquer ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo', 'architecto beatae', 'vig_1485427294_dog1.jpg', '1485427294_dog1.jpg', '960', '2017-01-25 18:30:42'),
(277, 'Excepteur', '640044b2', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'lorem,consectetur,aliqua', 'vig_1485427326_up5.jpg', '1485427326_up5.jpg', '50', '2017-01-25 18:30:42'),
(278, 'Laborise', '610044f8', 'Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in testvoluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 'minim,nostrud,incididunt', 'vig_1485427153_futurama7.jpg', '1485427153_futurama7.jpg', '35', '2017-01-25 18:30:42'),
(279, 'Laudantium', '830044a4', 'Laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'ullamco,aliquip,consequat', 'vig_1485427174_futurama9.jpg', '1485427174_futurama9.jpg', '80', '2017-01-25 18:30:42'),
(280, 'Lorem Ipsum', '530044b1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'excepteur,cupidatat,deserunt', 'vig_1485427123_futurama2.jpg', '1485427123_futurama2.jpg', '90', '2017-01-25 18:30:42'),
(281, 'Sed do eiusmode', '530044c3', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'laborum,culpa,proident', 'vig_simpsons-8.jpg', 'simpsons-8.jpg', '120', '2017-01-25 18:30:42'),
(282, 'Totam rem', '740045e9', 'Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo', 'totam aperiam inventore ', 'vig_1485427357_up6.jpg', '1485427357_up6.jpg', '54', '2017-01-25 18:30:42'),
(283, 'Ut labore', '840044b1', 'Ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'occaecat,ipsum,adipisicing', 'vig_1485427264_up1.jpg', '1485427264_up1.jpg', '100', '2017-01-25 18:30:42'),
(284, 'Voluptate velit', '730044a2', 'Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'labore,veniam,exercitation', 'vig_1485427377_up8.jpg', '1485427377_up8.jpg', '65', '2017-01-25 18:30:42'),
(285, 'Shankleswine', 'SBac1', 'Shankleswine short ribs, cow sausage chuck venison cupim fatback meatball turkey beef tongue pork chop strip steak. Strip steak fatback brisket cow. Hamburger pastrami chuck salami tail sausage. Sirloin jowl pastrami leberkas spare ribs.\n Kevin bacon beef ribs prosciutto tri-tip, alcatra frankfurter. ', 'bacon', 'vig_brisket.jpg', 'brisket.jpg', '12', '2017-01-25 18:30:42'),
(286, 'Maxi Meatball', 'MBac1d', 'Meatball shankle pork chop, short loin ut ut rump chuck exercitation. Venison rump sirloin labore. Veniam sed lorem chuck strip steak brisket frankfurter jowl duis ut sint ipsum qui. Adipisicing capicola exercitation, cillum beef spare ribs alcatra nostrud biltong voluptate qui ball tip shank non cow. Short ribs lorem rump flank andouille. Cupim turducken pork, short loin quis deserunt doner et enim officia. Strip steak spare ribs drumstick, jerky tri-tip hamburger corned beef incididunt.', 'bacon meatball shankle', 'vig_1485426676_meatball.jpg', '1485426676_meatball.jpg', '25', '2017-01-25 18:30:42'),
(287, 'Spicy jalapeno', 'SJBac25', 'Spicy jalapeno bacon ipsum dolor amet pig shank pork loin sirloin, filet mignon biltong tail prosciutto landjaeger meatball alcatra pork belly t-bone. Hamburger frankfurter landjaeger ham. Chicken pastrami venison, pancetta ham pig boudin filet mignon andouille sirloin kielbasa kevin. Burgdoggen pancetta turkey, meatloaf pork chop kevin prosciutto strip steak. Ham landjaeger meatball shankle tenderloin, pork kielbasa short ribs hamburger burgdoggen picanha capicola tongue tri-tip brisket. Ham hock cow sausage frankfurter rump, beef ribs salami pork belly strip steak ham boudin ball tip brisket shankle. Landjaeger kielbasa pork chop beef ribs cupim.', 'spicy jalapeno bacon', 'vig_spicy-bacon.JPG', 'spicy-bacon.JPG', '5', '2017-01-25 18:30:42'),
(301, 'Blanquette', 'BlBac21', 'Ce n\'est pas du bacon. La blanquette de veau est un plat complet traditionnel franÃ§ais Ã  base de viande de veau bouillie, de carottes et de sauce au beurre.', 'bacon blanquette ', 'vig_1485426410_blanquette.jpg', '1485426410_blanquette.jpg', '20', '2017-01-25 18:32:50'),
(302, 'Bacon strips', 'StrBa1', 'Bacon strips & bacon strips & bacon strips & bacon strips & bacon strips & bacon strips & bacon strips & bacon strips & ...', 'bacon strips ', 'vig_1485373542_cookedbacon.jpg', '1485373542_cookedbacon.jpg', '1', '2017-01-25 20:45:42'),
(303, 'Egg Bacon', 'EgBac5', 'Do beef ribs esse hamburger, burgdoggen jerky porchetta in magna tenderloin andouille tempor ipsum. Shank cupidatat sunt ground round frankfurter non. Ut esse rump anim ground round labore. Proident ham incididunt cillum laborum.\r\n\r\nVelit hamburger pork salami shank irure bresaola mollit. Bacon ut aute pork rump, meatball flank. Sunt pastrami eu dolor meatloaf minim. Hamburger strip steak turducken, veniam eiusmod doner ut aliquip biltong irure sunt enim sirloin pig ut.', 'egg bacon', 'vig_1485427065_baconeggs.jpg', '1485427065_baconeggs.jpg', '5', '2017-01-26 11:37:45'),
(304, 'Dolor amet', 'DUp54', 'Dolor amet in tenderloin pork chop ham hock, incididunt duis excepteur aliqua eiusmod pork loin hamburger ball tip pancetta. Ad pariatur leberkas veniam, in tri-tip beef tail kevin officia id rump. Aliquip flank landjaeger quis pig. Sausage pig hamburger, beef ribs lorem irure ribeye shank shoulder culpa veniam. Sausage pork turducken consequat flank. Nulla laborum velit ut pork loin. Pork chop beef lorem velit sunt, esse tri-tip.', '', 'vig_1485427869_up9.jpg', '1485427869_up9.jpg', '12', '2017-01-26 11:49:11'),
(305, 'Ea velit', 'EaDog77', 'Ea velit pig officia pariatur, burgdoggen ham hock veniam nostrud meatloaf eiusmod ipsum tongue. Commodo bresaola shoulder in laboris alcatra pork chop velit. Mollit pork belly enim alcatra. Sint ut picanha ground round, proident pork belly cupidatat in dolore jowl tongue strip steak minim short loin.', '', 'vig_nala.jpg', 'nala.jpg', '770', '2017-01-26 11:52:57'),
(306, 'In sed', 'InDog56e', ' In sed nisi cow voluptate, filet mignon pork loin corned beef salami short loin chicken meatloaf. Corned beef lorem pastrami et ut tongue beef enim magna capicola. Adipisicing cow leberkas, laboris non drumstick et picanha.', '', 'vig_1485428008_dog3.jpg', '1485428008_dog3.jpg', '560', '2017-01-26 11:53:28'),
(307, 'Burgdoggen', 'BuCat20f', ' Burgdoggen eu porchetta ea nulla officia meatball cupim sint ad deserunt cow shoulder alcatra salami. Reprehenderit pariatur in, officia ut jowl salami in est quis minim mollit. T-bone fugiat pariatur labore. ', '', 'vig_12chat.jpg', '12chat.jpg', '200', '2017-01-26 11:54:11'),
(308, 'Magna', 'MaCat650e', 'Magna ea veniam chicken, in duis quis pastrami dolor filet mignon dolore ipsum laborum ut salami. Commodo burgdoggen esse, id fatback ex labore est doner dolore. Non tenderloin landjaeger, doner ut boudin meatloaf nulla cupidatat burgdoggen duis ipsum.', '', 'vig_1485428079_cat2.jpg', '1485428079_cat2.jpg', '650', '2017-01-26 11:54:39'),
(309, 'Dolore magna', '66402ef', 'Dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'vig_1485428480_up2.jpg', '1485428480_up2.jpg', '120', '2017-01-26 12:01:20'),
(310, 'Bacon Pizza', 'PiBac', 'The bacon has to be cooked to a crisp consistency for this recipe, otherwise it will become too soft in the sour cream sauce and cheese. You can certainly add more bacon if you\'d like!', 'pizza bacon', 'vig_1485428640_baconpizza.jpg', '1485428640_baconpizza.jpg', '15', '2017-01-26 12:04:00'),
(312, 'Porchetta', 'test', 'Ea velit pig officia pariatur, burgdoggen ham hock veniam nostrud meatloaf eiusmod ipsum tongue. Commodo bresaola shoulder in laboris alcatra pork chop velit. Mollit pork belly enim alcatra. Sint ut picanha ground round, proident pork belly cupidatat in dolore jowl tongue strip steak minim short loin.', '', 'vig_ecureuil.JPG', 'ecureuil.JPG', '42', '2017-02-22 17:32:26');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID_USER` int(11) NOT NULL,
  `LOGIN` varchar(10) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `PRENOM` varchar(100) NOT NULL,
  `AUTORISATION` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID_USER`, `LOGIN`, `PASSWORD`, `NOM`, `PRENOM`, `AUTORISATION`) VALUES
(1, 'test', 'test', 'Gaertner', 'Julien', 7),
(2, 'admin', 'root', 'Admin', 'Root', 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `categories_products`
--
ALTER TABLE `categories_products`
  ADD PRIMARY KEY (`ID_CATEGORIE`,`ID_PRODUCT`),
  ADD KEY `ID_PRODUCT` (`ID_PRODUCT`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ID_CLIENT`);

--
-- Index pour la table `clients_commandes`
--
ALTER TABLE `clients_commandes`
  ADD PRIMARY KEY (`ID_CLIENT`,`ID_COMMANDE`),
  ADD KEY `ID_COMMANDE` (`ID_COMMANDE`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`ID_COMMANDE`,`ID_PRODUCT`),
  ADD KEY `FK_COMMANDES` (`ID_PRODUCT`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID_CONTACT`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID_POST`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID_PRODUCT`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `clients_commandes`
--
ALTER TABLE `clients_commandes`
  MODIFY `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID_CONTACT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID_POST` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `ID_PRODUCT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories_products`
--
ALTER TABLE `categories_products`
  ADD CONSTRAINT `CATEGORIES_PRODUCTS_ibfk_1` FOREIGN KEY (`ID_CATEGORIE`) REFERENCES `categories` (`ID_CATEGORIE`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATEGORIES_PRODUCTS_ibfk_2` FOREIGN KEY (`ID_PRODUCT`) REFERENCES `products` (`ID_PRODUCT`) ON DELETE CASCADE;

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `POSTS_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID_USER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
