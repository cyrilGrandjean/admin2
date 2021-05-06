CREATE TABLE clients (
  id int AUTO_INCREMENT,
  nom varchar(255) NOT NULL,
  prenom varchar(255) NOT NULL,
  sexe varchar(10) NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO clients (id, nom, prenom, sexe) VALUES
(1, 'Quentin', 'Servais', 'man'),
(2, 'Ludo', 'Gorgemans', 'man');