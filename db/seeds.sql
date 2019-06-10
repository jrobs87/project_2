
-- Template for adding dogs to a persons interests
-- update humans set dog_match_1=1 WHERE id = 1;

-- Template for adding a new person with a dog interest
-- INSERT INTO humans (name, password, dog_match_1) VALUES ('', '', int);

INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Bayley', true, true, true, 'medium');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Emmett', false, false, true, 'large');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Spot', true, true, true, 'small');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Lassie', false, false, false, 'small');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('StanMan', true, true, true, 'medium');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Stephen', true, true, true, 'medium');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Twinkle', false, false, true, 'large');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Tough', true, true, true, 'small');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Dakota', false, false, false, 'small');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Ariel', true, true, true, 'medium');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Bark', true, true, true, 'medium');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Max', false, false, true, 'large');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Crosby', true, true, true, 'small');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Matcha', false, false, false, 'small');
INSERT INTO dogs (dog_name, yard, other_dogs, kids, size) VALUES ('Derek', true, true, true, 'medium');

INSERT INTO human_prefs (yard, other_dogs, kids, small, medium, large) VALUES (false, false, true, false, true, true);
INSERT INTO human_prefs (yard, other_dogs, kids, small, medium, large) VALUES (true, true, true, true, true, true);
INSERT INTO human_prefs (yard, other_dogs, kids, small, medium, large) VALUES (false, false, false, true, false, false);
INSERT INTO human_prefs (yard, other_dogs, kids, small, medium, large) VALUES (true, false, true, false, true, false);
INSERT INTO human_prefs (yard, other_dogs, kids, small, medium, large) VALUES (true, false, false, false, false, true);

INSERT INTO humans (name, password, prefs) VALUES ('John', 'blink182', 1);
INSERT INTO humans (name, password, prefs) VALUES ('Marshall', 'drink!c0ff33!', 2);
INSERT INTO humans (name, password, prefs) VALUES ('Chaney', 'd0g54lyf3', 3);
INSERT INTO humans (name, password, prefs) VALUES ('David', 'cod3r', 4);
INSERT INTO humans (name, password, prefs) VALUES ('Stanley', 'ipromiseim18', 5);

SELECT * FROM dogs;
SELECT * FROM human_prefs;
SELECT * FROM humans;