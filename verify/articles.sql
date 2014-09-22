-- Verify articles

BEGIN;

SELECT id, title, author_id, pubstamp, modstamp, content 
  FROM articles
 WHERE FALSE;

ROLLBACK;
