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
  symbol VARCHAR(50) NOT NULL,
  date DATE,
  time TIME,
  fk_playerId INT,

  CONSTRAINT FOREIGN KEY fk_round_player (fk_playerId) REFERENCES player(pk_playerId)


);
