INSERT INTO Participants
(matricule, prenom, nom, dateCreation)
VALUES
('1081849', 'Deanna', 'Fields', NOW()),
('1081850', 'Ralph', 'Ralph', NOW()),
('1081851', 'Lilah', 'Taylor', NOW()),
('1165866', 'Sage', 'Dawson', NOW()),
('1081852', 'Hector', 'Lloyd', NOW()),
('1081853', 'Moana', 'Reynolds', NOW()),
('1081854', 'Graham', 'Clark', NOW()),
('1081855', 'Miriam', 'Mack', NOW()),
('1081856', 'Sybill', 'Mays', NOW()),
('1081857', 'Reece', 'Griffin', NOW()),
('1081858', 'Kasper', 'Bailey', NOW()),
('1081859', 'Shay', 'Dyer', NOW()),
('1081860', 'Quentin', 'Randolph', NOW()),
('1081861', 'Craig', 'Hebert', NOW()),
('1081862', 'Sarah', 'Lyons', NOW()),
('1081863', 'Zeus', 'Patton', NOW()),
('1081864', 'Cullen', 'Craft', NOW()),
('1081865', 'Maxine', 'Burks', NOW()),
('1081866', 'Yuri', 'Mullen', NOW()),
('1081867', 'Emmanuel', 'Olson', NOW()),
('1081868', 'Nelle', 'Rogers', NOW()),
('1081869', 'Peter', 'Navarro', NOW()),
('1081870', 'Aquila', 'Hooper', NOW()),
('1081871', 'Deanna', 'Cox', NOW()),
('1081872', 'Armand', 'Payne', NOW()),
('1081873', 'Jaime', 'Lynn', NOW()),
('1081874', 'Maggy', 'Blake', NOW()),
('1081875', 'Ashton', 'Acevedo', NOW()),
('1081876', 'Kieran', 'Massey', NOW()),
('1081877', 'September', 'Fuentes', NOW()),
('1081878', 'Gloria', 'Hess', NOW()),
('1081879', 'Lee', 'Hendrix', NOW()),
('1081880', 'Tucker', 'Buckley', NOW()),
('1081881', 'Candice', 'Ingram', NOW()),
('1081882', 'Alisa', 'Wilkinson', NOW()),
('1081883', 'Amos', 'Nunez', NOW()),
('1081884', 'Kitra', 'Sandoval', NOW()),
('1081885', 'Jerry', 'Ortega', NOW()),
('1081886', 'Guy', 'Moody', NOW()),
('1081887', 'Raymond', 'Maxwell', NOW()),
('1081888', 'April', 'Armstrong', NOW()),
('1081889', 'Erich', 'Lott', NOW()),
('1081890', 'Aquila', 'Bean', NOW()),
('1081891', 'Jack', 'Montgomery', NOW()),
('1081892', 'Jemima', 'Greer', NOW());


INSERT INTO Tournois
(idJeu, idCompte, nom, minJoueur, maxJoueurParEquipe, minJoueurParEquipe, dateEvenement, description, enCours, dateCreation)
VALUES
(1, 1, 'Tournois LOL hiver 2016', 20, 6, 5, '2016-12-09', 'Tournois de League of Legends Hiver 2016. Prix 25$ chez pizza-max au gagant.', true, NOW());


INSERT INTO Prix
(nom)
VALUES
('25$ chez PizzaMax'),
('Une tappe dans le dos'),
('Un déjeuner gratuit chez Cora');

INSERT INTO PrixTournois
(idPrix, idTournoi)
VALUES
(1,1),
(2,1),
(3,1);


INSERT INTO Equipes
(idTournoi, nom, dateEnregistrement)
VALUES
(1, 'Dread Tacos', NOW()),
(1, 'Don\'t ban Irvan', NOW()),
(1, 'Team Duo Top', NOW()),
(1, 'The Mythical Patriots', NOW()),
(1, 'Ryze of the Arabs', NOW()),
(1, 'TopKek', NOW()),
(1, 'Team Humongous', NOW()),
(1, 'Make Memes Great Again', NOW()),
(1, 'The Tears Collectors', NOW());

INSERT INTO EquipesParticipants
(idEquipe, idParticipant)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),

(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),

(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),

(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),

(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),

(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),

(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),

(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),

(9, 41),
(9, 42),
(9, 43),
(9, 44),
(9, 45);


INSERT INTO JeuxComptes
(idParticipant, nomCompte, idJeu, dateCreation)
VALUES
(1, 'FallenRappa', 1, NOW()),
(2, 'FallsAngels', 1, NOW()),
(3, 'FantasyKiddo', 1, NOW()),
(4, 'FantasyNephew', 1, NOW()),
(5, 'Featureamet', 1, NOW()),

(6, 'Findotcor', 1, NOW()),
(7, 'ForbCrayon', 1, NOW()),
(8, 'Funfalkin', 1, NOW()),
(9, 'Garcurni', 1, NOW()),
(10, 'GazerChamp', 1, NOW()),

(11, 'GirlUpperSablink', 1, NOW()),
(12, 'Glacentwend', 1, NOW()),
(13, 'Glioredm', 1, NOW()),
(14, 'GoReady', 1, NOW()),
(15, 'GreeHoopDancer', 1, NOW()),

(16, 'Gristellu', 1, NOW()),
(17, 'GrundyRun', 1, NOW()),
(18, 'Grundystab', 1, NOW()),
(19, 'Gurlyasiali', 1, NOW()),
(20, 'Hagespec', 1, NOW()),

(21, 'Harovisian', 1, NOW()),
(22, 'Hinchemax', 1, NOW()),
(23, 'HoopGoofyWeird', 1, NOW()),
(24, 'Hottencept', 1, NOW()),
(25, 'Iansyndmont', 1, NOW()),

(26, 'IdolWzy', 1, NOW()),
(27, 'Impossman', 1, NOW()),
(28, 'Inbolint', 1, NOW()),
(29, 'Indshawk', 1, NOW()),
(30, 'InsiderMellow', 1, NOW()),

(31, 'Inspiressac', 1, NOW()),
(32, 'InterestKid', 1, NOW()),
(33, 'IntincrWicked', 1, NOW()),
(34, 'Jreenyonet', 1, NOW()),
(35, 'JuzKaptain', 1, NOW()),

(36, 'Juzmstona', 1, NOW()),
(37, 'KatMew', 1, NOW()),
(38, 'KinFreakSummary', 1, NOW()),
(39, 'LaoShiya', 1, NOW()),
(40, 'Latickfr', 1, NOW()),

(41, 'Laverghbo', 1, NOW()),
(42, 'Leonext', 1, NOW()),
(43, 'Limenterad', 1, NOW()),
(44, 'Logynyip', 1, NOW()),
(45, 'Longczakt', 1, NOW());

COMMIT;