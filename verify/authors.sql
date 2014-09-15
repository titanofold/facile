-- Verify authors

BEGIN;

SELECT name, email, profile_url FROM authors WHERE FALSE;

ROLLBACK;
