-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 04:22 PM
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
-- Database: `youandmefood`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `product_no` int(11) NOT NULL DEFAULT 1,
  `deliver` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `cart_id` int(11) NOT NULL,
  `prod_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `username` (`username`);

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
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`cart_id`,`prod_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `prod_id` (`prod_id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cust_cart` FOREIGN KEY (`username`) REFERENCES `customer` (`username`) ON UPDATE CASCADE ON DELETE RESTRICT,
  ADD CONSTRAINT `pro_cart_fk` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`)  ON UPDATE CASCADE ON DELETE RESTRICT;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `fk_det_cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`)  ON UPDATE CASCADE ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_det_prod` FOREIGN KEY (`prod_id`) REFERENCES `cart` (`prod_id`)  ON UPDATE CASCADE ON DELETE RESTRICT;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_cat_prod` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)  ON UPDATE CASCADE ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
