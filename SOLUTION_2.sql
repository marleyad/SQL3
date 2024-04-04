CREATE TABLE Regions (id INT PRIMARY KEY,
                                     name VARCHAR(255) UNIQUE);


CREATE TABLE Users (id INT PRIMARY KEY,
                                   username VARCHAR(255) UNIQUE,
                                                         preferred_region_id INT,
                    FOREIGN KEY (preferred_region_id) REFERENCES Regions(id));


CREATE TABLE Posts (id INT PRIMARY KEY,
                                   title VARCHAR(255), text TEXT, user_id INT, location VARCHAR(255),
                                                                                        region_id INT,
                    FOREIGN KEY (user_id) REFERENCES Users(id),
                    FOREIGN KEY (region_id) REFERENCES Regions(id));


CREATE TABLE Categories (id INT PRIMARY KEY,
                                        name VARCHAR(255) UNIQUE);


CREATE TABLE Post_Categories (post_id INT, category_id INT,
                              FOREIGN KEY (post_id) REFERENCES Posts(id),
                              FOREIGN KEY (category_id) REFERENCES Categories(id),
                                                                   PRIMARY KEY (post_id,
                                                                                category_id));

