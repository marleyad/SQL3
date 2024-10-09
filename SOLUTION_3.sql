CREATE TABLE Teams ( id INT PRIMARY KEY,
                                    name VARCHAR(255),
                                         league_id INT,
                    FOREIGN KEY (league_id) REFERENCES Leagues(id));


CREATE TABLE Players ( id INT PRIMARY KEY,
                                      name VARCHAR(255),
                                           team_id INT,
                      FOREIGN KEY (team_id) REFERENCES Teams(id));


CREATE TABLE Goals ( id INT PRIMARY KEY,
                                    player_id INT, game_id INT,
                    FOREIGN KEY (player_id) REFERENCES Players(id),
                    FOREIGN KEY (game_id) REFERENCES Games(id));


CREATE TABLE Referees ( id INT PRIMARY KEY,
                                       name VARCHAR(255));


CREATE TABLE Matches ( id INT PRIMARY KEY,
                                      home_team_id INT, away_team_id INT, referee_id INT, start_date DATE, end_date DATE,
                      FOREIGN KEY (home_team_id) REFERENCES Teams(id),
                      FOREIGN KEY (away_team_id) REFERENCES Teams(id),
                      FOREIGN KEY (referee_id) REFERENCES Referees(id));


CREATE TABLE Leagues ( id INT PRIMARY KEY, 
                                      name VARCHAR(255));


CREATE TABLE Standings ( id INT PRIMARY KEY,
                                        team_id INT, league_id INT, points INT, rank INT,
                        FOREIGN KEY (team_id) REFERENCES Teams(id),
                        FOREIGN KEY (league_id) REFERENCES Leagues(id));

