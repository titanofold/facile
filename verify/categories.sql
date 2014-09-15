-- Verify categories

BEGIN;

SELECT category FROM categories WHERE FALSE;

ROLLBACK;
