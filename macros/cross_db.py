from sqlmesh import macro
from sqlglot.expressions import Table

@macro()
def ref(evaluator, model):
  db = evaluator.var("poc_catalog")
  schema = evaluator.var("poc_schema")
  catalog = db + "." if db else None
  return Table(this=model, db=schema, catalog=catalog)
  