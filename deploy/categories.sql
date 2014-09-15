-- Deploy categories

BEGIN;

CREATE TABLE categories (
  category TEXT NOT NULL UNIQUE
);

COMMIT;
