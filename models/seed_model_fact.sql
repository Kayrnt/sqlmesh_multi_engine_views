MODEL (
  name @ref("seed_model_fact"),
  kind SEED (
    path '../seeds/seed_data_fact.csv'
  ),
  columns (
    id INTEGER,
    item_id INTEGER,
    event_date DATE
  ),
  grain (id, event_date)
);
