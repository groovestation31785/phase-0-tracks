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
	index += 1

	end
end

puts "Type a word"
string = gets.chomp

print encrypt(string)