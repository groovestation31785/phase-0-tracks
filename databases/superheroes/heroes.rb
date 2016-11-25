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

# Create a new tech hero. This adds a name, age, and specialty
def create_new_hero(db, name, age, specialty)
  db.execute("INSERT INTO tech_heroes(name, age, specialty) VALUES (?, ?, ?)", [name, age, specialty])
end

# Create multiple entries for the list of Silicon Valley's finest
# 10.times do
#   create_new_hero(db, Faker::Name.name, Faker::Number.number(2), Faker::Company.bs)
# end


# This helps us find all the awesome tech heroes by name
def game_changers(db)
	fav_hero = db.execute("SELECT name, specialty FROM tech_heroes WHERE name LIKE '") 
	fav_hero.each do |person|
		puts "#{person['name']} is working to #{person['specialty']}!"
	end
end



# Some of our heroes are no keeping up with the newer technologies
# We are going to kindly suggest that they retire
def retirement(db)
	retirees = db.execute("UPDATE tech_heroes SET specialty="Enjoying retirement" WHERE age > 70")
	retirees.each do |name|
		puts "Thank you for all your years of work, #{name['name']}!!!"
	end
end

# DRIVER CODE
find_hero_name(db)
retirement(db)



# There are three things I would have liked to do, but I could not figure out how to make it work
#	- I wanted to add a Nobel Prize column. Everyone would start with "false" , but later I would give it to the people with specific specialties. For example if a specialty had the prefix "trans-" in the description, "false" would be changed to "true"
#	- Instead of hard-coding some of the search parameters, how would 