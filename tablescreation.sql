camper: /project$ psql --username=freecodecamp --dbname=postgres

CREATE DATABASE worldcup;
CREATE TABLE teams();
CREATE TABLE games();
ALTER TABLE teams ADD COLUMN team_id SERIAL  NOT NULL PRIMARY KEY;
ALTER TABLE teams ADD COLUMN name VARCHAR(255) UNIQUE NOT NULL;
ALTER TABLE games ADD COLUMN game_id SERIAL NOT NULL PRIMARY KEY;
ALTER TABLE games ADD COLUMN year INT NOT NULL;
ALTER TABLE games ADD COLUMN round VARCHAR(255) NOT NULL;
ALTER TABLE games ADD COLUMN winner_id INT NOT NULL;
ALTER TABLE games ADD COLUMN opponent_id INT NOT NULL;
ALTER TABLE games ADD COLUMN winner_goals INT NOT NULL;
ALTER TABLE games ADD COLUMN opponent_goals INT NOT NULL;
ALTER TABLE games ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES teams (team_id);
ALTER TABLE games ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES teams (team_id);
\d games;
