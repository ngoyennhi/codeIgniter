-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 06 Avril 2022 à 13:03
-- Version du serveur :  10.1.48-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-47+0~20210223.51+debian9~1.gbp7f60a9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `c64hotongminh` server hotongminh.needemand.com
-- Base de données :  `frameworkTP2` localhost
--


-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE `Admin` (
  `Utilisateurs_Id_Utilusateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Admin`
--

INSERT INTO `Admin` (`Utilisateurs_Id_Utilusateurs`) VALUES
(5);

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `Id_Articles` int(11) NOT NULL,
  `qualite_par_unite` smallint(50) NOT NULL,
  `etat` char(5) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `date_de_mise_a_jour` datetime DEFAULT NULL,
  `Produits_id_produit` int(11) NOT NULL,
  `Unite_de_mesure_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Chef`
--

CREATE TABLE `Chef` (
  `Utilisateurs_Id_Utilusateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Chef`
--

INSERT INTO `Chef` (`Utilisateurs_Id_Utilusateurs`) VALUES
(3),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `Commandes`
--

CREATE TABLE `Commandes` (
  `Id_Commandes` int(11) NOT NULL,
  `etat` char(5) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `Utilisateurs_Id_Utilisateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Commentaire`
--

CREATE TABLE `Commentaire` (
  `titre_du_commentaire` varchar(50) NOT NULL,
  `contenu_du_commentaire` varchar(50) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `etat` char(5) NOT NULL,
  `Moderateur_Utilisateurs_Id_Utilusateurs` int(11) NOT NULL,
  `Recettes_id_recette` int(11) NOT NULL,
  `Utilisateurs_Id_Utilusateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `donne_une_note`
--

CREATE TABLE `donne_une_note` (
  `note_sur_5` tinyint(1) DEFAULT NULL,
  `Utilisateurs_Id_Utilusateurs` int(11) NOT NULL,
  `Recettes_id_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Structure de la table `Hotels`
--

CREATE TABLE `Hotels` (
  `idHotel` int(11) NOT NULL,
  `Libelle` varchar(50) DEFAULT NULL,
  `Etoile` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Hotels`
--

INSERT INTO `Hotels` (`idHotel`, `Libelle`, `Etoile`) VALUES
(1, 'Ski Hotel', '*'),
(2, 'Art Hotel', '**'),
(3, 'Rose Hotel', '***'),
(4, 'Lions Hotel', '****');

-- --------------------------------------------------------

--
-- Structure de la table `Images`
--

CREATE TABLE `Images` (
  `Id_Images` int(11) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `extension` char(10) DEFAULT NULL,
  `Articles_Id_Articles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Importation`
--

CREATE TABLE `Importation` (
  `Admin_Utilisateurs_Id_Utilusateurs` int(11) NOT NULL,
  `date_d_importation` varchar(50) NOT NULL,
  `Lots_ref_Commandes` int(11) NOT NULL,
  `Lots_Articles_Id_Articles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Structure de la table `Ingredients`
--

CREATE TABLE `Ingredients` (
  `Produits_id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Ingrédients_de_recette`
--

CREATE TABLE `Ingrédients_de_recette` (
  `quantité` smallint(50) NOT NULL,
  `ordre` tinyint(50) DEFAULT NULL,
  `Unite_de_mesure_Id` int(11) NOT NULL,
  `Ingredients_Produits_id_produit` int(11) NOT NULL,
  `Recettes_id_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Lignes_de_commande`
--

CREATE TABLE `Lignes_de_commande` (
  `Commandes_Id_Commandes` int(11) NOT NULL,
  `quantite_commandee` varchar(45) DEFAULT NULL,
  `Articles_Id_Articles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Logs_utilistateurs`
--

CREATE TABLE `Logs_utilistateurs` (
  `Id_Logs_utilisateurs` int(11) NOT NULL,
  `date_de_connexion` datetime DEFAULT NULL,
  `Utilisateurs_Id_Utilusateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Logs_utilistateurs`
--

INSERT INTO `Logs_utilistateurs` (`Id_Logs_utilisateurs`, `date_de_connexion`, `Utilisateurs_Id_Utilusateurs`) VALUES
(1, '2022-04-01 09:19:41', 1),
(2, '2022-04-01 02:11:04', 2),
(3, '2022-04-01 03:12:05', 3),
(4, '2022-04-01 04:10:04', 4),
(5, '2022-04-01 02:08:14', 5);

-- --------------------------------------------------------

--
-- Structure de la table `Lots`
--

CREATE TABLE `Lots` (
  `ref_Commandes` int(11) NOT NULL,
  `cout_unitaire` decimal(10,2) NOT NULL,
  `quantite_achete` int(11) NOT NULL,
  `date_de_reception` datetime NOT NULL,
  `Articles_Id_Articles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Moderateur`
--

CREATE TABLE `Moderateur` (
  `Utilisateurs_Id_Utilusateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Moderateur`
--

INSERT INTO `Moderateur` (`Utilisateurs_Id_Utilusateurs`) VALUES
(1),
(2);

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Structure de la table `Paragraphes`
--

CREATE TABLE `Paragraphes` (
  `Id_Paragraphes` int(11) NOT NULL,
  `contenu` varchar(255) DEFAULT NULL,
  `ordre` tinyint(50) DEFAULT NULL,
  `date_de_création` datetime NOT NULL,
  `Recettes_id_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Structure de la table `Prix_de_l_article`
--

CREATE TABLE `Prix_de_l_article` (
  `Id_Prix_de_l_articl` int(11) NOT NULL,
  `date_d_application` datetime NOT NULL,
  `prix` decimal(19,4) NOT NULL,
  `Articles_Id_Articles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Produits`
--

CREATE TABLE `Produits` (
  `id_produit` int(11) NOT NULL,
  `nom_du_produit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Recettes`
--

CREATE TABLE `Recettes` (
  `date_de_creation` datetime NOT NULL,
  `nom_de_la_recette` varchar(120) NOT NULL,
  `difficulte` tinyint(50) DEFAULT NULL,
  `nombre_de_personne` tinyint(50) DEFAULT NULL,
  `etat` char(1) DEFAULT NULL,
  `temps` time DEFAULT NULL,
  `id_recette` int(11) NOT NULL,
  `Categorie_id_categorie` int(11) NOT NULL,
  `Chef_Utilisateurs_Id_Utilusateurs` int(11) NOT NULL,
  `Images_Id_Images` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Structure de la table `Tag`
--

CREATE TABLE `Tag` (
  `Id_Tag` int(50) NOT NULL,
  `Nom` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Unite_de_mesure`
--

CREATE TABLE `Unite_de_mesure` (
  `Id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `UsersNestix`
--

CREATE TABLE `UsersNestix` (
  `ID` int(10) NOT NULL,
  `Firstname` varchar(255) DEFAULT NULL,
  `Lastname` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `UsersNestix`
--

INSERT INTO `UsersNestix` (`ID`, `Firstname`, `Lastname`, `Username`, `Email`) VALUES
(1, 'toto', 'titi', 'user123', 'toto@hotmail.fr'),
(2, 'Sabine', 'HO', 'Sabine_Jolie', 'Sabine@yahoo.com'),
(3, 'Nhi', 'NGO', 'Nhi_Pro', 'Nhi@hotmail.com'),
(6, 'kevin', 'le formateur', 'kevin', 'kevin@needemand.com');

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `Id_Utilisateurs` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `etat` char(5) DEFAULT NULL,
  `date_de_creation` datetime DEFAULT NULL,
  `adresse_1` varchar(50) DEFAULT NULL,
  `adresse_2` varchar(50) DEFAULT NULL,
  `codepostal` int(11) DEFAULT NULL,
  `Ville_Id_Ville` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`Id_Utilisateurs`, `pseudo`, `nom`, `prenom`, `email`, `password`, `etat`, `date_de_creation`, `adresse_1`, `adresse_2`, `codepostal`, `Ville_Id_Ville`) VALUES
(1, 'Sabine', 'Sabine', 'Cun', 'SabineCun@gmail.com', '123456', 'a', '2022-04-01 00:00:00', '124 avenue Vert Bois', 'appt 12', 34093, 1),
(2, 'Sam', 'Sam', 'SieuQuay', 'SamSieuQuay@gmail.com', '123456', 'a', '2022-01-10 00:00:00', '512 avenue Vert Bois', 'appt 35', 45903, 2),
(3, 'yennhi', 'yen', 'nhi', 'yennhi@gmail.com', '123456', 'b', '2022-02-15 00:00:00', '245 avenue Gay Lussac', 'villa 6', 64375, 3),
(4, 'camconcon', 'concon', 'cam', 'camconcon@yahoo.com', '123456', 'a', '2022-03-15 00:00:00', '354 avenue Saint Jean', 'appt 29', 33324, 4),
(5, 'heocon', 'heo', 'con', 'heocon@gmail.com', '123456', 'a', '2022-03-16 00:00:00', '200 rue Bervard Jean', 'villa 5', 43423, 5);

-- --------------------------------------------------------

--
-- Structure de la table `Ville`
--

CREATE TABLE `Ville` (
  `Id_Ville` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Ville`
--

INSERT INTO `Ville` (`Id_Ville`, `Nom`) VALUES
(1, 'Montpellier'),
(2, 'Lyon'),
(3, 'Toulouse'),
(4, 'Nime'),
(5, 'Paris');

-- --------------------------------------------------------
--
-- Index pour les tables exportées
--

--
-- Index pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`Utilisateurs_Id_Utilusateurs`);



--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`Id_Articles`,`Produits_id_produit`,`Unite_de_mesure_Id`),
  ADD KEY `fk_Articles_Produits1_idx` (`Produits_id_produit`),
  ADD KEY `fk_Articles_Unite_de_mesure1_idx` (`Unite_de_mesure_Id`);



--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `Chef`
--
ALTER TABLE `Chef`
  ADD PRIMARY KEY (`Utilisateurs_Id_Utilusateurs`);

--
-- Index pour la table `Commandes`
--
ALTER TABLE `Commandes`
  ADD PRIMARY KEY (`Id_Commandes`),
  ADD KEY `Utilisateurs_Id_Utilisateur` (`Utilisateurs_Id_Utilisateurs`);

--
-- Index pour la table `Commentaire`
--
ALTER TABLE `Commentaire`
  ADD PRIMARY KEY (`Moderateur_Utilisateurs_Id_Utilusateurs`,`Recettes_id_recette`,`Utilisateurs_Id_Utilusateurs`),
  ADD KEY `fk_Commentaire_Recettes1_idx` (`Recettes_id_recette`),
  ADD KEY `fk_Commentaire_Utilisateurs1_idx` (`Utilisateurs_Id_Utilusateurs`);

--
-- Index pour la table `donne_une_note`
--
ALTER TABLE `donne_une_note`
  ADD PRIMARY KEY (`Utilisateurs_Id_Utilusateurs`,`Recettes_id_recette`),
  ADD KEY `fk_donne_une_note_Recettes1_idx` (`Recettes_id_recette`);

--
-- Index pour la table `Hotels`
--
ALTER TABLE `Hotels`
  ADD PRIMARY KEY (`idHotel`);

--
-- Index pour la table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`Id_Images`,`Articles_Id_Articles`),
  ADD KEY `fk_Images_Articles1_idx` (`Articles_Id_Articles`);

--
-- Index pour la table `Importation`
--
ALTER TABLE `Importation`
  ADD PRIMARY KEY (`Admin_Utilisateurs_Id_Utilusateurs`,`Lots_ref_Commandes`,`Lots_Articles_Id_Articles`),
  ADD KEY `fk_Lots_has_Admin_Admin1_idx` (`Admin_Utilisateurs_Id_Utilusateurs`),
  ADD KEY `fk_Importation_Lots1_idx` (`Lots_ref_Commandes`,`Lots_Articles_Id_Articles`);


--
-- Index pour la table `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD PRIMARY KEY (`Produits_id_produit`);

--
-- Index pour la table `Ingrédients_de_recette`
--
ALTER TABLE `Ingrédients_de_recette`
  ADD PRIMARY KEY (`Unite_de_mesure_Id`,`Ingredients_Produits_id_produit`,`Recettes_id_recette`),
  ADD KEY `fk_Ingrédients_de_recette_Unite_de_mesure1_idx` (`Unite_de_mesure_Id`),
  ADD KEY `fk_Ingrédients_de_recette_Ingredients1_idx` (`Ingredients_Produits_id_produit`),
  ADD KEY `fk_Ingrédients_de_recette_Recettes1_idx` (`Recettes_id_recette`);

--
-- Index pour la table `Lignes_de_commande`
--
ALTER TABLE `Lignes_de_commande`
  ADD PRIMARY KEY (`Commandes_Id_Commandes`,`Articles_Id_Articles`),
  ADD KEY `fk_Articles_has_Commandes_Commandes1_idx` (`Commandes_Id_Commandes`),
  ADD KEY `fk_Lignes_de_commande_Articles1_idx` (`Articles_Id_Articles`);

--
-- Index pour la table `Logs_utilistateurs`
--
ALTER TABLE `Logs_utilistateurs`
  ADD PRIMARY KEY (`Id_Logs_utilisateurs`,`Utilisateurs_Id_Utilusateurs`),
  ADD KEY `fk_Logs_utilistateurs_Utilisateurs1_idx` (`Utilisateurs_Id_Utilusateurs`);

--
-- Index pour la table `Lots`
--
ALTER TABLE `Lots`
  ADD PRIMARY KEY (`ref_Commandes`,`Articles_Id_Articles`),
  ADD KEY `fk_Lots_Articles1_idx` (`Articles_Id_Articles`);

--
-- Index pour la table `Moderateur`
--
ALTER TABLE `Moderateur`
  ADD PRIMARY KEY (`Utilisateurs_Id_Utilusateurs`);


--
-- Index pour la table `Paragraphes`
--
ALTER TABLE `Paragraphes`
  ADD PRIMARY KEY (`Id_Paragraphes`,`Recettes_id_recette`),
  ADD KEY `fk_Paragraphes_Recettes1_idx` (`Recettes_id_recette`);


--
-- Index pour la table `Prix_de_l_article`
--
ALTER TABLE `Prix_de_l_article`
  ADD PRIMARY KEY (`Id_Prix_de_l_articl`,`Articles_Id_Articles`),
  ADD KEY `fk_Prix_de_l_article_Articles1_idx` (`Articles_Id_Articles`);

--
-- Index pour la table `Produits`
--
ALTER TABLE `Produits`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `Recettes`
--
ALTER TABLE `Recettes`
  ADD PRIMARY KEY (`id_recette`,`Categorie_id_categorie`,`Chef_Utilisateurs_Id_Utilusateurs`,`Images_Id_Images`),
  ADD KEY `fk_Recettes_Categorie1_idx` (`Categorie_id_categorie`),
  ADD KEY `fk_Recettes_Chef1_idx` (`Chef_Utilisateurs_Id_Utilusateurs`),
  ADD KEY `fk_Recettes_Images1_idx` (`Images_Id_Images`);


--
-- Index pour la table `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`Id_Tag`);

--
-- Index pour la table `Unite_de_mesure`
--
ALTER TABLE `Unite_de_mesure`
  ADD PRIMARY KEY (`Id`);


--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`Id_Utilisateurs`,`Ville_Id_Ville`),
  ADD KEY `fk_Utilisateurs_Ville1_idx` (`Ville_Id_Ville`);

--
-- Index pour la table `Ville`
--
ALTER TABLE `Ville`
  ADD PRIMARY KEY (`Id_Ville`);



--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `Id_Articles` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Commandes`
--
ALTER TABLE `Commandes`
  MODIFY `Id_Commandes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Images`
--
ALTER TABLE `Images`
  MODIFY `Id_Images` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Logs_utilistateurs`
--
ALTER TABLE `Logs_utilistateurs`
  MODIFY `Id_Logs_utilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Lots`
--
ALTER TABLE `Lots`
  MODIFY `ref_Commandes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Paragraphes`
--
ALTER TABLE `Paragraphes`
  MODIFY `Id_Paragraphes` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Prix_de_l_article`
--
ALTER TABLE `Prix_de_l_article`
  MODIFY `Id_Prix_de_l_articl` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Produits`
--
ALTER TABLE `Produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Recettes`
--
ALTER TABLE `Recettes`
  MODIFY `id_recette` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Unite_de_mesure`
--
ALTER TABLE `Unite_de_mesure`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `Id_Utilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Ville`
--
ALTER TABLE `Ville`
  MODIFY `Id_Ville` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `fk_Admin_Utilisateurs1` FOREIGN KEY (`Utilisateurs_Id_Utilusateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD CONSTRAINT `fk_Articles_Produits1` FOREIGN KEY (`Produits_id_produit`) REFERENCES `Produits` (`id_produit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Articles_Unite_de_mesure1` FOREIGN KEY (`Unite_de_mesure_Id`) REFERENCES `Unite_de_mesure` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Contraintes pour la table `Chef`
--
ALTER TABLE `Chef`
  ADD CONSTRAINT `fk_Chef_Utilisateurs1` FOREIGN KEY (`Utilisateurs_Id_Utilusateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Commandes`
--
ALTER TABLE `Commandes`
  ADD CONSTRAINT `Utilisateurs_Id_Utilisateur` FOREIGN KEY (`Utilisateurs_Id_Utilisateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`);

--
-- Contraintes pour la table `Commentaire`
--
ALTER TABLE `Commentaire`
  ADD CONSTRAINT `fk_Commentaire_Moderateur1` FOREIGN KEY (`Moderateur_Utilisateurs_Id_Utilusateurs`) REFERENCES `Moderateur` (`Utilisateurs_Id_Utilusateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Commentaire_Recettes1` FOREIGN KEY (`Recettes_id_recette`) REFERENCES `Recettes` (`id_recette`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Commentaire_Utilisateurs1` FOREIGN KEY (`Utilisateurs_Id_Utilusateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `donne_une_note`
--
ALTER TABLE `donne_une_note`
  ADD CONSTRAINT `fk_donne_une_note_Recettes1` FOREIGN KEY (`Recettes_id_recette`) REFERENCES `Recettes` (`id_recette`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_donne_une_note_Utilisateurs1` FOREIGN KEY (`Utilisateurs_Id_Utilusateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Images`
--
ALTER TABLE `Images`
  ADD CONSTRAINT `fk_Images_Articles1` FOREIGN KEY (`Articles_Id_Articles`) REFERENCES `Articles` (`Id_Articles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Importation`
--
ALTER TABLE `Importation`
  ADD CONSTRAINT `fk_Importation_Lots1` FOREIGN KEY (`Lots_ref_Commandes`,`Lots_Articles_Id_Articles`) REFERENCES `Lots` (`ref_Commandes`, `Articles_Id_Articles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Lots_has_Admin_Admin1` FOREIGN KEY (`Admin_Utilisateurs_Id_Utilusateurs`) REFERENCES `Admin` (`Utilisateurs_Id_Utilusateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Contraintes pour la table `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD CONSTRAINT `fk_Ingredients_Produits1` FOREIGN KEY (`Produits_id_produit`) REFERENCES `Produits` (`id_produit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Ingrédients_de_recette`
--
ALTER TABLE `Ingrédients_de_recette`
  ADD CONSTRAINT `fk_Ingrédients_de_recette_Ingredients1` FOREIGN KEY (`Ingredients_Produits_id_produit`) REFERENCES `Ingredients` (`Produits_id_produit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ingrédients_de_recette_Recettes1` FOREIGN KEY (`Recettes_id_recette`) REFERENCES `Recettes` (`id_recette`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ingrédients_de_recette_Unite_de_mesure1` FOREIGN KEY (`Unite_de_mesure_Id`) REFERENCES `Unite_de_mesure` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Lignes_de_commande`
--
ALTER TABLE `Lignes_de_commande`
  ADD CONSTRAINT `fk_Articles_has_Commandes_Commandes1` FOREIGN KEY (`Commandes_Id_Commandes`) REFERENCES `Commandes` (`Id_Commandes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Lignes_de_commande_Articles1` FOREIGN KEY (`Articles_Id_Articles`) REFERENCES `Articles` (`Id_Articles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Logs_utilistateurs`
--
ALTER TABLE `Logs_utilistateurs`
  ADD CONSTRAINT `fk_Logs_utilistateurs_Utilisateurs1` FOREIGN KEY (`Utilisateurs_Id_Utilusateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Lots`
--
ALTER TABLE `Lots`
  ADD CONSTRAINT `fk_Lots_Articles1` FOREIGN KEY (`Articles_Id_Articles`) REFERENCES `Articles` (`Id_Articles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Moderateur`
--
ALTER TABLE `Moderateur`
  ADD CONSTRAINT `fk_Moderateur_Utilisateurs1` FOREIGN KEY (`Utilisateurs_Id_Utilusateurs`) REFERENCES `Utilisateurs` (`Id_Utilisateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Paragraphes`
--
ALTER TABLE `Paragraphes`
  ADD CONSTRAINT `fk_Paragraphes_Recettes1` FOREIGN KEY (`Recettes_id_recette`) REFERENCES `Recettes` (`id_recette`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Prix_de_l_article`
--
ALTER TABLE `Prix_de_l_article`
  ADD CONSTRAINT `fk_Prix_de_l_article_Articles1` FOREIGN KEY (`Articles_Id_Articles`) REFERENCES `Articles` (`Id_Articles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Recettes`
--
ALTER TABLE `Recettes`
  ADD CONSTRAINT `fk_Recettes_Categorie1` FOREIGN KEY (`Categorie_id_categorie`) REFERENCES `Categorie` (`id_categorie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Recettes_Chef1` FOREIGN KEY (`Chef_Utilisateurs_Id_Utilusateurs`) REFERENCES `Chef` (`Utilisateurs_Id_Utilusateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Recettes_Images1` FOREIGN KEY (`Images_Id_Images`) REFERENCES `Images` (`Id_Images`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Contraintes pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD CONSTRAINT `fk_Utilisateurs_Ville1` FOREIGN KEY (`Ville_Id_Ville`) REFERENCES `Ville` (`Id_Ville`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
