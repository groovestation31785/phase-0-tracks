=begin
Ask the user for the following information:
	-Name
	-Number of children
	-Decor theme
	-Minimalist style (t/f)
	-Number of rooms in their house
	-Favorite colors
	If their response is a number:
		-Convert string answer to integer
Show the user their responses in Hash form
	If the user thinks there is a mistake:
		-Ask for an update:
			-Allow them to type the change
	-Otherwise:
		-They should type "done" if there are no changes
Show the user the updated response
=end


client_details {}

puts "What is your name?"
name = gets.chomp

puts "How many children do you have?"
children = get.chomp.to_i

puts "Describe your preferred decor theme."
decor_theme = gets.chomp

puts "You have a minimalist style: true or false?"
minimalist = gets.chomp

puts "How many rooms do you have in your house?"
num_rooms = gets.chomp.to_i

puts "What are some of your favorite colors?"
fav_colors = gets.chomp



p client_details[:name]

