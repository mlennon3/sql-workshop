-- Start transaction and plan the tests.
\i ./src/add.sql
BEGIN;
SELECT * FROM no_plan();

-- Run the tests.
SELECT is(add(1, 2), 3, 'using is() example');
SELECT ok(add(2, 1) = 3, 'using ok() example');
SELECT cmp_ok(add(3, 2), '=', 5, 'using cmp_ok example');

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK;
