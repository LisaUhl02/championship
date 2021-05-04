DROP DATABASE IF EXISTS championship;
CREATE DATABASE IF NOT EXISTS championship;

USE championship;

DROP TABLE IF EXISTS player;
CREATE TABLE IF NOT EXISTS player (
  pk_playerId INT PRIMARY KEY NOT NULL,
  firstName VARCHAR(50) NOT NULL,
  lastName  VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  wins INT,
  gamesInTotal INT
);

DROP TABLE IF EXISTS rounds;
CREATE TABLE IF NOT EXISTS rounds (
  pk_roundId INT PRIMARY KEY NOT NULL,
  date DATE,
  time TIME,
  fk_playerId_1 INT,
  symbolOfPlayer1 VARCHAR(50) NOT NULL,
  fk_playerId_2 INT,
  symbolOfPlayer2 VARCHAR(50) NOT NULL,

  CONSTRAINT FOREIGN KEY fk_round_player1 (fk_playerId_1) REFERENCES player(pk_playerId),
  CONSTRAINT FOREIGN KEY fk_round_player2 (fk_playerId_2) REFERENCES player(pk_playerId)


);


INSERT INTO player VALUES
(1,'Amy', 'Whinehouse', 27, 1,5),
(2,'John', 'Lennon', 45, 2,7);

INSERT INTO rounds VALUES
(1, '2018-05-15','12:30', 1, 'Sissors', 2, 'Paper'),
(2, '2018-05-15','12:40', 1, 'Rock', 2, 'Paper'),
(3, '2018-05-15','12:50', 1, 'Sissors', 2, 'Rock'),
(4, '2018-05-15','13:00', 1, 'Sissors', 2, 'Sissors'),
(5, '2018-05-15','13:10', 1, 'Sissors', 2, 'Paper');

