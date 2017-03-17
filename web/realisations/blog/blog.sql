-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 25 Novembre 2016 à 17:22
-- Version du serveur: 5.5.52-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `Author`
--

CREATE TABLE IF NOT EXISTS `Author` (
  `Id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `Author`
--

INSERT INTO `Author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'Laplace ', 'Manon'),
(2, 'La Cuisine', 'Des Epices'),
(3, 'Gambrelle', 'Fabienne'),
(4, 'Audrey', 'moi');

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `Id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Category`
--

INSERT INTO `Category` (`Id`, `Name`) VALUES
(1, 'Cuisine'),
(2, 'Bienfaits'),
(3, 'Origine');

-- --------------------------------------------------------

--
-- Structure de la table `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `Id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `NickName` text NOT NULL,
  `Content` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Post_Id` (`Post_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Comment`
--

INSERT INTO `Comment` (`Id`, `NickName`, `Content`, `CreationTimestamp`, `Post_Id`) VALUES
(1, 'test', 'test', '2016-11-25 15:58:58', 1),
(2, 'test1', 'bla bla', '2016-11-25 16:46:17', 1),
(3, 'Olive', 'J''aime trop ton blog!!! Je kiffe le curry, ketchup et la moutarde, les épices koi :)', '2016-11-25 16:54:30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Post`
--

CREATE TABLE IF NOT EXISTS `Post` (
  `Id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  `Content` text NOT NULL,
  `Author_Id` smallint(5) unsigned DEFAULT NULL,
  `Category_Id` smallint(5) unsigned DEFAULT NULL,
  `CreationTimestamp` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Author_Id` (`Author_Id`,`Category_Id`),
  KEY `Category_Id` (`Category_Id`),
  KEY `Author_Id_2` (`Author_Id`),
  KEY `Category_Id_2` (`Category_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `Post`
--

INSERT INTO `Post` (`Id`, `Title`, `Content`, `Author_Id`, `Category_Id`, `CreationTimestamp`) VALUES
(1, 'Les étonnantes vertus des épices pour la santé', ' Bien au-delà de leurs qualités gustatives, les épices présentent de très nombreux bienfaits pour la santé, et font parfois l''objet d''une utilisation ancestrale pour leurs propriétés médicinales. Bio à la Une vous propose de découvrir sept épices aux vertus surprenantes.\r\nLe fenugrec\r\n\r\nDe la famille des légumineuses, on reconnaît au fenugrec une activité hypoglycémique et hypocholestérolémiante. En d’autres termes, il permettrait de réduire le taux de glycémie et de cholestérol dans le sang. On lui prête également des vertus stimulantes sur l’appétit et est notamment utilisé en infusion ou sous forme de compléments alimentaires dans le traitement de l’anorexie. Ses graines font l’objet d’une utilisation ancestrale afin d’apaiser les douleurs menstruelles, lutter contre les troubles hormonaux ou encore pour traiter la constipation en médecine traditionnelle ayurvédique.\r\nLes clous de girofle\r\n\r\nAvec un taux de phénols élevé, les clous de girofle sont parmi les épices les plus riches en antioxydants. Ils participent donc à la lutte contre les radicaux libres responsables de l’oxydation et du vieillissement des cellules. Considérés comme “purificateurs”, les clous de girofle ont d’importantes propriétés antifongiques et anti-infectieuses. Germicides, ils ont également une bonne action cicatrisante. En infusion, ils permettraient d’améliorer le fonctionnement du système digestif.\r\nLe piment de Cayenne\r\n\r\nLes propriétés analgésiques du piment de Cayenne, dues à sa concentration en capsaïcine, sont utiles notamment pour soulager les douleurs de l’arthrite ou de l’arthrose. Contrairement à ce que pourrait laisser penser son goût très épicé, le piment de Cayenne stimule les enzymes digestives et permet ainsi de lutter contre les ulcères de l’estomac et les dommages gastriques causés par certains médicaments anti-inflammatoires. Riche en vitamines A et C, il favorise le renforcement des parois des vaisseaux sanguins.\r\nLe poivre noir\r\n\r\nLes baies de poivre noir seraient elle aussi un allié pour faciliter la digestion. En stimulant les papilles gustatives, elles transmettent un message à l’estomac permettant d’augmenter la sécrétion d’acide chlorhydrique, améliorant ainsi le processus digestif. En médecine ayurvédique, le poivre noir est utilisé pour calmer la toux. La pipérine qu’il contient ayant des vertus antibactériennes permettant de guérir la toux d’origine infectieuse.\r\nLa cannelle\r\n\r\nRiche en polyphénols, la cannelle est parmi les 50 aliments les plus antioxydants selon une étude de l’American Journal Of Clinical Nutrition parue en 2006. Extrêmement riche en tanins dont l’action permet de resserrer les tissus, la consommation de cannelle améliore la résistance de l’organisme aux parasites. Elle participe au renforcement du système immunitaire notamment par sa richesse en fer et en manganèse et est recommandée en cas de grippes ou de problèmes broncho-pulmonaires. Chez l’homme, on lui prête également des vertus tonifiantes et aphrodisiaques.\r\nLa cardamome\r\n\r\nCette épice permettrait de diminuer certains symptômes prémenstruels tels que les crampes ou les sautes d’humeur. Elle s''inscrit dans de nombreuses pharmacopées à travers le monde. Dans la Rome antique, la cardamome était utilisée pour apaiser les troubles digestifs tels que les coliques, les flatulences ou les indigestions. En Égypte elle était mâchée pour blanchir les dents. En Inde, elle intervient dans le traitement des affections allant de l’asthme aux calculs rénaux en passant par l''asthénie ou les bronchites.\r\nLe curcuma\r\n\r\nOn attribue au curcuma des propriétés anti-cancéreuses du fait de sa concentration curcumine. Celle-ci, responsable de la couleur jaune de l''épice, aurait de puissants bienfaits anti-inflammatoires. Il est recommandé de le consommer en association au poivre, dont la pipérine favorise l’assimilation. Riche en vitamines A et C et en antioxydants, le curcuma aurait une action anti-inflammatoire et hépato-protectrice. En médecine traditionnelle ayurvédique, chinoise ou encore indonésienne, le curcuma est utilisé pour soigner de nombreux maux parmi lesquels, les maladies du foie, le rhume ou les problèmes digestifs.\r\n', 1, 2, '2016-11-23 17:34:58'),
(2, 'Origine des épices _ La Cannelle', 'Les épices n''appartiennent pas à une seule famille végétale, même si certaines sont apparentées : cardamome, gingembre et curcuma appartiennent à la famille des zingibéracées ; myrte, piment de la Jamaïque et girofle à celle des myrtacées ; cumin, carvi, coriandre et ajowan sont, eux, des apiacées.\r\n\r\nLes épices viennent-elles d''une même partie de la plante ? Non. Il existe des épices-graines, comme la moutarde, le genièvre ou le sésame, mais la cannelle est une écorce, le clou de girofle un bouton de fleur, le safran un stigmate, le poivre un fruit, et le gingembre un rhizome, cette partie souterraine d''une plante à la jonction des tiges et des racines. Parfois versées dans la catégorie des aromates, avec les autres plantes à parfums, les épices se montrent rebelles à la classification. Quand on croit tenir le point commun, les exceptions surgissent...\r\n\r\nA l''époque médiévale, les épices désignaient de façon générale les marchandises (species) venues d''Orient - épices proprement dites mais aussi soie, coton et métaux. Progressivement, le sens du mot a rétréci pour ne plus désigner que les substances comestibles que nous appelons épices aujourd''hui. Si les limites de ce groupe, réduit, sont encore poreuses, on s''entend généralement sur le fait que les épices sont issues de plantes (ce qui exclut le sel), qu''elles possèdent des saveurs fortes, piquantes ou troublantes, qu''elles colorent parfois, et qu''elles subissent une préparation après la cueillette, ce qui les distingue des fines herbes. \r\n\r\nPar ailleurs, les épices ne se mangent pas telles quelles : elles participent à l''élaboration du mets, ce qui les différencie des condiments, servis à part. Ainsi la moutarde de table est un condiment, mais la graine de moutarde une épice. La moutarde est familière dans nos contrées. Pourtant les épices n''englobent pas toutes les plantes qui parfument notre cuisine au quotidien, comme l''ail ou l''oignon. Elles suscitent plutôt des rêveries tropicales et des visions d''opulence. Les épices embaument les longues caravanes, parcourant la Route de la soie à travers les déserts et les montagnes d''Arabie et d''Asie. Elles parfument le vent qui gonfle les voiles des caravelles et des caraques voguant sur les océans.\r\n\r\nEn conséquence, le meilleur critère de caractérisation des épices nous semble être celui de l''imaginaire. Chargées d''exotisme, parées de mythes et de croyances, dotées des pouvoirs magiques ou guérisseurs qu''on leur accordait autrefois, les épices sont celles qui nous font rêver, en plus de nous parfumer.\r\n\r\nLa cannelle (Cinnamomum zeylanicum) est le trésor de Ceylan, cette grande île prospère, jadis fertile en arbres fruitiers, cerfs, paons, lapins et lièvres.\r\n\r\nSelon François Pyrard de Laval, qui visite Ceylan au début du XVIIe siècle, « [...] l''arbre en est comme celui du laurier, il porte une fleur blanche et un fruit de la forme de l''olive mûre. Il y a écorces [sic], la première ne vaut rien, la seconde c''est la vraie cannelle qu''ils fendent sur l''arbre ».\r\n\r\nLe cannelier appartient effectivement à la famille des lauriers. Il est exploité dans le sud de l''Inde, au Sri Lanka, aux Seychelles, à Madagascar, sur l''île de Java, en Indonésie, aux Antilles, en Guyane française et au Brésil. Avant le XIXe siècle, la cannelle était prélevée sur les arbres sauvages du Sri Lanka. \r\n\r\nDepuis deux siècles, le cannelier est cultivé : il est taillé de façon à multiplier les rameaux. Cette taille, effectuée sur des canneliers de cinq-six ans d''âge, les empêche de grandir et les maintient à l''état d''arbuste. Les branches sont retaillées tous les deux ans. La qualité de l''écorce s''améliore d''année en année. Quand les branches atteignent environ deux mètres de long et deux centimètres de diamètre, la récolte peut commencer. Il faut profiter de la saison des pluies et de l''apparition de jeunes feuilles pour couper les branches, au ras du sol. En effet, la montée de sève augmente le parfum de cannelle et facilite l''écorçage de la branche.\r\n\r\nL''écorce est prélevée en bandes minces, qui sont ensuite grattées pour enlever le liège (l''écorce qui « ne vaut rien » selon François Pyrard de Laval). Au séchage, ces rubans roulent sur eux-mêmes et forment des petites flûtes, ou roseaux, qui se disent tous deux canna, en latin, et donnent leur nom à la cannelle.\r\n\r\nLa saveur exceptionnelle de la cannelle de Ceylan provient de sa teneur en aldéhyde cinnamique et en eugénol : c''est ce mélange aromatique qui la rend indépassable. Selon les lieux de production, sa qualité peut varier, selon les proportions d''eugénol. Parfois elle contient du camphre, ce qui la rend trop violente. La cannelle de Ceylan provenant du Sri Lanka, son île d''origine, reste la meilleure. \r\n\r\nLa cannelle de Chine, ou cannelle-casse, est différente de celle de Ceylan, mais elle appartient, comme elle et comme le camphrier, à la famille des Lauracées. Elle est récoltée sur un arbre chinois, exploité dans le sud de la Chine, le nord du Vietnam et en Indonésie. Les rameaux, coupés au bout de six ans, sont plus gros que ceux du cannelier de Ceylan. Les cueilleurs massent l''écorce avant de l''inciser, afin de dissocier les différentes couches. La casse n''est pas grattée avant d''être séchée, ce qui l''empêche de rouler sur elle-même et explique pourquoi cette épice est beaucoup plus épaisse que la cannelle de Ceylan. La casse est vendue avec son liège (ou suber), et sa couleur externe, marron, presque grise, tranche avec la rousseur de la cannelle de Ceylan. Le goût de la casse est plus brutal que celui de la cannelle, car elle est dépourvue d''eugénol. Les fruits du cannelier de Chine sont des baies contenant une seule graine. En Chine, ils sont cueillis verts, et employés comme épice, après avoir été séchés.\r\n\r\n\r\n\r\n\r\n', 3, 3, '2016-11-24 09:58:44'),
(3, 'Clou de girofle et fleurs des girofliers', 'Le 17 novembre 1521, Antonio Pigafetta, l''un des membres de l''expédition de Fernand de Magellan, débarque sur l''île de Tidore, dans l''archipel des Moluques, pour voir de ses propres yeux « comment naissent les girofles ». Guidé par des indigènes, Pigafetta rejoint les montagnes couvertes de girofliers (Eugenia caryophyllata).\r\n\r\nImpressionné par ces grands arbres au feuillage pyramidal, l''Italien note que que « toutes les parties de l''arbre, aussi bien les feuilles que l''écorce et le bois, sentent le girofle ». \r\n\r\nEn effet, le giroflier est, comme le muscadier, l''un des végétaux qui contiennent l''une des plus fortes proportions d''huile essentielle (jusqu''à 17 %). Tant les feuilles que les fleurs et les fruits de ce grand arbre tropical dégagent des parfums merveilleux. Le calice, rouge et long comme celui d''un œillet, contient un bouton de fleur, qui s''ouvre en révélant quatre pétales blancs. Si elle est fécondée, la fleur du giroflier donne un fruit très aromatique, appelé mère de girofle, clou matrice, ou antofle, très apprécié en Indonésie confit dans le sucre. La partie la plus parfumée du girofle n''est pas ce fruit, mais le bouton, aux pétales encore soudés. En s''épanouissant, la fleur perd une grande part de son parfum, c''est pourquoi elle est cueillie juste avant d''éclore.\r\n\r\nSéchés au soleil sur des nattes et remués constamment afin d''éviter la fermentation, les boutons floraux prennent une couleur terre de Sienne. Une fois débarrassés de leur tige, ou pédoncule, ils deviennent l''épice nommée clou de girofle, la tête de ce « clou » étant formée par la corolle fermée et la pointe par le calice. Un giroflier fournit environ deux à trois kilogrammes de clous de girofle par an. \r\n\r\nL''Indonésie est le plus gros producteur et également le plus gros consommateur de clou de girofle avec lequel sont parfumées les cigarettes locales, les fameuses kretek. Zanzibar et Madagascar sont également d''importantes sources de girofle, tant sous forme d''épices que d''huile essentielle, mais les clous de girofle de l''île d''Amboine, aux Moluques, restent les plus réputés en raison de leur taille et de leur qualité.', 3, 3, '2016-11-24 10:00:31');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `Post` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `Author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `Category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
