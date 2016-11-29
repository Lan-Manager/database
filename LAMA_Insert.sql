USE `420.5A5.a16_lanman`;


#			Logins
#
# mrCookieMonster	:	1234
# admin 			:	admin
# malloc			:	1234
# maxeber			:	1234
# antoine			:	1234
# francis			:	1234

INSERT INTO Comptes
(nomUtilisateur, motDePasse, courriel, nom, prenom, estAdmin, dateCreation)
VALUES
('mrCookieMonster', '1000:+q7wsdeXfAzL74vgJz8ot7J43HZfqzy0:/3My0nGl8JPw3bsjRvTeTwdoBqM=', 'ivdesjar@cstj.qc.ca', 'Desjardins', 'Ivan', true, NOW()),
('admin', '1000:DbklUIvTte99jOHUtRzwDIKzmC3FArkD:pWZgS7JB2s8XFrjrMeS4BNR7CbA=', 'admin@lama.com', 'Admin', 'Admin', true, NOW());

INSERT INTO Comptes
(nomUtilisateur, motDePasse, courriel, matricule, nom, prenom, dateCreation)
VALUES
('malloc', '1000:+q7wsdeXfAzL74vgJz8ot7J43HZfqzy0:/3My0nGl8JPw3bsjRvTeTwdoBqM=', '1081849@cstj.qc.ca', '1081849', 'Savaria', 'Tristan', NOW()),
('maxeber', '1000:+q7wsdeXfAzL74vgJz8ot7J43HZfqzy0:/3My0nGl8JPw3bsjRvTeTwdoBqM=', 'ivdesjar@cstj.qc.ca', '1241246', 'Ébert', 'Max', NOW()),
('antoine', '1000:+q7wsdeXfAzL74vgJz8ot7J43HZfqzy0:/3My0nGl8JPw3bsjRvTeTwdoBqM=', 'ivdesjar@cstj.qc.ca', '3426313', 'Richer-Cloutier', 'Antoine', NOW()),
('francis', '1000:+q7wsdeXfAzL74vgJz8ot7J43HZfqzy0:/3My0nGl8JPw3bsjRvTeTwdoBqM=', 'ivdesjar@cstj.qc.ca', '7534126', 'Hamel', 'Francis', NOW());


INSERT INTO Jeux
(nom)
VALUES
('League of Legends');

INSERT INTO TypesTournois
(nom)
VALUES
('Simple élimination'),
('Double élimination');


INSERT INTO EtatsPostes
(nom)
VALUES
('Prêt'),
('Non requis'),
('En attente'),
('Problème');

INSERT INTO EtatsTournois
(nom)
VALUES
('Créé'),
('Configuration'),
('Prêt'),
('En cours'),
('Terminé'),
('Annulé');

INSERT INTO Locaux
(numero)
VALUES
('D125');

INSERT INTO Locaux
(numero)
VALUES
('D108');

INSERT INTO Locaux
(numero)
VALUES
('D106');


INSERT INTO Postes
(idLocal, idEtatPoste, numeroPoste)
VALUES
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 1 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 2 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 3 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 4 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 5 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 6 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 7 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 8 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 9 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 10 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 11 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 12 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 13 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 14 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 15 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 16 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 17 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 18 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 19 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 20 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 21 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 22 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 23 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 24 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 25 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 26 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 27 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 28 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D125'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 29 ),



( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 1 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 2 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 3 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 4 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 5 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 6 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 7 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 8 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 9 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 10 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 11 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 12 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 13 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 14 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 15 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 16 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 17 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 18 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 19 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 20 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 21 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 22 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 23 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 24 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 25 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 26 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 27 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 28 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D108'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 29 ),




( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 1 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 2 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 3 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 4 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 5 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 6 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 7 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 8 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 9 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 10 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 11 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 12 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 13 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 14 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 15 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 16 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 17 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 18 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 19 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 20 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 21 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 22 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 23 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 24 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 25 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 26 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 27 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 28 ),
( (SELECT idLocal FROM Locaux WHERE numero = 'D106'), (SELECT idEtatPoste FROM EtatsPostes WHERE nom = 'Non requis'), 29 );

INSERT INTO Statistiques
(nom)
VALUES
('Kills'),
('Deaths'),
('Assists'),
('Gold'),
('Minions'),
('Towers'),
('Dragons'),
('Barons');


INSERT INTO StatistiquesJeux
(idJeu, idStatistique)
VALUES
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Kills') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Deaths') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Assists') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Gold') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Minions') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Towers') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Dragons') ),
( (SELECT idJeu FROM Jeux WHERE nom = 'League of Legends'), (SELECT idStatistique FROM Statistiques WHERE nom = 'Barons') );

COMMIT;