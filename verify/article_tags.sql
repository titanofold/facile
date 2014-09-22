-- Verify article_categories

BEGIN;

SELECT article_id, tag_id FROM article_tags WHERE FALSE;

ROLLBACK;
