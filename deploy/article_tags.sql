-- Deploy article_categories
-- requires: articles
-- requires: categories

BEGIN;

CREATE TABLE article_tags (
  article_id  INTEGER REFERENCES articles(id),
  tag_id INTEGER REFERENCES tags(id),
  PRIMARY KEY (article_id, tag_id)
);

CREATE INDEX ON article_tags (tag_id);

COMMIT;
