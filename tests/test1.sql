-- Start transaction and plan the tests.
BEGIN;
SELECT * FROM no_plan();

-- Run the tests.
SELECT pass( 'My test passed, w00t!');
SELECT ok(1 = 1, 'mytest');

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK;
