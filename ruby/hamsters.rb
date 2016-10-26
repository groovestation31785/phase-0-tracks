puts "What is the hamster's name?"
hamnm = gets.chomp
puts "So the hamster's name is #{hamnm}."

puts "How deeply do you sleep, scale of one to ten?"
vollev = gets.chomp.to_i
puts "Alright. I will put down #{vollev}."

puts "What color of hamster do you want?"
hamcol = gets.chomp
puts "A(n) #{hamcol} hamster"

puts "Is the hamster a good or bad candidate for adoption?"
adopt = gets.chomp
puts "So the hamster is a #{adopt} candidate."

puts "How old is the hamster?"
age = gets.chomp


if age == ""
	age = nil
	puts "You aren't sure of the age?"
elsif age = age.to_i
	puts "OK. The hamster is #{age} years old."
	age = age.to_i
end