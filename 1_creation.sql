CREATE DATABASE IF NOT EXISTS projet_BD;
USE projet_BD;

CREATE TABLE Client(
   _ID_Client VARCHAR(50),
   Adresse VARCHAR(100),
   Telephone VARCHAR(20),
   Email VARCHAR(100),
   Statut_Client VARCHAR(50),
   PRIMARY KEY(_ID_Client)
);

CREATE TABLE Agence(
   _ID_Agence VARCHAR(50),
   Nom_Agence VARCHAR(50),
   Adresse_Agence VARCHAR(100),
   Ville VARCHAR(50),
   Code_Postal VARCHAR(10),
   PRIMARY KEY(_ID_Agence)
);

CREATE TABLE Vehicule(
   _ID_Vehicule VARCHAR(50),
   Immatriculation VARCHAR(50),
   Marque VARCHAR(50),
   Modele VARCHAR(50),
   Categorie VARCHAR(50),
   Carburant VARCHAR(50),
   Type_Motorisation VARCHAR(50),
   Kilometrage INT,
   Statut_Vehicule VARCHAR(50),
   _ID_Client VARCHAR(50),
   _ID_Agence VARCHAR(50) NOT NULL,
   PRIMARY KEY(_ID_Vehicule),
   FOREIGN KEY(_ID_Client) REFERENCES Client(_ID_Client)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(_ID_Agence) REFERENCES Agence(_ID_Agence)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Employe(
   _ID_Employe VARCHAR(50),
   Nom_Employe VARCHAR(50),
   Prenom_Employe VARCHAR(50),
   Role_Employe VARCHAR(50),
   _ID_Agence VARCHAR(50) NOT NULL,
   PRIMARY KEY(_ID_Employe),
   FOREIGN KEY(_ID_Agence) REFERENCES Agence(_ID_Agence)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Assurance(
   _ID_Assurance VARCHAR(50),
   Nom_Assurance VARCHAR(50),
   Tarif_Journalier DECIMAL(15,2),
   Description VARCHAR(200),
   PRIMARY KEY(_ID_Assurance)
);

CREATE TABLE Client_Entreprise(
   _ID_Client_Entreprise VARCHAR(50),
   Raison_Sociale VARCHAR(100),
   Siret VARCHAR(14),
   _ID_Client VARCHAR(50) NOT NULL,
   PRIMARY KEY(_ID_Client_Entreprise),
   UNIQUE(_ID_Client),
   FOREIGN KEY(_ID_Client) REFERENCES Client(_ID_Client)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Client_Particulier(
   _ID_Client_Particulier VARCHAR(50),
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   Date_Naissance DATE,
   Numero_Permis VARCHAR(20),
   Date_Validite_Permis DATE,
   _ID_Client VARCHAR(50) NOT NULL,
   PRIMARY KEY(_ID_Client_Particulier),
   UNIQUE(_ID_Client),
   FOREIGN KEY(_ID_Client) REFERENCES Client(_ID_Client)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Location(
   _ID_Location VARCHAR(50),
   Date_Debut DATE,
   Date_Fin DATE,
   Statut_Location VARCHAR(50),
   Prix_Total DECIMAL(15,2),
   _ID_Employe VARCHAR(50) NOT NULL,
   _ID_Vehicule VARCHAR(50) NOT NULL,
   _ID_Client VARCHAR(50) NOT NULL,
   PRIMARY KEY(_ID_Location),
   FOREIGN KEY(_ID_Employe) REFERENCES Employe(_ID_Employe)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(_ID_Vehicule) REFERENCES Vehicule(_ID_Vehicule)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(_ID_Client) REFERENCES Client(_ID_Client)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Paiement(
   _ID_Paiement VARCHAR(50),
   Date_Paiement DATE,
   Montant DECIMAL(15,2),
   Mode_Paiement VARCHAR(50),
   Statut_Paiement VARCHAR(50),
   _ID_Location VARCHAR(50) NOT NULL,
   PRIMARY KEY(_ID_Paiement),
   FOREIGN KEY(_ID_Location) REFERENCES Location(_ID_Location)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Contrat(
   _Num_Contrat VARCHAR(50),
   Date_Signature DATE,
   Conditions_Generales VARCHAR(200),
   _ID_Location VARCHAR(50) NOT NULL,
   PRIMARY KEY(_Num_Contrat),
   UNIQUE(_ID_Location),
   FOREIGN KEY(_ID_Location) REFERENCES Location(_ID_Location)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Inclure(
   _ID_Location VARCHAR(50),
   _ID_Assurance VARCHAR(50),
   Date_Souscription DATE,
   PRIMARY KEY(_ID_Location, _ID_Assurance),
   FOREIGN KEY(_ID_Location) REFERENCES Location(_ID_Location)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(_ID_Assurance) REFERENCES Assurance(_ID_Assurance)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);