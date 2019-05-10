-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 31 mars 2019 à 12:06
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `project`
--

-- --------------------------------------------------------

--
-- Structure de la table `req_id`
--

DROP TABLE IF EXISTS `req_id`;
CREATE TABLE IF NOT EXISTS `req_id` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `req_id`
--

INSERT INTO `req_id` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Structure de la table `scrapper`
--

DROP TABLE IF EXISTS `scrapper`;
CREATE TABLE IF NOT EXISTS `scrapper` (
  `req_id` int(11) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sloi`
--

DROP TABLE IF EXISTS `sloi`;
CREATE TABLE IF NOT EXISTS `sloi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_loi` varchar(10) NOT NULL,
  `link_loi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
