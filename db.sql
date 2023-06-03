CREATE TABLE player (
  playerID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name VARCHAR(255),
  role VARCHAR(25),
  gamesPlayed INTEGER,
  avgKDA DOUBLE,
  avgCSR DOUBLE
);

INSERT INTO player VALUES (1, 'Jerry', 'Top', 35, 2.7, 8.4);
INSERT INTO player VALUES (2, 'Barry', 'Jungle', 42, 3.5, 7.8);
INSERT INTO player VALUES (3, 'Mike', 'Mid', 38, 4.1, 9.2);
INSERT INTO player VALUES (4, 'Tyson', 'ADC', 29, 3.8, 8.6);
INSERT INTO player VALUES (5, 'Nicolas', 'Support', 33, 2.9, 9.1);
INSERT INTO player VALUES (6, 'Rachel', 'Top', 41, 3.3, 8.8);
INSERT INTO player VALUES (7, 'Chris', 'Jungle', 37, 2.8, 7.5);
INSERT INTO player VALUES (8, 'Jennifer', 'Mid', 28, 3.9, 9.5);
INSERT INTO player VALUES (9, 'Tate', 'ADC', 31, 4.2, 8.9);
INSERT INTO player VALUES (10, 'Jessica', 'Support', 30, 2.5, 9.3);

CREATE TABLE champion (
championID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name VARCHAR(255),
skin VARCHAR(255),
winrate DOUBLE,
banrate DOUBLE,
pickrate DOUBLE,
lossrate DOUBLE
);

INSERT INTO champion VALUES (1, 'Ashe', 'Classic', 0.52, 0.08, 0.15, 0.35);
INSERT INTO champion VALUES (2, 'Akali', 'KDA', 0.48, 0.23, 0.20, 0.27);
INSERT INTO champion VALUES (3, 'Caitlyn', 'Pulsefire', 0.49, 0.07, 0.18, 0.32);
INSERT INTO champion VALUES (4, 'Darius', 'God-King', 0.51, 0.14, 0.12, 0.37);
INSERT INTO champion VALUES (5, 'Ezreal', 'Arcade', 0.54, 0.10, 0.25, 0.30);
INSERT INTO champion VALUES (6, 'Fiora', 'Royal Guard', 0.47, 0.12, 0.11, 0.39);
INSERT INTO champion VALUES (7, 'Garen', 'Steel Legion', 0.55, 0.18, 0.16, 0.29);
INSERT INTO champion VALUES (8, 'Jinx', 'Firecracker', 0.50, 0.11, 0.20, 0.30);
INSERT INTO champion VALUES (9, 'Katarina', 'Battle Academia', 0.46, 0.22, 0.17, 0.35);
INSERT INTO champion VALUES (10, 'Lee Sin', 'Dragon Fist', 0.53, 0.09, 0.22, 0.28);

CREATE TABLE maker (
makerID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name VARCHAR(255)
);

INSERT INTO maker VALUES (1, 'Ichigo Kurosaki');
INSERT INTO maker VALUES (2, 'Retsu Unohana');
INSERT INTO maker VALUES (3, 'Lebron Games');
INSERT INTO maker VALUES (4, 'Daryl Bills');
INSERT INTO maker VALUES (5, 'Mike Tyson');
INSERT INTO maker VALUES (6, 'Naruto Uzumaki');
INSERT INTO maker VALUES (7, 'Jerry Springer');
INSERT INTO maker VALUES (8, 'Guts Thorfinn');
INSERT INTO maker VALUES (9, 'Creed Aventus');
INSERT INTO maker VALUES (10, 'Obito Uchiha');


CREATE TABLE team (
  teamID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name VARCHAR(255) NOT NULL,
  region VARCHAR(255) NOT NULL,
  gamesPlayed INTEGER,
  winrate DOUBLE,
  lossrate DOUBLE,
  avgGameDuration DOUBLE,
  avgDragonsSlaughtered INTEGER);

  INSERT INTO team VALUES (1, 'Ace', 'NA', 421, 50.77, 49.22, 2.45, 2);
  INSERT INTO team VALUES (2, 'TSM', 'KR', 213, 48.98, 51.01, 4.45, 3);
  INSERT INTO team VALUES (3, 'Immortals', 'EU', 483, 50.77, 49.22, 3.53, 4);
  INSERT INTO team VALUES (4, 'GenG', 'RU', 123, 61.00, 39.00, 5.09, 5);
  INSERT INTO team VALUES (5, 'Invictus', 'TR', 832, 75.55, 24.44, 3.45, 3);
  INSERT INTO team VALUES (6, 'Akafr', 'NA', 165, 67.77, 32.22, 3.43, 4);
  INSERT INTO team VALUES (7, 'Fathomable', "NA", 547, 55.00, 45.00, 1.92, 2);
  INSERT INTO team VALUES (8, 'Never', "TR", 90, 45.12, 54.87, 4.78, 2);
  INSERT INTO team VALUES (9, 'Clutch', 'RU', 571, 55.71, 44.28, 2.94, 4);
  INSERT INTO team VALUES (10, 'Clouds', 'KR', 145, 60.00, 40.00 , 2.15, 5);


CREATE TABLE contest (
 contestID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 name VARCHAR(255),
 region VARCHAR(255),
 numberOfGames INTEGER,
 purse INTEGER
);

INSERT INTO contest VALUES (1, 'SoulSociety', 'NA', 40,500000);
INSERT INTO contest VALUES (2, 'LeafVillage', 'KR', 31,100000);
INSERT INTO contest VALUES (3, 'CloudVillage', 'EU', 84,1000000);
INSERT INTO contest VALUES (4, 'Vinland', 'RU', 93,5000000);
INSERT INTO contest VALUES (5, 'Stella', 'TR', 103,10000000);
INSERT INTO contest VALUES (6, 'Eden', 'NA', 23,500000);
INSERT INTO contest VALUES (7, 'Ragnarok', 'NA', 18,25000);
INSERT INTO contest VALUES (8, 'GoldenTime', 'TR', 91,5000000);
INSERT INTO contest VALUES (9, 'Jujutsu', 'RU', 34,50000);
INSERT INTO contest VALUES (10, 'Pain', 'KR', 76,500000);

CREATE TABLE game (
 gameID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 teamsInvolved VARCHAR(255),
 duration DOUBLE,
 totalKills INTEGER,
 totalDeaths INTEGER);

INSERT INTO game VALUES (1, 'Ace and TSM', 3.24, 23, 32);
INSERT INTO game VALUES (2, 'Immortals and GenG', 5.23, 83, 92);
INSERT INTO game VALUES (3, 'Akafr and Ace', 1.84, 4, 43);
INSERT INTO game VALUES (4, 'Clutch and Clouds', 7.21, 7, 12);
INSERT INTO game VALUES (5, 'Clouds and Never', 5.43, 57, 7);
INSERT INTO game VALUES (6, 'Fathomable and Never', 1.73, 93, 82);
INSERT INTO game VALUES (7, 'Akafr and Clutch', 7.21, 43, 91);
INSERT INTO game VALUES (8, 'Invictus and Immortals', 6.43, 63, 17);
INSERT INTO game VALUES (9, 'Never and Clutch', 1.65, 33, 82);
INSERT INTO game VALUES (10, 'TSM and Clouds', 4.32, 27, 13);

CREATE TABLE player_plays_champion (
playID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
player_ID INTEGER,
champion_ID INTEGER,
CONSTRAINT fk_player_ID FOREIGN KEY (player_ID) REFERENCES player(playerID)
CONSTRAINT fk_champion_ID FOREIGN KEY (champion_ID) REFERENCES champion(championID)
);

CREATE TABLE maker_makes_champion (
makeID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
maker_ID INTEGER,
champion_ID INTEGER,
CONSTRAINT fk_designer_id FOREIGN KEY (maker_ID) REFERENCES maker(makerID)
CONSTRAINT fk_champion_id FOREIGN KEY (champion_ID) REFERENCES champion(championID)
);

CREATE TABLE team_has_player (
teamplayerID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
team_ID INTEGER,
player_ID INTEGER,
CONSTRAINT fk_team_ID FOREIGN KEY (team_ID) REFERENCES team(teamID),
CONSTRAINT fk_player_ID FOREIGN KEY (player_ID) REFERENCES player(playerID));

CREATE TABLE contest_has_team (
contestTeamID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
contest_ID INTEGER,
team_ID INTEGER,
CONSTRAINT fk_contest_ID FOREIGN KEY (contest_ID) REFERENCES contest(contestID),
CONSTRAINT fk_team_ID FOREIGN KEY (team_ID) REFERENCES team(teamID));

CREATE TABLE contest_holds_game (
contestGameID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
contest_ID INTEGER,
game_ID INTEGER,
CONSTRAINT fk_contest_ID FOREIGN KEY (contest_ID) REFERENCES contest(contestID),
CONSTRAINT fk_game_ID FOREIGN KEY (game_ID) REFERENCES game(gameID));

QUERIES:

1. Which players have a Kill-Death-Ratio higher than 2?

SELECT * FROM player
WHERE avgKDA > 2

2. Which players have a Creep-Score-Ratio higher than 5?

SELECT * FROM player
WHERE avgCSR > 5

3. What role has the most games played?

SELECT role FROM player
WHERE MAX(gamesPlayed) AS MaxgamesPlayed FROM player

4. Which champion has the highest pick rate?

SELECT name FROM champion
WHERE MAX(pickrate) AS MaxPickRate FROM champion

5. Which skin has the highest win rate?

SELECT skin from champion
WHERE MAX(winrate) AS MaxWinRate FROM champion

6. Which champion has the lowest ban rate?

SELECT name FROM champion
WHERE MIN(banrate) AS MinBanRate FROM champion

7. Which team has more than 2 average dragons slaughtered?

SELECT name FROM team
WHERE avgDragonsSlaughtered > 2

8. Which team has the lowest average game duration?

SELECT name FROM team
WHERE MIN(avgGameDuration) AS MinAvgGameDuration FROM team

9. What region is the team from that has the highest winrate?

SELECT region FROM team
WHERE MAX(lossrate) AS MaxLossRate FROM team

10. What region has the shortest game?

SELECT region FROM team
WHERE MIN(avgGameDuration) AS MinAvgGameDuration FROM team

11. Change the team name of Akafr to Akafrf

UPDATE team SET name = 'Akafrf'
WHERE name = 'Akafr'

12. What contest offers the highest purse?

SELECT name FROM contest
WHERE MAX(purse) AS MaxPurse

13. How many contests were held in TR region?

SELECT COUNT(name) AS numberOfTRContests FROM contest
WHERE region = 'TR'

14. Which games had more than 50 kills?

SELECT teamsInvolved FROM game
WHERE totalKills > 50

15. Which game had more than 30 deaths?

SELECT teamsInvolved FROM game
WHERE totalDeaths > 30




