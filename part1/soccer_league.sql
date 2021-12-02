DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  ranking TEXT NOT NULL
)

CREATE TABLE players(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  team_id INTEGER REFERENCES teams
)

CREATE TABLE cteams(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
)

CREATE TABLE seasons(
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
)

CREATE TABLE referees(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

CREATE TABLE games(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  date DATE,
  team_id INTEGER REFERENCES teams,
  cteam_id INTEGER REFERENCES cteams,
  season_id INTEGER REFERENCES seasons,
  referee_id INTEGER REFERENCES referees,
)

CREATE TABLE goals(
  id SERIAL PRIMARY KEY,
  player_id INTEGER REFERENCES players,
  game_id INTEGER REFERENCES games,
)



