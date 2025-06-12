PRAGMA foreign_keys = ON;

CREATE TABLE ingredients (
       id             INTEGER         PRIMARY KEY,
       ingredient     TEXT            NOT NULL,
       unit           TEXT            NOT NULL,
       price_per_unit DECIMAL (10, 2) NOT NULL
                                      CHECK(price_per_unit >= 0)
);

CREATE TABLE donuts (
       id          INTEGER          PRIMARY KEY,
       name        TEXT             NOT NULL,
       gluten_free INTEGER          DEFAULT 0
                                    CHECK(gluten_free IN (0, 1)),
       price       DECIMAL (10, 2)  NOT NULL
                                    CHECK(price >= 0)
);

CREATE TABLE ingredients_in_donuts (
       id            INTEGER PRIMARY KEY,
       donut_id      INTEGER,
       ingredient_id INTEGER,
       FOREIGN KEY(donut_id) REFERENCES donuts(id),
       FOREIGN KEY(ingredient_id) REFERENCES ingredients(id)
);

CREATE TABLE orders (
       id           INTEGER PRIMARY KEY,
       customer_id  INTEGER,
       order_num    INTEGER NOT NULL,
       FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE donuts_in_orders (
       id        INTEGER PRIMARY KEY,
       order_id  INTEGER,
       donut_id  INTEGER,
       FOREIGN KEY(order_id) REFERENCES orders(id),
       FOREIGN KEY(donut_id) REFERENCES donuts(id)
);

CREATE TABLE customers (
       id         INTEGER PRIMARY KEY,
       first_name TEXT,
       last_name  TEXT
);

CREATE TABLE customer_orders (
       id          INTEGER PRIMARY KEY,
       customer_id INTEGER,
       order_id    INTEGER,
       FOREIGN KEY(customer_id) REFERENCES customers(id),
       FOREIGN KEY(order_id) REFERENCES orders(id)       
);


