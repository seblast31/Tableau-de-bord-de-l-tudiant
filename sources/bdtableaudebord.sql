-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Avril 2017 à 12:57
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdtableaudebord`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `ID_user` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `poste` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`ID_user`, `nom`, `prenom`, `poste`) VALUES
(11, 'PAMELA', 'CELILE', 'CHARGER RELATION INTERNATIONAL'),
(12, 'HUBERT', 'GERARD', 'RESPONSABLE COMMINITACION'),
(13, 'MARCELINE', 'ALIZE', 'SECRETAIRE'),
(14, 'ROCHER', 'ALEXANDRE', 'SECRETAIRE'),
(15, 'CHIPOLATA', 'LORRAN', 'DIRECTEUR');

-- --------------------------------------------------------

--
-- Structure de la table `compo_promo`
--

CREATE TABLE `compo_promo` (
  `ID_userE` int(11) NOT NULL,
  `ID_promo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compo_promo`
--

INSERT INTO `compo_promo` (`ID_userE`, `ID_promo`) VALUES
(1, 'P002'),
(2, 'P002'),
(3, 'P002'),
(4, 'P002');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `nom` varchar(50) DEFAULT NULL,
  `code_Id` varchar(50) NOT NULL,
  `coef` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`nom`, `code_Id`, `coef`) VALUES
('ANGLAIS', 'D1C1-1', 3),
('PROJET PERSONNEL PROFESSIONNEL 1', 'D1C1-2', 1),
('MANAGMENT EQUIPE ', 'D1C2-1', 2),
('DROIT SOCIAL & CONTRATS', 'D1C2-2', 3),
('ECO CONCEPTION', 'D1C2-3', 2);

-- --------------------------------------------------------

--
-- Structure de la table `coursformation`
--

CREATE TABLE `coursformation` (
  `ID_cour` varchar(100) NOT NULL,
  `ID_f` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `coursformation`
--

INSERT INTO `coursformation` (`ID_cour`, `ID_f`) VALUES
('D1C1-1', 100),
('D1C1-2', 130),
('D1C2-3', 110);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `ID_user` int(11) NOT NULL,
  `num_etudiant` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `id_promo` varchar(50) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`ID_user`, `num_etudiant`, `nom`, `prenom`, `id_promo`, `id_formation`, `email`) VALUES
(1, 22391, 'MBOURRA', 'MAX', 'P002', 106, 'max.mbourra@u-psud.fr'),
(2, 22392, 'RICHARD', 'JULY', 'P002', 106, 'july.richard@u-psud.fr'),
(3, 22393, 'MARTIN', 'SEBASTIEN', 'P002', 106, 'sebastien.martin@u-psud.fr'),
(4, 22394, 'SUN', 'RUI', 'P002', 106, 'rui.sun@u-psud.fr'),
(5, 22500, 'ERRADI', 'ISMAIL', 'P002', 106, 'ismail.erradi@u-psud.fr');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `Id_f` int(11) NOT NULL,
  `nom_spe` varchar(50) DEFAULT NULL,
  `anne_formation` int(11) DEFAULT NULL,
  `typef` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`Id_f`, `nom_spe`, `anne_formation`, `typef`) VALUES
(100, 'PIEP', 1, 'ETD'),
(101, 'PIEP', 2, 'ETD'),
(102, 'INFO', 1, 'ETD'),
(103, 'MTX', 1, 'ETD'),
(104, 'EES', 1, 'ETD'),
(105, 'PSO', 1, 'ETD'),
(106, 'INFO', 2, 'ETD'),
(107, 'MTX', 2, 'ETD'),
(108, 'EES', 2, 'ETD'),
(109, 'PSO', 2, 'ETD'),
(110, 'INFO', 3, 'ETD'),
(111, 'MTX', 3, 'ETD'),
(112, 'EES', 3, 'ETD'),
(113, 'PSO', 3, 'ETD'),
(114, 'INFO', 1, 'APP'),
(115, 'MTX', 1, 'APP'),
(116, 'EES', 1, 'APP'),
(117, 'PSO', 1, 'APP'),
(118, 'INFO', 2, 'APP'),
(119, 'MTX', 2, 'APP'),
(120, 'EES', 2, 'APP'),
(121, 'PSO', 2, 'APP'),
(122, 'INFO', 3, 'APP'),
(123, 'MTX', 3, 'APP'),
(124, 'EES', 3, 'APP'),
(125, 'PSO', 3, 'APP'),
(126, 'INFO', 1, 'FC'),
(127, 'MTX', 1, 'FC'),
(128, 'EES', 1, 'FC'),
(129, 'PSO', 1, 'FC'),
(130, 'INFO', 2, 'FC'),
(131, 'MTX', 2, 'FC'),
(132, 'EES', 2, 'FC'),
(133, 'PSO', 2, 'FC'),
(134, 'INFO', 3, 'FC'),
(135, 'MTX', 3, 'FC'),
(136, 'EES', 3, 'FC'),
(137, 'PSO', 3, 'FC'),
(138, 'PEIPC', 1, 'ETD'),
(139, 'CI', 1, 'ETD'),
(140, 'CI', 1, 'APP'),
(141, 'CI', 1, 'FC'),
(142, 'CI', 2, 'ETD'),
(143, 'CI', 2, 'APP'),
(144, 'CI', 2, 'FC'),
(145, 'CI', 3, 'ETD'),
(146, 'CI', 3, 'APP'),
(147, 'CI', 3, 'FC');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `ID_F` int(11) NOT NULL,
  `ID_GROUPE` varchar(50) NOT NULL,
  `ID_cours` varchar(50) NOT NULL,
  `ID_promo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`ID_F`, `ID_GROUPE`, `ID_cours`, `ID_promo`) VALUES
(142, 'G1', 'D1C1-1', 'P002'),
(142, 'G2', 'D1C1-1', 'P002'),
(142, 'G3', 'D1C1-1', 'P002'),
(142, 'G4', 'D1C1-1', 'P002');

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

CREATE TABLE `mail` (
  `ID_mail` int(11) NOT NULL,
  `ID_dest` int(11) DEFAULT NULL,
  `ID_exp` int(11) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mail`
--

INSERT INTO `mail` (`ID_mail`, `ID_dest`, `ID_exp`, `message`) VALUES
(1000, 8, 1, 'BONJOUR MONSIEUR POUR  VOTRE REPONSE '),
(1001, 2, 1, 'VOILA LES DOCUMENTS DEMANDE. PASSE UNE BONSOIRE CORDIALEMENT  ETUDIANT X '),
(1002, 13, 2, 'BONHJOUR SVS<DCSXN<ZDX WX DS SD');

-- --------------------------------------------------------

--
-- Structure de la table `note_etudiant`
--

CREATE TABLE `note_etudiant` (
  `ID_user` int(11) NOT NULL,
  `ID_cours` varchar(50) NOT NULL,
  `Note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `note_etudiant`
--

INSERT INTO `note_etudiant` (`ID_user`, `ID_cours`, `Note`) VALUES
(1, 'D1C1-1', 8),
(2, 'D1C1-1', 12),
(3, 'D1C1-1', 11),
(4, 'D1C1-1', 15);

-- --------------------------------------------------------

--
-- Structure de la table `participant_cg`
--

CREATE TABLE `participant_cg` (
  `ID_Cours` varchar(50) NOT NULL,
  `ID_F` int(11) NOT NULL,
  `ID_G` varchar(50) NOT NULL,
  `ID_userE` int(11) NOT NULL,
  `ID_promo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `participant_cg`
--

INSERT INTO `participant_cg` (`ID_Cours`, `ID_F`, `ID_G`, `ID_userE`, `ID_promo`) VALUES
('D1C1-1', 142, 'G1', 1, 'P002'),
('D1C1-1', 142, 'G1', 2, 'P002'),
('D1C1-1', 142, 'G2', 3, 'P002'),
('D1C1-1', 142, 'G2', 4, 'P002');

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `ID_user` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prof`
--

INSERT INTO `prof` (`ID_user`, `nom`, `prenom`) VALUES
(6, 'POLO', 'SYLVAIN'),
(7, 'PETIT', 'MAGALI'),
(8, 'MAILLET', 'AGUSTINE'),
(9, 'AURORA', 'ZIDANE'),
(10, 'GIRAUD', 'LILOU');

-- --------------------------------------------------------

--
-- Structure de la table `prof_cours`
--

CREATE TABLE `prof_cours` (
  `ID_cours` varchar(50) NOT NULL,
  `ID_Prof` int(11) NOT NULL,
  `Annee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prof_cours`
--

INSERT INTO `prof_cours` (`ID_cours`, `ID_Prof`, `Annee`) VALUES
('D1C1-1', 7, 2015),
('D1C1-1', 8, 2015),
('D1C1-1', 9, 2015);

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `Id_promo` varchar(100) NOT NULL,
  `nom_parrain` varchar(100) DEFAULT NULL,
  `anneeD` int(11) DEFAULT NULL,
  `anneeF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `promo`
--

INSERT INTO `promo` (`Id_promo`, `nom_parrain`, `anneeD`, `anneeF`) VALUES
('P001', 'AUCUN', 2015, 2017),
('P002', 'KEYSIGHT', 2015, 2018),
('P003', 'METROPOLIS', 2013, 2016),
('P004', 'THALES', 2016, 2019);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_salle`
--

CREATE TABLE `reservation_salle` (
  `id_cours` varchar(100) NOT NULL,
  `nom_salle` varchar(100) NOT NULL,
  `num_bat` varchar(50) NOT NULL,
  `heurD` time NOT NULL,
  `heurF` time DEFAULT NULL,
  `jour` date NOT NULL,
  `ID_F` int(11) DEFAULT NULL,
  `ID_GROUPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reservation_salle`
--

INSERT INTO `reservation_salle` (`id_cours`, `nom_salle`, `num_bat`, `heurD`, `heurF`, `jour`, `ID_F`, `ID_GROUPE`) VALUES
('D1C1-1', 'A100', '620', '08:20:00', '10:20:00', '2017-02-14', 142, 'G1'),
('D1C1-1', 'A101', '620', '08:20:00', '10:20:00', '2017-02-14', 142, 'G3'),
('D1C1-1', 'A105', '620', '08:20:00', '10:20:00', '2017-02-14', 142, 'G2');

-- --------------------------------------------------------

--
-- Structure de la table `responsable_formation`
--

CREATE TABLE `responsable_formation` (
  `ID_prof` int(11) NOT NULL,
  `ID_f` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `responsable_formation`
--

INSERT INTO `responsable_formation` (`ID_prof`, `ID_f`) VALUES
(6, 100),
(7, 129),
(10, 110);

-- --------------------------------------------------------

--
-- Structure de la table `respo_adminf`
--

CREATE TABLE `respo_adminf` (
  `ID_adm` int(11) NOT NULL,
  `ID_f` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `respo_adminf`
--

INSERT INTO `respo_adminf` (`ID_adm`, `ID_f`) VALUES
(12, 100),
(13, 129),
(14, 110);

-- --------------------------------------------------------

--
-- Structure de la table `respo_promo`
--

CREATE TABLE `respo_promo` (
  `ID_prof` int(11) NOT NULL,
  `ID_promo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `respo_promo`
--

INSERT INTO `respo_promo` (`ID_prof`, `ID_promo`) VALUES
(6, 'P002'),
(10, 'P001');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `nom` varchar(50) NOT NULL,
  `numbat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`nom`, `numbat`) VALUES
('A100', '620'),
('A101', '620'),
('A105', '620'),
('B014', '620'),
('GRAND AMPHI', '640'),
('PETIT AMPHI', '640');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_user`);

--
-- Index pour la table `compo_promo`
--
ALTER TABLE `compo_promo`
  ADD PRIMARY KEY (`ID_userE`,`ID_promo`),
  ADD KEY `fkcpp` (`ID_promo`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`code_Id`);

--
-- Index pour la table `coursformation`
--
ALTER TABLE `coursformation`
  ADD PRIMARY KEY (`ID_cour`,`ID_f`),
  ADD KEY `fkcff` (`ID_f`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`ID_user`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`Id_f`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`ID_F`,`ID_GROUPE`,`ID_cours`,`ID_promo`),
  ADD KEY `fkgc` (`ID_cours`),
  ADD KEY `fkgp` (`ID_promo`);

--
-- Index pour la table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`ID_mail`);

--
-- Index pour la table `note_etudiant`
--
ALTER TABLE `note_etudiant`
  ADD PRIMARY KEY (`ID_user`,`ID_cours`,`Note`),
  ADD KEY `fknec` (`ID_cours`);

--
-- Index pour la table `participant_cg`
--
ALTER TABLE `participant_cg`
  ADD PRIMARY KEY (`ID_Cours`,`ID_F`,`ID_G`,`ID_userE`,`ID_promo`),
  ADD KEY `fkpc` (`ID_F`,`ID_G`,`ID_Cours`,`ID_promo`),
  ADD KEY `fkpUE` (`ID_userE`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`ID_user`);

--
-- Index pour la table `prof_cours`
--
ALTER TABLE `prof_cours`
  ADD PRIMARY KEY (`ID_cours`,`ID_Prof`,`Annee`),
  ADD KEY `fkpcp` (`ID_Prof`);

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`Id_promo`);

--
-- Index pour la table `reservation_salle`
--
ALTER TABLE `reservation_salle`
  ADD PRIMARY KEY (`id_cours`,`nom_salle`,`num_bat`,`heurD`,`jour`),
  ADD KEY `fks` (`nom_salle`,`num_bat`);

--
-- Index pour la table `responsable_formation`
--
ALTER TABLE `responsable_formation`
  ADD PRIMARY KEY (`ID_prof`,`ID_f`),
  ADD KEY `fkrf` (`ID_f`);

--
-- Index pour la table `respo_adminf`
--
ALTER TABLE `respo_adminf`
  ADD PRIMARY KEY (`ID_adm`,`ID_f`),
  ADD KEY `fkrf2` (`ID_f`);

--
-- Index pour la table `respo_promo`
--
ALTER TABLE `respo_promo`
  ADD PRIMARY KEY (`ID_prof`,`ID_promo`),
  ADD KEY `fkrpr` (`ID_promo`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`nom`,`numbat`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fku` FOREIGN KEY (`ID_user`) REFERENCES `utilisateur` (`ID`);

--
-- Contraintes pour la table `compo_promo`
--
ALTER TABLE `compo_promo`
  ADD CONSTRAINT `fkcp` FOREIGN KEY (`ID_userE`) REFERENCES `etudiant` (`ID_user`),
  ADD CONSTRAINT `fkcpp` FOREIGN KEY (`ID_promo`) REFERENCES `promo` (`Id_promo`);

--
-- Contraintes pour la table `coursformation`
--
ALTER TABLE `coursformation`
  ADD CONSTRAINT `fkcfc` FOREIGN KEY (`ID_cour`) REFERENCES `cours` (`code_Id`),
  ADD CONSTRAINT `fkcff` FOREIGN KEY (`ID_f`) REFERENCES `formation` (`Id_f`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `fkeu` FOREIGN KEY (`ID_user`) REFERENCES `utilisateur` (`ID`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `fkgc` FOREIGN KEY (`ID_cours`) REFERENCES `cours` (`code_Id`),
  ADD CONSTRAINT `fkgf` FOREIGN KEY (`ID_F`) REFERENCES `formation` (`Id_f`),
  ADD CONSTRAINT `fkgp` FOREIGN KEY (`ID_promo`) REFERENCES `promo` (`Id_promo`);

--
-- Contraintes pour la table `note_etudiant`
--
ALTER TABLE `note_etudiant`
  ADD CONSTRAINT `fknec` FOREIGN KEY (`ID_cours`) REFERENCES `cours` (`code_Id`),
  ADD CONSTRAINT `fknee` FOREIGN KEY (`ID_user`) REFERENCES `etudiant` (`ID_user`);

--
-- Contraintes pour la table `participant_cg`
--
ALTER TABLE `participant_cg`
  ADD CONSTRAINT `fkpUE` FOREIGN KEY (`ID_userE`) REFERENCES `etudiant` (`ID_user`),
  ADD CONSTRAINT `fkpc` FOREIGN KEY (`ID_F`,`ID_G`,`ID_Cours`,`ID_promo`) REFERENCES `groupe` (`ID_F`, `ID_GROUPE`, `ID_cours`, `ID_promo`);

--
-- Contraintes pour la table `prof`
--
ALTER TABLE `prof`
  ADD CONSTRAINT `fkp` FOREIGN KEY (`ID_user`) REFERENCES `utilisateur` (`ID`);

--
-- Contraintes pour la table `prof_cours`
--
ALTER TABLE `prof_cours`
  ADD CONSTRAINT `fkpcc` FOREIGN KEY (`ID_cours`) REFERENCES `cours` (`code_Id`),
  ADD CONSTRAINT `fkpcp` FOREIGN KEY (`ID_Prof`) REFERENCES `prof` (`ID_user`);

--
-- Contraintes pour la table `reservation_salle`
--
ALTER TABLE `reservation_salle`
  ADD CONSTRAINT `fkc` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`code_Id`),
  ADD CONSTRAINT `fks` FOREIGN KEY (`nom_salle`,`num_bat`) REFERENCES `salle` (`nom`, `numbat`);

--
-- Contraintes pour la table `responsable_formation`
--
ALTER TABLE `responsable_formation`
  ADD CONSTRAINT `fkpu` FOREIGN KEY (`ID_prof`) REFERENCES `prof` (`ID_user`),
  ADD CONSTRAINT `fkrf` FOREIGN KEY (`ID_f`) REFERENCES `formation` (`Id_f`);

--
-- Contraintes pour la table `respo_adminf`
--
ALTER TABLE `respo_adminf`
  ADD CONSTRAINT `fkpa` FOREIGN KEY (`ID_adm`) REFERENCES `admin` (`ID_user`),
  ADD CONSTRAINT `fkrf2` FOREIGN KEY (`ID_f`) REFERENCES `formation` (`Id_f`);

--
-- Contraintes pour la table `respo_promo`
--
ALTER TABLE `respo_promo`
  ADD CONSTRAINT `fkrpp` FOREIGN KEY (`ID_prof`) REFERENCES `prof` (`ID_user`),
  ADD CONSTRAINT `fkrpr` FOREIGN KEY (`ID_promo`) REFERENCES `promo` (`Id_promo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
