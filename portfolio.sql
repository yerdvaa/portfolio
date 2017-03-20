-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 20 Mars 2017 à 09:03
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_source` int(11) NOT NULL,
  `titre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  `lien` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `id_categorie`, `id_source`, `titre`, `auteur`, `content`, `date_creation`, `lien`, `image`) VALUES
(1, 1, 1, 'Les alignements en CSS3 : passez-moi deux doliprane SVP', 'La Tête dans le Flux - Raphael', 'L’arrivée imminente de Grid Layout dans nos navigateurs préférés et la démocratisation de Flexbox laisse présager de belles choses dans nos designs web.\r\n\r\nPour la peine, je me suis penché de près sur les spécifications CSS « alignement », destinées à gérer les alignements et distributions de chaque modèle de positionnement (bloc / inline, flexbox, grid, multi-colonnes, etc.).\r\nLe modèle de positionnement de Grid Layout est notamment basé sur ces spécifications d’alignement CSS3.', '2017-01-28 00:00:00', 'https://blog.goetter.fr/2017/01/28/les-alignements-en-css3-passez-moi-deux-doliprane-svp/', 'alignement.png'),
(2, 1, 1, 'Calculer les tailles d\'écran en JavaScript', 'The new code', 'udging screen sizes and resolution with JavaScript can be difficult, not least because it can be challenging determining just what you’re measuring… and because, historically, different browsers measured different qualities of the screen using different properties.\r\n\r\nToday, those properties are mostly standardized; it’s just a matter of learning the terms associated with each. ', '2017-02-13 00:00:00', 'http://thenewcode.com/1181/Window-Window-Measuring-Screen-Sizes-with-JavaScript', 'sizeScreen.jpg'),
(3, 1, 2, 'Laravel ou Symfony ?', 'Grakikart', 'Voici une question qui revient assez souvent sur le site en ce moment ? Malheureusement il n\'est pas possible d\'y répondre simplement et vous déclencherez suremenent une petite guerre de clan en la posant. Personnellement, je pense que ces 2 frameworks ont leur place dans l\'écosystème PHP et que le choix de l\'un ou l\'autre doit se faire en fonction de vos préférences en tant que développeur sachant qu\'il est possible d\'être très productif avec l\'un comme l\'autre. ', '2017-02-06 00:00:00', 'https://www.grafikart.fr/tutoriels/php/laravel-symfony-866', 'grafikart.jpg'),
(4, 2, 3, 'Laurence Parisot : "le jeu politique actuel est dévastateur pour l\'économie"', 'Europe 1', 'L\'ancienne présidente du Medef, Laurence Parisot, a affirmé lundi sur Europe 1 que "la tension qui réside dans les débats est telle que certaines entreprises reportent des projets, annulent des investissements."\r\nINTERVIEW\r\n\r\nAffaires de François Fillon et de Marine Le Pen, incertitude politique… Pour Laurence Parisot, l\'ancienne présidente du Medef, le climat politique actuel nuit aux entreprises. "Il faut avoir à l\'esprit que le jeu politique actuel est dévastateur pour l\'économie de notre pays. Il est dévastateur aujourd\'hui même. Je ne parle pas de ce qui se passerai si le pire arrivait, c\'est à dire l\'élection de Marine Le Pen", a-t-elle expliqué lundi sur Europe 1. "Mais déjà l\'incertitude, la tension qui résident dans les débats sont telles que certaines entreprises reportent des projets, annulent des investissements. Les investisseurs étrangers nous regardent d\'une manière stupéfaite."', '2017-03-06 00:00:00', 'http://www.europe1.fr/politique/laurence-parisot-le-jeu-politique-actuel-est-devastateur-pour-leconomie-2995157#xtor=CS1-16', 'E1.png'),
(5, 2, 3, 'Pollution : l\'environnement dégradé est responsable de la mort de 1,7 million d’enfants chaque année', 'Europe 1', 'Deux études de l’OMS rendues publiques lundi dressent un tableau alarmant de la santé infantile mondiale.\r\n\r\nC\'est un constat accablant. L\'environnement dégradé et insalubre est responsable chaque année de la mort de 1,7 million d’enfants de moins de 5 ans, pointent deux rapports de l’Organisation mondiale de la santé (OMS) rendus publics lundi 6 mars, rapporte Le Monde. \r\n\r\nDangers environnementaux "émergents". Au-delà des pollutions "traditionnelles" - pollution de l’atmosphère, de l’eau, manque de sanitaires, etc. - identifiées de longues dates, l\'OMS s\'alarme de la montée de dangers environnementaux "émergents", liés à l\'activité industrielle et au changement climatique. Au premier rang de ces inquiétudes, la toxicité des produits chimiques d\'usages courants ou la présence de perturbateurs endocriniens se retrouvant dans la chaîne alimentaire.', '2017-03-06 00:00:00', 'http://www.europe1.fr/societe/pollution-lenvironnement-degrade-est-responsable-de-la-mort-de-17-million-denfants-chaque-annee-2995184#xtor=CS1-16', 'E1.png'),
(6, 3, 4, '\r\nL’intelligence artificielle est-elle en train de définir le futur du e-commerce?', 'Julia Robillard', ' Peu d’industries sont aussi concurrentielles que celle du e-commerce: alors que le marché est en constante compétition avec les boutiques physiques, les e-commerçants doivent aussi s’adapter à la continuelle évolution d’Internet et des habitudes des internautes. Ces derniers se montrent de plus en plus exigeants au cours de leur navigation: 42% d’entre eux quitteront un site au bout de trois secondes sans réponse, et le taux d’abandon du panier avant la fin de la transaction atteint les 68% (données réunies en 2015 par Google Analytics).\r\n\r\nTous les sites e-commerce sans exception sont en lutte permanente pour tenter de fidéliser et d’engager leur clientèle, dans l’espoir de se démarquer face à la concurrence féroce et de booster leurs ventes. L’année 2016 a vu émerger des stratégies remarquables basées sur l’intelligence artificielle (IA), qui après avoir démontré son pouvoir dans des secteurs comme la santé, commencent à faire grand bruit parmi les acteurs du commerce en ligne. ', '2017-02-06 00:00:00', 'http://www.frenchweb.fr/lintelligence-artificielle-est-elle-en-train-de-definir-le-futur-du-e-commerce/273491', 'Robots.png'),
(7, 2, 5, 'Train, métro, bus… Ces applis qui vous montrent la voie en Ile-de-France', 'Jila Varoquier', 'lles sont de plus ou plus nombreuses à vous proposer leur aide pour choisir le trajet le plus rapide et vous guider dans les méandres des souterrains et des transports franciliens. Mais entre les calculateurs d’itinéraires, l’intégration de trajets favoris, les alertes, l’intermodalité et autres, quelle est la meilleure application ?\r\n\r\nA l’occasion de l’arrêt ce mardi de Mon Transilien remplacée par l’appli SNCF, le Parisien vous propose un tour d’horizon des applications les plus téléchargées.\r\n\r\nSNCF - l’ex Transilien. La SNCF commence l’année avec une toute nouvelle application, qui n’est plus purement francilienne mais qui offre, pour la recherche d’itinéraires, de nouvelles options très utiles. Tout d’abord, elle prend en compte tous les modes de transport, y compris le vélo. Ensuite mais c’était sans doute indispensable au vu des très nombreux travaux en cours et à venir sur ses lignes, on peut aussi choisir de contourner telle ou telle ligne. Enfin, lorsque l’itinéraire est calculé, il vous précise également où monter dans la rame pour éviter de perdre du temps entre les correspondances.', '2017-03-05 00:00:00', 'http://www.leparisien.fr/info-paris-ile-de-france-oise/transports/train-metro-bus-ces-applis-qui-vous-montrent-la-voie-en-ile-de-france-05-03-2017-6734298.php#xtor=AD-1481423553', 'appli_sncf.jpg'),
(8, 3, 6, 'Un perroquet sans plumes reçoit des pulls du monde entier', 'L\'Est Républicain', 'Touchée par une maladie qui a entraîné la perte de ses plumes, Rhea, un perroquet de deux ans et demi, s\'est vue offrir des pulls par des internautes du monde entier, sensibles à son histoire.\r\n\r\nUne bien belle mobilisation pour un petit oiseau malheureux. En mai 2016, Rhea, un perroquet désormais âgé de deux ans et demi, a commencé à perdre ses plumes à cause d\'une maladie, la Psittacine Beak.\r\n\r\nMais les photos du petit oiseau postées sur les réseaux sociaux par sa propriétaire, Isabella Eisenmann, une habitante de Boston aux Etats-Unis ont ému les internautes... Au point que ceux-ci ont envoyé Rhea des pulls tricotés pour qu\'elle puisse se couvrir !', '2017-02-24 00:00:00', 'http://www.estrepublicain.fr/actualite/2017/02/24/un-perroquet-sans-plumes-recoit-des-pulls-du-monde-entier', 'perroquet.jpg'),
(9, 4, 7, 'Top 10 des illustrations sur le quotidien avec des gosses, la vie est (presque) belle', 'Romain D Moostik et Adrienne Hedger', 'C\'est toujours un bonheur d\'avoir des enfants, mais parfois il faut quand même avouer qu\'ils sont casse-bonbons. Pire : ils mettent au point des techniques hyper fourbes pour obtenir ce qu\'ils veulent. L\'erreur dans ce cas-là est de sous-estimer leur détermination. La preuve avec Adrienne Hedger qui est une maman qui a illustré son quotidien avec ses kids.', '2017-03-06 00:00:00', 'http://www.topito.com/top-illustrations-quotidien-gosses-adieu-grasses-mat', 'diner.png');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'Actu sur le dév'),
(2, 'Actu générales'),
(3, 'Actu insolites'),
(4, 'Humour');

-- --------------------------------------------------------

--
-- Structure de la table `realisations`
--

CREATE TABLE `realisations` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `realisations`
--

INSERT INTO `realisations` (`id`, `titre`, `description`, `lien`, `image`) VALUES
(1, 'Ardoise magique', 'Feuille de dessin fait en Javascript (POO), Html et Css.\r\n(Exercice effectué en formation)', 'ardoise_magique/index.html', 'ardoise_magique/ardoise.png'),
(2, 'Blog Les épices', 'Blog sur le sujet de notre choix en PHP, Html, Css.\r\n(Exercice effectué en formation)', 'blog/src/accueil.php', 'blog/blog.png'),
(3, 'Carrousel', 'Carrousel fait en Javascript, Html, Css.\r\n(Exercice effectué en formation)', 'carrousel/index.html', 'carrousel/carrousel.png'),
(4, 'Cup of Tea', 'Maquette effectuée en cours d\'intégration (html et Css)', 'cup_of_tea/index.html', 'cup_of_tea/tea.png'),
(5, 'Maquette portfolio', 'Maquette effectuée en cours d\'intégration (html et Css)', 'maquette_portfolio/index.html', 'maquette_portfolio/maquette.png');

-- --------------------------------------------------------

--
-- Structure de la table `sources`
--

CREATE TABLE `sources` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sources`
--

INSERT INTO `sources` (`id`, `nom`) VALUES
(1, 'Alsacréations (Tweet)'),
(2, 'Grafikart'),
(3, 'Europe 1'),
(4, 'Frenchweb (Tweet)'),
(5, 'Le Parisien 77'),
(6, 'L\'Est Républicain'),
(7, 'Topito');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFDD3168C9486A13` (`id_categorie`),
  ADD KEY `IDX_BFDD316879BDCA9E` (`id_source`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisations`
--
ALTER TABLE `realisations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `realisations`
--
ALTER TABLE `realisations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD316879BDCA9E` FOREIGN KEY (`id_source`) REFERENCES `sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BFDD3168C9486A13` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
