DROP DATABASE IF EXISTS bdd_contacts;
CREATE DATABASE bdd_contacts CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE bdd_contacts;

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3)
);

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES
('Dupont', 'Jean', '1990-05-15', 'Homme', '123 Rue de la Paix', '75001', 'Paris', 'FRA'),
('Martin', 'Sophie', '1985-08-22', 'Femme', '456 Avenue du Bonheur', '1000', 'Bruxelles', 'BEL'),
('Smith', 'John', '1982-03-10', 'Homme', '789 Main Street', '10001', 'New York', 'USA'),
('García', 'Ana', '1995-11-03', 'Femme', '101 Calle Principal', '28001', 'Madrid', 'ESP'),
('Müller', 'Hans', '1988-07-18', 'Homme', '321 Hauptstraße', '10115', 'Berlin', 'DEU'),
('Kim', 'Soo-Min', '1993-01-25', 'Femme', '567 Gangnam-gu', '04523', 'Séoul', 'KOR');

CREATE TABLE telephone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_contact INT,
    FOREIGN KEY (id_contact) REFERENCES contacts(id),
    numero VARCHAR(50),
    type TINYINT
);

INSERT INTO telephone (id_contact, numero, type) VALUES
(1,'+33687378459', 1),
(2,'+3225551234', 2),   
(3,'+12125551234', 1),  
(4,'+34987654321', 2),  
(5,'+4915123456789', 1), 
(6,'+82212345678', 2);   

