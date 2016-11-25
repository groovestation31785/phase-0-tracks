# require the two gems in order to use them throughout the program

require 'sqlite3'
require 'faker'

# Create a new database (SQLite3)
db = SQLite3::Database.new("tech_heroes.db")
db.results_as_hash = true

# This will create a new table in the database file
heroes_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS tech_heroes (
		id INTEGER PRIMARY KEY, 
		name VARCHAR(255),
		age INTEGER,
		specialty VARCHAR(255)
		);
SQL

# Create the table
db.execute(heroes_table_cmd)

# Create a new tech hero. This adds a name, age, specialty, and declare that no one has yet won a Nobel Prize
def create_new_hero(db, name, age, specialty)
  db.execute("INSERT INTO tech_heroes(name, age, specialty) VALUES (?, ?, ?)", [name, age, specialty])
end


# 10.times do
#   create_new_hero(db, Faker::Name.name, Faker::Number.number(2), Faker::Company.bs)
# end
