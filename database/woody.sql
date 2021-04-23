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

CREATE TABLE clients (
  id int AUTO_INCREMENT,
  nom varchar(255) NOT NULL,
  prenom varchar(255) NOT NULL,
  sexe varchar(10) NOT NULL,
  PRIMARY KEY (id)
);

--
-- Déchargement des données de la table `clients`
--

INSERT INTO clients (id, nom, prenom, sexe) VALUES
(1, 'Quentin', 'Servais', 'man'),
(2, 'Ludo', 'Gorgemans', 'man');


