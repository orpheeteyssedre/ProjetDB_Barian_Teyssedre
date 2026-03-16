USE projetti404;

INSERT INTO HOTEL VALUES
(1,'Hilton Paris Opera','108 Rue Saint-Lazare','Paris','France',5,'0140000001','contact@hilton-paris.com'),
(2,'Hotel Ritz Paris','15 Place Vendome','Paris','France',5,'0140000002','contact@ritzparis.com'),
(3,'Marriott Champs Elysees','70 Avenue des Champs Elysees','Paris','France',5,'0140000003','info@marriott-paris.com'),
(4,'Hotel Negresco','37 Promenade des Anglais','Nice','France',5,'0493000001','contact@negresco.fr'),
(5,'Hotel Martinez','73 Boulevard de la Croisette','Cannes','France',5,'0493000002','contact@martinez.fr'),
(6,'Ibis Strasbourg Centre','18 Rue du Faubourg National','Strasbourg','France',3,'0388000001','contact@ibis-strasbourg.fr'),
(7,'Mercure Lyon Centre','5 Rue Stella','Lyon','France',4,'0472000001','contact@mercure-lyon.fr'),
(8,'Radisson Blu Marseille','38 Quai de Rive Neuve','Marseille','France',4,'0491000001','contact@radisson-marseille.com');

INSERT INTO CLIENT VALUES
(1,'Dupont','Jean','1985-04-12','jean.dupont@email.com','0610000001'),
(2,'Martin','Claire','1990-06-22','claire.martin@email.com','0610000002'),
(3,'Bernard','Luc','1978-01-15','luc.bernard@email.com','0610000003'),
(4,'Petit','Sophie','1995-09-05','sophie.petit@email.com','0610000004'),
(5,'Durand','Paul','1982-12-18','paul.durand@email.com','0610000005'),
(6,'Moreau','Julie','1993-03-10','julie.moreau@email.com','0610000006'),
(7,'Simon','Nicolas','1987-11-27','nicolas.simon@email.com','0610000007'),
(8,'Laurent','Camille','1998-02-08','camille.laurent@email.com','0610000008'),
(9,'Michel','Antoine','1975-07-19','antoine.michel@email.com','0610000009'),
(10,'Garcia','Laura','1992-05-30','laura.garcia@email.com','0610000010');

INSERT INTO PROGRAMME_FIDELITE VALUES
(1,'Accor Live Limitless','Silver',1000),
(2,'Accor Live Limitless','Gold',5000),
(3,'Accor Live Limitless','Platinum',10000),
(4,'Marriott Bonvoy','Silver',1200),
(5,'Marriott Bonvoy','Gold',6000),
(6,'Hilton Honors','Silver',800),
(7,'Hilton Honors','Gold',4000);

INSERT INTO SERVICE VALUES
(1,'Petit Dejeuner','Buffet petit dejeuner',18.00),
(2,'Room Service','Service de restauration en chambre',25.00),
(3,'Spa','Acces au spa et sauna',40.00),
(4,'Parking','Place de parking securisee',15.00),
(5,'Navette Aeroport','Transport aeroport-hotel',35.00),
(6,'Blanchisserie','Service de lavage des vetements',12.00),
(7,'Massage','Massage relaxant 60 minutes',70.00);

INSERT INTO ADHESION_FIDELITE VALUES
(1,6,'2022-03-10',1500,'Actif'),
(2,1,'2021-06-15',3200,'Actif'),
(3,4,'2020-11-20',7000,'Actif'),
(4,1,'2023-02-12',800,'Actif'),
(5,7,'2019-09-01',12000,'VIP'),
(6,2,'2022-07-08',4500,'Actif'),
(7,5,'2021-04-18',6000,'Actif');

INSERT INTO CHAMBRE VALUES
(1,'101','Simple',1,120.00,'Disponible',1),
(2,'102','Double',2,150.00,'Disponible',1),
(3,'201','Suite',3,350.00,'Disponible',2),
(4,'202','Double',2,180.00,'Disponible',2),
(5,'301','Simple',1,90.00,'Disponible',6),
(6,'302','Double',2,110.00,'Disponible',6),
(7,'401','Suite',4,420.00,'Disponible',3),
(8,'402','Double',2,210.00,'Disponible',3),
(9,'501','Double',2,160.00,'Disponible',7),
(10,'601','Suite',3,380.00,'Disponible',4);

INSERT INTO EMPLOYE VALUES
(1,'Durant','Pierre','Directeur','2015-01-10',1,NULL),
(2,'Robert','Alice','Receptionniste','2019-05-21',1,1),
(3,'Leroy','Marc','Responsable Etage','2018-03-14',1,1),
(4,'Bernard','Julie','Directeur','2016-06-02',2,NULL),
(5,'Dubois','Paul','Receptionniste','2020-08-11',2,4),
(6,'Garcia','Elena','Directeur','2017-09-18',6,NULL),
(7,'Petit','Lucas','Receptionniste','2021-02-25',6,6);

INSERT INTO RESERVATION VALUES
(1,'2024-06-10','2024-06-15','Confirmee',1,1),
(2,'2024-07-05','2024-07-10','Confirmee',2,3),
(3,'2024-05-01','2024-05-04','Terminee',3,5),
(4,'2024-08-12','2024-08-18','Confirmee',4,7),
(5,'2024-09-02','2024-09-06','Confirmee',5,8),
(6,'2024-04-15','2024-04-20','Terminee',6,6),
(7,'2024-03-10','2024-03-12','Terminee',7,2);

INSERT INTO SEJOUR VALUES
(1,'2024-06-10','2024-06-15',1),
(2,'2024-07-05','2024-07-10',2),
(3,'2024-05-01','2024-05-04',3),
(4,'2024-08-12','2024-08-18',4),
(5,'2024-09-02','2024-09-06',5),
(6,'2024-04-15','2024-04-20',6),
(7,'2024-03-10','2024-03-12',7);

INSERT INTO CONSOMMATION_SERVICE VALUES
(1,1,1,'2024-06-11',2,36.00),
(2,1,3,'2024-06-12',1,40.00),
(3,2,2,'2024-07-06',1,25.00),
(4,3,4,'2024-05-02',3,45.00),
(5,4,7,'2024-08-14',1,70.00),
(6,5,5,'2024-09-03',1,35.00),
(7,6,6,'2024-04-17',2,24.00);

INSERT INTO FACTURE VALUES
(1,450.00,'2024-06-15',1),
(2,980.00,'2024-07-10',2),
(3,270.00,'2024-05-04',3),
(4,1200.00,'2024-08-18',4),
(5,860.00,'2024-09-06',5),
(6,300.00,'2024-04-20',6),
(7,210.00,'2024-03-12',7);

INSERT INTO PAIEMENT VALUES
(1,'2024-06-15',450.00,'Carte Bancaire','Valide',1),
(2,'2024-07-10',980.00,'Carte Bancaire','Valide',2),
(3,'2024-05-04',270.00,'Especes','Valide',3),
(4,'2024-08-18',1200.00,'Virement','Valide',4),
(5,'2024-09-06',860.00,'Carte Bancaire','Valide',5),
(6,'2024-04-20',300.00,'Carte Bancaire','Valide',6),
(7,'2024-03-12',210.00,'Especes','Valide',7);