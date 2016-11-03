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


client_details = {}

puts "What is your name?"
name = gets.chomp
client_details[:name] = name


puts "How many children do you have?"
children = gets.chomp.to_i
client_details[:children] = children


puts "Describe your preferred decor theme."
decor_theme = gets.chomp
client_details[:decor_theme] = decor_theme


puts "You have a minimalist style: true or false?"
minimalist = gets.chomp
client_details[:minimalist] = minimalist


puts "How many rooms do you have in your house?"
num_rooms = gets.chomp.to_i
client_details[:num_rooms] = num_rooms


puts "What are some of your favorite colors?"
fav_colors = gets.chomp
client_details[:fav_colors] = fav_colors


puts "If you think you should change one of your answers, 
type the category that should have a change: name, children, decor_theme, 
minimalist, num_rooms, fav_colors.
If not, type 'none'."
change_answer = gets.chomp.to_sym

if change_answer == :children || change_answer == :num_rooms
	puts "Type what you would like to change."
	new_response = gets.chomp.to_i
else
	puts "Type what you would like to change."
	new_response = gets.chomp
end
	
client_details[change_answer] = new_response

p client_details



