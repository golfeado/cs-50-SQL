PRAGMA foreign_keys = 1;

CREATE TABLE passengers (
       id         INTEGER,
       first_name TEXT     NOT NULL,
       last_name  TEXT     NOT NULL,
       age        INTEGER  NOT NULL,
       PRIMARY KEY (id)
);

CREATE TABLE check_ins (
       id        INTEGER,
       flight_id INTEGER,
       date_time INTEGER NOT NULL,
       PRIMARY KEY (id),
       FOREIGN KEY (flight_id) REFERENCES flights (id)
);

CREATE TABLE airlines (
       id        INTEGER,
       name      TEXT    NOT NULL,
       concourse TEXT    NOT NULL,
       PRIMARY KEY (id)
);

CREATE TABLE flights (
       id                INTEGER,
       airline_id        INTEGER NOT NULL,
       number            INTEGER NOT NULL,
       to_airport        TEXT    NOT NULL
                                   CHECK(length(to_airport = 3)),
       from_airport      TEXT    NOT NULL
                                   CHECK(length(from_airport = 3)),
       departure_date_time INTEGER NOT NULL,
       arrival_date_time INTEGER NOT NULL,
       PRIMARY KEY (id),
       FOREIGN KEY (airline_id) REFERENCES airlines (id)
);
       
