# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
"SpOoKy HaLLowEEn!".swapcase


# "zom".<???>
# => “zoom”


"enhance".center(15)
# => "    enhance    "
"Party Time".center(30, "!")


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"I'm not shouting!".upcase


"the usual" << " suspects"
"the usual".concat("suspects")
#=> "the usual suspects"
"This too was found".concat("by accident.")


" suspects".prepend("the usual")
# => "the usual suspects"
" by accident.".prepend("I found this")


"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
"I did it because I was hungry".chop


# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"


"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
"Hee callss mee Allyse Groover.".squeeze

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
"h".ord
"i".ord

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
"Gadsby is a lipogrammatic work containing 50,110 words without any 'e'.".count("e")
