-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Client :  creartdeozyerdva.mysql.db
-- Généré le :  Jeu 23 Mars 2017 à 17:27
-- Version du serveur :  5.6.34-log
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `creartdeozyerdva`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_source` int(11) NOT NULL,
  `titre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  `lien` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `id_categorie`, `id_source`, `titre`, `auteur`, `content`, `date_creation`, `lien`, `image`) VALUES
(1, 1, 1, 'Les alignements en CSS3 : passez-moi deux doliprane SVP', 'La Tête dans le Flux - Raphael', 'L’arrivée imminente de Grid Layout dans nos navigateurs préférés et la démocratisation de Flexbox laisse présager de belles choses dans nos designs web.\r\n\r\nPour la peine, je me suis penché de près sur les spécifications CSS « alignement », destinées à gérer les alignements et distributions de chaque modèle de positionnement (bloc / inline, flexbox, grid, multi-colonnes, etc.).\r\nLe modèle de positionnement de Grid Layout est notamment basé sur ces spécifications d’alignement CSS3.', '2017-01-28 00:00:00', 'https://blog.goetter.fr/2017/01/28/les-alignements-en-css3-passez-moi-deux-doliprane-svp/', 'alignement.png'),
(2, 1, 1, 'Calculer les tailles d''écran en JavaScript', 'The new code', 'udging screen sizes and resolution with JavaScript can be difficult, not least because it can be challenging determining just what you’re measuring… and because, historically, different browsers measured different qualities of the screen using different properties.\r\n\r\nToday, those properties are mostly standardized; it’s just a matter of learning the terms associated with each. ', '2017-02-13 00:00:00', 'http://thenewcode.com/1181/Window-Window-Measuring-Screen-Sizes-with-JavaScript', 'sizeScreen.jpg'),
(3, 1, 2, 'Laravel ou Symfony ?', 'Grakikart', 'Voici une question qui revient assez souvent sur le site en ce moment ? Malheureusement il n''est pas possible d''y répondre simplement et vous déclencherez suremenent une petite guerre de clan en la posant. Personnellement, je pense que ces 2 frameworks ont leur place dans l''écosystème PHP et que le choix de l''un ou l''autre doit se faire en fonction de vos préférences en tant que développeur sachant qu''il est possible d''être très productif avec l''un comme l''autre. ', '2017-02-06 00:00:00', 'https://www.grafikart.fr/tutoriels/php/laravel-symfony-866', 'grafikart.jpg'),
(4, 2, 3, 'Laurence Parisot : "le jeu politique actuel est dévastateur pour l''économie"', 'Europe 1', 'L''ancienne présidente du Medef, Laurence Parisot, a affirmé lundi sur Europe 1 que "la tension qui réside dans les débats est telle que certaines entreprises reportent des projets, annulent des investissements."\r\nINTERVIEW\r\n\r\nAffaires de François Fillon et de Marine Le Pen, incertitude politique… Pour Laurence Parisot, l''ancienne présidente du Medef, le climat politique actuel nuit aux entreprises. "Il faut avoir à l''esprit que le jeu politique actuel est dévastateur pour l''économie de notre pays. Il est dévastateur aujourd''hui même. Je ne parle pas de ce qui se passerai si le pire arrivait, c''est à dire l''élection de Marine Le Pen", a-t-elle expliqué lundi sur Europe 1. "Mais déjà l''incertitude, la tension qui résident dans les débats sont telles que certaines entreprises reportent des projets, annulent des investissements. Les investisseurs étrangers nous regardent d''une manière stupéfaite."', '2017-03-06 00:00:00', 'http://www.europe1.fr/politique/laurence-parisot-le-jeu-politique-actuel-est-devastateur-pour-leconomie-2995157#xtor=CS1-16', 'E1.png'),
(5, 2, 3, 'Pollution : l''environnement dégradé est responsable de la mort de 1,7 million d’enfants chaque année', 'Europe 1', 'Deux études de l’OMS rendues publiques lundi dressent un tableau alarmant de la santé infantile mondiale.\r\n\r\nC''est un constat accablant. L''environnement dégradé et insalubre est responsable chaque année de la mort de 1,7 million d’enfants de moins de 5 ans, pointent deux rapports de l’Organisation mondiale de la santé (OMS) rendus publics lundi 6 mars, rapporte Le Monde. \r\n\r\nDangers environnementaux "émergents". Au-delà des pollutions "traditionnelles" - pollution de l’atmosphère, de l’eau, manque de sanitaires, etc. - identifiées de longues dates, l''OMS s''alarme de la montée de dangers environnementaux "émergents", liés à l''activité industrielle et au changement climatique. Au premier rang de ces inquiétudes, la toxicité des produits chimiques d''usages courants ou la présence de perturbateurs endocriniens se retrouvant dans la chaîne alimentaire.', '2017-03-06 00:00:00', 'http://www.europe1.fr/societe/pollution-lenvironnement-degrade-est-responsable-de-la-mort-de-17-million-denfants-chaque-annee-2995184#xtor=CS1-16', 'E1.png'),
(6, 3, 4, '\r\nL’intelligence artificielle est-elle en train de définir le futur du e-commerce?', 'Julia Robillard', ' Peu d’industries sont aussi concurrentielles que celle du e-commerce: alors que le marché est en constante compétition avec les boutiques physiques, les e-commerçants doivent aussi s’adapter à la continuelle évolution d’Internet et des habitudes des internautes. Ces derniers se montrent de plus en plus exigeants au cours de leur navigation: 42% d’entre eux quitteront un site au bout de trois secondes sans réponse, et le taux d’abandon du panier avant la fin de la transaction atteint les 68% (données réunies en 2015 par Google Analytics).\r\n\r\nTous les sites e-commerce sans exception sont en lutte permanente pour tenter de fidéliser et d’engager leur clientèle, dans l’espoir de se démarquer face à la concurrence féroce et de booster leurs ventes. L’année 2016 a vu émerger des stratégies remarquables basées sur l’intelligence artificielle (IA), qui après avoir démontré son pouvoir dans des secteurs comme la santé, commencent à faire grand bruit parmi les acteurs du commerce en ligne. ', '2017-02-06 00:00:00', 'http://www.frenchweb.fr/lintelligence-artificielle-est-elle-en-train-de-definir-le-futur-du-e-commerce/273491', 'Robots.png'),
(7, 2, 5, 'Train, métro, bus… Ces applis qui vous montrent la voie en Ile-de-France', 'Jila Varoquier', 'lles sont de plus ou plus nombreuses à vous proposer leur aide pour choisir le trajet le plus rapide et vous guider dans les méandres des souterrains et des transports franciliens. Mais entre les calculateurs d’itinéraires, l’intégration de trajets favoris, les alertes, l’intermodalité et autres, quelle est la meilleure application ?\r\n\r\nA l’occasion de l’arrêt ce mardi de Mon Transilien remplacée par l’appli SNCF, le Parisien vous propose un tour d’horizon des applications les plus téléchargées.\r\n\r\nSNCF - l’ex Transilien. La SNCF commence l’année avec une toute nouvelle application, qui n’est plus purement francilienne mais qui offre, pour la recherche d’itinéraires, de nouvelles options très utiles. Tout d’abord, elle prend en compte tous les modes de transport, y compris le vélo. Ensuite mais c’était sans doute indispensable au vu des très nombreux travaux en cours et à venir sur ses lignes, on peut aussi choisir de contourner telle ou telle ligne. Enfin, lorsque l’itinéraire est calculé, il vous précise également où monter dans la rame pour éviter de perdre du temps entre les correspondances.', '2017-03-05 00:00:00', 'http://www.leparisien.fr/info-paris-ile-de-france-oise/transports/train-metro-bus-ces-applis-qui-vous-montrent-la-voie-en-ile-de-france-05-03-2017-6734298.php#xtor=AD-1481423553', 'appli_sncf.jpg'),
(8, 3, 6, 'Un perroquet sans plumes reçoit des pulls du monde entier', 'L''Est Républicain', 'Touchée par une maladie qui a entraîné la perte de ses plumes, Rhea, un perroquet de deux ans et demi, s''est vue offrir des pulls par des internautes du monde entier, sensibles à son histoire.\r\n\r\nUne bien belle mobilisation pour un petit oiseau malheureux. En mai 2016, Rhea, un perroquet désormais âgé de deux ans et demi, a commencé à perdre ses plumes à cause d''une maladie, la Psittacine Beak.\r\n\r\nMais les photos du petit oiseau postées sur les réseaux sociaux par sa propriétaire, Isabella Eisenmann, une habitante de Boston aux Etats-Unis ont ému les internautes... Au point que ceux-ci ont envoyé Rhea des pulls tricotés pour qu''elle puisse se couvrir !', '2017-02-24 00:00:00', 'http://www.estrepublicain.fr/actualite/2017/02/24/un-perroquet-sans-plumes-recoit-des-pulls-du-monde-entier', 'perroquet.jpg'),
(9, 4, 7, 'Top 10 des illustrations sur le quotidien avec des gosses, la vie est (presque) belle', 'Romain D Moostik et Adrienne Hedger', 'C''est toujours un bonheur d''avoir des enfants, mais parfois il faut quand même avouer qu''ils sont casse-bonbons. Pire : ils mettent au point des techniques hyper fourbes pour obtenir ce qu''ils veulent. L''erreur dans ce cas-là est de sous-estimer leur détermination. La preuve avec Adrienne Hedger qui est une maman qui a illustré son quotidien avec ses kids.', '2017-03-06 00:00:00', 'http://www.topito.com/top-illustrations-quotidien-gosses-adieu-grasses-mat', 'diner.png'),
(10, 3, 7, 'Top 10 des trucs auxquels les Français croient, et ça fait peur un peu', 'thomasg ', 'Fiers, les Français. Fier peuple porteur de valeurs démocratiques un peu partout dans le monde, fer de lance du monde libre et de la prétention, qui brandit l’étendard de la liberté. Gros tas de débiles qui pensent que le Graal a vraiment existé, oui, surtout.', '2017-03-23 00:00:00', 'http://www.topito.com/top-trucs-francais-croient', 'topito_trucs.png');

-- --------------------------------------------------------

--
-- Structure de la table `Author`
--

CREATE TABLE IF NOT EXISTS `Author` (
  `Id` smallint(5) unsigned NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Structure de la table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `Id` smallint(10) unsigned NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  `Id` smallint(5) unsigned NOT NULL,
  `NickName` text NOT NULL,
  `Content` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  `Id` smallint(5) unsigned NOT NULL,
  `Title` varchar(128) NOT NULL,
  `Content` text NOT NULL,
  `Author_Id` smallint(5) unsigned DEFAULT NULL,
  `Category_Id` smallint(5) unsigned DEFAULT NULL,
  `CreationTimestamp` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Post`
--

INSERT INTO `Post` (`Id`, `Title`, `Content`, `Author_Id`, `Category_Id`, `CreationTimestamp`) VALUES
(1, 'Les étonnantes vertus des épices pour la santé', ' Bien au-delà de leurs qualités gustatives, les épices présentent de très nombreux bienfaits pour la santé, et font parfois l''objet d''une utilisation ancestrale pour leurs propriétés médicinales. Bio à la Une vous propose de découvrir sept épices aux vertus surprenantes.\r\nLe fenugrec\r\n\r\nDe la famille des légumineuses, on reconnaît au fenugrec une activité hypoglycémique et hypocholestérolémiante. En d’autres termes, il permettrait de réduire le taux de glycémie et de cholestérol dans le sang. On lui prête également des vertus stimulantes sur l’appétit et est notamment utilisé en infusion ou sous forme de compléments alimentaires dans le traitement de l’anorexie. Ses graines font l’objet d’une utilisation ancestrale afin d’apaiser les douleurs menstruelles, lutter contre les troubles hormonaux ou encore pour traiter la constipation en médecine traditionnelle ayurvédique.\r\nLes clous de girofle\r\n\r\nAvec un taux de phénols élevé, les clous de girofle sont parmi les épices les plus riches en antioxydants. Ils participent donc à la lutte contre les radicaux libres responsables de l’oxydation et du vieillissement des cellules. Considérés comme “purificateurs”, les clous de girofle ont d’importantes propriétés antifongiques et anti-infectieuses. Germicides, ils ont également une bonne action cicatrisante. En infusion, ils permettraient d’améliorer le fonctionnement du système digestif.\r\nLe piment de Cayenne\r\n\r\nLes propriétés analgésiques du piment de Cayenne, dues à sa concentration en capsaïcine, sont utiles notamment pour soulager les douleurs de l’arthrite ou de l’arthrose. Contrairement à ce que pourrait laisser penser son goût très épicé, le piment de Cayenne stimule les enzymes digestives et permet ainsi de lutter contre les ulcères de l’estomac et les dommages gastriques causés par certains médicaments anti-inflammatoires. Riche en vitamines A et C, il favorise le renforcement des parois des vaisseaux sanguins.\r\nLe poivre noir\r\n\r\nLes baies de poivre noir seraient elle aussi un allié pour faciliter la digestion. En stimulant les papilles gustatives, elles transmettent un message à l’estomac permettant d’augmenter la sécrétion d’acide chlorhydrique, améliorant ainsi le processus digestif. En médecine ayurvédique, le poivre noir est utilisé pour calmer la toux. La pipérine qu’il contient ayant des vertus antibactériennes permettant de guérir la toux d’origine infectieuse.\r\nLa cannelle\r\n\r\nRiche en polyphénols, la cannelle est parmi les 50 aliments les plus antioxydants selon une étude de l’American Journal Of Clinical Nutrition parue en 2006. Extrêmement riche en tanins dont l’action permet de resserrer les tissus, la consommation de cannelle améliore la résistance de l’organisme aux parasites. Elle participe au renforcement du système immunitaire notamment par sa richesse en fer et en manganèse et est recommandée en cas de grippes ou de problèmes broncho-pulmonaires. Chez l’homme, on lui prête également des vertus tonifiantes et aphrodisiaques.\r\nLa cardamome\r\n\r\nCette épice permettrait de diminuer certains symptômes prémenstruels tels que les crampes ou les sautes d’humeur. Elle s''inscrit dans de nombreuses pharmacopées à travers le monde. Dans la Rome antique, la cardamome était utilisée pour apaiser les troubles digestifs tels que les coliques, les flatulences ou les indigestions. En Égypte elle était mâchée pour blanchir les dents. En Inde, elle intervient dans le traitement des affections allant de l’asthme aux calculs rénaux en passant par l''asthénie ou les bronchites.\r\nLe curcuma\r\n\r\nOn attribue au curcuma des propriétés anti-cancéreuses du fait de sa concentration curcumine. Celle-ci, responsable de la couleur jaune de l''épice, aurait de puissants bienfaits anti-inflammatoires. Il est recommandé de le consommer en association au poivre, dont la pipérine favorise l’assimilation. Riche en vitamines A et C et en antioxydants, le curcuma aurait une action anti-inflammatoire et hépato-protectrice. En médecine traditionnelle ayurvédique, chinoise ou encore indonésienne, le curcuma est utilisé pour soigner de nombreux maux parmi lesquels, les maladies du foie, le rhume ou les problèmes digestifs.\r\n', 1, 2, '2016-11-23 17:34:58'),
(2, 'Origine des épices _ La Cannelle', 'Les épices n''appartiennent pas à une seule famille végétale, même si certaines sont apparentées : cardamome, gingembre et curcuma appartiennent à la famille des zingibéracées ; myrte, piment de la Jamaïque et girofle à celle des myrtacées ; cumin, carvi, coriandre et ajowan sont, eux, des apiacées.\r\n\r\nLes épices viennent-elles d''une même partie de la plante ? Non. Il existe des épices-graines, comme la moutarde, le genièvre ou le sésame, mais la cannelle est une écorce, le clou de girofle un bouton de fleur, le safran un stigmate, le poivre un fruit, et le gingembre un rhizome, cette partie souterraine d''une plante à la jonction des tiges et des racines. Parfois versées dans la catégorie des aromates, avec les autres plantes à parfums, les épices se montrent rebelles à la classification. Quand on croit tenir le point commun, les exceptions surgissent...\r\n\r\nA l''époque médiévale, les épices désignaient de façon générale les marchandises (species) venues d''Orient - épices proprement dites mais aussi soie, coton et métaux. Progressivement, le sens du mot a rétréci pour ne plus désigner que les substances comestibles que nous appelons épices aujourd''hui. Si les limites de ce groupe, réduit, sont encore poreuses, on s''entend généralement sur le fait que les épices sont issues de plantes (ce qui exclut le sel), qu''elles possèdent des saveurs fortes, piquantes ou troublantes, qu''elles colorent parfois, et qu''elles subissent une préparation après la cueillette, ce qui les distingue des fines herbes. \r\n\r\nPar ailleurs, les épices ne se mangent pas telles quelles : elles participent à l''élaboration du mets, ce qui les différencie des condiments, servis à part. Ainsi la moutarde de table est un condiment, mais la graine de moutarde une épice. La moutarde est familière dans nos contrées. Pourtant les épices n''englobent pas toutes les plantes qui parfument notre cuisine au quotidien, comme l''ail ou l''oignon. Elles suscitent plutôt des rêveries tropicales et des visions d''opulence. Les épices embaument les longues caravanes, parcourant la Route de la soie à travers les déserts et les montagnes d''Arabie et d''Asie. Elles parfument le vent qui gonfle les voiles des caravelles et des caraques voguant sur les océans.\r\n\r\nEn conséquence, le meilleur critère de caractérisation des épices nous semble être celui de l''imaginaire. Chargées d''exotisme, parées de mythes et de croyances, dotées des pouvoirs magiques ou guérisseurs qu''on leur accordait autrefois, les épices sont celles qui nous font rêver, en plus de nous parfumer.\r\n\r\nLa cannelle (Cinnamomum zeylanicum) est le trésor de Ceylan, cette grande île prospère, jadis fertile en arbres fruitiers, cerfs, paons, lapins et lièvres.\r\n\r\nSelon François Pyrard de Laval, qui visite Ceylan au début du XVIIe siècle, « [...] l''arbre en est comme celui du laurier, il porte une fleur blanche et un fruit de la forme de l''olive mûre. Il y a écorces [sic], la première ne vaut rien, la seconde c''est la vraie cannelle qu''ils fendent sur l''arbre ».\r\n\r\nLe cannelier appartient effectivement à la famille des lauriers. Il est exploité dans le sud de l''Inde, au Sri Lanka, aux Seychelles, à Madagascar, sur l''île de Java, en Indonésie, aux Antilles, en Guyane française et au Brésil. Avant le XIXe siècle, la cannelle était prélevée sur les arbres sauvages du Sri Lanka. \r\n\r\nDepuis deux siècles, le cannelier est cultivé : il est taillé de façon à multiplier les rameaux. Cette taille, effectuée sur des canneliers de cinq-six ans d''âge, les empêche de grandir et les maintient à l''état d''arbuste. Les branches sont retaillées tous les deux ans. La qualité de l''écorce s''améliore d''année en année. Quand les branches atteignent environ deux mètres de long et deux centimètres de diamètre, la récolte peut commencer. Il faut profiter de la saison des pluies et de l''apparition de jeunes feuilles pour couper les branches, au ras du sol. En effet, la montée de sève augmente le parfum de cannelle et facilite l''écorçage de la branche.\r\n\r\nL''écorce est prélevée en bandes minces, qui sont ensuite grattées pour enlever le liège (l''écorce qui « ne vaut rien » selon François Pyrard de Laval). Au séchage, ces rubans roulent sur eux-mêmes et forment des petites flûtes, ou roseaux, qui se disent tous deux canna, en latin, et donnent leur nom à la cannelle.\r\n\r\nLa saveur exceptionnelle de la cannelle de Ceylan provient de sa teneur en aldéhyde cinnamique et en eugénol : c''est ce mélange aromatique qui la rend indépassable. Selon les lieux de production, sa qualité peut varier, selon les proportions d''eugénol. Parfois elle contient du camphre, ce qui la rend trop violente. La cannelle de Ceylan provenant du Sri Lanka, son île d''origine, reste la meilleure. \r\n\r\nLa cannelle de Chine, ou cannelle-casse, est différente de celle de Ceylan, mais elle appartient, comme elle et comme le camphrier, à la famille des Lauracées. Elle est récoltée sur un arbre chinois, exploité dans le sud de la Chine, le nord du Vietnam et en Indonésie. Les rameaux, coupés au bout de six ans, sont plus gros que ceux du cannelier de Ceylan. Les cueilleurs massent l''écorce avant de l''inciser, afin de dissocier les différentes couches. La casse n''est pas grattée avant d''être séchée, ce qui l''empêche de rouler sur elle-même et explique pourquoi cette épice est beaucoup plus épaisse que la cannelle de Ceylan. La casse est vendue avec son liège (ou suber), et sa couleur externe, marron, presque grise, tranche avec la rousseur de la cannelle de Ceylan. Le goût de la casse est plus brutal que celui de la cannelle, car elle est dépourvue d''eugénol. Les fruits du cannelier de Chine sont des baies contenant une seule graine. En Chine, ils sont cueillis verts, et employés comme épice, après avoir été séchés.\r\n\r\n\r\n\r\n\r\n', 3, 3, '2016-11-24 09:58:44'),
(3, 'Clou de girofle et fleurs des girofliers', 'Le 17 novembre 1521, Antonio Pigafetta, l''un des membres de l''expédition de Fernand de Magellan, débarque sur l''île de Tidore, dans l''archipel des Moluques, pour voir de ses propres yeux « comment naissent les girofles ». Guidé par des indigènes, Pigafetta rejoint les montagnes couvertes de girofliers (Eugenia caryophyllata).\r\n\r\nImpressionné par ces grands arbres au feuillage pyramidal, l''Italien note que que « toutes les parties de l''arbre, aussi bien les feuilles que l''écorce et le bois, sentent le girofle ». \r\n\r\nEn effet, le giroflier est, comme le muscadier, l''un des végétaux qui contiennent l''une des plus fortes proportions d''huile essentielle (jusqu''à 17 %). Tant les feuilles que les fleurs et les fruits de ce grand arbre tropical dégagent des parfums merveilleux. Le calice, rouge et long comme celui d''un œillet, contient un bouton de fleur, qui s''ouvre en révélant quatre pétales blancs. Si elle est fécondée, la fleur du giroflier donne un fruit très aromatique, appelé mère de girofle, clou matrice, ou antofle, très apprécié en Indonésie confit dans le sucre. La partie la plus parfumée du girofle n''est pas ce fruit, mais le bouton, aux pétales encore soudés. En s''épanouissant, la fleur perd une grande part de son parfum, c''est pourquoi elle est cueillie juste avant d''éclore.\r\n\r\nSéchés au soleil sur des nattes et remués constamment afin d''éviter la fermentation, les boutons floraux prennent une couleur terre de Sienne. Une fois débarrassés de leur tige, ou pédoncule, ils deviennent l''épice nommée clou de girofle, la tête de ce « clou » étant formée par la corolle fermée et la pointe par le calice. Un giroflier fournit environ deux à trois kilogrammes de clous de girofle par an. \r\n\r\nL''Indonésie est le plus gros producteur et également le plus gros consommateur de clou de girofle avec lequel sont parfumées les cigarettes locales, les fameuses kretek. Zanzibar et Madagascar sont également d''importantes sources de girofle, tant sous forme d''épices que d''huile essentielle, mais les clous de girofle de l''île d''Amboine, aux Moluques, restent les plus réputés en raison de leur taille et de leur qualité.', 3, 3, '2016-11-24 10:00:31');

-- --------------------------------------------------------

--
-- Structure de la table `realisations`
--

CREATE TABLE IF NOT EXISTS `realisations` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `realisations`
--

INSERT INTO `realisations` (`id`, `titre`, `description`, `lien`, `image`) VALUES
(1, 'Ardoise magique', 'Feuille de dessin fait en Javascript (POO), Html et Css.\r\n(Exercice effectué en formation)', 'ardoise_magique/index.html', 'ardoise_magique/ardoise.png'),
(2, 'Blog Les épices', 'Blog sur le sujet de notre choix en PHP, Html, Css.\r\n(Exercice effectué en formation)', 'blog/src/accueil.php', 'blog/blog.png'),
(3, 'Carrousel', 'Carrousel fait en Javascript, Html, Css.\r\n(Exercice effectué en formation)', 'carrousel/index.html', 'carrousel/carrousel.png'),
(4, 'Cup of Tea', 'Maquette effectuée en cours d''intégration (html et Css)', 'cup_of_tea/index.html', 'cup_of_tea/tea.png'),
(5, 'Maquette portfolio', 'Maquette effectuée en cours d''intégration (html et Css)', 'maquette_portfolio/index.html', 'maquette_portfolio/maquette.png');

-- --------------------------------------------------------

--
-- Structure de la table `sources`
--

CREATE TABLE IF NOT EXISTS `sources` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sources`
--

INSERT INTO `sources` (`id`, `nom`) VALUES
(1, 'Alsacréations (Tweet)'),
(2, 'Grafikart'),
(3, 'Europe 1'),
(4, 'Frenchweb (Tweet)'),
(5, 'Le Parisien 77'),
(6, 'L''Est Républicain'),
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
-- Index pour la table `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Post_Id` (`Post_Id`);

--
-- Index pour la table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Author_Id` (`Author_Id`,`Category_Id`),
  ADD KEY `Category_Id` (`Category_Id`),
  ADD KEY `Author_Id_2` (`Author_Id`),
  ADD KEY `Category_Id_2` (`Category_Id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `Author`
--
ALTER TABLE `Author`
  MODIFY `Id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `Id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Post`
--
ALTER TABLE `Post`
  MODIFY `Id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `realisations`
--
ALTER TABLE `realisations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD316879BDCA9E` FOREIGN KEY (`id_source`) REFERENCES `sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BFDD3168C9486A13` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

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
