=begin
First, ask the first user to type in a single word.
	- For the second user to not know the word:
		- Replace all the letters with underscores (_) by looping through the word until it has reached the end of the word
	- Have the alphabet defined in the program:
		- After every guess:
			- The program can loop through the alphabet array and find that particular letter.
				- Take the guessed letter and move it to a different array.
				- Use this array to notify user that they already guessed a certain letter
		- Replace the underscores with any guessed letter in the corresponding spot.
-The user have 2 times as many guesses as there are letters (5 letter words merit 10 guess).
-When the user has completed the word:
	-Give a congratulatory message
-Otherwise:
	- If they have reached the end of their guesses:
		- Boo them...or something like that

=end

require_relative 'game'

describe WordGuess do 
	it "hides the word with blank spaces" do
		game = WordGuess.new("hello")
		expect(game.hide_word).to eq ("_ _ _ _ _ ")
	end
end