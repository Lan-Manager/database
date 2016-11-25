#Création de la base de données LAMA
CREATE DATABASE IF NOT EXISTS `420.5A5.a16_lanman`
CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE `420.5A5.a16_lanman`;

#Création de la structure de la base de données LAMA

# BD impossible à drop sans retirer la vérification des contraintes des clées étrangères.
SET foreign_key_checks = 0;

DROP PROCEDURE IF EXISTS DELETE_COMPTE;
DROP PROCEDURE IF EXISTS FIN_TOURNOI;
DROP TABLE IF EXISTS EtatsTournois;
DROP TABLE IF EXISTS ComptesTournois;
DROP TABLE IF EXISTS PrixTournois;
DROP TABLE IF EXISTS Prix;
DROP TABLE IF EXISTS Messages;
DROP TABLE IF EXISTS EquipesParticipants;
DROP TABLE IF EXISTS ScoresEquipesParties;
DROP TABLE IF EXISTS StatistiquesJeux;
DROP TABLE IF EXISTS Statistiques;
DROP TABLE IF EXISTS JeuxComptes;
DROP TABLE IF EXISTS Participants;
DROP TABLE IF EXISTS Postes;
DROP TABLE IF EXISTS EtatsPostes;
DROP TABLE IF EXISTS EquipesParties;
DROP TABLE IF EXISTS TournoisLocaux;
DROP TABLE IF EXISTS Locaux;
DROP TABLE IF EXISTS Parties;
DROP TABLE IF EXISTS Tours;

# Référence circulaire empêche le drop de ces tables.
DROP TABLE IF EXISTS Tournois;
DROP TABLE IF EXISTS Comptes;
DROP TABLE IF EXISTS Equipes;
DROP TABLE IF EXISTS Jeux;

SET foreign_key_checks = 1;

CREATE TABLE IF NOT EXISTS Comptes
( idCompte INT PRIMARY KEY AUTO_INCREMENT
, nomUtilisateur VARCHAR(20) NOT NULL UNIQUE
, motDePasse VARCHAR(255) NOT NULL
, courriel VARCHAR(255)
, matricule VARCHAR(7) UNIQUE
, nom VARCHAR(60) NOT NULL
, prenom VARCHAR(60) NOT NULL
, estAdmin BOOL DEFAULT FALSE NOT NULL
, dateCreation DATETIME NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS ComptesTournois
( idCompteTournoi INT PRIMARY KEY AUTO_INCREMENT
, idTournoi INT NOT NULL
, idCompte INT NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Equipes
( idEquipe INT PRIMARY KEY AUTO_INCREMENT
, idTournoi INT NOT NULL
, nom VARCHAR(30) NOT NULL
, estElimine BOOL NOT NULL DEFAULT FALSE
, dateEnregistrement DATETIME NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS EquipesParticipants
( idEquipeParticipant INT PRIMARY KEY AUTO_INCREMENT
, idEquipe INT NOT NULL
, idParticipant INT NOT NULL
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS EquipesParties
( idEquipePartie INT PRIMARY KEY AUTO_INCREMENT
, idPartie INT NOT NULL
, idEquipe INT NOT NULL
, estGagnante BOOL
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS EtatsPostes
( idEtatPoste INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(40) NOT NULL UNIQUE
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS EtatsTournois
( idEtatTournoi INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(40) NOT NULL UNIQUE
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Jeux
( idJeu INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(100) NOT NULL UNIQUE
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS JeuxComptes
( idJeuCompte INT PRIMARY KEY AUTO_INCREMENT
, idJeu INT NOT NULL
, idParticipant INT NOT NULL
, nomCompte VARCHAR(60) NOT NULL
, detail VARCHAR(255)
, dateCreation DATETIME NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Locaux
( idLocal INT PRIMARY KEY AUTO_INCREMENT
, numero VARCHAR(4) NOT NULL
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Messages
( idMessage INT PRIMARY KEY AUTO_INCREMENT
, idCompte INT NOT NULL
, contenu VARCHAR(255) NOT NULL
, dateEnvoie TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Participants
( idParticipant INT PRIMARY KEY AUTO_INCREMENT
, matricule VARCHAR(7) NOT NULL UNIQUE
, nom VARCHAR(60) NOT NULL
, prenom VARCHAR(60) NOT NULL
, dateCreation DATETIME NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Parties
( idPartie INT PRIMARY KEY AUTO_INCREMENT
, idTour INT NOT NULL
, numPartie INT NOT NULL
, estTermine BOOL NOT NULL DEFAULT FALSE
, dureeJeu TIME
, dateFin DATETIME NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Postes
( idPoste INT PRIMARY KEY AUTO_INCREMENT
, idLocal INT NOT NULL
, idEtatPoste INT NOT NULL
, idCompte INT
, numeroPoste INT NOT NULL
, commentaire VARCHAR(255)
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Prix
( idPrix INT PRIMARY KEY AUTO_INCREMENT
, idEquipe INT
, nom VARCHAR(60) NOT NULL
, rang INT
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS PrixTournois
( idPrixTournoi INT PRIMARY KEY AUTO_INCREMENT
, idPrix INT NOT NULL
, idTournoi INT NOT NULL
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS ScoresEquipesParties
( idScoreEquipePartie INT PRIMARY KEY AUTO_INCREMENT
, idStatistiqueJeu INT NOT NULL
, idEquipePartie INT NOT NULL
, valeur DECIMAL NOT NULL
)CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Statistiques
( idStatistique INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(60)
)CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS StatistiquesJeux
( idStatistiqueJeu INT PRIMARY KEY AUTO_INCREMENT
, idJeu INT NOT NULL
, idStatistique INT NOT NULL
)CHARACTER SET utf8 COLLATE utf8_unicode_ci;



CREATE TABLE IF NOT EXISTS Tournois
( idTournoi INT PRIMARY KEY AUTO_INCREMENT
, idJeu INT NOT NULL
, idCompte INT NOT NULL
, idEtatTournoi INT NOT NULL
, idEquipe_gagnante INT
, nom VARCHAR(60) NOT NULL
, minJoueur INT NOT NULL DEFAULT 1
, maxJoueurParEquipe INT
, minJoueurParEquipe INT NOT NULL DEFAULT 1
, dateEvenement DATETIME NOT NULL
, description VARCHAR(255)
, enCours BOOL NOT NULL DEFAULT TRUE
, dateCreation DATETIME NOT NULL
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS TournoisLocaux
( idTournoiLocal INT PRIMARY KEY AUTO_INCREMENT
, idTournoi INT NOT NULL
, idLocal INT NOT NULL
, idCompte INT
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS Tours
( idTour INT PRIMARY KEY AUTO_INCREMENT
, idTournoi INT NOT NULL
, numTour INT NOT NULL
, estFinal BOOL NOT NULL DEFAULT FALSE
, dateDebut DATETIME NOT NULL
, dateFin DATETIME
, lastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CHARACTER SET utf8 COLLATE utf8_unicode_ci;



# Alter

ALTER TABLE ComptesTournois
ADD CONSTRAINT ComptesTournois_idTournoi_idCompte_UK
UNIQUE (idTournoi, idCompte);

ALTER TABLE ComptesTournois
ADD CONSTRAINT ComptesTournois_Tournois_FK
FOREIGN KEY (idTournoi) REFERENCES Tournois(idTournoi);

ALTER TABLE ComptesTournois
ADD CONSTRAINT ComptesTournois_Comptes_FK
FOREIGN KEY (idCompte) REFERENCES Comptes(idCompte);

ALTER TABLE Equipes
ADD CONSTRAINT Equipes_nom_idTournoi_UK
UNIQUE (idTournoi, nom);


ALTER TABLE Equipes
ADD CONSTRAINT Equipes_Tournois_FK
FOREIGN KEY (idTournoi) REFERENCES Tournois(idTournoi);


ALTER TABLE EquipesParticipants
ADD CONSTRAINT EquipesParticipants_Equipes_FK
FOREIGN KEY (idEquipe) REFERENCES Equipes(idEquipe);


ALTER TABLE EquipesParticipants
ADD CONSTRAINT EquipesParticipants_Participants_FK
FOREIGN KEY (idParticipant) REFERENCES Participants(idParticipant);


ALTER TABLE EquipesParticipants
ADD CONSTRAINT EquipesParticipants_idEquipe_idParticipant_UK
UNIQUE (idEquipe, idParticipant);


ALTER TABLE EquipesParties
ADD CONSTRAINT EquipesParties_Equipes_FK
FOREIGN KEY (idEquipe) REFERENCES Equipes(idEquipe);


ALTER TABLE EquipesParties
ADD CONSTRAINT EquipesParties_Parties_FK
FOREIGN KEY (idPartie) REFERENCES Parties(idPartie);


ALTER TABLE EquipesParties
ADD CONSTRAINT EquipesParties_idPartie_idEquipe_UK
UNIQUE (idPartie, idEquipe);


ALTER TABLE EquipesParties
ADD CONSTRAINT EquipesParties_idPartie_estGagnante_UK
UNIQUE (idPartie, estGagnante);


ALTER TABLE JeuxComptes
ADD CONSTRAINT JeuxComptes_idJeu_nomCompte_UK
UNIQUE (idJeu, nomCompte);


ALTER TABLE JeuxComptes
ADD CONSTRAINT JeuxComptes_Jeux_FK
FOREIGN KEY (idJeu) REFERENCES Jeux(idJeu);

ALTER TABLE JeuxComptes
ADD CONSTRAINT JeuxComptes_Participants_FK
FOREIGN KEY (idParticipant) REFERENCES Participants(idParticipant);


ALTER TABLE Locaux
ADD CONSTRAINT Locaux_numero_UK
UNIQUE (numero);



ALTER TABLE Messages
ADD CONSTRAINT Messages_Comptes_FK
FOREIGN KEY (idCompte) REFERENCES Comptes(idCompte);

ALTER TABLE Messages
ADD CONSTRAINT Messages_Compte_Contenu_dateEnvoie_UK
UNIQUE (idCompte, contenu, dateEnvoie);


ALTER TABLE Parties
ADD CONSTRAINT Parties_idTour_numPartie_UK
UNIQUE (idTour, numPartie);


ALTER TABLE Parties
ADD CONSTRAINT Parties_Tours_FK
FOREIGN KEY (idTour) REFERENCES Tours(idTour);


ALTER TABLE Postes
ADD CONSTRAINT Postes_Locaux_FK
FOREIGN KEY (idLocal) REFERENCES Locaux(idLocal);

ALTER TABLE Postes
ADD CONSTRAINT Postes_EtatsPostes_FK
FOREIGN KEY (idEtatPoste) REFERENCES EtatsPostes(idEtatPoste);


ALTER TABLE Postes
ADD CONSTRAINT Postes_Comptes_FK
FOREIGN KEY (idCompte) REFERENCES Comptes(idCompte);


ALTER TABLE Postes
ADD CONSTRAINT Postes_Local_NumeroPoste_UK
UNIQUE (idLocal, numeroPoste);


ALTER TABLE Prix
ADD CONSTRAINT Prix_Equipes_FK
FOREIGN KEY (idEquipe) REFERENCES Equipes(idEquipe);


ALTER TABLE Prix
ADD CONSTRAINT Prix_nom_rang_UK
UNIQUE (nom, rang);


ALTER TABLE PrixTournois
ADD CONSTRAINT PrixTournois_Prix_FK
FOREIGN KEY (idPrix) REFERENCES Prix(idPrix);


ALTER TABLE PrixTournois
ADD CONSTRAINT PrixTournois_Tournois_FK
FOREIGN KEY (idTournoi) REFERENCES Tournois(idTournoi);


ALTER TABLE PrixTournois
ADD CONSTRAINT PrixTournois_Tournois_Prix_Uk
UNIQUE (idPrix, idTournoi);


ALTER TABLE ScoresEquipesParties
ADD CONSTRAINT ScoresEquipesParties_StatistiquesJeux_FK
FOREIGN KEY (idStatistiqueJeu) REFERENCES StatistiquesJeux(idStatistiqueJeu);


ALTER TABLE ScoresEquipesParties
ADD CONSTRAINT ScoresEquipesParties_EquipesParties_FK
FOREIGN KEY (idEquipePartie) REFERENCES EquipesParties(idEquipePartie);


ALTER TABLE ScoresEquipesParties
ADD CONSTRAINT ScoresEquipesParties_idEquipePartie_idStatistiqueJeu_UK
UNIQUE (idEquipePartie, idStatistiqueJeu);


ALTER TABLE Statistiques
ADD CONSTRAINT Statistiques_nom_UK
UNIQUE (nom);


ALTER TABLE StatistiquesJeux
ADD CONSTRAINT StatistiquesJeux_Jeux_FK
FOREIGN KEY (idJeu) REFERENCES Jeux(idJeu);


ALTER TABLE StatistiquesJeux
ADD CONSTRAINT StatistiquesJeux_Satistiques_FK
FOREIGN KEY (idStatistique) REFERENCES Statistiques(idStatistique);


ALTER TABLE StatistiquesJeux
ADD CONSTRAINT StatistiquesJeux_idJeu_idStatistique_UK
UNIQUE (idJeu, idStatistique);


ALTER TABLE Tournois
ADD CONSTRAINT Tournois_Jeux_FK
FOREIGN KEY (idJeu) REFERENCES Jeux(idJeu);

ALTER TABLE Tournois
ADD CONSTRAINT Tournois_Comptes_FK
FOREIGN KEY (idCompte) REFERENCES Comptes(idCompte);

ALTER TABLE Tournois
ADD CONSTRAINT Tournois_EquipesGagnante_FK
FOREIGN KEY (idEquipe_gagnante) REFERENCES Equipes(idEquipe);

ALTER TABLE Tournois
ADD CONSTRAINT Tournois_EtatsTournois_FK
FOREIGN KEY (idEtatTournoi) REFERENCES EtatsTournois(idEtatTournoi);


ALTER TABLE Tournois
ADD CONSTRAINT Tournois_enCours_UK
UNIQUE (enCours);


ALTER TABLE TournoisLocaux
ADD CONSTRAINT TournoixLocaux_Tournois_FK
FOREIGN KEY (idTournoi) REFERENCES Tournois(idTournoi);

ALTER TABLE TournoisLocaux
ADD CONSTRAINT TournoixLocaux_Locaux_FK
FOREIGN KEY (idLocal) REFERENCES Locaux(idLocal);

ALTER TABLE TournoisLocaux
ADD CONSTRAINT TournoixLocaux_Comptes_FK
FOREIGN KEY (idCompte) REFERENCES Comptes(idCompte);


ALTER TABLE TournoisLocaux
ADD CONSTRAINT TournoisLocaux_idTournoi_idLocal_UK
UNIQUE (idTournoi, idLocal);


ALTER TABLE Tours
ADD CONSTRAINT Tours_Tournois_FK
FOREIGN KEY (idTournoi) REFERENCES Tournois(idTournoi);


ALTER TABLE Tours
ADD CONSTRAINT Tours_idTournoi_numTour_UK
UNIQUE (idTournoi, numTour);


DELIMITER //
CREATE PROCEDURE FIN_TOURNOI()
	BEGIN
    SET foreign_key_checks = 0;
    SET SQL_SAFE_UPDATES = 0;
	TRUNCATE TABLE ComptesTournois;
    TRUNCATE TABLE Equipes;
    TRUNCATE TABLE EquipesParticipants;
    TRUNCATE TABLE EquipesParties;
    TRUNCATE TABLE JeuxComptes;
    TRUNCATE TABLE Messages;
    TRUNCATE TABLE Participants;
    TRUNCATE TABLE Parties;
    TRUNCATE TABLE Prix;
    TRUNCATE TABLE PrixTournois;
    TRUNCATE TABLE ScoresEquipesParties;
    TRUNCATE TABLE Tournois;
    TRUNCATE TABLE TournoisLocaux;
    TRUNCATE TABLE Tours;

    Update Postes SET
		idEtatPoste = (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'),
        commentaire = null,
        idCompte = null;

    SET foreign_key_checks = 1;
    SET SQL_SAFE_UPDATES = 1;
    END //
    
CREATE PROCEDURE DELETE_COMPTE(
	IN account VARCHAR(20)
)
	BEGIN
    DECLARE accountExists INT DEFAULT 0;
    DECLARE accountTournoi INT DEFAULT 0;
	SELECT COUNT(*) INTO accountExists FROM Comptes WHERE nomUtilisateur = account;

    IF (accountExists > 0) THEN

		DELETE FROM Messages WHERE idCompte = (SELECT idCompte FROM Comptes WHERE nomUtilisateur = account);

		Update Postes SET
			idCompte = null WHERE idCompte = (SELECT idCompte FROM Comptes WHERE nomUtilisateur = account);

		DELETE FROM Comptes WHERE nomUtilisateur = account;
    END IF;

    END//
DELIMITER ;

#CALL DELETE_Compte('mrCookieMonster', @error);    

DELIMITER ;
