CREATE OR REPLACE VIEW active_customers AS (
  SELECT id,
    last_activity,
    name
  FROM
    customers
  WHERE
    last_activity >
    current_date - interval '10 day'
);
