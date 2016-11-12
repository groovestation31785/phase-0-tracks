class WordGuess

	attr_accessor :p1_word, :p2_guess

	def initialize(word) 
		@p1_word = word.downcase.split('')
		@num_guesses = 0
	end

	def hide_word
		num_letters = @p1_word
		blanks = ""
		@p1_word.length.times do |num_letters|
			blanks += "_ "
		end
		blanks
	end	

end 

# DRIVER CODE

puts "It's time for a guessing game!"
puts "Player 1, type a word for Player 2 to guess:"
p1_word = gets.chomp
game = WordGuess.new(p1_word)


puts "Alright, Player 2. It's time to do some guessing!"
puts "#{game.hide_word}"

already_guessed = []
num_guesses = 0
current_progress = []
blanks = "_ "

max_guess = p1_word.length

max_guess.times {current_progress << blanks}


while num_guesses < max_guess
	puts "Guess #{num_guesses + 1} / #{max_guess}: Guess a letter. You can guess the whole word whenever you think you've got it!"
	p2_guess = gets.chomp

	if p2_guess == p1_word
		puts "Dang, dawg! That was fast!"
		break
	elsif already_guessed.include?(p2_guess)
		puts "You already guessed that one. Try again."
		num_guesses -= 1
	elsif p1_word.include?(p2_guess)
		already_guessed << p2_guess
		letter_index = 0
		while letter_index < p1_word.length
			if p2_guess == p1_word[letter_index]
				current_progress[letter_index] = p1_word[letter_index]
				puts "This is found in position #{letter_index + 1}"
				puts "#{current_progress}"
			end
			letter_index += 1
		end			
	else
		puts "I can't find that letter. Try again."
	end

	num_guesses += 1
end


if p2_guess == p1_word
	puts "Awesome job! Playas gon play!"
else
	puts "Bummer, duder."
end