-- Deploy authors

BEGIN;

CREATE TABLE authors (
  id          SERIAL                 PRIMARY KEY,
  name        TEXT                   NOT NULL,
  email       CHARACTER VARYING(254) UNIQUE NOT NULL,
  profile_url TEXT 		     NULL
);

COMMIT;
