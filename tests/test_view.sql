-- Start transaction and plan the tests.
DROP TABLE IF EXISTS customers CASCADE;
CREATE TABLE customers (id int, name text, last_activity date);
\i ./src/view.sql
BEGIN;
SELECT * FROM no_plan();
-- Setup

-- Run the tests.
SELECT has_column('active_customers', 'name', 'active_customers has name column');

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK;
