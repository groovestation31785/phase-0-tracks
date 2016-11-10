#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end

#	def self.yelling_happily(words)
#		words + "!!!" + " :D"
#	end
#end

# p Shout.yell_angrily("I don't understand")
# p Shout.yelling_happily("I understand")


module Shout
	def illicit_hollering(words)
		"#{words}! Ugh! It makes me wanna shout!!"
	end

	def good_news(words)
		puts words
		puts "Oh my gosh!! I'm so happy for you!!"
	end
end

class Schoolboys
	include Shout
end

class Women
	include Shout
end

timmy = Schoolboys.new
p timmy.illicit_hollering("That's not fair!")
p timmy.good_news("A PUPPY?!")


stacey = Women.new
p stacey.illicit_hollering("How could he cheat after 5 years together?")
p stacey.good_news("You got the promotion?!")
