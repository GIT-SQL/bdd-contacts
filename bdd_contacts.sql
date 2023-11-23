DROP DATABASE IF EXISTS exo_contatcs;
CREATE DATABASE exo_contatcs CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE exo_contatcs;

CREATE TABLE pays (
    iso_3 VARCHAR(3) PRIMARY KEY,
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalite VARCHAR(50)
);

INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
-- Europe
("FRA", "France", "FR", "Français"),
("ESP", "Espagne", "ES", "Espagnol"),
("DEU", "Allemagne", "DE", "Allemand"),
("ALB", "Albanie", "AL", "Albanien"),
("AND", "Andorre", "AD", "Andorran"),
("AUT", "Autriche", "AT", "Autrichien"),
("BLR", "Biélorussie", "BY", "Biélorusse"),
("BEL", "Belgique", "BE", "Belge"),
("BGR", "Bulgarie", "BG", "Bulgare"),
("HRV", "Croatie", "HR", "Croate"),
("CYP", "Chypre", "CY", "Chypriote"),
("CZE", "République tchèque", "CZ", "Tchèque"),
("DNK", "Danemark", "DK", "Danois"),

-- Amérique
("ARG", "Argentine", "AR", "Argentin"),
("BRA", "Brésil", "BR", "Brésilien"),
("CAN", "Canada", "CA", "Canadien"),
("CHL", "Chili", "CL", "Chilien"),
("COL", "Colombie", "CO", "Colombien"),
("CRI", "Costa Rica", "CR", "Costaricien"),
("CUB", "Cuba", "CU", "Cubain"),
("DOM", "République dominicaine", "DO", "Dominicain"),
("ECU", "Équateur", "EC", "Équatorien"),
("USA", "États-Unis", "US", "Américain"),

-- Asie
("KOR", "Corée du Sud", "KR", "Coréen"),
("AFG", "Afghanistan", "AF", "Afghan"),
("ARM", "Arménie", "AM", "Arménien"),
("AZE", "Azerbaïdjan", "AZ", "Azerbaïdjanais"),
("BHR", "Bahreïn", "BH", "Bahreïni"),
("BGD", "Bangladesh", "BD", "Bangladais"),
("BTN", "Bhoutan", "BT", "Bhoutanais"),
("BRN", "Brunéi", "BN", "Brunéien"),
("KHM", "Cambodge", "KH", "Cambodgien"),
("CHN", "Chine", "CN", "Chinois"),
("IND", "Inde", "IN", "Indien"),

-- Afrique
("DZA", "Algérie", "DZ", "Algérien"),
("AGO", "Angola", "AO", "Angolais"),
("BEN", "Bénin", "BJ", "Béninois"),
("BWA", "Botswana", "BW", "Botswanais"),
("BFA", "Burkina Faso", "BF", "Burkinabé"),
("CMR", "Cameroun", "CM", "Camerounais"),
("CPV", "Cap-Vert", "CV", "Cap-verdien"),
("TCD", "Tchad", "TD", "Tchadien"),
("COM", "Comores", "KM", "Comorien"),
("EGY", "Égypte", "EG", "Égyptien"),

-- Océanie
("AUS", "Australie", "AU", "Australien"),
("FJI", "Fidji", "FJ", "Fidjien"),
("KIR", "Kiribati", "KI", "Kiribatien"),
("MHL", "Îles Marshall", "MH", "Marshallais"),
("FSM", "Micronésie", "FM", "Micronésien"),
("NCL", "Nouvelle-Calédonie", "NC", "Calédonien"),
("NZL", "Nouvelle-Zélande", "NZ", "Néo-Zélandais"),
("PLW", "Palaos", "PW", "Paluan"),
("PNG", "Papouasie-Nouvelle-Guinée", "PG", "Papouanéo-Guinéen"),
("TON", "Tonga", "TO", "Tongien");

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
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
