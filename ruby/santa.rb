class Santa
	attr_reader :age, :ethnicity #getter methods
	attr_accessor :gender #setter method

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type} cookie!"
	end

	def celebrate_birthday(age)
		age += 1
		puts "Santa just turned #{age}!"
	end

	def get_mad_at(reindeer)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
		reindeer_ranking.delete_if { |culprit| culprit == reindeer}
		new_reindeer_ranking = reindeer_ranking.push(reindeer)
	end
 

end

nikolas = Santa.new("sissy-boy", "Caucasian")
nikolas.speak
nikolas.eat_milk_and_cookies("chocolate chip") 

kris_kringle = Santa.new("muscle-man", "Scandanavian")
claus = Santa.new("transgender", "feline-identified")

nikolas.celebrate_birthday(1746)
p nikolas.get_mad_at("Dasher")

puts "I am ol' Kris Kringle. I'm a #{kris_kringle.ethnicity}."
kris_kringle.gender = "beefcake"


puts "I've gain a lot of mass so I can identify as a #{kris_kringle.gender}."

