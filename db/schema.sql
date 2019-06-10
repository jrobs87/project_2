-- DROP DATABASE [IF EXISTS] pawnder_db;
CREATE DATABASE pawnder_db;
USE pawnder_db;

DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs
(
    dog_name varchar(255) NOT NULL,
    dog_id INT NOT NULL AUTO_INCREMENT,
    yard BOOLEAN DEFAULT true,
    other_dogs BOOLEAN DEFAULT true,
    kids BOOLEAN DEFAULT true,
    PRIMARY KEY (dog_id)
);

DROP TABLE IF EXISTS humans;
CREATE TABLE humans
(
    id INT NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    dog_match_1 INT(4),
    dog_match_2 INT(4),
    dog_match_3 INT(4),
    dog_match_4 INT(4),
    dog_match_5 INT(4),
    prefs INT(4),
    PRIMARY KEY (id),
    FOREIGN KEY (dog_match_1) REFERENCES dogs(dog_id),
    FOREIGN KEY (dog_match_2) REFERENCES dogs(dog_id),
    FOREIGN KEY (dog_match_3) REFERENCES dogs(dog_id),
    FOREIGN KEY (dog_match_4) REFERENCES dogs(dog_id),
    FOREIGN KEY (dog_match_5) REFERENCES dogs(dog_id),
    FOREIGN KEY (prefs) REFERENCES human_prefs(prefs_id)
);

DROP TABLE IF EXISTS human_prefs;
CREATE TABLE human_prefs
(
    prefs_id INT NOT NULL AUTO_INCREMENT,
    yard BOOLEAN DEFAULT true,
    other_dogs BOOLEAN DEFAULT true,
    kids BOOLEAN DEFAULT true,
    PRIMARY KEY (prefs_id)
);