=begin
ENCRYPT PSEUDOCODE
-Ask the user to type a password
	-Cycle through each letter of the password
	Until the index number reaches nil:
		Use the next method to get the next letter

=end

def encrypt(str)
 password = str
 index = 0

 while index < password.length do
     if password[index] == "z"    #if the index character is "z" it will
       password[index] = "a"      #change that character to "a" to avoid edge cases
     elsif (password[index] =~ /\s+/) #detects if there is a space in the string
       password[index] = " "      #prints the space character as is, unchanged.
     else
       password[index] = password[index].next!  #prints the character at that index number
     end
   index += 1              # increases the index number
 end
 puts password
end

=begin
DECRYPT PSEUDOCODE
Ask the user to type a password:
	-Cycle through each character to find its corresponding index number within the alphabet
	-Substract that index's number by one
	-Retrieve the new index number
	-Match the letter with the corresponding index
	-For every space character:
		-Do not move the space to the previous character.
		-Use the space character
	-Continue through all the letters until you reach the end of the given string

=end


def decrypt(str)
 password = str
 something = 0
 alpha_index = 0
 alpha = "abcdefghijklmnopqrstuvwxyz"

 while something < password.length do
     if (password[something] =~ /\s/)
       str[something] = " "
     else
       alpha_index = alpha.index(password[something])
       alpha_index -= 1
       password[something] = alpha[alpha_index]
     end
   something += 1
 end
 puts password
end

# Driver code
# decrypt(encrypt("swordfish"))      # Encrypt runs the string and returns a new string
                                  # Decrypt uses the encrypted string as an argument
                                  # and decrypts to a new string


=begin
 Ask the user if they want their password encrypted or decrpyted.
   If they answer "encrypted" ask for password and run encrypt method
   Or they answer "decrypted" ask for password and run decrypt method
   Otherwise tell them invalid repsonse and ask first question again

   Print the password
=end

puts "Would you like to decrypt or encrypt your password"
response = gets.chomp

until response == "encrypt" || response == "decrypt"
 puts "Try that again."
 response = gets.chomp
end 

if response == "decrypt"
     puts "What is the password?"
     password = gets.chomp
     decrypt(password)
elsif response == "encrypt"
     puts "What is the password"
     password = gets.chomp
     encrypt(password)
   else
     puts "Invalid response"
end