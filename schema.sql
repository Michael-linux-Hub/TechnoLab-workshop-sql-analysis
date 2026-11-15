PRAGMA foreign_keys = ON;
CREATE TABLE schools (
 school_id INTEGER PRIMARY KEY,
 school_name TEXT NOT NULL UNIQUE,
 district TEXT NOT NULL
);
CREATE TABLE workshops (
 workshop_id INTEGER PRIMARY KEY,
 topic TEXT NOT NULL,
 workshop_date TEXT NOT NULL,
 capacity INTEGER NOT NULL CHECK(capacity > 0)
);
-- One row represents one school's attendance at one workshop.
CREATE TABLE attendance (
 school_id INTEGER NOT NULL REFERENCES schools(school_id),
 workshop_id INTEGER NOT NULL REFERENCES workshops(workshop_id),
 learners_attended INTEGER NOT NULL CHECK(learners_attended > 0),
 PRIMARY KEY(school_id, workshop_id)
);
