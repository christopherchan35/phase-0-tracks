# Run Tracker program using Ruby and sqlite3

# Required gems
require 'sqlite3'

db = SQLite3::Database.new("runs.db")

# command to create initial Database
create_run_table = <<-SQL
  CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    number_of_runs INT,
    distance_ran DECIMAL(3,2)
    )
SQL

db.execute(create_run_table)