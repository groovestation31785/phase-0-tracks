# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
# this is the Ruby equivalent to creating a new SQLite3 database
db = SQLite3::Database.new("kittens.db")
# db.execute("SELECT * FROM kittens") # however the 'kittens' table has not been created yet 
# execute would take the string as an argument then would convert it to a SQL command
db.results_as_hash = true # returns a hash as the preferred data structure

# learn about fancy string delimiters
# create_table_cmd is the variable that defines a string in RUuby, NOT A SQL COMMAND. That string will be passed into a method that will then run it as SQL in your database
create_table_cmd = <<-SQL # '<<-SQL' starts the string
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL # this ends the string

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

