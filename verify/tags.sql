-- Verify categories

BEGIN;

SELECT id, tags FROM tags WHERE FALSE;

ROLLBACK;
