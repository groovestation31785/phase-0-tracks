class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type} cookie!"
	end
end

nikolas = Santa.new

puts nikolas.speak
puts nikolas.eat_milk_and_cookies("chocolate chip")