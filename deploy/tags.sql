-- Deploy categories

BEGIN;

CREATE TABLE tags (
  id       SERIAL PRIMARY KEY,
  tag TEXT   NOT NULL UNIQUE
);

COMMIT;
