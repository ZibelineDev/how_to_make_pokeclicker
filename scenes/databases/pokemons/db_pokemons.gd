class_name DBPokemons
extends Node
## Database Node containing all Pokemon informations.


## Singleton ref
static var ref : DBPokemons

## Singleton check.
func _enter_tree() -> void:
	if ref:
		free()
	
	ref = self


## Dictionary containing the data.
static var dict : Dictionary


func _ready() -> void:
	dict["0001:01"] = DBPokemon.new(
		"0001:01",
		"Bulbasaur",
		1,
		"res://assets/bulbasaur.png",
	)
	
	dict["0002:01"] = DBPokemon.new(
		"0002:01",
		"Ivysaur",
		2,
		"res://assets/ivysaur.png",
	)
	
	dict["0003:01"] = DBPokemon.new(
		"0003:01",
		"Venusaur",
		3,
		"res://assets/venusaur.png",
	)
	
	dict["0262:01"] = DBPokemon.new(
		"0262:01",
		"Mightyena",
		2,
		"res://assets/mightyena.png",
	)
