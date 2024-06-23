MODEL (
  name @ref("view_model"),
  kind VIEW,
);
SELECT
  d.id,
  d.name,
  COUNT(DISTINCT f.event_date) AS distinct_event_date_count
FROM @ref("seed_model_dimension") d
JOIN @ref("seed_model_fact") f ON d.id = f.item_id
GROUP BY d.id, d.name;