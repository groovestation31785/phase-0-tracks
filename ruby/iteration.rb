def november
	relation = "Tomorrow"
	date = 3
	puts "Today is November 2"
	yield(relation, date)
end

#november { |relation, date| puts "#{relation} is November #{date}"}


starter_pokemon = ["Bulbasaur", "Charmander", "Squirtle"]

beginner_pokemon = {
	grass: "Bulbasaur",
	fire: "Charmander",
	water: "Squirtle"
}

p starter_pokemon
starter_pokemon.each { |x| puts "#{x} is a Pokemon"}
p starter_pokemon.map! { |x| x + "!" }


beginner_pokemon.each { |type, name| puts "#{name} is a #{type} Pokemon"}
# beginner_pokemon.map { |type, name| puts "#{name} is a #{type} Pokemon"}