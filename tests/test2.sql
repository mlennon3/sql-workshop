\i tests/test_helper.sql
select run_tests( $$
  SELECT pass( 'My test passed, w00t!');
  SELECT ok(1 = 1);
$$
);
