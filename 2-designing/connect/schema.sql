-- See assignment `eww' bookmarks or go to:
-- https://cs50.harvard.edu/sql/2024/psets/2/connect/

-- Use `PRAGMA foreign_keys` to see if FOREIGN KEYS are enabled. Enabled them
-- with `PRAGMA foreign_keys = ON`

PRAGMA foreign_keys = 1;

CREATE TABLE users (
       id         INTEGER PRIMARY KEY,
       username   TEXT    NO NULL,
       first_name TEXT    NO NULL,
       last_name  TEXT    NO NULL,
       password   TEXT    NO NULL
);

CREATE TABLE education_centers (
       id       INTEGER PRIMARY KEY,
       name     TEXT    NOT NULL,
       type     TEXT    NOT NULL,
       location TEXT    NOT NULL,
       year     INTEGER NOT NULL
);

CREATE TABLE companies (
       id       INTEGER PRIMARY KEY,
       name     TEXT    NOT NULL,
       industry TEXT    NOT NULL,
       location TEXT    NOT NULL
);

CREATE TABLE connections (
       id           INTEGER PRIMARY KEY,
       user_id      INTEGER NOT NULL,
       connected_to INTEGER NOT NULL,
       FOREIGN KEY(user_id)      REFERENCES users(id),
       FOREIGN KEY(connected_to) REFERENCES users(id)
);

CREATE TABLE company_affiliations (
       id         INTEGER PRIMARY KEY,
       user_id    INTEGER NOT NULL,
       company_id INTEGER NOT NULL,
       start_date TEXT    NOT NULL,
       end_date   TEXT,
       position   TEXT    NOT NULL,
       FOREIGN KEY(user_id)    REFERENCES users(id),
       FOREIGN KEY(company_id) REFERENCES companies(id)
);

CREATE TABLE educative_affiliations (
       id                   INTEGER PRIMARY KEY,
       user_id              INTEGER NOT NULL,
       education_center_id  INTEGER NOT NULL,
       start_date           TEXT    NOT NULL,
       end_date             TEXT,
       degree               TEXT    NOT NULL,
       FOREIGN KEY(user_id)              REFERENCES users(id),
       FOREIGN KEY(education_center_id) REFERENCES education_centers(id)
);
