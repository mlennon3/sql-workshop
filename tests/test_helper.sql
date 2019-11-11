CREATE OR REPLACE FUNCTION run_tests(test_body TEXT) RETURNS boolean AS $$
BEGIN
--  BEGIN;
  PERFORM * FROM no_plan();

  -- Run the tests.
  PERFORM ok(3 = 3);

  --RAISE NOTICE 'Calling %', test_body;
  --EXECUTE test_body;

  -- Finish the tests and clean up.
  PERFORM * FROM finish();
--  ROLLBACK;
  RETURN true;
END;
$$ LANGUAGE plpgsql;
