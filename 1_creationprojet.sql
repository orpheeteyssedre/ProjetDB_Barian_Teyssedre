CREATE DATABASE IF NOT EXISTS projetti404; 
USE projetti404;
SHOW TABLES;

CREATE TABLE HOTEL (
    id_hotel INT PRIMARY KEY,
    nom_hotel VARCHAR(100),
    adresse VARCHAR(150),
    ville VARCHAR(80),
    pays VARCHAR(80),
    categorie_etoiles INT,
    telephone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE CLIENT (
    id_client INT PRIMARY KEY,
    nom VARCHAR(80),
    prenom VARCHAR(80),
    date_naissance DATE,
    email VARCHAR(100),
    telephone VARCHAR(20)
);

CREATE TABLE PROGRAMME_FIDELITE (
    id_programme INT PRIMARY KEY,
    nom_programme VARCHAR(50),
    niveau VARCHAR(30),
    points_requis INT
);

CREATE TABLE ADHESION_FIDELITE (
    id_client INT,
    id_programme INT,
    date_adhesion DATE,
    points_client INT,
    statut_client VARCHAR(30),
    PRIMARY KEY(id_client, id_programme),
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_programme) REFERENCES PROGRAMME_FIDELITE(id_programme)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CHAMBRE (
    id_chambre INT PRIMARY KEY,
    numero_chambre VARCHAR(10),
    type_chambre VARCHAR(30),
    capacite INT,
    tarif_base DECIMAL(8,2),
    etat_chambre VARCHAR(20),
    id_hotel INT,
    FOREIGN KEY (id_hotel) REFERENCES HOTEL(id_hotel)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE RESERVATION (
    id_reservation INT PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    statut_reservation VARCHAR(30),
    id_client INT,
    id_chambre INT,
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_chambre) REFERENCES CHAMBRE(id_chambre) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SEJOUR (
    id_sejour INT PRIMARY KEY,
    date_arrivee_reelle DATE,
    date_depart_reelle DATE,
    id_reservation INT,
    FOREIGN KEY (id_reservation) REFERENCES RESERVATION(id_reservation)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SERVICE (
    id_service INT PRIMARY KEY,
    nom_service VARCHAR(80),
    description TEXT,
    tarif DECIMAL(10,2)
);

CREATE TABLE CONSOMMATION_SERVICE (
    id_consommation INT PRIMARY KEY,
    id_sejour INT,
    id_service INT,
    date_consommation DATE,
    quantite INT,
    montant DECIMAL(8,2),
    FOREIGN KEY (id_sejour) REFERENCES SEJOUR(id_sejour)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_service) REFERENCES SERVICE(id_service)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FACTURE (
    id_facture INT PRIMARY KEY,
    montant_total DECIMAL(10,2),
    date_facture DATE,
    id_sejour INT,
    FOREIGN KEY (id_sejour) REFERENCES SEJOUR(id_sejour)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PAIEMENT (
    id_paiement INT PRIMARY KEY,
    date_paiement DATE,
    montant DECIMAL(10,2),
    mode_paiement VARCHAR(30),
    statut VARCHAR(20),
    id_facture INT,
    FOREIGN KEY (id_facture) REFERENCES FACTURE(id_facture)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EMPLOYE (
    id_employe INT PRIMARY KEY,
    nom VARCHAR(80),
    prenom VARCHAR(80),
    fonction VARCHAR(50),
    date_embauche DATE,
    id_hotel INT,
    id_superviseur INT,
    FOREIGN KEY (id_hotel) REFERENCES HOTEL(id_hotel)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_superviseur) REFERENCES EMPLOYE(id_employe)
        ON DELETE SET NULL ON UPDATE CASCADE
);