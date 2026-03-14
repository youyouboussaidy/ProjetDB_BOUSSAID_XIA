🔹 1) RÈGLES DE GESTION DES DONNÉES

(Vision métier – sans modélisation technique)

📌 Concernant les clients
	•	Un client peut être un particulier ou une entreprise.
	•	Chaque client doit être identifié de manière unique.
	•	Un client particulier doit fournir : nom, prénom, date de naissance, adresse, téléphone, email et numéro de permis de conduire.
	•	Le permis de conduire doit être valide à la date de début de location.
	•	Un client entreprise doit fournir une raison sociale, un numéro SIRET et un contact référent.
	•	Un client peut avoir plusieurs locations.
	•	Un client peut enregistrer plusieurs moyens de paiement.
	•	Un client peut être bloqué en cas d’impayé ou de sinistre non réglé.

⸻

📌 Concernant les agences
	•	L’entreprise possède plusieurs agences.
	•	Chaque agence a une adresse complète.
	•	Chaque agence possède un parc de véhicules.
	•	Une location débute dans une agence et se termine dans la même agence ou dans une autre.
	•	Une agence emploie plusieurs employés.
	•	Une agence peut être ouverte ou fermée selon des horaires définis.

⸻

📌 Concernant les véhicules
	•	Chaque véhicule est identifié par une immatriculation unique.
	•	Un véhicule appartient à une seule agence à un instant donné.
	•	Un véhicule possède : marque, modèle, catégorie (économique, SUV, luxe…), type de carburant, boîte de vitesse.
	•	Chaque véhicule a un kilométrage actuel.
	•	Chaque véhicule possède un statut : disponible, loué, en maintenance, réservé.
	•	Un véhicule peut être assuré par une ou plusieurs garanties.
	•	Un véhicule ne peut pas être loué s’il est en maintenance ou déjà réservé.

⸻

📌 Concernant les locations
	•	Une location est toujours associée à un seul client.
	•	Une location concerne un seul véhicule.
	•	Une location comporte une date et heure de début et de fin.
	•	Une location a un statut : réservée, en cours, terminée, annulée.
	•	Une location génère un contrat signé.
	•	Une location peut inclure des options (GPS, siège bébé, conducteur supplémentaire…).
	•	Une location peut inclure différentes assurances complémentaires.
	•	Le prix total dépend de la durée, du véhicule choisi et des options.
	•	Un véhicule ne peut pas être loué à deux clients simultanément.
	•	Le kilométrage du véhicule est mis à jour à la fin de la location.

⸻

📌 Concernant les paiements
	•	Chaque location donne lieu à au moins un paiement.
	•	Un paiement peut être effectué par carte bancaire, virement ou espèces.
	•	Un paiement possède un statut : en attente, validé, refusé.
	•	Une caution (dépôt de garantie) peut être bloquée au début de la location.
	•	Un paiement est rattaché à une seule location.

⸻

📌 Concernant les assurances
	•	Chaque location inclut une assurance de base obligatoire.
	•	Le client peut souscrire à des assurances complémentaires (rachat de franchise, protection pneus…).
	•	Chaque assurance possède un tarif journalier.
	•	Les assurances sont associées au contrat de location.

⸻

📌 Concernant les employés
	•	Chaque employé est rattaché à une seule agence.
	•	Un employé possède un identifiant unique.
	•	Un employé peut enregistrer des locations.
	•	Un employé possède un rôle (agent comptoir, responsable d’agence, maintenance).

⸻

📌 Concernant les contrats
	•	Chaque location génère un contrat unique.
	•	Le contrat contient les informations du client, du véhicule et des conditions tarifaires.
	•	Un contrat doit être signé avant remise du véhicule.
	•	Un contrat peut inclure des pénalités en cas de retard ou dommages.

⸻

🔹 2) DICTIONNAIRE DE DONNÉES BRUTES

(25 à 35 données – sans présumer de la structure future)

Signification de la donnée	Type	Taille
Identifiant client	Numérique	10 chiffres
Nom client	Alphanumérique	50 caractères
Prénom client	Alphanumérique	50 caractères
Date de naissance	Date	10 caractères
Adresse client	Alphanumérique	150 caractères
Téléphone client	Numérique	15 chiffres
... (51lignes restantes)

message.txt
7 Ko
Yva — 21:29
Image
﻿
👀
younes
yiyoubous.yi4990
Très bien.
Je me place comme responsable métier d’une entreprise de location de véhicules (type Sixt / Hertz / Europcar) et je transmets à l’étudiant en ingénierie informatique les besoins fonctionnels, sans parler technique base de données.

⸻

🔹 1) RÈGLES DE GESTION DES DONNÉES

(Vision métier – sans modélisation technique)

📌 Concernant les clients
	•	Un client peut être un particulier ou une entreprise.
	•	Chaque client doit être identifié de manière unique.
	•	Un client particulier doit fournir : nom, prénom, date de naissance, adresse, téléphone, email et numéro de permis de conduire.
	•	Le permis de conduire doit être valide à la date de début de location.
	•	Un client entreprise doit fournir une raison sociale, un numéro SIRET et un contact référent.
	•	Un client peut avoir plusieurs locations.
	•	Un client peut enregistrer plusieurs moyens de paiement.
	•	Un client peut être bloqué en cas d’impayé ou de sinistre non réglé.

⸻

📌 Concernant les agences
	•	L’entreprise possède plusieurs agences.
	•	Chaque agence a une adresse complète.
	•	Chaque agence possède un parc de véhicules.
	•	Une location débute dans une agence et se termine dans la même agence ou dans une autre.
	•	Une agence emploie plusieurs employés.
	•	Une agence peut être ouverte ou fermée selon des horaires définis.

⸻

📌 Concernant les véhicules
	•	Chaque véhicule est identifié par une immatriculation unique.
	•	Un véhicule appartient à une seule agence à un instant donné.
	•	Un véhicule possède : marque, modèle, catégorie (économique, SUV, luxe…), type de carburant, boîte de vitesse.
	•	Chaque véhicule a un kilométrage actuel.
	•	Chaque véhicule possède un statut : disponible, loué, en maintenance, réservé.
	•	Un véhicule peut être assuré par une ou plusieurs garanties.
	•	Un véhicule ne peut pas être loué s’il est en maintenance ou déjà réservé.

⸻

📌 Concernant les locations
	•	Une location est toujours associée à un seul client.
	•	Une location concerne un seul véhicule.
	•	Une location comporte une date et heure de début et de fin.
	•	Une location a un statut : réservée, en cours, terminée, annulée.
	•	Une location génère un contrat signé.
	•	Une location peut inclure des options (GPS, siège bébé, conducteur supplémentaire…).
	•	Une location peut inclure différentes assurances complémentaires.
	•	Le prix total dépend de la durée, du véhicule choisi et des options.
	•	Un véhicule ne peut pas être loué à deux clients simultanément.
	•	Le kilométrage du véhicule est mis à jour à la fin de la location.

⸻

📌 Concernant les paiements
	•	Chaque location donne lieu à au moins un paiement.
	•	Un paiement peut être effectué par carte bancaire, virement ou espèces.
	•	Un paiement possède un statut : en attente, validé, refusé.
	•	Une caution (dépôt de garantie) peut être bloquée au début de la location.
	•	Un paiement est rattaché à une seule location.

⸻

📌 Concernant les assurances
	•	Chaque location inclut une assurance de base obligatoire.
	•	Le client peut souscrire à des assurances complémentaires (rachat de franchise, protection pneus…).
	•	Chaque assurance possède un tarif journalier.
	•	Les assurances sont associées au contrat de location.

⸻

📌 Concernant les employés
	•	Chaque employé est rattaché à une seule agence.
	•	Un employé possède un identifiant unique.
	•	Un employé peut enregistrer des locations.
	•	Un employé possède un rôle (agent comptoir, responsable d’agence, maintenance).

⸻

📌 Concernant les contrats
	•	Chaque location génère un contrat unique.
	•	Le contrat contient les informations du client, du véhicule et des conditions tarifaires.
	•	Un contrat doit être signé avant remise du véhicule.
	•	Un contrat peut inclure des pénalités en cas de retard ou dommages.

⸻

🔹 2) DICTIONNAIRE DE DONNÉES BRUTES

(25 à 35 données – sans présumer de la structure future)

Signification de la donnée	Type	Taille
Identifiant client	Numérique	10 chiffres
Nom client	Alphanumérique	50 caractères
Prénom client	Alphanumérique	50 caractères
Date de naissance	Date	10 caractères
Adresse client	Alphanumérique	150 caractères
Téléphone client	Numérique	15 chiffres
Email client	Alphanumérique	100 caractères
Numéro permis de conduire	Alphanumérique	20 caractères
Date validité permis	Date	10 caractères
Raison sociale entreprise	Alphanumérique	100 caractères
Numéro SIRET	Numérique	14 chiffres
Identifiant agence	Numérique	10 chiffres
Nom agence	Alphanumérique	100 caractères
Adresse agence	Alphanumérique	150 caractères
Identifiant véhicule	Numérique	10 chiffres
Immatriculation véhicule	Alphanumérique	15 caractères
Marque véhicule	Alphanumérique	50 caractères
Modèle véhicule	Alphanumérique	50 caractères
Catégorie véhicule	Alphanumérique	30 caractères
Type carburant	Alphanumérique	20 caractères
Kilométrage véhicule	Numérique	7 chiffres
Statut véhicule	Alphanumérique	20 caractères
Identifiant location	Numérique	10 chiffres
Date début location	Date/Heure	16 caractères
Date fin location	Date/Heure	16 caractères
Statut location	Alphanumérique	20 caractères
Prix total location	Numérique (décimal)	10 chiffres dont 2 décimales
Identifiant paiement	Numérique	10 chiffres
Mode de paiement	Alphanumérique	20 caractères
Statut paiement	Alphanumérique	20 caractères
Montant paiement	Numérique (décimal)	10 chiffres dont 2 décimales
Identifiant employé	Numérique	10 chiffres
Nom employé	Alphanumérique	50 caractères
Rôle employé	Alphanumérique	30 caractères
Identifiant contrat	Numérique	10 chiffres


⸻

✅ Résultat

Tu as maintenant :
	•	✔ Des règles de gestion métier complètes
	•	✔ Un dictionnaire de données brutes (35 données)
	•	✔ Aucune hypothèse technique sur le futur MCD/MLD
	•	✔ Une base parfaite pour que l’étudiant applique ensuite MERISE :
	•	MCD (Modèle Conceptuel de Données)
	•	MLD
	•	MPD
	•	Implémentation SQL


-----------------------------------------------------------------------------------------------------------------------

III.A) Modèle Logique de Données (MLD)



Client = (_ID_Client VARCHAR(50), Adresse VARCHAR(50), Telephone VARCHAR(20), Email VARCHAR(50), Statut_Client VARCHAR(50));

Agence = (_ID_Agence VARCHAR(50), Nom_Agence VARCHAR(50), Adresse_Agence VARCHAR(50), Ville VARCHAR(50), Code_Postal VARCHAR(10));

Vehicule = (_ID_Vehicule VARCHAR(50), Immatriculation VARCHAR(50), Marque VARCHAR(50), Modele VARCHAR(50), Categorie VARCHAR(50), Carburant VARCHAR(50), Type_de_Motorisation VARCHAR(50), Kilometrage INT, Statut_Vehicule VARCHAR(50), #_ID_Client, #_ID_Agence);

Employe = (_ID_Employe VARCHAR(50), Nom_Employe VARCHAR(50), Prenom_Employe VARCHAR(50), Role VARCHAR(50), #_ID_Agence);

Assurance = (_ID_Assurance VARCHAR(50), Nom_Assurance VARCHAR(50), Tarif_Journalier DECIMAL(15,2), Description VARCHAR(50));

Client_Entreprise = (_ID_Client_Entreprise VARCHAR(50), Raison_Sociale VARCHAR(50), Siret VARCHAR(14), #_ID_Client);

Client_Particulier = (_ID_Client_Particulier VARCHAR(50), Nom VARCHAR(50), Prenom VARCHAR(50), Date_Naissance DATE, Numero_Permis VARCHAR(20), Date_Validite_Permis DATE, #_ID_Client);

Location = (_ID_Location VARCHAR(50), Date_Debut DATE, Date_Fin DATE, Statut_Location VARCHAR(50), Prix_Total DECIMAL(15,2), #_ID_Employe, #_ID_Vehicule, #_ID_Client);

Paiement = (_ID_Paiement VARCHAR(50), Date_Paiement DATE, Montant DECIMAL(15,2), Mode_Paiement VARCHAR(50), Statut_Paiement VARCHAR(50), #_ID_Location);

Contrat = (_Num_Contrat VARCHAR(50), Date_Signature DATE, Conditions_Generales VARCHAR(50), #_ID_Location);

Inclure = (#_ID_Location, #_ID_Assurance, Date_Souscription DATE);
