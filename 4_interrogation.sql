USE projet_BD;

-- PROJECTIONS / SELECTIONS

-- Afficher les villes des agences sans doublons, triées par ordre alphabétique
SELECT DISTINCT Ville
FROM Agence
ORDER BY Ville ASC;

-- Afficher les véhicules dont le kilométrage est compris entre 10000 et 30000
SELECT _ID_Vehicule, Marque, Modele, Kilometrage
FROM Vehicule
WHERE Kilometrage BETWEEN 10000 AND 30000
ORDER BY Kilometrage ASC;

-- Afficher les clients dont l’email se termine par mail.com
SELECT _ID_Client, Email
FROM Client
WHERE Email LIKE '%mail.com';

-- Afficher les véhicules dont le statut est Disponible ou Maintenance
SELECT _ID_Vehicule, Immatriculation, Statut_Vehicule
FROM Vehicule
WHERE Statut_Vehicule IN ('Disponible', 'Maintenance')
ORDER BY Statut_Vehicule;

-- Afficher les locations commencées dans le mois de janvier en 2026
SELECT _ID_Location, Date_Debut, Date_Fin, Prix_Total
FROM Location
WHERE Date_Debut BETWEEN '2026-01-01' AND '2026-01-31'
ORDER BY Date_Debut ASC;

-- Afficher les clients particuliers dont le nom commence par L
SELECT _ID_Client_Particulier, Nom, Prenom
FROM Client_Particulier
WHERE Nom LIKE 'L%';

-- FONCTIONS D’AGREGATION

-- Calculer le nombre de véhicules par agence
SELECT _ID_Agence, COUNT(*) AS Nombre_Vehicules
FROM Vehicule
GROUP BY _ID_Agence;

-- Calculer le prix moyen des locations par client
SELECT _ID_Client, AVG(Prix_Total) AS Prix_Moyen_Location
FROM Location
GROUP BY _ID_Client;

-- Calculer le chiffre d’affaires total par client
SELECT _ID_Client, SUM(Prix_Total) AS Chiffre_Affaires
FROM Location
GROUP BY _ID_Client;

-- Afficher les clients dont le total des locations dépasse 800
SELECT _ID_Client, SUM(Prix_Total) AS Total_Locations
FROM Location
GROUP BY _ID_Client
HAVING SUM(Prix_Total) > 800;

-- Afficher le nombre de locations par véhicule
SELECT _ID_Vehicule, COUNT(*) AS Nombre_Locations
FROM Location
GROUP BY _ID_Vehicule
HAVING COUNT(*) >= 1;

-- Calculer le montant total payé par mode de paiement
SELECT Mode_Paiement, SUM(Montant) AS Montant_Total
FROM Paiement
GROUP BY Mode_Paiement;

-- JOINTURES

-- Afficher les locations avec l’identifiant et l’email du client associé
SELECT L._ID_Location, L.Date_Debut, L.Date_Fin, C._ID_Client, C.Email
FROM Location L
INNER JOIN Client C ON L._ID_Client = C._ID_Client;

-- Afficher les locations avec les informations du véhicule concerné
SELECT L._ID_Location, V.Immatriculation, V.Marque, V.Modele
FROM Location L
INNER JOIN Vehicule V ON L._ID_Vehicule = V._ID_Vehicule;

-- Afficher les locations avec l’employé qui les a enregistrées
SELECT L._ID_Location, E.Nom_Employe, E.Prenom_Employe
FROM Location L
INNER JOIN Employe E ON L._ID_Employe = E._ID_Employe;

-- Afficher toutes les locations et les paiements associés s’ils existent
SELECT L._ID_Location, L.Prix_Total, P._ID_Paiement, P.Montant
FROM Location L
LEFT JOIN Paiement P ON L._ID_Location = P._ID_Location;

-- Afficher tous les clients et leurs locations si elles existent
SELECT C._ID_Client, C.Email, L._ID_Location, L.Date_Debut
FROM Client C
LEFT JOIN Location L ON C._ID_Client = L._ID_Client;

-- Afficher les assurances souscrites pour chaque location
SELECT I._ID_Location, A.Nom_Assurance, I.Date_Souscription
FROM Inclure I
INNER JOIN Assurance A ON I._ID_Assurance = A._ID_Assurance;

-- Afficher les locations, les clients et les véhicules concernés
SELECT L._ID_Location, C._ID_Client, V.Immatriculation, V.Marque, V.Modele
FROM Location L
INNER JOIN Client C ON L._ID_Client = C._ID_Client
INNER JOIN Vehicule V ON L._ID_Vehicule = V._ID_Vehicule;

-- REQUETES IMBRIQUEES

-- Afficher les clients ayant au moins une location
SELECT _ID_Client, Email
FROM Client
WHERE _ID_Client IN (
    SELECT _ID_Client
    FROM Location
);

-- Afficher les clients n’ayant jamais effectué de location
SELECT _ID_Client, Email
FROM Client
WHERE _ID_Client NOT IN (
    SELECT _ID_Client
    FROM Location
);

-- Afficher les véhicules qui ont déjà été loués
SELECT _ID_Vehicule, Immatriculation, Marque
FROM Vehicule
WHERE _ID_Vehicule IN (
    SELECT _ID_Vehicule
    FROM Location
);

-- Afficher les véhicules qui n’ont jamais été loués
SELECT _ID_Vehicule, Immatriculation, Marque
FROM Vehicule V
WHERE NOT EXISTS (
    SELECT 1
    FROM Location L
    WHERE L._ID_Vehicule = V._ID_Vehicule
);

-- Afficher les locations dont le prix est supérieur à au moins un autre prix de location
SELECT _ID_Location, Prix_Total
FROM Location
WHERE Prix_Total > ANY (
    SELECT Prix_Total
    FROM Location
);

-- Afficher les locations dont le prix est supérieur à tous les prix des locations du client C4
SELECT _ID_Location, Prix_Total
FROM Location
WHERE Prix_Total > ALL (
    SELECT Prix_Total
    FROM Location
    WHERE _ID_Client = 'C4'
);

-- Afficher les paiements associés à une location existante
SELECT _ID_Paiement, Montant
FROM Paiement
WHERE _ID_Location IN (
    SELECT _ID_Location
    FROM Location
);