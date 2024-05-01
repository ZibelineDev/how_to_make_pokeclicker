class_name DBPokemons
extends Node
## Database Node containing all Pokemon informations.


## Singleton ref
static var ref : DBPokemons

## Singleton check.
func _enter_tree() -> void:
	if ref:
		free()
		return
	
	ref = self


## Dictionary containing the data.
static var dict : Dictionary


func _ready() -> void:
	dict["0001:01"] = DBPokemon.new(
		"0001:01",
		"Bulbasaur",
		53,
		load("res://assets/bulbasaur.png") as Texture2D,
	)
	
	dict["0002:01"] = DBPokemon.new(
		"0002:01",
		"Ivysaur",
		68,
		load("res://assets/ivysaur.png") as Texture2D,
	)
	
	dict["0003:01"] = DBPokemon.new(
		"0003:01",
		"Venusaur",
		88,
		load("res://assets/venusaur.png") as Texture2D,
	)
	
	dict["0004:01"] = DBPokemon.new(
		"0004:01",
		"Charmander",
		52,
		load("res://assets/charmander.png") as Texture2D,
	)
	
	dict["0005:01"] = DBPokemon.new(
		"0005:01",
		"Charmeleon",
		68,
		load("res://assets/charmeleon.png") as Texture2D,
	)
	
	dict["0262:01"] = DBPokemon.new(
		"0262:01",
		"Mightyena",
		70,
		load("res://assets/mightyena.png") as Texture2D,
	)
