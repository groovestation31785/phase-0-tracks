class WordGuess

	attr_accessor :word, :guess

	def initialize(word, guess) 
		@word = word.downcase.split('')
		@guess = guess.downcase.split('')
		@num_guesses = 0
	end

	def hide_word
		num_letters = @word
		blanks = ""
		@word.length.times do |num_letters|
			blanks += "_ "
		end
		blanks
	end

	
		
	

end 

guess = WordGuess.new("hello")
puts guess.hide_word

alphabet = "abcdefghijklmnopqrstuvwxyz".split('')
		letter_index = 0
		already_guessed = []
		
		if @word.include?(letter)
			@word[letter].replace(letter)
		else
			"That letter is not in this word. Try again."
		end
		already_guessed << letter
		@num_guesses += 1