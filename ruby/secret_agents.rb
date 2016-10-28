# Ask user for the password
# Retrieve passwork 
# Cycle through each letter of the password
	# Until the index number reaches nil:
		# Use the next method to get the next letter





def encrypt(str)
	index = 0
	str_leng = str.length


	while index < str_leng
		
		print str[index].next

		if str[index] == " "
		end
		
	index += 1

	end
end

print encrypt("hello")


def decrypt(str)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	str_leng = str.length

	


end






=begin we did a loop just like the encrypt one… but the 
conditional was a bit different, since we don’t have a 
.previous method to change the character for its previous one

angroover [8:54 PM]  
Did you use the alphabet to find the position of the letter, 
so that the number would be the thing moving backward?

elaine [8:54 PM]  
oh, I can show you our pseudocode, maybe just this will help

[8:54]  

The decrypt method needs to accept a string;
We need a loop to go through each character of the string;
We need to find the index of each character of the alphabet:
if character is not a space character,
    we change the character to the alphabet-string-character
     at index minus one.


[8:55]  
yeah, we used the alphabet variable to find the index of the 
letters

[8:56]  
and we subtracted one to this index

=end