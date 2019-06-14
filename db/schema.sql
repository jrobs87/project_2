DROP DATABASE IF EXISTS pawnder_db;
CREATE DATABASE pawnder_db;
USE pawnder_db;

DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs
(
    dog_id INT NOT NULL AUTO_INCREMENT,
    dog_name varchar(255) NOT NULL,
    PRIMARY KEY (dog_id)
);

DROP TABLE IF EXISTS dogs_links;
CREATE TABLE dogs_links
(
    dogs_links_id INT(4) AUTO_INCREMENT,
    profile_url VARCHAR(255) NOT NULL,
    profile_image VARCHAR(255) NOT NULL,
    PRIMARY KEY (dogs_links_id)
);

DROP TABLE IF EXISTS dogs_stats;
CREATE TABLE dogs_stats
(
    FK_dog_id INT NOT NULL,
    yard BOOLEAN DEFAULT true,
    other_pets BOOLEAN DEFAULT true,
    kids BOOLEAN DEFAULT true,
    female BOOLEAN NOT NULL,
    size VARCHAR(6) NOT NULL,
    
    FK_dogs_links_id INT NOT NULL,

    FOREIGN KEY (FK_dog_id) REFERENCES dogs(dog_id),
    FOREIGN KEY (FK_dogs_links_id) REFERENCES dogs_links(dogs_links_id)
);


DROP TABLE IF EXISTS human_prefs;
CREATE TABLE human_prefs
(
    prefs_id INT NOT NULL AUTO_INCREMENT,
    yard BOOLEAN DEFAULT true,
    other_pets BOOLEAN DEFAULT false,
    kids BOOLEAN DEFAULT true,
    female BOOLEAN ,
    small BOOLEAN DEFAULT true,
    medium BOOLEAN DEFAULT true,
    large BOOLEAN DEFAULT true,
    PRIMARY KEY (prefs_id)
);

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
    FK_human_id INT(4) NOT NULL,
    FK_dog_id INT(4) NOT NULL,
    FOREIGN KEY (FK_human_id) REFERENCES humans(id),
    FOREIGN KEY (FK_dog_id) REFERENCES dogs(dog_id)
);