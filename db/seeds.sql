
-- Template for adding dogs to a persons interests
-- update humans set dog_match_1=1 WHERE id = 1;

-- Template for adding a new person with a dog interest
-- INSERT INTO humans (name, password, dog_match_1) VALUES ('', '', int);

INSERT INTO dogs (dog_name, yard, other_dogs, kids) VALUES ('Bayley', true, true, true);
INSERT INTO dogs (dog_name, yard, other_dogs, kids) VALUES ('Emmett', false, false, false);
INSERT INTO dogs (dog_name, yard, other_dogs, kids) VALUES ('Spot', true, true, true);
INSERT INTO dogs (dog_name, yard, other_dogs, kids) VALUES ('Lassie', false, false, false);
INSERT INTO dogs (dog_name, yard, other_dogs, kids) VALUES ('StanMan', true, true, true);

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