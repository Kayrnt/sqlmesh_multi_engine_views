MODEL (
  name @ref("seed_model_dimension"),
  kind SEED (
    path '../seeds/seed_data_dimension.csv'
  ),
  columns (
    id INTEGER,
    name STRING,
  ),
);
