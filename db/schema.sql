DROP DATABASE IF EXISTS pawnder_db;
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
    size VARCHAR(6) NOT NULL,
    PRIMARY KEY (dog_id)
);


-- DROP TABLE IF EXISTS human_prefs;
-- CREATE TABLE human_prefs
-- (
--     prefs_id INT NOT NULL AUTO_INCREMENT,
--     yard BOOLEAN DEFAULT true,
--     other_dogs BOOLEAN DEFAULT true,
--     kids BOOLEAN DEFAULT true,
--     small BOOLEAN DEFAULT true,
--     medium BOOLEAN DEFAULT true,
--     large BOOLEAN DEFAULT true,
--     PRIMARY KEY (prefs_id)
-- );

DROP TABLE IF EXISTS humans;
CREATE TABLE humans
(
    id INT NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS matches;
CREATE TABLE matches
(
    human_id INT(4) NOT NULL,
    dog_id INT(4) NOT NULL,
    FOREIGN KEY (human_id) REFERENCES humans(id),
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id)
);