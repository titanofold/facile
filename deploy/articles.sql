-- Deploy articles
-- requires: authors

BEGIN;

CREATE TABLE articles (
  id        SERIAL		     PRIMARY KEY,
  title     TEXT		     NOT NULL,
  author_id INTEGER		     REFERENCES authors(id),
  pubstamp  TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  modstamp  TIMESTAMP WITH TIME ZONE NULL,
  content   TEXT                     NOT NULL
);

COMMIT;
