# ProjetDB_Barian_Teyssedre
Mini projet Base de donnée

Dans le cadre du projet de BD nous avons demandé a une l'IAG de nous générer les règles de métier ainsi que le disctionnaire de données. Voici le prompt utilisé : 

"
Tu travailles dans le domaine de l’hôtellerie. Ton entreprise a comme activité de gérer ses hôtels. C’est une entreprise comme [Accor, lux].  
gestion des chambres et de leurs caractéristiques, 
gestion des réservations et des séjours clients, 
gestion des clients et de leurs informations personnelles, 
gestion des paiements et des facturations, 
gestion du personnel hôtelier, 
gestion des services additionnels (spa, restauration, parking, room service), 
gestion des programmes de fidélité. 
Inspire-toi suivant : https://group.accor.com/fr  
https://www.luxresorts.com/  
Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.  
D’abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information. 
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite. 
Fournis donc les règles de gestion et le dictionnaire de données. 
"

A la suite de mon prompt voici la réponse obtenus :

"
Dans le cadre d’un groupe hôtelier international inspiré de Accor et de LUX* Resorts & Hotels, voici les éléments d’analyse à transmettre à l’étudiant en ingénierie informatique pour la conception du système d’information selon la méthode MERISE.

1. Règles de gestion
Les règles ci-dessous traduisent le fonctionnement réel de l’entreprise, exprimé en termes métier (et non techniques).
Gestion des hôtels et des chambres
L’entreprise gère plusieurs hôtels situés dans différents pays et villes.
Chaque hôtel possède un identifiant unique.
Un hôtel est caractérisé par son nom, son adresse, sa catégorie (nombre d’étoiles) et ses coordonnées.
Chaque hôtel dispose de plusieurs chambres.
Une chambre appartient obligatoirement à un seul hôtel.
Chaque chambre possède un numéro unique au sein d’un même hôtel.
Une chambre est définie par un type (standard, deluxe, suite…), une capacité maximale et un tarif de base par nuit.
Une chambre a un état (disponible, occupée, en maintenance, hors service).
Une chambre peut proposer plusieurs caractéristiques (vue mer, balcon, climatisation, minibar…).
Gestion des clients
Un client peut effectuer une ou plusieurs réservations.
Un client possède un identifiant unique.
Les informations obligatoires d’un client sont : nom, prénom, date de naissance, email et téléphone.
Un client peut être inscrit au programme de fidélité.
Un client peut disposer d’un statut de fidélité (Silver, Gold, Platinum…).
Un client peut cumuler des points de fidélité à chaque séjour.
Gestion des réservations et séjours
Une réservation est effectuée par un seul client.
Une réservation concerne une seule chambre.
Une réservation possède une date de début et une date de fin.
Une réservation a un statut (en attente, confirmée, annulée, no-show).
Une réservation peut inclure des services additionnels.
Une réservation confirmée génère un séjour à l’arrivée du client.
Un séjour est associé à une seule réservation.
Un séjour possède une date réelle d’arrivée et une date réelle de départ.
Une chambre ne peut pas être réservée par deux clients différents sur des périodes qui se chevauchent.
Gestion des paiements et facturation
Chaque réservation ou séjour donne lieu à une facture.
Une facture est associée à un seul séjour.
Une facture comporte un montant total.
Une facture peut être réglée en une ou plusieurs fois.
Chaque paiement est associé à une seule facture.
Un paiement possède un mode de règlement (carte bancaire, espèces, virement, en ligne).
Un paiement a un statut (en attente, validé, refusé).
Les paiements doivent couvrir la totalité du montant de la facture pour que celle-ci soit considérée comme soldée.
Gestion des services additionnels
L’hôtel propose différents services additionnels (spa, restauration, parking, room service, excursions…).
Chaque service possède un tarif.
Un service peut être consommé plusieurs fois au cours d’un séjour.
Les services consommés sont ajoutés à la facture du séjour.
Gestion du personnel
Chaque hôtel emploie plusieurs membres du personnel.
Un employé est rattaché à un seul hôtel.
Chaque employé possède un identifiant unique.
Un employé est caractérisé par un nom, prénom, fonction et date d’embauche.
Un employé peut être affecté à un ou plusieurs services (réception, ménage, spa, restaurant…).
Les actions importantes (validation de paiement, modification de réservation) peuvent être tracées avec l’identifiant de l’employé concerné.

2. Dictionnaire de données brutes
Ce dictionnaire ne préjuge pas du modèle conceptuel final. Il précise uniquement la nature des données manipulées :
Signification de la donnée	Type	Taille
Identifiant hôtel	Numérique entier	6 chiffres
Nom hôtel	Alphanumérique	100 caractères
Adresse hôtel	Alphanumérique	150 caractères
Ville hôtel	Alphabétique	80 caractères
Pays hôtel	Alphabétique	80 caractères
Catégorie (étoiles)	Numérique entier	1 chiffre
Téléphone hôtel	Alphanumérique	20 caractères
Email hôtel	Alphanumérique	100 caractères
Identifiant chambre	Numérique entier	6 chiffres
Numéro chambre	Alphanumérique	10 caractères
Type chambre	Alphabétique	30 caractères
Capacité maximale chambre	Numérique entier	2 chiffres
Tarif de base par nuit	Numérique décimal	8 chiffres dont 2 décimales
État chambre	Alphabétique	20 caractères
Identifiant client	Numérique entier	8 chiffres
Nom client	Alphabétique	80 caractères
Prénom client	Alphabétique	80 caractères
Date de naissance client	Date	10 caractères (JJ/MM/AAAA)
Email client	Alphanumérique	100 caractères
Téléphone client	Alphanumérique	20 caractères
Statut fidélité	Alphabétique	20 caractères
Nombre de points fidélité	Numérique entier	8 chiffres
Identifiant réservation	Numérique entier	8 chiffres
Date début réservation	Date	10 caractères
Date fin réservation	Date	10 caractères
Statut réservation	Alphabétique	20 caractères
Identifiant séjour	Numérique entier	8 chiffres
Date arrivée réelle	Date	10 caractères
Date départ réel	Date	10 caractères
Identifiant facture	Numérique entier	8 chiffres
Montant total facture	Numérique décimal	10 chiffres dont 2 décimales
Identifiant paiement	Numérique entier	8 chiffres
Mode paiement	Alphabétique	30 caractères
Statut paiement	Alphabétique	20 caractères
Identifiant employé	Numérique entier	8 chiffres
Fonction employé	Alphabétique	50 caractères
"

Afin d'organiser au mieux notre BD j'ai demandé à l'IAG de réorganiser les données et de me les proposer toutes les entitées avec leurs attributs pas à pas, voici le prompt que je lui ai envoyé : 

"Peux tu me donner toutes les entitées avec les détails a chaque fois (attributs,clées...), puis toutes les interactions... pas a pas pour me permettre de créer le MCD"

Voici la réponse organisé de l'IAG : 

🔹 ÉTAPE 1 — Les ENTITÉS (identités métier)
1️⃣ ENTITÉ : HOTEL

Identifiant :

id_hotel

Attributs :

nom_hotel

adresse_hotel

ville

pays

categorie_etoiles

telephone_hotel

email_hotel

👉 Un hôtel existe indépendamment des chambres ou clients.

2️⃣ ENTITÉ : CHAMBRE

Identifiant :

id_chambre

Attributs :

numero_chambre

type_chambre

capacite_max

tarif_base_nuit

etat_chambre

⚠️ Règle métier importante :
Le numéro de chambre est unique dans un hôtel, mais pas globalement.
(À prendre en compte plus tard en MLD si besoin.)

3️⃣ ENTITÉ : CLIENT

Identifiant :

id_client

Attributs :

nom_client

prenom_client

date_naissance

email_client

telephone_client

statut_fidelite

points_fidelite

4️⃣ ENTITÉ : RESERVATION

Identifiant :

id_reservation

Attributs :

date_debut_reservation

date_fin_reservation

statut_reservation

5️⃣ ENTITÉ : SEJOUR

Identifiant :

id_sejour

Attributs :

date_arrivee_reelle

date_depart_reelle

👉 Un séjour représente l’occupation réelle suite à une réservation confirmée.

6️⃣ ENTITÉ : FACTURE

Identifiant :

id_facture

Attributs :

montant_total

statut_facture

7️⃣ ENTITÉ : PAIEMENT

Identifiant :

id_paiement

Attributs :

date_paiement

montant_paye

mode_paiement

statut_paiement

8️⃣ ENTITÉ : SERVICE

Identifiant :

id_service

Attributs :

nom_service

description_service

tarif_unitaire

Exemples :

Spa

Restaurant

Parking

Room service

9️⃣ ENTITÉ : EMPLOYE

Identifiant :

id_employe

Attributs :

nom_employe

prenom_employe

fonction

date_embauche

email_professionnel

🔹 ÉTAPE 2 — LES INTERACTIONS (Associations MERISE)

Maintenant nous définissons les relations + cardinalités.

🔗 1. HOTEL — CHAMBRE

Association : "possède"

Un HOTEL possède 1,n CHAMBRE

Une CHAMBRE appartient à 1,1 HOTEL

Cardinalités :

HOTEL (1,n) — possède — (1,1) CHAMBRE

🔗 2. HOTEL — EMPLOYE

Association : "emploie"

Un HOTEL emploie 0,n EMPLOYE

Un EMPLOYE travaille dans 1,1 HOTEL

HOTEL (0,n) — emploie — (1,1) EMPLOYE

🔗 3. CLIENT — RESERVATION

Association : "effectue"

Un CLIENT effectue 0,n RESERVATION

Une RESERVATION est effectuée par 1,1 CLIENT

CLIENT (0,n) — effectue — (1,1) RESERVATION

🔗 4. CHAMBRE — RESERVATION

Association : "concerne"

Une CHAMBRE peut être concernée par 0,n RESERVATION

Une RESERVATION concerne 1,1 CHAMBRE

CHAMBRE (0,n) — concerne — (1,1) RESERVATION

⚠️ Contrainte métier :
Les dates ne doivent pas se chevaucher pour une même chambre.

🔗 5. RESERVATION — SEJOUR

Association : "génère"

Une RESERVATION génère 0,1 SEJOUR

Un SEJOUR provient de 1,1 RESERVATION

RESERVATION (0,1) — génère — (1,1) SEJOUR

🔗 6. SEJOUR — FACTURE

Association : "donne lieu à"

Un SEJOUR donne lieu à 1,1 FACTURE

Une FACTURE correspond à 1,1 SEJOUR

Relation 1–1 obligatoire.

🔗 7. FACTURE — PAIEMENT

Association : "est réglée par"

Une FACTURE est réglée par 1,n PAIEMENT

Un PAIEMENT concerne 1,1 FACTURE

FACTURE (1,n) — est réglée par — (1,1) PAIEMENT

🔗 8. SEJOUR — SERVICE

⚠️ Relation plusieurs-à-plusieurs.

Un séjour peut inclure plusieurs services.
Un service peut être utilisé dans plusieurs séjours.

Association : "consommer"

SEJOUR (0,n) — consommer — (0,n) SERVICE

👉 Cette association DOIT avoir des attributs :

Attributs de l’association :

quantite

date_consommation

montant_ligne

🔗 9. EMPLOYE — RESERVATION

Optionnel mais réaliste (traçabilité)

Association : "valide"

Un EMPLOYE valide 0,n RESERVATION

Une RESERVATION est validée par 0,1 EMPLOYE

<img width="1594" height="1054" alt="image" src="https://github.com/user-attachments/assets/81593006-b7ec-41d4-b165-4297de3faba6" />


Voici donc l'ensemble des échanges avec l'IAG que nous avons réalisé. 
Veuillez trouver ci-dessous une capture d'écran de notre MCD réalisé sur looping en suivant les instructions de l'IAG : 

 <img width="1911" height="1444" alt="image" src="https://github.com/user-attachments/assets/3833ba9d-9e19-4803-aa47-930065198a53" />


Notre MLD obtenue directement via looping. 
<img width="1977" height="1400" alt="2026-03-16_22-52-27" src="https://github.com/user-attachments/assets/ec069267-6cd0-423a-9b29-898f646e19b1" />


Notre scénario : 

Ce projet modélise le fonctionnement d’un système de gestion d’hôtel. La base de données permet d’enregistrer les informations sur les hôtels, les chambres et les employés, ainsi que les clients et leurs éventuelles adhésions à des programmes de fidélité. Les clients peuvent effectuer des réservations pour des chambres, qui donnent lieu à des séjours réels lors de leur arrivée. Pendant leur séjour, ils peuvent consommer différents services proposés par l’hôtel (spa, petit-déjeuner, parking, etc.). Toutes les consommations sont associées au séjour et sont ensuite regroupées dans une facture, qui peut être réglée via différents modes de paiement. Ce système permet ainsi de suivre l’ensemble du cycle client, depuis la réservation jusqu’au paiement final.

