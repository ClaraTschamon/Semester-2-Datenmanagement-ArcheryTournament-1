DROP TABLE IF EXISTS age_class CASCADE;
DROP TABLE IF EXISTS participant CASCADE;
DROP TABLE IF EXISTS discipline CASCADE;
DROP TABLE IF EXISTS registration CASCADE;
DROP TABLE IF EXISTS scores CASCADE;
DROP TABLE IF EXISTS area_of_responsibility CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS location CASCADE;

CREATE TABLE age_class(
    class_id INTEGER,
    CONSTRAINT pk_cid PRIMARY KEY (class_id),
    class_name VARCHAR(255)
);
DROP TABLE IF EXISTS groups;

CREATE TABLE groups(
    group_id INTEGER,
    CONSTRAINT pk_gr PRIMARY KEY (group_id),
    group_size INTEGER NOT NULL
);


CREATE TABLE participant(
    participant_id INTEGER,
    CONSTRAINT pk_part PRIMARY KEY (participant_id),
    age INTEGER,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    street_name VARCHAR(255),
    house_nr INTEGER,
    postal_code INTEGER,
    state VARCHAR(255),
    group_id INTEGER,
    CONSTRAINT fk_pgr FOREIGN KEY (group_id)
        REFERENCES groups(group_id)
);


CREATE TABLE discipline(
    discipline_id INTEGER,
    CONSTRAINT pk_disc PRIMARY KEY (discipline_id),
    discipline_name VARCHAR(255)
);


CREATE TABLE registration(
    registration_nr INTEGER UNIQUE,
    CONSTRAINT pk_rnr PRIMARY KEY (registration_nr),
    participant_id INTEGER,
    CONSTRAINT fk_rpid FOREIGN KEY (participant_id)
        REFERENCES participant(participant_id),
    discipline_id INTEGER,
    CONSTRAINT fk_rdid FOREIGN KEY (discipline_id)
        REFERENCES discipline(discipline_id),
    class_id INTEGER,
    CONSTRAINT fk_rcid FOREIGN KEY (class_id)
        REFERENCES age_class(class_id)
);


CREATE TABLE scores(
    participant_id INTEGER,
    CONSTRAINT pk_sc PRIMARY KEY (participant_id),
    CONSTRAINT fk_sc FOREIGN KEY (participant_id)
        REFERENCES participant(participant_id),
    points INTEGER
);


CREATE TABLE area_of_responsibility(
    area_nr INTEGER,
    CONSTRAINT pk_aor PRIMARY KEY (area_nr),
    description VARCHAR(255)
);


CREATE TABLE employee(
    employee_id INTEGER,
    CONSTRAINT pk_emp PRIMARY KEY (employee_id),
    area_of_responsibility INTEGER,
    CONSTRAINT fk_empaor FOREIGN KEY (area_of_responsibility)
        REFERENCES area_of_responsibility(area_nr),
    discipline_id INTEGER,
    CONSTRAINT fk_empdid FOREIGN KEY (discipline_id)
        REFERENCES discipline(discipline_id),
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);


CREATE TABLE location(
    location_nr INTEGER,
    discipline_id INTEGER,
    CONSTRAINT fk_lodid FOREIGN KEY (discipline_id)
        REFERENCES discipline(discipline_id),
    CONSTRAINT pk_loc PRIMARY KEY (location_nr, discipline_id)
);
