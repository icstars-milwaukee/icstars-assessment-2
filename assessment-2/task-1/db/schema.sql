-- northwindsupply — schema
-- Assessment 2 / Task 1 setup. Do not modify this file.
--
-- Two tables: users (people with an account) and orders (what they ordered).
-- Written in portable SQL so it runs on SQLite, PostgreSQL and MySQL alike.
-- See db/README.md for the engine-specific notes.

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS users;

-- One row per person with a northwindsupply account.
CREATE TABLE users (
  id          INTEGER      PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  email       VARCHAR(255) NOT NULL UNIQUE,
  city        VARCHAR(100),
  state       VARCHAR(2),
  signup_date DATE         NOT NULL
);

-- One row per order. user_id tells you which user placed it.
CREATE TABLE orders (
  id           INTEGER       PRIMARY KEY,
  user_id      INTEGER       NOT NULL,
  order_date   DATE          NOT NULL,
  status       VARCHAR(20)   NOT NULL,
  total_amount DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
