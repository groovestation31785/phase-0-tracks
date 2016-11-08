class Santa


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

	def age 
		@age
	end

	def ethnicity
		@ethnicity
	end

	def gender=(new_gender)
		@gender = new_gender
	end

end

nikolas = Santa.new("sissy-boy", "Caucasian")
#nikolas.speak
#nikolas.eat_milk_and_cookies("chocolate chip") 

#kris_kringle = Santa.new("male", "Scandanavian")
#claus = Santa.new("transgender", "German")

p nikolas.celebrate_birthday(1746)
p nikolas.get_mad_at("Prancer")


