-- Revert article_categories

BEGIN;

DROP TABLE article_tags;

COMMIT;
