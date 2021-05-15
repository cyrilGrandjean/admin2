-- Création des tables domaines et users
CREATE TABLE virtual_domains (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE virtual_users (
id INT NOT NULL AUTO_INCREMENT,
domain_id INT NOT NULL,
password VARCHAR(106) NOT NULL,
email VARCHAR(120) NOT NULL,
maildir VARCHAR(120) NOT NULL,
PRIMARY KEY (id),
UNIQUE KEY email (email),
FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
);

-- Insertion du domaine dans la table domaine
INSERT INTO woodymail.virtual_domains
(id ,name)
VALUES
(1, l2-4.ephec-ti.be);

-- Création des adresses mail user
INSERT INTO woodymail.virtual_users
(id, domain_id, password , email, maildir)
VALUES
('1', '1', ENCRYPT('root', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'cyril@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/cyril/');
('2', '1', ENCRYPT('root', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'mikael@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/mikael/');
('3', '1', ENCRYPT('root', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'quentin@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/quentin/');
('4', '1', ENCRYPT('root', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'contact@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/contact/');

