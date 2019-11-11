CREATE OR REPLACE FUNCTION test_first(
) RETURNS SETOF TEXT AS $$
BEGIN
    RETURN NEXT ok(1 = 1, 'one is one');
    RETURN NEXT ok(2 = 2, 'two is two');
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION test_user(
) RETURNS SETOF TEXT AS $$
BEGIN
   RETURN NEXT OK(1 = 2);
END;
$$ LANGUAGE plpgsql;

--select runtests();
