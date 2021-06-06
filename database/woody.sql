-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 23 avr. 2021 à 10:20
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1
--
-- Base de données : `woody`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--
GRANT SELECT ON woodymail.* TO 'usermail'@'127.0.0.1' IDENTIFIED BY 'mailpassword';

CREATE TABLE clients (
  id int AUTO_INCREMENT,
  nom varchar(255) NOT NULL,
  prenom varchar(255) NOT NULL,
  sexe varchar(10) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE commandes (
  id int AUTO_INCREMENT,
  nom varchar(255) NOT NULL,
  client varchar(255) NOT NULL,
  prix int NOT NULL,
  PRIMARY KEY (id)
);

--
-- Déchargement des données de la table `clients`
--

INSERT INTO clients (id, nom, prenom, sexe) VALUES
(1, 'Quentin', 'Servais', 'man'),
(2, 'Ludo', 'Gorgemans', 'man');

INSERT INTO commandes (id, nom, client, prix) VALUES
(1, 'ourson', 'Quentin', 2),
(2, 'licorne', 'Cyril', 5000);
