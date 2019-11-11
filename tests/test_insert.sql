-- Start transaction and plan the tests.
\i ./src/insert.sql
BEGIN;
SELECT * FROM no_plan();
-- Setup
DROP TABLE IF EXISTS foo;
CREATE TABLE foo (name text);

-- Run the tests.
SELECT foo_insert('Bob');
SELECT results_eq('select name from foo', $$VALUES ('Bob')$$, 'assert name is inserted correctly');

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK;
