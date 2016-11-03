puts "How many employees will be processed?"
num_empl = gets.chomp.to_i

until num_empl <= 0 do

	puts "What's your name?"
	name = gets.chomp

	puts "How old are you?"
	given_age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	accurate_age = 2016 - birth_year

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp


	puts "List any allergies you have. Type 'done' when you are finished or if you don't have any allergies."
	allergies = gets.chomp.downcase

		until allergies == "sunshine" || allergies == "done"
			puts "Anything else?"
			allergies = gets.chomp.downcase
		end
	


		if name == "Drake Cula" || name =="Tu Fang"
			puts "Definitely a vampire."
		elsif allergies == "sunshine"
			puts "Probably a vampire"
		elsif (accurate_age != given_age) && (bread == "n") && (insurance == "n")
			puts "Almost certainly a vampire"
		elsif (accurate_age != given_age) && (bread == "n" || insurance == "n") 
			puts "Probably a vampire"
		elsif (accurate_age == given_age) && (bread == "y" || insurance == "y")
			puts "Probably not a vampire"
		else
			puts "Results inconclusive."
		end


	num_empl -= 1	
end


puts "Actually, nevermind!!! What do these questions have to do with anthing? Let's all be friends. :D" 