require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/songs.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  album TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true


DB = {:conn => SQLite3::Database.new("db/artist.db")}
DB[:conn].execute("DROP TABLE IF EXISTS artists")
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  net_worth INTEGER
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
