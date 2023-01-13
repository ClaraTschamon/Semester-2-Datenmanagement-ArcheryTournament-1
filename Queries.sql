/*Ich will herausfinden, in welcher Altersklasse der
  Participant mit der ID 001 antritt*/
SELECT class_name
FROM age_class INNER JOIN registration r
                ON age_class.class_id = r.class_id
WHERE r.participant_id = 001;

/*
 Ich will herausfinden, wie viele participants die altersklasse 'adult' hat
 */
SELECT count(participant_id)
FROM registration INNER JOIN age_class ac
                ON ac.class_id = registration.class_id
WHERE class_name = 'Adult';


/*
 Ich will herausfinden, wie viele Punkte der Participant
 mit der ID 002 hat
 */
SELECT points
FROM scores
WHERE participant_id = 002;

/*
Ich will herausfinden, wie viele Punkte alle Participants
der Gruppe 2 insgesamt erzielt haben
*/
SELECT sum(points)
FROM scores INNER JOIN participant p
            ON p.participant_id = scores.participant_id
WHERE group_id = 2;

/*
 Ich will herausfinden, welche Discipline der Employee
 mit der ID 22 überwacht
 */
SELECT discipline_name
FROM discipline INNER JOIN employee e
                ON discipline.discipline_id = e.discipline_id
WHERE employee_id = 22;

/*
 Ich will herausfinden, wie viele participants von Austria sind
 */
SELECT count(state)
FROM participant
WHERE state = 'Austria';

