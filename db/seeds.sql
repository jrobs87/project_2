
-- Template for adding dogs to a persons interests
-- update humans set dog_match_1=1 WHERE id = 1;

-- Template for adding a new person with a dog interest
-- INSERT INTO humans (name, password, dog_match_1) VALUES ('', '', int);

INSERT INTO dogs (dog_name) VALUES ('Bayley');
INSERT INTO dogs (dog_name) VALUES ('Emmett');
INSERT INTO dogs (dog_name) VALUES ('Spot');
INSERT INTO dogs (dog_name) VALUES ('Lassie');
INSERT INTO dogs (dog_name) VALUES ('StanMan');
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Stephen', true, true, true, true, false, false, true);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Twinkle', false, false, true, true, true, false, false);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Tough', true, true, true, true, false, true, false);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Dakota', false, false, true, false, false, false, true);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Ariel', true, true, true, true, true, false, false);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Bark', true, true, true, true, false, true, false);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Max', false, false, true, true, false, false, true);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Crosby', true, true, true, true, true, false, false);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Matcha', false, false, true, false, false, true, false);
-- INSERT INTO dogs (dog_name, yard, other_pets, kids, female) VALUES ('Derek', true, true, true, true, true, false, false);

INSERT INTO dogs_links (profile_url, profile_image) VALUES ("https://www.petfinder.com/dog/hunter-44955346/ga/atlanta/atlanta-lab-rescue-ga508/", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44955346/1/?bust=1560494989&width=1080");
INSERT INTO dogs_links (profile_url, profile_image) VALUES ("https://www.petfinder.com/dog/hunter-44955346/ga/atlanta/atlanta-lab-rescue-ga508/", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44955346/1/?bust=1560494989&width=1080");
INSERT INTO dogs_links (profile_url, profile_image) VALUES ("https://www.petfinder.com/dog/hunter-44955346/ga/atlanta/atlanta-lab-rescue-ga508/", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44955346/1/?bust=1560494989&width=1080");
INSERT INTO dogs_links (profile_url, profile_image) VALUES ("https://www.petfinder.com/dog/hunter-44955346/ga/atlanta/atlanta-lab-rescue-ga508/", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44955346/1/?bust=1560494989&width=1080");
INSERT INTO dogs_links (profile_url, profile_image) VALUES ("https://www.petfinder.com/dog/hunter-44955346/ga/atlanta/atlanta-lab-rescue-ga508/", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44955346/1/?bust=1560494989&width=1080");

INSERT INTO dogs_stats (FK_dog_id, yard, other_pets, kids, female, size, FK_dogs_links_id) VALUES (1, true, true, true, false, "small", 3);
INSERT INTO dogs_stats (FK_dog_id, yard, other_pets, kids, female, size, FK_dogs_links_id) VALUES (3, true, false, true, false, "small", 4);
INSERT INTO dogs_stats (FK_dog_id, yard, other_pets, kids, female, size, FK_dogs_links_id) VALUES (4, true, true, true, true, "medium", 1);
INSERT INTO dogs_stats (FK_dog_id, yard, other_pets, kids, female, size, FK_dogs_links_id) VALUES (2, false, true, false, false, "small", 2);
INSERT INTO dogs_stats (FK_dog_id, yard, other_pets, kids, female, size, FK_dogs_links_id) VALUES (5, true, false, true, true, "large", 5);

INSERT INTO human_prefs (yard, other_pets, kids, small, medium, large) VALUES (false, false, true, false, true, true);
INSERT INTO human_prefs (yard, other_pets, kids, small, medium, large) VALUES (true, true, true, true, true, true);
INSERT INTO human_prefs (yard, other_pets, kids, small, medium, large) VALUES (false, false, false, true, false, false);
INSERT INTO human_prefs (yard, other_pets, kids, small, medium, large) VALUES (true, false, true, false, true, false);
INSERT INTO human_prefs (yard, other_pets, kids, small, medium, large) VALUES (true, false, false, false, false, true);

INSERT INTO humans (name, password) VALUES ('John', 'blink182');
INSERT INTO humans (name, password) VALUES ('Marshall', 'drink!c0ff33!');
INSERT INTO humans (name, password) VALUES ('Chaney', 'd0g54lyf3');
INSERT INTO humans (name, password) VALUES ('David', 'cod3r');
INSERT INTO humans (name, password) VALUES ('Stanley', 'ipromiseim18');

INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (1, 2);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (2, 1);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (3, 5);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (4, 4);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (5, 3);

SELECT * FROM humans;
SELECT * FROM dogs;
SELECT * FROM dogs_links;
SELECT * FROM dogs_stats;
SELECT * FROM matches;