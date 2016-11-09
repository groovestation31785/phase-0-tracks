class Santa
	attr_reader :age, :ethnicity #getter methods
	attr_accessor :gender #setter method

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(1..140)
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type} cookie!"
	end

	def celebrate_birthday
		@age += 1
		puts "Santa just turned #{age}!"
	end

	def get_mad_at(reindeer)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
		reindeer_ranking.delete_if { |culprit| culprit == reindeer}
		new_reindeer_ranking = reindeer_ranking.push(reindeer)
	end
 

end

# DRIVER CODE
# nikolas = Santa.new("sissy-boy", "Caucasian")
# nikolas.speak
# nikolas.eat_milk_and_cookies("chocolate chip") 

# kris_kringle = Santa.new("muscle-man", "Scandanavian")
# claus = Santa.new("transgender", "feline-identified")

# nikolas.celebrate_birthday
# p nikolas.get_mad_at("Dasher")

# puts "I am ol' Kris Kringle. I'm a #{kris_kringle.ethnicity}."
# kris_kringle.gender = "beefcake"

# puts "I've gain a lot of mass so I can identify as a #{kris_kringle.gender}."


list_santas = []

possible_genders = ["male", "female", "agender", "bigender", "depends on the time of year", "None of these", "transgender", "rather not disclose that information"]
possible_ethnicities = ["Himalayan Yeti", "white", "Korean", "Latino", "Scandanavian", "Malaysian Marsian", "Super multiethinic", "Nunyabiz"]


100.times do
	possible_genders.length.times do |s|
		list_santas << Santa.new(possible_genders.sample, possible_ethnicities.sample)
	end
end

list_santas.each do |i|
	puts "This is a #{i.ethnicity} #{i.gender}"
end
