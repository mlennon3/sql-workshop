CREATE OR REPLACE FUNCTION foo_insert(name text) RETURNS void AS $$
  INSERT INTO foo (name) VALUES (name);
$$ language sql;
