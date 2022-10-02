-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 11:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Apple MacBook Pro', 1799, './upload/product1.png'),
(2, 'Sony E7 Headphones', 147, './upload/product2.png'),
(3, 'Sony Xperia Z4', 459, './upload/product3.png'),
(4, 'Samsung Galaxy A50', 278, './upload/product4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `gsvti`
--
CREATE DATABASE IF NOT EXISTS `gsvti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gsvti`;

-- --------------------------------------------------------

--
-- Table structure for table `agence`
--

CREATE TABLE `agence` (
  `id_agence` varchar(100) NOT NULL,
  `nom_agence` varchar(100) NOT NULL,
  `ville_agence` varchar(100) NOT NULL,
  `quatier_agence` varchar(100) NOT NULL,
  `numero_agence` varchar(100) NOT NULL,
  `site_agence` varchar(100) NOT NULL,
  `email_agence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agence`
--

INSERT INTO `agence` (`id_agence`, `nom_agence`, `ville_agence`, `quatier_agence`, `numero_agence`, `site_agence`, `email_agence`) VALUES
('GSVTI-DLA-001', 'GSVTI-DENVER', 'DOUALA', 'BONAMOUSSADI-DENVER', '655 015 872', 'GSVTI.COM', 'Gs.camerounetudes@yahoo.fr'),
('GSVTI-DLA-002', 'GSVTI-SAINT-JAMES', 'DOUALA', 'BONAMOUSSADI-SAINT-JAMES', '671 414 062', 'GSVTI.COM', 'Gs.camerounetudes@yahoo.fr');

-- --------------------------------------------------------

--
-- Table structure for table `anne`
--

CREATE TABLE `anne` (
  `id_anne` varchar(60) NOT NULL,
  `annesc` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anne`
--

INSERT INTO `anne` (`id_anne`, `annesc`) VALUES
('21', '2020/2021'),
('22', '2021/2022');

-- --------------------------------------------------------

--
-- Table structure for table `apprenant_auto`
--

CREATE TABLE `apprenant_auto` (
  `matricule_apprenant` varchar(200) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `autre_nom` varchar(100) DEFAULT NULL,
  `data_naissance` varchar(100) NOT NULL,
  `lieu_naissance` varchar(100) NOT NULL,
  `sex` varchar(600) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `nationalite` varchar(60) NOT NULL,
  `residence` varchar(100) NOT NULL,
  `nomprosh` varchar(200) NOT NULL,
  `contact_prosh` varchar(200) NOT NULL,
  `lien_proche` varchar(100) NOT NULL,
  `resid_prosh` varchar(200) NOT NULL,
  `promo_auto` varchar(60) DEFAULT NULL,
  `debut_form` date NOT NULL,
  `dure_form` varchar(60) NOT NULL,
  `pansion` varchar(100) NOT NULL,
  `date_enregistre` datetime NOT NULL DEFAULT current_timestamp(),
  `motdepass` varchar(255) NOT NULL DEFAULT '123123',
  `photo` varchar(200) DEFAULT NULL,
  `stature` varchar(255) NOT NULL DEFAULT 'pas encore compose',
  `id_session` varchar(60) NOT NULL,
  `id_form_auto` varchar(100) NOT NULL,
  `id_agence` varchar(100) NOT NULL,
  `id_anne` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apprenant_auto`
--

INSERT INTO `apprenant_auto` (`matricule_apprenant`, `nom`, `prenom`, `autre_nom`, `data_naissance`, `lieu_naissance`, `sex`, `contact`, `email`, `nationalite`, `residence`, `nomprosh`, `contact_prosh`, `lien_proche`, `resid_prosh`, `promo_auto`, `debut_form`, `dure_form`, `pansion`, `date_enregistre`, `motdepass`, `photo`, `stature`, `id_session`, `id_form_auto`, `id_agence`, `id_anne`) VALUES
('AUTO-CPPA213', 'cute', 'pires', 'metenou urben raims', '2021-09-17', 'douala', 'Masculin', 'zez', 'raimspires20@gmail.com', 'cameronais', 'douala', 'kegne serge Klaupin', '123456', 'Père', 'deido', 'non', '2021-09-10', 'Mois', '30000', '2021-09-16 11:01:40', '123123', '../../pictures/students_images/AUTO-CPPA213.jpg', 'pas encore compose', '1', 'PA', 'GSVTI-DLA-001', '22'),
('AUTO-FPPA212', 'fotso', 'pires', 'metenou urben raims', '2021-09-02', 'foumbot', 'Masculin', '26555484', 'raimspires20@gmail.com', 'cameronais', 'douala', 'kegne serge Klaupin', '123456', 'Père', 'deido', '', '2021-09-16', 'Mois', '10000000', '2021-09-14 04:08:07', '123123', '../../pictures/students_images/AUTO-FPPA212.jpg', 'pas encore compose', '1', 'PA', 'GSVTI-DLA-002', '22'),
('JSPA212', 'james', 'signer', 'brown', '2021-09-22', 'douala', 'Masculin', '1454', 'fotsopires10@gmail.com', 'camerounais', 'bonnamossadi', 'dady', '121321', 'Père', 'momy', '12332', '2021-09-24', 'Mois', '500000', '2021-09-16 10:40:28', '123123', '../../pictures/students_images/JSPA212.jpg', 'pas encore compose', '1', 'PA', 'GSVTI-DLA-001', '22');

-- --------------------------------------------------------

--
-- Table structure for table `apprenant_lang`
--

CREATE TABLE `apprenant_lang` (
  `matricule_apprenant` varchar(200) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `autre_nom` varchar(100) DEFAULT NULL,
  `data_naissance` varchar(100) NOT NULL,
  `lieu_naissance` varchar(100) NOT NULL,
  `sex` varchar(600) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `residence` varchar(100) NOT NULL,
  `dure` varchar(100) NOT NULL,
  `specification` varchar(60) NOT NULL,
  `horaires` varchar(100) NOT NULL,
  `pansion` varchar(100) NOT NULL,
  `motdepass` varchar(255) NOT NULL DEFAULT '123123',
  `photo` varchar(200) DEFAULT NULL,
  `nomprosh` varchar(200) NOT NULL,
  `contact_prosh` varchar(200) NOT NULL,
  `lien_proche` varchar(100) NOT NULL,
  `resid_prosh` varchar(200) NOT NULL,
  `promo_auto` varchar(60) DEFAULT NULL,
  `diplome` varchar(100) DEFAULT NULL,
  `date_enregistre` datetime NOT NULL DEFAULT current_timestamp(),
  `stature` varchar(255) NOT NULL DEFAULT 'pas encore compose',
  `id_session` varchar(60) NOT NULL,
  `niveau_lang` varchar(60) NOT NULL,
  `id_langue` varchar(60) NOT NULL,
  `id_agence` varchar(100) NOT NULL,
  `id_anne` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apprenant_lang`
--

INSERT INTO `apprenant_lang` (`matricule_apprenant`, `nom`, `prenom`, `autre_nom`, `data_naissance`, `lieu_naissance`, `sex`, `contact`, `email`, `residence`, `dure`, `specification`, `horaires`, `pansion`, `motdepass`, `photo`, `nomprosh`, `contact_prosh`, `lien_proche`, `resid_prosh`, `promo_auto`, `diplome`, `date_enregistre`, `stature`, `id_session`, `niveau_lang`, `id_langue`, `id_agence`, `id_anne`) VALUES
('LAN-FPEN212', 'fotso', 'pires', 'metenou urben raims', '2021-09-24', 'foumbot', 'Masculin', '26555484', 'raimspires20@gmail.com', 'douala', '1 Mois', 'Certificat', '10h', '10000000', '123123', '../../pictures/students_images/LAN-FPEN212.jpg', 'kegne serge Klaupin', '123456', 'Père', 'deido', '', 'TOEIC', '2021-09-14 04:34:22', 'pas encore compose', '1', '1', 'EN', 'GSVTI-DLA-001', '22');

-- --------------------------------------------------------

--
-- Table structure for table `apprenant_pro`
--

CREATE TABLE `apprenant_pro` (
  `matricule_apprenant` varchar(200) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `autre_nom` varchar(100) DEFAULT NULL,
  `data_naissance` varchar(100) NOT NULL,
  `lieu_naissance` varchar(100) NOT NULL,
  `sex` varchar(600) NOT NULL,
  `diplome` varchar(200) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `residence` varchar(100) NOT NULL,
  `motdepass` varchar(255) NOT NULL DEFAULT '123123',
  `photo` varchar(200) DEFAULT NULL,
  `nompere` varchar(255) NOT NULL,
  `contactpere` varchar(255) DEFAULT NULL,
  `nommere` varchar(255) DEFAULT NULL,
  `contactmere` varchar(255) DEFAULT NULL,
  `nomtuture` varchar(255) DEFAULT NULL,
  `contacttuture` varchar(255) DEFAULT NULL,
  `langue` varchar(200) NOT NULL,
  `stature` varchar(255) NOT NULL DEFAULT 'pas encore compose',
  `pansion` int(11) NOT NULL,
  `date_enregistre` datetime NOT NULL DEFAULT current_timestamp(),
  `id_filiere` varchar(60) NOT NULL,
  `nationalite` varchar(200) NOT NULL,
  `promo_auto` varchar(60) DEFAULT NULL,
  `id_session` varchar(60) NOT NULL,
  `id_anne` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apprenant_pro`
--

INSERT INTO `apprenant_pro` (`matricule_apprenant`, `nom`, `prenom`, `autre_nom`, `data_naissance`, `lieu_naissance`, `sex`, `diplome`, `contact`, `email`, `residence`, `motdepass`, `photo`, `nompere`, `contactpere`, `nommere`, `contactmere`, `nomtuture`, `contacttuture`, `langue`, `stature`, `pansion`, `date_enregistre`, `id_filiere`, `nationalite`, `promo_auto`, `id_session`, `id_anne`) VALUES
('ESMAV211', 'EKAMB', 'SERGE', 'IGOR', '', '', 'Masculin', 'GCE', '690709944', '', '', '123123', '../../pictures/images/profile.jpg', '', '', '', '', '', '', 'Francais', 'pas encore compose', 29588, '2021-09-23 13:45:56', 'MAV', '', NULL, '10', '21'),
('FPDA211', 'fotso', 'cute killer', 'metenou urben raims', '1999-01-10', 'foumbot', 'Masculin', 'GCE', '26555484', 'raimspires20@gmail.com', 'Douala', '123123', '../../pictures/students_images/FPDA211.jpg', 'Kegne Serge Klaupin', '789789', 'Mpondie Mbongni prudence', '456456', 'Tchawak Egenie Claire', '852', 'Francais', 'pas encore compose', 449900, '2021-09-14 04:03:49', 'DA', 'cameronais', NULL, '1', '22'),
('JBMRI211', 'jun', 'brice', 'pi', '2021-10-20', 'douala', 'Masculin', 'bac', '564654', 'admij@admin', 'douala', '123123', '../../pictures/students_images/JBMRI211.jpg', 'pio', '545', 'ioioi', '245', 'mkk', '245', 'Francais', 'pas encore compose', 250000, '2021-10-16 13:32:05', 'MRI', 'cameronian', NULL, '1', '22'),
('UMDA212', 'Um', 'Auro', 'koko', '2021-09-09', 'foumbot', 'Masculin', 'GCE', '26555484', 'raimspires20@gmail.com', 'Douala', '123123', '../../pictures/students_images/RKDA212.jpg', 'Kegne Serge Klaupin', '789789', 'Mpondie Mbongni prudence', '456456', '', '456456', 'Francais', 'pas encore compose', 340000, '2021-09-18 06:43:29', 'DA', 'cameronais', NULL, '1', '22');

-- --------------------------------------------------------

--
-- Table structure for table `diplomlangue`
--

CREATE TABLE `diplomlangue` (
  `pseudo_di` varchar(100) NOT NULL,
  `nom_diplome` varchar(250) NOT NULL,
  `id_langue` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diplomlangue`
--

INSERT INTO `diplomlangue` (`pseudo_di`, `nom_diplome`, `id_langue`) VALUES
('IETLS', 'IETLS', 'en'),
('PRIETLS', 'PREPA-IETLS', 'en'),
('PRTFI', 'PREPA-TFI', 'de'),
('PRTOEIC', 'PREPA-TOEFL', 'de'),
('PRTOEIF', 'PREPA-TOEIC', 'en'),
('TFI', 'TFI', 'de'),
('TOEFL', 'TOEFL', 'de'),
('TOEIC', 'TOEIC', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `matricule_emp` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  `DOB` date NOT NULL,
  `POB` varchar(100) NOT NULL,
  `sex` varchar(600) NOT NULL,
  `last_certi` varchar(200) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `resident` varchar(100) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '0',
  `photo` varchar(200) DEFAULT NULL,
  `service_start` datetime NOT NULL DEFAULT current_timestamp(),
  `service_end` datetime DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `motif` varchar(255) DEFAULT NULL,
  `id_agence` varchar(100) NOT NULL,
  `id_post` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`matricule_emp`, `first_name`, `last_name`, `other_name`, `DOB`, `POB`, `sex`, `last_certi`, `contact`, `email`, `resident`, `login`, `password`, `photo`, `service_start`, `service_end`, `status`, `motif`, `id_agence`, `id_post`) VALUES
('FEDIR2020', 'FORM', 'ERIC', NULL, '1975-10-12', 'DOUALA', 'MALE', 'DOCTORA', '123456', 'FORMERIC10@GMAIL.COM', 'VILLAGE', 'FORM2', '123123', '../../pictures/students_images/FEDIR2020.jpeg', '2021-09-07 12:50:20', '2020-01-14 00:00:00', 'active', NULL, 'GSVTI-DLA-001', 'DIR'),
('FPDA211', 'FOTSO', 'PIRES', NULL, '1975-10-12', 'DOUALA', 'MALE', 'DOCTORA', '123456', 'FOTSOPIRES10@GMAIL.COM', 'VILLAGE', 'RAIMS PIRES', '123123', '../../pictures/students_images/FPDA211.jpg', '2021-09-07 12:50:20', '2020-01-14 00:00:00', 'active', NULL, 'GSVTI-DLA-001', 'SCOM1');

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE `filiere` (
  `id_filiere` varchar(60) NOT NULL,
  `filiere` varchar(100) NOT NULL,
  `type_filiere` varchar(100) NOT NULL,
  `diplome_filiere` varchar(100) NOT NULL,
  `pansion_fil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`id_filiere`, `filiere`, `type_filiere`, `diplome_filiere`, `pansion_fil`) VALUES
('ACM', 'assistant en Cabinet Médical', 'Paramédical', 'CQP', 500000),
('ATL', 'Agent Technicien de Laboratoire', 'Paramédical', 'CQP', 250000),
('DA', 'developement d\'application', 'informatique', 'DQP', 400000),
('MAV', 'Montage Audiovisuel', 'informatique', 'DQP', 30000),
('MRI', 'maintenace & reasea informatique', 'informatique', 'DQP', 350000);

-- --------------------------------------------------------

--
-- Table structure for table `form_auto`
--

CREATE TABLE `form_auto` (
  `id_form_auto` varchar(100) NOT NULL,
  `type_form` varchar(100) NOT NULL,
  `pansion_auto` varchar(100) NOT NULL,
  `duree_form` varchar(100) NOT NULL,
  `permis` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_auto`
--

INSERT INTO `form_auto` (`id_form_auto`, `type_form`, `pansion_auto`, `duree_form`, `permis`) VALUES
('PA', 'conduite_A', '35000', '3 mois', 'permis A'),
('PB', 'conduite_B', '40000', '3 mois', 'permis B'),
('recy', 'recyclage', '20000', '2 semain', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `horaires`
--

CREATE TABLE `horaires` (
  `id_hor` int(11) NOT NULL,
  `dure` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horaires`
--

INSERT INTO `horaires` (`id_hor`, `dure`) VALUES
(1, '8h – 10h'),
(2, '10h – 12h'),
(3, '14h – 16h');

-- --------------------------------------------------------

--
-- Table structure for table `langue`
--

CREATE TABLE `langue` (
  `id_langue` varchar(60) NOT NULL,
  `nom_langue` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `langue`
--

INSERT INTO `langue` (`id_langue`, `nom_langue`) VALUES
('DE', 'DEUTSCH'),
('EN', 'ENGLISH'),
('FR', 'FRENCH');

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `id_matiere` varchar(60) NOT NULL,
  `nom_matiere` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matier_filiere`
--

CREATE TABLE `matier_filiere` (
  `id_specialite` int(11) NOT NULL,
  `id_matiere` varchar(60) NOT NULL,
  `id_filiere` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `motif`
--

CREATE TABLE `motif` (
  `id_motif` int(11) NOT NULL,
  `nom_motif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motif`
--

INSERT INTO `motif` (`id_motif`, `nom_motif`) VALUES
(1, 'Frais d’inscription'),
(2, 'Frais de dossier'),
(3, 'Assurance maladie'),
(4, 'Frais de soutenance'),
(5, 'Frais de livret de stage'),
(6, 'Frais divers'),
(7, 'Avance 1er tranche'),
(8, '1er Tranche'),
(9, 'Avance 2e tranche'),
(10, '2e tranche'),
(11, 'Avance 3e tranche'),
(12, '3e tranche');

-- --------------------------------------------------------

--
-- Table structure for table `niveau_langue`
--

CREATE TABLE `niveau_langue` (
  `niveau_lang` varchar(60) NOT NULL,
  `id_langue` varchar(60) NOT NULL,
  `speudo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `niveau_langue`
--

INSERT INTO `niveau_langue` (`niveau_lang`, `id_langue`, `speudo`) VALUES
('1', 'en', 'biginner'),
('2', 'en', 'pre-intermidiate'),
('3', 'en', 'intermidiate'),
('4', 'en', 'advance'),
('A1', 'de', 'BASE'),
('A2', 'de', 'NORMAL'),
('B1', 'de', 'AVANCEE'),
('B2', 'de', 'AVANCEE'),
('C1', 'de', 'PROFESSIONNELLLE');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` varchar(100) NOT NULL,
  `departement` varchar(100) NOT NULL,
  `nom_post` varchar(100) NOT NULL,
  `privilage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `departement`, `nom_post`, `privilage`) VALUES
('DIR', 'DIRECTION', 'DIRTECTUR', 'CHEF CENTRE'),
('SCOM1', 'COMMERCIAL', 'COMPTABLE', 'SOUCOM');

-- --------------------------------------------------------

--
-- Table structure for table `professeur`
--

CREATE TABLE `professeur` (
  `matricule_emp` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  `DOB` date NOT NULL,
  `POB` varchar(100) NOT NULL,
  `sex` varchar(600) NOT NULL,
  `last_certi` varchar(200) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `resident` varchar(100) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '0',
  `photo` varchar(200) DEFAULT NULL,
  `service_start` datetime NOT NULL DEFAULT current_timestamp(),
  `service_end` datetime DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `motif` varchar(255) DEFAULT NULL,
  `id_agence` varchar(100) NOT NULL,
  `id_post` varchar(100) NOT NULL,
  `id_matiere` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id_session` varchar(60) NOT NULL,
  `mois` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id_session`, `mois`) VALUES
('1', 'Janvier'),
('10', 'October'),
('11', 'November'),
('12', 'Décembre'),
('2', 'Février'),
('3', 'Mars'),
('4', 'Avril'),
('5', 'Mai'),
('6', 'Juin'),
('7', 'Juillet'),
('8', 'Août'),
('9', 'September');

-- --------------------------------------------------------

--
-- Table structure for table `type_vercement`
--

CREATE TABLE `type_vercement` (
  `id_type` int(11) NOT NULL,
  `libelle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_vercement`
--

INSERT INTO `type_vercement` (`id_type`, `libelle`) VALUES
(1, 'Espèce'),
(2, 'vercement mobile'),
(3, 'Virement bancaire'),
(4, 'Chèque bancaire');

-- --------------------------------------------------------

--
-- Table structure for table `vercement_auto`
--

CREATE TABLE `vercement_auto` (
  `id_vercement` varchar(60) NOT NULL,
  `matricule_apprenant` varchar(200) NOT NULL,
  `matricule_emp` varchar(200) NOT NULL,
  `date_vercement` datetime NOT NULL DEFAULT current_timestamp(),
  `somme_verce` int(11) NOT NULL,
  `somme_reste` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_motif` int(11) NOT NULL,
  `id_agence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vercement_auto`
--

INSERT INTO `vercement_auto` (`id_vercement`, `matricule_apprenant`, `matricule_emp`, `date_vercement`, `somme_verce`, `somme_reste`, `id_type`, `id_motif`, `id_agence`) VALUES
('2021-9-1', 'JSPA212', 'FPDA211', '2021-09-16 10:45:13', 8500, 26500, 1, 8, 'GSVTI-DLA-001'),
('2021-9-2', 'AUTO-CPPA213', 'FPDA211', '2021-09-16 11:02:16', 5000, 30000, 1, 8, 'GSVTI-DLA-001');

-- --------------------------------------------------------

--
-- Table structure for table `vercement_form_pro`
--

CREATE TABLE `vercement_form_pro` (
  `id_vercement` varchar(60) NOT NULL,
  `matricule_apprenant` varchar(200) NOT NULL,
  `matricule_emp` varchar(200) NOT NULL,
  `date_vercement` datetime NOT NULL DEFAULT current_timestamp(),
  `somme_verce` int(11) NOT NULL,
  `somme_reste` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_motif` int(11) NOT NULL,
  `id_agence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vercement_form_pro`
--

INSERT INTO `vercement_form_pro` (`id_vercement`, `matricule_apprenant`, `matricule_emp`, `date_vercement`, `somme_verce`, `somme_reste`, `id_type`, `id_motif`, `id_agence`) VALUES
('2021-10-1', 'JBMRI211', 'FPDA211', '2021-10-16 13:32:51', 10000, 0, 1, 6, 'GSVTI-DLA-001'),
('2021-10-2', 'JBMRI211', 'FPDA211', '2021-10-16 13:33:42', 100000, 250000, 1, 8, 'GSVTI-DLA-001'),
('2021-9-1', 'FPDA211', 'FPDA211', '2021-09-23 12:38:06', 10, 0, 1, 2, 'GSVTI-DLA-001'),
('2021-9-2', 'FPDA211', 'FPDA211', '2021-09-23 12:38:33', 50, 449950, 1, 8, 'GSVTI-DLA-001'),
('2021-9-3', 'FPDA211', 'FPDA211', '2021-09-23 12:40:17', 50, 449950, 1, 8, 'GSVTI-DLA-001'),
('2021-9-4', 'ESMAV211', 'FPDA211', '2021-09-23 13:46:30', 412, 29588, 2, 8, 'GSVTI-DLA-001'),
('2021-9-5', 'umda212', 'FPDA211', '2021-09-23 19:16:41', 50000, 340000, 1, 8, 'GSVTI-DLA-001'),
('2021-9-6', 'fpda211', 'FPDA211', '2021-09-29 12:55:09', 50, 449900, 1, 8, 'GSVTI-DLA-001'),
('2021-9-7', 'fpda211', 'FPDA211', '2021-09-29 12:56:03', 10000000, 0, 2, 3, 'GSVTI-DLA-001');

-- --------------------------------------------------------

--
-- Table structure for table `vercement_langue`
--

CREATE TABLE `vercement_langue` (
  `id_vercement` varchar(60) NOT NULL,
  `matricule_apprenant` varchar(200) NOT NULL,
  `matricule_emp` varchar(200) NOT NULL,
  `date_vercement` datetime NOT NULL DEFAULT current_timestamp(),
  `somme_verce` int(11) NOT NULL,
  `somme_reste` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_motif` int(11) NOT NULL,
  `id_agence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`id_agence`);

--
-- Indexes for table `anne`
--
ALTER TABLE `anne`
  ADD PRIMARY KEY (`id_anne`);

--
-- Indexes for table `apprenant_auto`
--
ALTER TABLE `apprenant_auto`
  ADD PRIMARY KEY (`matricule_apprenant`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_form_auto` (`id_form_auto`),
  ADD KEY `id_agence` (`id_agence`),
  ADD KEY `id_anne` (`id_anne`);

--
-- Indexes for table `apprenant_lang`
--
ALTER TABLE `apprenant_lang`
  ADD PRIMARY KEY (`matricule_apprenant`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `niveau_lang` (`niveau_lang`),
  ADD KEY `id_langue` (`id_langue`),
  ADD KEY `id_agence` (`id_agence`),
  ADD KEY `id_anne` (`id_anne`);

--
-- Indexes for table `apprenant_pro`
--
ALTER TABLE `apprenant_pro`
  ADD PRIMARY KEY (`matricule_apprenant`),
  ADD KEY `id_filiere` (`id_filiere`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_anne` (`id_anne`);

--
-- Indexes for table `diplomlangue`
--
ALTER TABLE `diplomlangue`
  ADD PRIMARY KEY (`pseudo_di`),
  ADD KEY `id_langue` (`id_langue`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`matricule_emp`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_agence` (`id_agence`);

--
-- Indexes for table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id_filiere`);

--
-- Indexes for table `form_auto`
--
ALTER TABLE `form_auto`
  ADD PRIMARY KEY (`id_form_auto`);

--
-- Indexes for table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id_hor`);

--
-- Indexes for table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`id_langue`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id_matiere`);

--
-- Indexes for table `matier_filiere`
--
ALTER TABLE `matier_filiere`
  ADD PRIMARY KEY (`id_specialite`),
  ADD KEY `id_matiere` (`id_matiere`),
  ADD KEY `id_filiere` (`id_filiere`);

--
-- Indexes for table `motif`
--
ALTER TABLE `motif`
  ADD PRIMARY KEY (`id_motif`);

--
-- Indexes for table `niveau_langue`
--
ALTER TABLE `niveau_langue`
  ADD PRIMARY KEY (`niveau_lang`),
  ADD KEY `id_langue` (`id_langue`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`matricule_emp`),
  ADD KEY `id_matiere` (`id_matiere`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`);

--
-- Indexes for table `type_vercement`
--
ALTER TABLE `type_vercement`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `vercement_auto`
--
ALTER TABLE `vercement_auto`
  ADD PRIMARY KEY (`id_vercement`),
  ADD KEY `matricule_apprenant` (`matricule_apprenant`),
  ADD KEY `matricule_emp` (`matricule_emp`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_motif` (`id_motif`),
  ADD KEY `id_agence` (`id_agence`);

--
-- Indexes for table `vercement_form_pro`
--
ALTER TABLE `vercement_form_pro`
  ADD PRIMARY KEY (`id_vercement`),
  ADD KEY `matricule_apprenant` (`matricule_apprenant`),
  ADD KEY `matricule_emp` (`matricule_emp`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_motif` (`id_motif`),
  ADD KEY `id_agence` (`id_agence`);

--
-- Indexes for table `vercement_langue`
--
ALTER TABLE `vercement_langue`
  ADD PRIMARY KEY (`id_vercement`),
  ADD KEY `matricule_apprenant` (`matricule_apprenant`),
  ADD KEY `matricule_emp` (`matricule_emp`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_motif` (`id_motif`),
  ADD KEY `id_agence` (`id_agence`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id_hor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matier_filiere`
--
ALTER TABLE `matier_filiere`
  MODIFY `id_specialite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motif`
--
ALTER TABLE `motif`
  MODIFY `id_motif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `type_vercement`
--
ALTER TABLE `type_vercement`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apprenant_auto`
--
ALTER TABLE `apprenant_auto`
  ADD CONSTRAINT `fk_anne_auto` FOREIGN KEY (`id_anne`) REFERENCES `anne` (`id_anne`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auto_agence` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auto_sess` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_form_auto` FOREIGN KEY (`id_form_auto`) REFERENCES `form_auto` (`id_form_auto`) ON UPDATE CASCADE;

--
-- Constraints for table `apprenant_lang`
--
ALTER TABLE `apprenant_lang`
  ADD CONSTRAINT `fk_agence_app_lan` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_anne_lang` FOREIGN KEY (`id_anne`) REFERENCES `anne` (`id_anne`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lan_applang` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nivlan_applang` FOREIGN KEY (`niveau_lang`) REFERENCES `niveau_langue` (`niveau_lang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_session_applang` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`) ON UPDATE CASCADE;

--
-- Constraints for table `apprenant_pro`
--
ALTER TABLE `apprenant_pro`
  ADD CONSTRAINT `fk_anne_apprenant` FOREIGN KEY (`id_anne`) REFERENCES `anne` (`id_anne`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_filiere_apprenant` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_session_app` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`) ON UPDATE CASCADE;

--
-- Constraints for table `diplomlangue`
--
ALTER TABLE `diplomlangue`
  ADD CONSTRAINT `fk_dip_lang` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`) ON UPDATE CASCADE;

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `fk_agence_employer` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_employer` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`) ON UPDATE CASCADE;

--
-- Constraints for table `matier_filiere`
--
ALTER TABLE `matier_filiere`
  ADD CONSTRAINT `fk_fil_spec` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mat_spec` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`) ON UPDATE CASCADE;

--
-- Constraints for table `niveau_langue`
--
ALTER TABLE `niveau_langue`
  ADD CONSTRAINT `fk_lang_niv` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`) ON UPDATE CASCADE;

--
-- Constraints for table `professeur`
--
ALTER TABLE `professeur`
  ADD CONSTRAINT `fk_pro_mat` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`) ON UPDATE CASCADE;

--
-- Constraints for table `vercement_auto`
--
ALTER TABLE `vercement_auto`
  ADD CONSTRAINT `agen_ver_auto` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matap_ver_auto` FOREIGN KEY (`matricule_apprenant`) REFERENCES `apprenant_auto` (`matricule_apprenant`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matem_ver_auto` FOREIGN KEY (`matricule_emp`) REFERENCES `employer` (`matricule_emp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `moti_ver_auto` FOREIGN KEY (`id_motif`) REFERENCES `motif` (`id_motif`) ON UPDATE CASCADE,
  ADD CONSTRAINT `type_ver_auto` FOREIGN KEY (`id_type`) REFERENCES `type_vercement` (`id_type`) ON UPDATE CASCADE;

--
-- Constraints for table `vercement_form_pro`
--
ALTER TABLE `vercement_form_pro`
  ADD CONSTRAINT `agen_ver_pro` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matap_ver_pro` FOREIGN KEY (`matricule_apprenant`) REFERENCES `apprenant_pro` (`matricule_apprenant`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matem_ver_pro` FOREIGN KEY (`matricule_emp`) REFERENCES `employer` (`matricule_emp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `moti_ver_pro` FOREIGN KEY (`id_motif`) REFERENCES `motif` (`id_motif`) ON UPDATE CASCADE,
  ADD CONSTRAINT `type_ver_pro` FOREIGN KEY (`id_type`) REFERENCES `type_vercement` (`id_type`) ON UPDATE CASCADE;

--
-- Constraints for table `vercement_langue`
--
ALTER TABLE `vercement_langue`
  ADD CONSTRAINT `agen_ver_lang` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matap_ver_lang` FOREIGN KEY (`matricule_apprenant`) REFERENCES `apprenant_lang` (`matricule_apprenant`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matem_ver_lang` FOREIGN KEY (`matricule_emp`) REFERENCES `employer` (`matricule_emp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `moti_ver_lang` FOREIGN KEY (`id_motif`) REFERENCES `motif` (`id_motif`) ON UPDATE CASCADE,
  ADD CONSTRAINT `type_ver_lang` FOREIGN KEY (`id_type`) REFERENCES `type_vercement` (`id_type`) ON UPDATE CASCADE;
--
-- Database: `newdb`
--
CREATE DATABASE IF NOT EXISTS `newdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newdb`;

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Apple MacBook Pro', 1799, './upload/product1.png'),
(2, 'Sony E7 Headphones', 147, './upload/product2.png'),
(3, 'Sony Xperia Z4', 459, './upload/product3.png'),
(4, 'Samsung Galaxy A50', 278, './upload/product4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producttb`
--
ALTER TABLE `producttb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecommerce\",\"table\":\"products\"},{\"db\":\"newdb\",\"table\":\"producttb\"},{\"db\":\"youandmefood\",\"table\":\"product\"},{\"db\":\"youandmefood\",\"table\":\"customer\"},{\"db\":\"youandmefood\",\"table\":\"category\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-10-20 09:43:38', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"metro\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `productdb`
--
CREATE DATABASE IF NOT EXISTS `productdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `productdb`;

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producttb`
--
ALTER TABLE `producttb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `youandmefood`
--
CREATE DATABASE IF NOT EXISTS `youandmefood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `youandmefood`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_type`) VALUES
(1, 'EPICES INDIVIDUELLES'),
(2, 'EPICES MELANGES'),
(3, 'EPICES ETRANGERES ET TISANE'),
(4, 'PUREE DE PIMENT ET HUILE PIMENTEE'),
(5, 'BOUILLIES & CEREALES'),
(6, 'CONFITURE AU SUCRE'),
(7, 'FRUITS SECS BIO ET SESAME CARAMELISE'),
(8, 'CONFITURES AU MIEL, MIELS ET PATE D’ARACHIDE A TARTINER');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(60) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(60) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `first_name`, `last_name`, `city`, `phone`, `email`, `photo`, `password`) VALUES
('clo', 'pi', 'fo', 'gi', 'li', 'admin@admin', '../img/user.svg', '123'),
('raims pires', 'raims', 'pires', 'douala', '258963147', 'admin@admin', '../pictures/user.png', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_gros_price` varchar(100) NOT NULL,
  `prod_retail_price` varchar(100) NOT NULL,
  `pro_bar_code` varchar(100) NOT NULL,
  `prod_photo` varchar(100) NOT NULL,
  `prod_describetion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `cat_id`, `prod_name`, `prod_gros_price`, `prod_retail_price`, `pro_bar_code`, `prod_photo`, `prod_describetion`) VALUES
(' Bouillie1', 5, ' Bouillie multi céréale et moringa', '500', '700', 'barcode', 'images/ Bouillie multi céréale et moringa.jpg', 'Bouillie 100% naturelle fait à base sésame, sorgho riz complet, soja, maïs, moringa, mil'),
(' Pim jaun épi', 4, ' Piment jaune épicé', '2000', '2500', 'barcode', 'images/ Piment jaune épicé.jpg', 'C’est un mélange de piment jaune brut, oignon, pebe, ail, poivre blanc, rondelle et du sel, utilisé pour nos différents plats'),
('Ana_mangu_pas', 8, 'Ananas, mangue, passion', '2000', '2500', 'barcode', 'images/Ananas, mangue, passion.jpg', 'Elle est composée d’ananas bio et du miel, très délicieux enfants et adultes'),
('Bouillie2', 5, 'Bouillie multi céréale et moringa', '2000', '2500', 'barcode', 'images/Bouillie multi céréale et moringa.jpg', 'ouillie 100% naturelle fait à base sésame, sorgho riz complet, soja, maïs, moringa, mil'),
('Bouillie3', 5, 'Bouillie multi céréale et moringa', '800', '1500', 'barcode', 'images/Bouillie multi céréale et moringa.jpg', 'Bouillie 100% naturelle fait à base moringa (mil, sésame, sorgho riz complet soja, maïs, moringa)'),
('Bouillie4', 5, 'Bouillie multi céréale et moringa concentrée', '2400', '3000', 'barcode', 'images/Bouillie multi céréale et moringa concentrée.jpg', 'Bouillie 100% naturelle fait à base moringa (mil, sésame, sorgho riz complet soja, maïs, moringa)'),
('Bouillie5', 5, 'Bouillie multi céréale et moringa concentrée', '1000', '1200', 'barcode', 'images/Bouillie multi céréale et moringa concentrée.jpg', 'Bouillie 100% naturelle fait à base moringa (mil, sésame, sorgho riz complet soja, maïs, moringa)'),
('Bouill_multi_morin', 5, 'Bouillie multi céréale et moringa (350g) concentrée', '1000', '1200', 'barcode', 'images/Bouillie multi céréale et moringa (350g) concentrée.jpg', 'Bouillie 100% naturelle fait à base moringa (mil, sésame, sorgho riz complet soja, maïs, moringa)'),
('Cannelle', 3, 'Cannelle', '1200', '1500', 'barcode', 'images/Cannelle.jpg', 'Ecorce du cannelier séchée entière ou en poudres, elle a un gout très subtil, elle accompagne à merveille les desserts et entre'),
('Curry', 3, 'Curry', '1600', '2000', 'barcode', 'images/Curry.jpg', 'C’est un véritable passe partout en cuisine qui peut se présenter sous différents couleur. On le trouve sous forme liquide, sèche ou en poudre, avec un gout doux, semi piquant'),
('epi piment', 1, 'piment', '800', '1000', 'barcode', 'images/piment.jpg', 'Fruit consommé frais ou déshydraté en poudre, il est une épice avec un gout piquant selon la variété, '),
('Epicaro 50', 2, 'Epices taro', '400', '500', 'barcode', 'images/Epices taro.jpg', 'Pour les sauces jaunes et noir originaire de l’ouest Cameroun. Composé de : hiomi, melé, tchemgang, ngannach, pebe, écorce rouge'),
('Epi_poul', 2, 'Epices poulet', '1200', '1500', 'barcode', 'images/Epices poulet.jpg', 'Utiliser pour des rôtis et bouillon de poisson, faire à base de pebe, rondelle, poivre blanc, essesse, odjom, amis vert et clou de girofe, curry et poivre noir toujours y ajouté du djansang pour de gout'),
('Mbog-tcho', 2, 'Mbongo-tchobi', '1200', '1500', 'barcode', 'images/Mbongo-tchobi.jpg', 'Sauce noire, originaire du littoral Cameroun. Composé de bongo nwel, bongo bakim, hiomi, massep odjom.'),
('Mbon_tch_50g', 2, 'Mbongo-tchobi 50g', '400', '500', 'barcode', 'images/Mbongo-tchobi 50g.jpg', 'Sauce noire, originaire du littoral Cameroun. Composé de bongo nwel, bongo bakim, hiomi, massep odjom.'),
('pim jun 50', 4, 'Huile de piment', '400', '500', 'barcode', 'images/Huile de piment.jpg', 'C’est un mélange de piment jaune brut et du sel, utilisé pour nos différents plats'),
('Pimejaun', 1, 'Piment jaune', '2000', '2500', 'barcode', 'images/Piment jaune.jpg', 'C’est un mélange de piment jaune brut et du sel, utilisé pour nos différents plats'),
('Piment rouge ', 4, 'Piment rouge', '2000', '2500', 'barcode', 'images/Piment rouge.jpg', 'C’est un mélange de piment rouge brut et du sel, utilisé pour nos différents plats'),
('Piment rouge épicé', 1, 'Piment rouge épicé', '400', '500', 'barcode', 'images/Piment rouge épicé.jpg', 'C’est un mélange de piment rouge brut, oignon, pebe, ail, poivre blanc, rondelle et du sel, utilisé pour nos différents plats'),
('Piment rouge25', 4, 'Piment rouge', '400', '500', 'barcode', 'images/Piment rouge.jpg', 'C’est un mélange de piment rouge brut et du sel, utilisé pour nos différents plats'),
('Piment50', 2, 'Piment', '400', '500', 'barcode', 'images/Piment.jpg', 'Fruit consommé frais déshydraté ou en poudre, c’est une épice avec un gout piquant selon la variété .');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_cat_prod` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
