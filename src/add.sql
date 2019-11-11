CREATE OR REPLACE FUNCTION add(first int, second int)
RETURNS int AS $$
BEGIN

  RETURN first + second;

END;
$$ language plpgsql;
