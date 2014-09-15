-- Deploy authors

BEGIN;

CREATE TABLE authors (
  name        TEXT                   PRIMARY KEY,
  email       CHARACTER VARYING(254) NULL,
  profile_url TEXT 		     NULL
);

COMMIT;
