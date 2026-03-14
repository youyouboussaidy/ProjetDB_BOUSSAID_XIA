USE projet_BD;

ALTER TABLE Client
ADD CONSTRAINT chk_client_email
CHECK (Email LIKE '%@%');

ALTER TABLE Agence
ADD CONSTRAINT chk_agence_code_postal
CHECK (CHAR_LENGTH(Code_Postal) = 5);

ALTER TABLE Vehicule
ADD CONSTRAINT chk_vehicule_kilometrage
CHECK (Kilometrage >= 0);

ALTER TABLE Assurance
ADD CONSTRAINT chk_assurance_tarif
CHECK (Tarif_Journalier >= 0);

ALTER TABLE Client_Entreprise
ADD CONSTRAINT chk_client_entreprise_siret
CHECK (CHAR_LENGTH(Siret) = 14);

ALTER TABLE Location
ADD CONSTRAINT chk_location_dates
CHECK (Date_Fin >= Date_Debut);

ALTER TABLE Location
ADD CONSTRAINT chk_location_prix
CHECK (Prix_Total >= 0);

ALTER TABLE Paiement
ADD CONSTRAINT chk_paiement_montant
CHECK (Montant >= 0);