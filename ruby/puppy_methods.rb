class Puppy

	def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
	end

	def speak(num)
		num.times {puts "Woof"}
	end
	   
	 def roll_over
	   puts "*rolls over*"
	 end
	   
	def dog_years(num)
		num*7
	end

	def back_flip
		puts "*fails*"
	end

end


	kibo = Puppy.new
	
	p kibo.fetch('ball')
	kibo.speak(3)
	kibo.roll_over
	puts kibo.dog_years(6)
	kibo.back_flip


class Birds
	  
	def initialize
	    puts "pretty bird"
	end

	def head_bob(num)
	    puts "*bobs head #{num} times!"
	end

	def speak
	    "Polly wants a cracker"
	end 

	def flight
	    "*fails*"
	end

end


	bird_arr = []

	i = 0

	while i < 50  do
	    birdie = Birds.new
	    bird_arr << birdie
	   i +=1
	end

	bird_arr.each { |x| p x.flight }

end

