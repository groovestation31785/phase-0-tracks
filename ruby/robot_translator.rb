#ROBOT TRANSLATOR

# If a letter is capitalized, and it's in the first half of the alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized, or it's the letter "e", it becomes "buzz".

# IF it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

# "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

# ATTACK IN LITTLE PIECES

# BUSINESS LOGIC

def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvwxyzx"
	halfway = alphabet.length / 2
	is_capitalized = (char.upcase == char)

	if alphabet.index(char.downcase) == nil # if a lowercase character does not match any index found in the alphabet variable, it is not a letter 
		"boing"
	elsif is_capitalized && alphabet.index(char.downcase) < halfway # if it is capitalized AND the lowercase characher is at a position within the alphabet variable that is less that the halfway variable (13)
		"bloop"
	elsif is_capitalized || char == "e"
		"buzz"
	else
		"beep"
	end
end

# Because we are translating each character into a different word, we want to put the new translated version into a different string. If not, the phrase will keep trying to apply its translation onto the new material and the loop with never end

def translate_phrase(phrase)
	char_index = 0 # loop counter
	translated_response = "" # define a new, empty string
	while char_index < phrase.length
		translated_response << translate_char(phrase[char_index]) 
		# the translate_char method is applied to the letter within the phrase found at this specific index. This is then pushed into a new translated_response string instead of changed in place
		char_index += 1
	end
	translated_response
end
# printing within the method is not good practice


# functional decomposition: occurs when a method it too long and does many different actions; makes it easier to break
# separation of concerns: the idea that different pieces of code should have different jobs. Right now the business logic section completes all of the actions that we need it to. We should not tamper with in when it comes to user inferface (that should be separate).


# USER INTERFACE (getting input and printing)


loop do
	puts "Enter a phrase to translate (or type 'q' for quit):"
	inputted_phrase = gets.chomp
	break if  inputted_phrase == "q"
	puts translate_phrase(inputted_phrase)
end