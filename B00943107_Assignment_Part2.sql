-- creating database
create database if not exists football; 
USE football;

-- Create Club Table
CREATE TABLE Club (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(50) NOT NULL,
    CoachName VARCHAR(50)
);

-- Create Player Table
CREATE TABLE Player (
    PlayerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    ClubID INT,
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

-- Create Match Table
CREATE TABLE Matches(
    MatchID INT PRIMARY KEY,
    HomeClubID INT,
    AwayClubID INT,
    Result VARCHAR(10),
    FOREIGN KEY (HomeClubID) REFERENCES Club(ClubID),
    FOREIGN KEY (AwayClubID) REFERENCES Club(ClubID)
);

-- Create Goal Table
CREATE TABLE Goal (
    GoalID INT PRIMARY KEY,
    PlayerID INT,
    MatchID INT,
    MinuteScored INT,
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);
-- inserting data into club table
INSERT INTO Club (ClubID, ClubName, CoachName) VALUES
(1, 'FC Barcelona', 'Ronald Koeman'),
(2, 'Real Madrid', 'Carlo Ancelotti'),
(3, 'Manchester United', 'Ole Gunnar Solskjær'),
(4, 'Bayern Munich', 'Julian Nagelsmann'),
(5, 'Liverpool FC', 'Jurgen Klopp'),
(6, 'AC Milan', 'Stefano Pioli'),
(7, 'Chelsea FC', 'Thomas Tuchel'),
(8, 'Paris Saint-Germain', 'Mauricio Pochettino'),
(9, 'Juventus', 'Massimiliano Allegri'),
(10, 'Ajax', 'Erik ten Hag'),
(11, 'Borussia Dortmund', 'Marco Rose'),
(12, 'Arsenal FC', 'Mikel Arteta'),
(13, 'Inter Milan', 'Simone Inzaghi'),
(14, 'Atletico Madrid', 'Diego Simeone'),
(15, 'Tottenham Hotspur', 'Nuno Espirito Santo'),
(16, 'AS Roma', 'Jose Mourinho'),
(17, 'Napoli', 'Luciano Spalletti'),
(18, 'Leicester City', 'Brendan Rodgers'),
(19, 'Shakhtar Donetsk', 'Roberto De Zerbi'),
(20, 'Sporting CP', 'Ruben Amorim'),
(21, 'Borussia Mönchengladbach', 'Adi Hütter'),
(22, 'Valencia CF', 'Jose Bordalas'),
(23, 'Benfica', 'Jorge Jesus'),
(24, 'ACF Fiorentina', 'Vincenzo Italiano'),
(25, 'Everton FC', 'Rafael Benitez'),
(26, 'West Ham United', 'David Moyes'),
(27, 'Bayer 04 Leverkusen', 'Gerardo Seoane'),
(28, 'Villarreal CF', 'Unai Emery'),
(29, 'Wolverhampton Wanderers', 'Bruno Lage'),
(30, 'SSC Napoli', 'Luciano Spalletti'),
(31, 'Lazio', 'Maurizio Sarri'),
(32, 'Sevilla FC', 'Julen Lopetegui'),
(33, 'ACF Fiorentina', 'Vincenzo Italiano'),
(34, 'Everton FC', 'Rafael Benitez'),
(35, 'West Ham United', 'David Moyes'),
(36, 'Bayer 04 Leverkusen', 'Gerardo Seoane'),
(37, 'Villarreal CF', 'Unai Emery'),
(38, 'Wolverhampton Wanderers', 'Bruno Lage'),
(39, 'SSC Napoli', 'Luciano Spalletti'),
(40, 'Olympique Lyonnais', 'Peter Bosz'),
(41, 'Ajax', 'Erik ten Hag'),
(42, 'Borussia Mönchengladbach', 'Adi Hütter'),
(43, 'Valencia CF', 'Jose Bordalas'),
(44, 'Benfica', 'Jorge Jesus'),
(45, 'ACF Fiorentina', 'Vincenzo Italiano'),
(46, 'Everton FC', 'Rafael Benitez'),
(47, 'West Ham United', 'David Moyes'),
(48, 'Bayer 04 Leverkusen', 'Gerardo Seoane'),
(49, 'Villarreal CF', 'Unai Emery'),
(50, 'Wolverhampton Wanderers', 'Bruno Lage'),
(51, 'SSC Napoli', 'Luciano Spalletti'),
(52, 'Lazio', 'Maurizio Sarri'),
(53, 'Sevilla FC', 'Julen Lopetegui'),
(54, 'ACF Fiorentina', 'Vincenzo Italiano'),
(55, 'Everton FC', 'Rafael Benitez'),
(56, 'West Ham United', 'David Moyes'),
(57, 'Bayer 04 Leverkusen', 'Gerardo Seoane'),
(58, 'Villarreal CF', 'Unai Emery'),
(59, 'Wolverhampton Wanderers', 'Bruno Lage'),
(60, 'SSC Napoli', 'Luciano Spalletti'),
(61, 'Olympique Lyonnais', 'Peter Bosz'),
(62, 'FC Barcelona', 'Ronald Koeman'),
(63, 'Real Madrid', 'Carlo Ancelotti'),
(64, 'Manchester United', 'Ole Gunnar Solskjær'),
(65, 'Bayern Munich', 'Julian Nagelsmann'),
(66, 'Liverpool FC', 'Jurgen Klopp'),
(67, 'AC Milan', 'Stefano Pioli'),
(68, 'Chelsea FC', 'Thomas Tuchel'),
(69, 'Paris Saint-Germain', 'Mauricio Pochettino'),
(70, 'Juventus', 'Massimiliano Allegri'),
(71, 'Ajax', 'Erik ten Hag'),
(72, 'Borussia Mönchengladbach', 'Adi Hütter'),
(73, 'Valencia CF', 'Jose Bordalas'),
(74, 'Benfica', 'Jorge Jesus'),
(75, 'ACF Fiorentina', 'Vincenzo Italiano'),
(76, 'Everton FC', 'Rafael Benitez'),
(77, 'West Ham United', 'David Moyes'),
(78, 'Bayer 04 Leverkusen', 'Gerardo Seoane'),
(79, 'Villarreal CF', 'Unai Emery'),
(80, 'Wolverhampton Wanderers', 'Bruno Lage'),
(81, 'SSC Napoli', 'Luciano Spalletti'),
(82, 'Lazio', 'Maurizio Sarri'),
(83, 'Sevilla FC', 'Julen Lopetegui'),
(84, 'ACF Fiorentina', 'Vincenzo Italiano'),
(85, 'Everton FC', 'Rafael Benitez'),
(86, 'West Ham United', 'David Moyes'),
(87, 'Bayer 04 Leverkusen', 'Gerardo Seoane'),
(88, 'Villarreal CF', 'Unai Emery'),
(89, 'Wolverhampton Wanderers', 'Bruno Lage'),
(90, 'SSC Napoli', 'Luciano Spalletti'),
(91, 'Olympique Lyonnais', 'Peter Bosz'),
(92, 'FC Barcelona', 'Ronald Koeman'),
(93, 'Real Madrid', 'Carlo Ancelotti'),
(94, 'Manchester United', 'Ole Gunnar Solskjær'),
(95, 'Bayern Munich', 'Julian Nagelsmann'),
(96, 'Liverpool FC', 'Jurgen Klopp'),
(97, 'AC Milan', 'Stefano Pioli'),
(98, 'Chelsea FC', 'Thomas Tuchel'),
(99, 'Paris Saint-Germain', 'Mauricio Pochettino'),
(100, 'Juventus', 'Massimiliano Allegri');

-- inserting data into player table
INSERT INTO Player (PlayerID, FirstName, LastName, Position, ClubID) VALUES
(1, 'Lionel', 'Messi', 'Forward', 1),
(2, 'Cristiano', 'Ronaldo', 'Forward', 2),
(3, 'Neymar', 'Jr', 'Forward', 8),
(4, 'Kevin', 'De Bruyne', 'Midfielder', 5),
(5, 'Robert', 'Lewandowski', 'Striker', 4),
(6, 'Kylian', 'Mbappe', 'Forward', 9),
(7, 'Sergio', 'Ramos', 'Defender', 2),
(8, 'Virgil', 'van Dijk', 'Defender', 5),
(9, 'Mohamed', 'Salah', 'Forward', 5),
(10, 'Joshua', 'Kimmich', 'Midfielder', 4),
(11, 'Eduardo', 'Camavinga', 'Midfielder', 7),
(12, 'Bruno', 'Fernandes', 'Midfielder', 3),
(13, 'Erling', 'Haaland', 'Striker', 11),
(14, 'Jadon', 'Sancho', 'Forward', 11),
(15, 'Ruben', 'Dias', 'Defender', 8),
(16, 'Harry', 'Kane', 'Striker', 15),
(17, 'Romelu', 'Lukaku', 'Striker', 13),
(18, 'Frenkie', 'de Jong', 'Midfielder', 1),
(19, 'Trent', 'Alexander-Arnold', 'Defender', 6),
(20, 'NGolo', 'Kante', 'Midfielder', 7),
(21, 'Luka', 'Modric', 'Midfielder', 2),
(22, 'Raheem', 'Sterling', 'Forward', 5),
(23, 'Bruno', 'Fernandes', 'Midfielder', 3),
(24, 'Erling', 'Haaland', 'Striker', 11),
(25, 'Jadon', 'Sancho', 'Forward', 11),
(26, 'Ruben', 'Dias', 'Defender', 8),
(27, 'Harry', 'Kane', 'Striker', 15),
(28, 'Romelu', 'Lukaku', 'Striker', 13),
(29, 'Gurpreet', 'Singh Sandhu', 'Goalkeeper', 2),
(30, 'Sandesh', 'Jhingan', 'Defender', 3),
(31, 'Anirudh', 'Thapa', 'Midfielder', 4),
(32, 'Udanta', 'Singh', 'Forward', 5),
(33, 'Amrinder', 'Singh', 'Goalkeeper', 6),
(34, 'Pritam', 'Kotal', 'Defender', 7),
(35, 'Ashique', 'Kuruniyan', 'Forward', 8),
(36, 'Subhasish', 'Bose', 'Defender', 9),
(37, 'Rowllin', 'Borges', 'Midfielder', 10),
(38, 'Halicharan', 'Narzary', 'Midfielder', 11),
(39, 'Thongkosiem', 'Haokip', 'Forward', 12),
(40, 'Lallianzuala', 'Chhangte', 'Forward', 13),
(41, 'Brandon', 'Fernandes', 'Midfielder', 14),
(42, 'Sahal', 'Abdul Samad', 'Midfielder', 15),
(43, 'Jerry', 'Lalrinzuala', 'Defender', 16),
(44, 'Pranoy', 'Halder', 'Midfielder', 17),
(45, 'Mandar', 'Rao Desai', 'Defender', 18),
(46, 'Balwant', 'Singh', 'Forward', 19),
(47, 'Jeje', 'Lalpekhlua', 'Forward', 20),
(48, 'Anas', 'Edathodika', 'Defender', 21),
(49, 'Narayan', 'Das', 'Defender', 22),
(50, 'Sumeet', 'Passi', 'Forward', 23),
(51, 'Farukh', 'Choudhary', 'Forward', 24),
(52, 'Vinit', 'Rai', 'Midfielder', 25),
(53, 'Lalengmawia', 'Ralte', 'Midfielder', 26),
(54, 'Amarjit', 'Singh Kiyam', 'Midfielder', 27),
(55, 'Keisuke', 'Honda', 'Midfielder', 23),
(56, 'Yuto', 'Nagatomo', 'Defender', 24),
(57, 'Takashi', 'Inui', 'Forward', 23),
(58, 'Maya', 'Yoshida', 'Defender', 24),
(59, 'Shoya', 'Nakajima', 'Forward', 23),
(60, 'Eiji', 'Kawashima', 'Goalkeeper', 24),
(61, 'Daichi', 'Kamada', 'Midfielder', 23),
(62, 'Yuya', 'Osako', 'Forward', 24),
(63, 'Gaku', 'Shibasaki', 'Midfielder', 23),
(64, 'Christian', 'Pulisic', 'Forward', 25),
(65, 'Weston', 'McKennie', 'Midfielder', 26),
(66, 'Tyler', 'Adams', 'Midfielder', 27),
(67, 'Zack', 'Steffen', 'Goalkeeper', 28),
(68, 'Sergino', 'Dest', 'Defender', 25),
(69, 'Josh', 'Sargent', 'Forward', 26),
(70, 'Giovanni', 'Reyna', 'Midfielder', 27),
(71, 'Hwang', 'Hee-chan', 'Forward', 29),
(72, 'Son', 'Heung-min', 'Forward', 30),
(73, 'Ki', 'Sung-yueng', 'Midfielder', 31),
(74, 'Kim', 'Min-jae', 'Defender', 32),
(75, 'Lee', 'Kang-in', 'Midfielder', 33),
(76, 'Cho', 'Hyun-woo', 'Goalkeeper', 34),
(77, 'Hwang', 'Ui-jo', 'Forward', 35),
(78, 'Koo', 'Jae-cheol', 'Midfielder', 36),
(79, 'Kim', 'Young-gwon', 'Defender', 37),
(80, 'Lee', 'Yong', 'Defender', 38),
(81, 'Moon', 'Hwan', 'Defender', 39),
(82, 'Gyasi', 'Zardes', 'Forward', 28),
(83, 'DeAndre', 'Yedlin', 'Defender', 25),
(84, 'Ethan', 'Horvath', 'Goalkeeper', 26),
(85, 'Matt', 'Miazga', 'Defender', 27),
(86, 'Lee', 'Jeong-hyeop', 'Forward', 40),
(87, 'Kwon', 'Chang-hoon', 'Midfielder', 41),
(88, 'Park', 'Ji-sung', 'Midfielder', 42),
(89, 'Ji', 'Dong-won', 'Forward', 43),
(90, 'Hwang', 'Hee-chan', 'Forward', 44),
(91, 'Son', 'Heung-min', 'Forward', 45),
(92, 'Ki', 'Sung-yueng', 'Midfielder', 46),
(93, 'Kim', 'Min-jae', 'Defender', 47),
(94, 'Lee', 'Kang-in', 'Midfielder', 48),
(95, 'Cho', 'Hyun-woo', 'Goalkeeper', 49),
(96, 'Hwang', 'Ui-jo', 'Forward', 50);

-- inserting data into matches table
INSERT INTO Matches (MatchID, HomeClubID, AwayClubID, Result)
VALUES
    (26, 1, 3, '1-2'),
    (27, 2, 3, '2-0'),
    (28, 3, 1, '3-2'),
    (29, 2, 1, '1-0'),
    (30, 1, 2, '2-2'),
    (31, 3, 2, '4-1'),
    (32, 1, 3, '0-1'),
    (33, 2, 3, '2-1'),
	(34, 4, 5, '3-1'),
    (35, 5, 4, '2-0'),
    (36, 6, 4, '1-1'),
    (37, 7, 6, '3-2'),
    (38, 8, 7, '0-0'),
    (39, 9, 8, '4-1'),
    (40, 10, 9, '2-1'),
    (41, 11, 10, '1-0'),
    (42, 12, 11, '2-2'),
    (43, 13, 12, '3-1'),
    (44, 14, 13, '0-0'),
    (45, 15, 14, '4-3'),
    (46, 16, 15, '1-2'),
    (47, 17, 16, '2-0'),
    (48, 18, 17, '3-2'),
    (49, 19, 18, '1-0'),
    (50, 20, 19, '2-2'),
    (51, 21, 20, '4-1'),
    (52, 22, 21, '0-1'),
    (53, 23, 22, '2-1'),
	(54, 8, 6, '2-1'),
    (55, 10, 7, '1-0'),
    (56, 12, 8, '3-3'),
    (57, 14, 9, '2-1'),
    (58, 16, 10, '0-0'),
    (59, 18, 11, '3-1'),
    (60, 20, 12, '1-0'),
    (61, 22, 13, '4-2'),
    (62, 24, 14, '2-1'),
    (63, 26, 15, '0-1'),
    (64, 28, 16, '3-2'),
    (65, 30, 17, '2-0'),
    (66, 32, 18, '1-1'),
    (67, 34, 19, '4-3'),
    (68, 36, 20, '2-0'),
    (69, 38, 21, '3-2'),
    (70, 40, 22, '1-0'),
    (71, 42, 23, '2-2'),
    (72, 44, 24, '4-1'),
    (73, 46, 25, '0-1'),
	(74, 9, 14, '2-1'),
    (75, 11, 15, '1-0'),
    (76, 13, 16, '3-3'),
    (77, 15, 17, '2-1'),
    (78, 17, 18, '0-0'),
    (79, 19, 19, '3-1'),
    (80, 21, 20, '1-0'),
    (81, 23, 21, '4-2'),
    (82, 25, 22, '2-1'),
    (83, 27, 23, '0-1'),
    (84, 29, 24, '3-2'),
    (85, 31, 25, '2-0'),
    (86, 33, 26, '1-1'),
    (87, 35, 27, '4-3'),
    (88, 37, 28, '2-0'),
    (89, 39, 29, '3-2'),
    (90, 41, 30, '1-0'),
    (91, 43, 31, '2-2'),
    (92, 45, 32, '4-1'),
    (93, 47, 33, '0-1'),
    (94, 49, 34, '3-1'),
    (95, 51, 35, '1-0'),
    (96, 53, 36, '2-1'),
    (97, 55, 37, '3-2'),
    (98, 57, 38, '2-0'),
    (99, 59, 39, '1-1'),
    (100, 61, 40, '4-3'),
    (101, 63, 41, '2-0'),
    (102, 65, 42, '3-2'),
    (103, 67, 43, '1-0');
    
    -- inserting data into goal table
    
    INSERT INTO Goal (GoalID, PlayerID, MatchID, MinuteScored)
VALUES
    (1, 1, 26, 35),
    (2, 2, 26, 60),
    (3, 3, 27, 15),
    (4, 4, 27, 42),
    (5, 5, 28, 7),
    (6, 6, 28, 88),
    (7, 7, 29, 19),
    (8, 8, 29, 55),
    (9, 9, 30, 3),
    (10, 10, 30, 77),
    (11, 11, 31, 25),
    (12, 12, 31, 60),
    (13, 13, 32, 50),
    (14, 14, 32, 78),
    (15, 15, 33, 13),
    (16, 16, 33, 46),
    (17, 17, 34, 65),
    (18, 18, 34, 89),
    (19, 19, 35, 30),
    (20, 20, 35, 59),
    (21, 21, 36, 10),
    (22, 22, 36, 45),
    (23, 23, 37, 22),
    (24, 24, 37, 80),
    (25, 25, 38, 5),
    (26, 26, 38, 63),
    (27, 27, 39, 40),
    (28, 28, 39, 70),
    (29, 29, 40, 18),
    (30, 30, 40, 55),
     (31, 1, 41, 14),
    (32, 2, 41, 59),
    (33, 3, 42, 33),
    (34, 4, 42, 72),
    (35, 5, 43, 25),
    (36, 6, 43, 60),
    (37, 7, 44, 10),
    (38, 8, 44, 45),
    (39, 9, 45, 5),
    (40, 10, 45, 80),
    (41, 11, 46, 20),
    (42, 12, 46, 50),
    (43, 13, 47, 40),
    (44, 14, 47, 78),
    (45, 15, 48, 15),
    (46, 16, 48, 46),
    (47, 17, 49, 65),
    (48, 18, 49, 89),
    (49, 19, 50, 30),
    (50, 20, 50, 59),
    (51, 21, 51, 10),
    (52, 22, 51, 45),
    (53, 23, 52, 22),
    (54, 24, 52, 80),
    (55, 25, 53, 5),
    (56, 26, 53, 63),
    (57, 27, 54, 40),
    (58, 28, 54, 70),
    (59, 29, 55, 18),
    (60, 30, 55, 55);
    
-- Sample Queries --

-- 1)  SELECT from a single table with a WHERE clause, producing a derived attribute.
use football;
SELECT
    PlayerID,
    FirstName,
    LastName
FROM
    Player
WHERE
    Position = 'Forward';
    -- this query returns all the players who play as a forward
    -- 30 rows are returned

-- 2) A NATURAL, INNER, or OUTER JOIN between two of your tables.

 SELECT
    Player.PlayerID,
    Player.FirstName,
    Player.LastName,
    Player.Position,
    Matches.MatchID,
    Matches.HomeClubID,
    Matches.AwayClubID,
    Club.ClubName AS HomeClubName,
    AwayClub.ClubName AS AwayClubName
FROM
    Player
NATURAL JOIN
    Goal
NATURAL JOIN
    Matches
JOIN
    Club ON Matches.HomeClubID = Club.ClubID
JOIN
    Club AS AwayClub ON Matches.AwayClubID = AwayClub.ClubID;
    
-- We use a NATURAL JOIN between "Player" and "Goal" to connect players with the goals they scored.
-- We then use another NATURAL JOIN between "Goal" and "Matches" to link goals with the matches.
-- Finally, we use JOIN to connect the "Matches" table with the "Club" table twice (once for the home club and once for the away club).
-- 60 rows are returned from this query

-- 3) A query covering one or more tables that uses a GROUP BY statement on at least one of your variables.

SELECT
    Player.PlayerID,
    Player.FirstName,
    Player.LastName,
    COUNT(Goal.GoalID) AS GoalsScored
FROM
    Player
LEFT JOIN
    Goal ON Player.PlayerID = Goal.PlayerID
GROUP BY
    Player.PlayerID, Player.FirstName, Player.LastName
ORDER BY
    GoalsScored DESC;

-- We use the GROUP BY statement to group the results by player based on their ID, first name, and last name.
-- The ORDER BY GoalsScored DESC sorts the result set in descending order based on the number of goals scored.
-- This query returns the number of goals scored by each player and returns 96 rows.

-- -----Thank you----- --





    
    
    

    