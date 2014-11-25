-- 1 up
CREATE TABLE tags (
  id      SERIAL PRIMARY KEY,
  tag     TEXT   NOT NULL UNIQUE,
  url_tag TEXT   NOT NULL
);
CREATE TABLE authors (
  id          SERIAL                 PRIMARY KEY,
  name        TEXT                   NOT NULL,
  email       CHARACTER VARYING(254) UNIQUE NOT NULL,
  profile_url TEXT                   NULL,
  admin       BOOLEAN                NOT NULL,
  can_revoke  BOOLEAN                NOT NULL
);
CREATE TABLE articles (
  id        SERIAL                   PRIMARY KEY,
  title     TEXT                     NOT NULL,
  url_title TEXT                     NOT NULL,
  author_id INTEGER                  REFERENCES authors(id),
  pubstamp  TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  modstamp  TIMESTAMP WITH TIME ZONE NULL,
  content   TEXT                     NOT NULL
);
CREATE TABLE article_tags (
  article_id  INTEGER REFERENCES articles(id),
  tag_id      INTEGER REFERENCES tags(id),
  PRIMARY KEY (article_id, tag_id)
);
CREATE INDEX ON article_tags (tag_id);

--1 down
DROP TABLE article_tags;
DROP TABLE articles;
DROP TABLE authors;
DROP TABLE tags;

