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
		specialty VARCHAR(255),
		turing_award BOOLEAN
		);
SQL

# Create the table
db.execute(heroes_table_cmd)

# Create a new tech hero. This adds a name, age, and specialty
def create_new_hero(db, name, age, specialty, turing_award)
  db.execute("INSERT INTO tech_heroes(name, age, specialty, turing_award) VALUES (?, ?, ?, ?)", [name, age, specialty, turing_award])
end

# Create multiple entries for the list of Silicon Valley's finest
# 100.times do
#  create_new_hero(db, Faker::Name.name, Faker::Number.number(2), Faker::Company.bs, "false")
# end


# Displays the entire list of tech all-stars and their info
def tech_heroes_list(db)
	list = db.execute("SELECT * FROM tech_heroes")
	list.each do |person|
		puts "#{person['name']} is #{person['age']} years old whose specialty is to #{person['specialty']}."
	end
end


# Find all the awesome tech heroes according to their specialty (the longer the specialty description, the more innovative it is)
def game_changers(db)
	fav_hero = db.execute("SELECT name, specialty FROM tech_heroes ORDER BY LENGTH(specialty) DESC LIMIT 5") 
	fav_hero.each do |person|
		puts "#{person['name']} is taking great strides with working to #{person['specialty']}!"
	end
end

# Give the Award to people based on their age
def give_turing_award(db)
	db.execute("UPDATE tech_heroes SET turing_award = 'true' WHERE age BETWEEN 55 AND 60")
	winners = db.execute("SELECT name FROM tech_heroes WHERE turing_award = 'true'")
	winners.each do |winner|
		puts "Congratulations!! #{winner['name']} is the winner of the ACM A.M. Turning Award for outstanding contributions to the computing community!"
	end
end

# Some of our heroes are no keeping up with the newer technologies
# We are going to kindly suggest that they retire
def retirement(db)
	db.execute("UPDATE tech_heroes SET specialty = 'Enjoying retirement' WHERE age > 80")

	retirees = db.execute("SELECT name FROM tech_heroes WHERE age > 90")
	retirees.each do |person|
		puts "Thank you for all your years of work, #{person['name']}!!!"
	end
end

# DRIVER CODE

# tech_heroes_list(db)
# game_changers(db)
# give_turing_award(db)
# retirement(db)



# There are two things I would have liked to do, but I could not figure out how to make it work. I want to revisit this to see if I could make it work:
#	- I would prefer to give the Award to the people based on their specialties. For example if a specialty had the prefix "trans-" in the description, "false" would be changed to "true"
#	- Instead of hard-coding some of the search parameters, I would take user input and apply it. For example, a user could enter an age and that age would be used in a SQL command to find all people with that age. It would be the same idea if a user wanted to know if any of the specialties was focused on "infrastructures" or "interfaces".