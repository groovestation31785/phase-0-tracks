class Pokemon
	attr_reader :name 	# :type does not need to be here
						# because attr_accessor allows to both 
						# read AND write it
	attr_accessor :type


	def initialize(name, type)
		puts "Pokeball, GO!"
		@name = name
		@type = type
	end

	def attack
		puts "It's super effective!"
	end

	def defend
		chances = 1 + rand(6)

		if chances >= 4
			puts "Emeny's attack missed!"
		else
			puts "Emeny hit!"
		end
	end

	def says_name
		puts "#{name}!"
	end

# Getter methods
# Replaced by attr_reader
#	def name
#		@name
#	end

#	def type
#		@type
#	end

# Setter method
# Replaced by attr_accesssor
#	def type=(new_type)
#		@type = new_type
#	end

end

# mr_mime = Pokemon.new("Mr. Mime", "Psychic")
# mr_mime.attack
# mr_mime.defend
# mr_mime.says_name
# mr_mime.type = "Normal"
# puts "#{mr_mime.name} is a #{mr_mime.type}-type Pokemon."

octillery = Pokemon.new("Octillery", "Water")
octillery.attack
octillery.defend
octillery.defend
octillery.attack
octillery.defend
octillery.says_name

octillery.type = "Water/Psychic"

puts "#{octillery.name} is a #{octillery.type}-type Pokemon!!"