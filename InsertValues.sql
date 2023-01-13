DELETE FROM registration
WHERE TRUE;
DELETE FROM location
WHERE TRUE;
DELETE FROM employee
WHERE TRUE;
DELETE FROM scores
WHERE TRUE;
DELETE FROM participant
WHERE TRUE;
DELETE FROM area_of_responsibility
WHERE TRUE;
DELETE FROM discipline
WHERE TRUE;
DELETE FROM age_class
WHERE TRUE;
DELETE FROM groups
WHERE TRUE;



INSERT INTO groups(group_id, group_size)
VALUES (1, 5);
INSERT INTO groups(group_id, group_size)
VALUES (2, 5);

INSERT INTO participant(participant_id, age, first_name, last_name, street_name, house_nr, postal_code, state, group_id)
VALUES (001, 20, 'Johannes', 'Backster', 'Backstreet', 12, 4711, 'Greenland', 1);
INSERT INTO participant(participant_id, age, first_name, last_name, street_name, house_nr, postal_code, state, group_id)
VALUES (002, 30, 'Mark', 'Pleschberger', 'Musterstraße', 04, 6789, 'Austria', 2);
INSERT INTO participant(participant_id, age, first_name, last_name, street_name, house_nr, postal_code, state, group_id)
VALUES (003, 20, 'Clara', 'Tschamon', 'Hummelweg', 14, 6788, 'Austria', 2);
INSERT INTO participant(participant_id, age, first_name, last_name, street_name, house_nr, postal_code, state, group_id)
VALUES (004, 15, 'Lukas', 'Beck', 'Bienenweg', 22, 34431, 'Germany', 1);
INSERT INTO participant(participant_id, age, first_name, last_name, street_name, house_nr, postal_code, state, group_id)
VALUES (005, 12, 'Tim', 'Tomson', 'Bakerstreet', 1, 5067, 'England', 2);

INSERT INTO area_of_responsibility(area_nr, description)
VALUES (5, 'Hills');
INSERT INTO area_of_responsibility(area_nr, description)
VALUES (6, 'Lake');

INSERT INTO discipline(discipline_id, discipline_name)
VALUES (12, 'Longbow');
INSERT INTO discipline(discipline_id, discipline_name)
VALUES (13, 'Compoundbow');
INSERT INTO discipline(discipline_id, discipline_name)
VALUES (14, 'Recurvebow');

INSERT INTO age_class(class_id, class_name)
VALUES (1, 'Youth');
INSERT INTO age_class(class_id, class_name)
VALUES (2, 'Adult');

INSERT INTO employee(employee_id, area_of_responsibility, discipline_id, first_name, last_name)
VALUES (22, 5, 12, 'Hannah', 'Halter');
INSERT INTO employee(employee_id, area_of_responsibility, discipline_id, first_name, last_name)
VALUES (23, 6, 13, 'Johanna', 'Ammann');

INSERT INTO location(location_nr, discipline_id)
VALUES(33, 13);
INSERT INTO location(location_nr, discipline_id)
VALUES(34, 14);

INSERT INTO registration(registration_nr, participant_id, discipline_id, class_id)
VALUES(1, 001, 12, 2);
INSERT INTO registration(registration_nr, participant_id, discipline_id, class_id)
VALUES(2, 002, 13, 2);
INSERT INTO registration(registration_nr, participant_id, discipline_id, class_id)
VALUES(3, 003, 13, 2);
INSERT INTO registration(registration_nr, participant_id, discipline_id, class_id)
VALUES(4, 004, 14, 1);
INSERT INTO registration(registration_nr, participant_id, discipline_id, class_id)
VALUES(5, 005, 14, 1);

INSERT INTO scores(participant_id, points)
VALUES(001, 199);
INSERT INTO scores(participant_id, points)
VALUES(002, 099);
INSERT INTO scores(participant_id, points)
VALUES(003, 170);
INSERT INTO scores(participant_id, points)
VALUES(004, 050);
INSERT INTO scores(participant_id, points)
VALUES(005, 200);
