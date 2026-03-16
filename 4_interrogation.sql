USE projetti404;

SELECT 
    c.id_client,
    c.nom,
    c.prenom,
    SUM(f.montant_total + IFNULL(cs.montant,0)) AS montant_total_client
FROM CLIENT c
JOIN RESERVATION r ON c.id_client = r.id_client
JOIN SEJOUR s ON r.id_reservation = s.id_reservation
JOIN FACTURE f ON s.id_sejour = f.id_sejour
LEFT JOIN CONSOMMATION_SERVICE cs ON s.id_sejour = cs.id_sejour
GROUP BY c.id_client, c.nom, c.prenom;
-- Afficher le montant total du de chaque client

SELECT nom_hotel, ville, pays
FROM HOTEL;
-- Permet d'afficher l'ensemble des hôtels

SELECT nom_hotel, categorie_etoiles
FROM HOTEL
ORDER BY categorie_etoiles DESC;
-- Permet de classer les hôtels suivant leur nombres d'étoiles

SELECT nom, prenom, email
FROM CLIENT;
-- Affiche les informations des clients

SELECT nom, prenom, date_naissance
FROM CLIENT
WHERE date_naissance > '1990-01-01';
-- Affiche l'ensemble des clients nés après 1990

SELECT numero_chambre, capacite
FROM CHAMBRE
WHERE capacite > 2;
-- Les chambres avec une capacité strictement supérieur à 2

SELECT *
FROM RESERVATION
WHERE date_debut BETWEEN '2025-01-01' AND '2025-12-31';
-- Liste l'ensemble des réservations sur une année donnée. 

SELECT COUNT(*) AS nombre_clients
FROM CLIENT;
-- Renvoie le nombre total de client

SELECT id_hotel, COUNT(*) AS nombre_chambres
FROM CHAMBRE
GROUP BY id_hotel;
-- Permet de connaître la taille de chaque hôtel 

SELECT AVG(tarif_base) AS prix_moyen
FROM CHAMBRE;
-- Calcul le prix moyen d'une chambre dans l'ensemble de la chaine d'hôtel

SELECT nom_service, tarif
FROM SERVICE;
-- Affiche les services disponibles dans les hôtels

SELECT id_sejour, id_service, quantite
FROM CONSOMMATION_SERVICE;
-- Permet de savoir quel services ont été consommés durant les séjours

SELECT c.nom, c.prenom, r.date_debut, r.date_fin
FROM CLIENT c
JOIN RESERVATION r ON c.id_client = r.id_client;
-- Combine les tables CLIENT et RESERVATION afin d’afficher les réservations avec le nom du client

SELECT r.id_reservation, c.numero_chambre
FROM RESERVATION r
JOIN CHAMBRE c ON r.id_chambre = c.id_chambre;
-- Elle permet de savoir quelle chambre est réservée.

SELECT s.id_sejour, f.montant_total
FROM SEJOUR s
JOIN FACTURE f ON s.id_sejour = f.id_sejour;
-- Permet de relier les séjours aux factures générées

SELECT SUM(montant_total) AS chiffre_affaires_total
FROM FACTURE;
-- Elle permet de calculer le chiffre d’affaires total.

SELECT h.nom_hotel, SUM(f.montant_total)
FROM HOTEL h
JOIN CHAMBRE c ON h.id_hotel = c.id_hotel
JOIN RESERVATION r ON c.id_chambre = r.id_chambre
JOIN SEJOUR s ON r.id_reservation = s.id_reservation
JOIN FACTURE f ON s.id_sejour = f.id_sejour
GROUP BY h.nom_hotel;
-- Permet d’analyser la performance financière de chaque hôtel (CA par hôtel).

SELECT nom, prenom
FROM CLIENT
WHERE id_client IN (
    SELECT id_client
    FROM RESERVATION
);
-- Permet d’identifier les clients actifs.

SELECT id_service, SUM(quantite) AS total_utilisation
FROM CONSOMMATION_SERVICE
GROUP BY id_service
ORDER BY total_utilisation DESC;
-- Permet de mettre en avant les services les plus utilisés

SELECT c.nom, p.nom_programme
FROM CLIENT c
JOIN ADHESION_FIDELITE a ON c.id_client = a.id_client
JOIN PROGRAMME_FIDELITE p ON a.id_programme = p.id_programme;
-- Permet de voir quels clients participent au programme de fidélité.

SELECT e.nom AS employe, s.nom AS superviseur
FROM EMPLOYE e
LEFT JOIN EMPLOYE s ON e.id_superviseur = s.id_employe;
-- Cette requête montre la hiérarchie entre les employés.


-- Exemple vidéos : 
SELECT id_hotel, COUNT(*) AS nombre_chambres
FROM CHAMBRE
GROUP BY id_hotel;

SELECT c.nom, c.prenom, r.date_debut, r.date_fin
FROM CLIENT c
JOIN RESERVATION r
ON c.id_client = r.id_client;

SELECT h.nom_hotel, SUM(f.montant_total)
FROM HOTEL h
JOIN CHAMBRE c ON h.id_hotel = c.id_hotel
JOIN RESERVATION r ON c.id_chambre = r.id_chambre
JOIN SEJOUR s ON r.id_reservation = s.id_reservation
JOIN FACTURE f ON s.id_sejour = f.id_sejour
GROUP BY h.nom_hotel;

SELECT nom, prenom
FROM CLIENT
WHERE id_client IN (
    SELECT id_client
    FROM RESERVATION
);
