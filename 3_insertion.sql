USE projet_BD;

-- =========================
-- CLIENT (10 lignes)
-- =========================

INSERT INTO Client VALUES ('C1','10 rue A Paris','0600000001','c1@mail.com','Actif');
INSERT INTO Client VALUES ('C2','20 rue B Lyon','0600000002','c2@mail.com','Actif');
INSERT INTO Client VALUES ('C3','30 rue C Marseille','0600000003','c3@mail.com','Actif');
INSERT INTO Client VALUES ('C4','40 rue D Paris','0600000004','c4@mail.com','Actif');
INSERT INTO Client VALUES ('C5','50 rue E Lyon','0600000005','c5@mail.com','Actif');
INSERT INTO Client VALUES ('C6','60 rue F Marseille','0600000006','c6@mail.com','Actif');
INSERT INTO Client VALUES ('C7','70 rue G Paris','0600000007','c7@mail.com','Actif');
INSERT INTO Client VALUES ('C8','80 rue H Lyon','0600000008','c8@mail.com','Actif');
INSERT INTO Client VALUES ('C9','90 rue I Marseille','0600000009','c9@mail.com','Actif');
INSERT INTO Client VALUES ('C10','100 rue J Paris','0600000010','c10@mail.com','Actif');

-- =========================
-- AGENCE (3 lignes)
-- =========================

INSERT INTO Agence VALUES ('A1','Agence Paris','1 avenue Paris','Paris','75000');
INSERT INTO Agence VALUES ('A2','Agence Lyon','2 avenue Lyon','Lyon','69000');
INSERT INTO Agence VALUES ('A3','Agence Marseille','3 avenue Marseille','Marseille','13000');

-- =========================
-- ASSURANCE (4 lignes)
-- =========================

INSERT INTO Assurance VALUES ('AS1','Assurance Basic',15.00,'Couverture de base');
INSERT INTO Assurance VALUES ('AS2','Assurance Premium',25.00,'Couverture complete');
INSERT INTO Assurance VALUES ('AS3','Assurance Gold',35.00,'Couverture premium');
INSERT INTO Assurance VALUES ('AS4','Assurance VIP',50.00,'Couverture totale');

-- =========================
-- VEHICULE (10 lignes)
-- =========================

INSERT INTO Vehicule VALUES ('V1','AA-111-AA','Renault','Clio','Citadine','Essence','Thermique',20000,'Disponible','C1','A1');
INSERT INTO Vehicule VALUES ('V2','BB-222-BB','Peugeot','208','Citadine','Diesel','Thermique',30000,'Disponible','C2','A1');
INSERT INTO Vehicule VALUES ('V3','CC-333-CC','BMW','Serie 3','Berline','Essence','Thermique',40000,'Loue','C3','A2');
INSERT INTO Vehicule VALUES ('V4','DD-444-DD','Renault','Megane','Berline','Diesel','Thermique',25000,'Disponible','C4','A2');
INSERT INTO Vehicule VALUES ('V5','EE-555-EE','Peugeot','3008','SUV','Diesel','Thermique',15000,'Maintenance','C5','A3');
INSERT INTO Vehicule VALUES ('V6','FF-666-FF','BMW','X5','SUV','Essence','Thermique',35000,'Disponible','C6','A3');
INSERT INTO Vehicule VALUES ('V7','GG-777-GG','Renault','Zoe','Citadine','Electrique','Electrique',12000,'Disponible','C7','A1');
INSERT INTO Vehicule VALUES ('V8','HH-888-HH','Peugeot','e208','Citadine','Electrique','Electrique',10000,'Loue','C8','A2');
INSERT INTO Vehicule VALUES ('V9','II-999-II','BMW','i3','Citadine','Electrique','Electrique',8000,'Disponible','C9','A3');
INSERT INTO Vehicule VALUES ('V10','JJ-101-JJ','Renault','Captur','SUV','Essence','Thermique',22000,'Maintenance','C10','A1');

-- =========================
-- EMPLOYE (6 lignes)
-- =========================

INSERT INTO Employe VALUES ('E1','Dupont','Jean','Manager','A1');
INSERT INTO Employe VALUES ('E2','Martin','Paul','Agent','A1');
INSERT INTO Employe VALUES ('E3','Bernard','Lucas','Agent','A2');
INSERT INTO Employe VALUES ('E4','Petit','Marc','Manager','A2');
INSERT INTO Employe VALUES ('E5','Robert','Hugo','Agent','A3');
INSERT INTO Employe VALUES ('E6','Richard','Louis','Manager','A3');

-- =========================
-- CLIENT_ENTREPRISE (3 lignes)
-- =========================

INSERT INTO Client_Entreprise VALUES ('CE1','Entreprise Alpha','12345678901234','C1');
INSERT INTO Client_Entreprise VALUES ('CE2','Entreprise Beta','22345678901234','C2');
INSERT INTO Client_Entreprise VALUES ('CE3','Entreprise Gamma','32345678901234','C3');

-- =========================
-- CLIENT_PARTICULIER (7 lignes)
-- =========================

INSERT INTO Client_Particulier VALUES ('CP1','Durand','Alice','1990-05-10','PERM001','2030-05-10','C4');
INSERT INTO Client_Particulier VALUES ('CP2','Leroy','Julie','1985-03-20','PERM002','2030-03-20','C5');
INSERT INTO Client_Particulier VALUES ('CP3','Moreau','Thomas','1992-07-11','PERM003','2031-07-11','C6');
INSERT INTO Client_Particulier VALUES ('CP4','Simon','Emma','1995-01-15','PERM004','2031-01-15','C7');
INSERT INTO Client_Particulier VALUES ('CP5','Laurent','Lucas','1988-11-08','PERM005','2032-11-08','C8');
INSERT INTO Client_Particulier VALUES ('CP6','Michel','Sarah','1993-09-19','PERM006','2030-09-19','C9');
INSERT INTO Client_Particulier VALUES ('CP7','Garcia','Leo','1991-04-25','PERM007','2032-04-25','C10');

-- =========================
-- LOCATION (12 lignes)
-- =========================

INSERT INTO Location VALUES ('L1','2026-01-01','2026-01-05','Terminee',300.00,'E1','V1','C4');
INSERT INTO Location VALUES ('L2','2026-01-03','2026-01-10','Terminee',450.00,'E2','V2','C5');
INSERT INTO Location VALUES ('L3','2026-01-05','2026-01-12','Terminee',700.00,'E3','V3','C6');
INSERT INTO Location VALUES ('L4','2026-01-10','2026-01-15','Terminee',350.00,'E4','V4','C7');
INSERT INTO Location VALUES ('L5','2026-01-12','2026-01-18','Terminee',600.00,'E5','V5','C8');
INSERT INTO Location VALUES ('L6','2026-01-14','2026-01-20','Terminee',750.00,'E6','V6','C9');
INSERT INTO Location VALUES ('L7','2026-01-18','2026-01-22','Terminee',250.00,'E1','V7','C10');
INSERT INTO Location VALUES ('L8','2026-01-20','2026-01-25','Terminee',400.00,'E2','V8','C4');
INSERT INTO Location VALUES ('L9','2026-01-22','2026-01-28','Terminee',500.00,'E3','V9','C5');
INSERT INTO Location VALUES ('L10','2026-01-25','2026-01-30','Terminee',450.00,'E4','V10','C6');
INSERT INTO Location VALUES ('L11','2026-02-01','2026-02-07','En_cours',500.00,'E5','V1','C7');
INSERT INTO Location VALUES ('L12','2026-02-05','2026-02-10','En_cours',550.00,'E6','V2','C8');

-- =========================
-- PAIEMENT (12 lignes)
-- =========================

INSERT INTO Paiement VALUES ('P1','2026-01-05',300.00,'Carte','Payé','L1');
INSERT INTO Paiement VALUES ('P2','2026-01-10',450.00,'Carte','Payé','L2');
INSERT INTO Paiement VALUES ('P3','2026-01-12',700.00,'Virement','Payé','L3');
INSERT INTO Paiement VALUES ('P4','2026-01-15',350.00,'Carte','Payé','L4');
INSERT INTO Paiement VALUES ('P5','2026-01-18',600.00,'Carte','Payé','L5');
INSERT INTO Paiement VALUES ('P6','2026-01-20',750.00,'Virement','Payé','L6');
INSERT INTO Paiement VALUES ('P7','2026-01-22',250.00,'Carte','Payé','L7');
INSERT INTO Paiement VALUES ('P8','2026-01-25',400.00,'Carte','Payé','L8');
INSERT INTO Paiement VALUES ('P9','2026-01-28',500.00,'Virement','Payé','L9');
INSERT INTO Paiement VALUES ('P10','2026-01-30',450.00,'Carte','Payé','L10');
INSERT INTO Paiement VALUES ('P11','2026-02-07',500.00,'Carte','En_attente','L11');
INSERT INTO Paiement VALUES ('P12','2026-02-10',550.00,'Carte','En_attente','L12');

-- =========================
-- CONTRAT (12 lignes)
-- =========================

INSERT INTO Contrat VALUES ('CT1','2026-01-01','Contrat standard','L1');
INSERT INTO Contrat VALUES ('CT2','2026-01-03','Contrat standard','L2');
INSERT INTO Contrat VALUES ('CT3','2026-01-05','Contrat standard','L3');
INSERT INTO Contrat VALUES ('CT4','2026-01-10','Contrat standard','L4');
INSERT INTO Contrat VALUES ('CT5','2026-01-12','Contrat standard','L5');
INSERT INTO Contrat VALUES ('CT6','2026-01-14','Contrat standard','L6');
INSERT INTO Contrat VALUES ('CT7','2026-01-18','Contrat standard','L7');
INSERT INTO Contrat VALUES ('CT8','2026-01-20','Contrat standard','L8');
INSERT INTO Contrat VALUES ('CT9','2026-01-22','Contrat standard','L9');
INSERT INTO Contrat VALUES ('CT10','2026-01-25','Contrat standard','L10');
INSERT INTO Contrat VALUES ('CT11','2026-02-01','Contrat standard','L11');
INSERT INTO Contrat VALUES ('CT12','2026-02-05','Contrat standard','L12');

-- =========================
-- INCLURE (10 lignes)
-- =========================

INSERT INTO Inclure VALUES ('L1','AS1','2026-01-01');
INSERT INTO Inclure VALUES ('L2','AS2','2026-01-03');
INSERT INTO Inclure VALUES ('L3','AS3','2026-01-05');
INSERT INTO Inclure VALUES ('L4','AS1','2026-01-10');
INSERT INTO Inclure VALUES ('L5','AS2','2026-01-12');
INSERT INTO Inclure VALUES ('L6','AS4','2026-01-14');
INSERT INTO Inclure VALUES ('L7','AS1','2026-01-18');
INSERT INTO Inclure VALUES ('L8','AS3','2026-01-20');
INSERT INTO Inclure VALUES ('L9','AS2','2026-01-22');
INSERT INTO Inclure VALUES ('L10','AS4','2026-01-25');

