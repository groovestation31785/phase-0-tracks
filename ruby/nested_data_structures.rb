#Info is from the Kanto Pokedex...obvs.

pokemon = {
	grass_type: {
		for_battle: "Not particularly",
		grass_stats: {
			only_grass: 0,
			partial_grass: 14
		}, 

		grass_examples: [
		"Venusaur",
		"Vileplume",
		"Exeggutor"
		]
	},

	psychic_type: {
		for_battle: "I like having one for two on my team",
		psychic_stats: {
			only_psychic: 8,
			partial_psychic: 6
		}, 

		psychic_examples: [
		"Mr.Mime",
		"Alakazam",
		"Hypno"
		]
	},

	water_type: {
		for_battle: "Sometimes like against Rock or Ground-types",
		water_stats: {
			only_water: 18,
			partial_water: 14
		}, 

		water_examples: [
		"Blastoise",
		"Poliwrath",
		"Starmie"
		]
	}
}

p pokemon[:water_type][:for_battle]
p pokemon[:water_type][:water_stats][:partial_water]
p pokemon[:psychic_type][:psychic_examples][2] = "Mewtwo"
p pokemon[:grass_type][:for_battle] = "Who am I kidding? I never use Grass-types"
p pokemon[:psychic_type][:psychic_examples].push pokemon[:grass_type][:grass_examples].delete("Exeggutor")


p pokemon