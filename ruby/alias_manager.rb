=begin
RELEASE 0
Receive the name that must be changed
Make all letters lowercase and split the names apart so they are individual letters
Make a list of all the vowels and all of the consonants
Loop through all of the letters to find the vowels:
  When the program finds a vowel:
    Replace that vowel with the next vowel in the list
  Otherwise, do not change the letter
Do the same thing with the consonants:
   Loop through all of the letters to find the consonants:
  When the program finds a consonants:
    Replace that consonant with the next consonant in the list
  Otherwise, do not change the letterS
After all letters have changed, swap the names and capitalize them.

=end

def change_vowel(name)
  vowels = ["a", "e", "i", "o", "u"]
  
  name_array = name.downcase.split('')
  new_name = name_array.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  new_name.join
end

# p change_vowel("Alicia Florrezs")

def change_cons(name)
  consonants = ("bcdfghjklmnpqrstvwxyz").chars
  
  name_array = name.split('')
  new_name = name_array.map do |letter|
    if consonants.include?(letter)
      consonants.rotate(1)[consonants.index(letter)]
    else
      letter
    end
  end
  new_name.join  
end

# p change_cons(change_vowel("Alicia Florrezs"))

def swap_names(name)
  fullname_array = name.split
  fullname_array[0], fullname_array[1] = fullname_array[1], fullname_array[0]
  cap_fullname = fullname_array.map(&:capitalize)
  cap_fullname.join(" ")
end


# p swap_names(change_cons(change_vowel("Alicia Florrezs")))


list_agent_alias = {}

# RELEASE 1
puts "Hello, agent. Let's give you an alias for your mission. Type in your first and last name."
agent_name = gets.chomp

alias_name = swap_names(change_cons(change_vowel(agent_name)))
list_agent_alias[agent_name] = alias_name


puts "Would you like to create another alias? If so, type in the name. If not, type 'quit'."
agent_name = gets.chomp


until agent_name == "quit"
  alias_name = swap_names(change_cons(change_vowel(agent_name)))
  list_agent_alias[agent_name] = alias_name
  puts "Create another one? Type the name if yes; otherwise type 'quit'."
  agent_name = gets.chomp
end


# RELEASE 2 

list_agent_alias.each do |name, fake|
  puts "#{fake} is an alias for Agent #{name}."
end
