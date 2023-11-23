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