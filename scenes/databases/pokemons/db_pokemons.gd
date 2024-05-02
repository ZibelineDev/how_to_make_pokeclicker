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
		10,
	)
	
	dict["0002:01"] = DBPokemon.new(
		"0002:01",
		"Ivysaur",
		68,
		load("res://assets/ivysaur.png") as Texture2D,
		5,
	)
	
	dict["0003:01"] = DBPokemon.new(
		"0003:01",
		"Venusaur",
		88,
		load("res://assets/venusaur.png") as Texture2D,
		1,
	)
	
	dict["0004:01"] = DBPokemon.new(
		"0004:01",
		"Charmander",
		52,
		load("res://assets/charmander.png") as Texture2D,
		10,
	)
	
	dict["0005:01"] = DBPokemon.new(
		"0005:01",
		"Charmeleon",
		68,
		load("res://assets/charmeleon.png") as Texture2D,
		5,
	)
	
	dict["0016:01"] = DBPokemon.new(
		"0016:01",
		"Pidgey",
		42,
		load("res://assets/pidgey.png") as Texture2D,
		75,
	)
	
	dict["0019:01"] = DBPokemon.new(
		"0019:01",
		"Rattata",
		42,
		load("res://assets/rattata.png") as Texture2D,
		80,
	)
	
	dict["0021:01"] = DBPokemon.new(
		"0021:01",
		"Spearow",
		44,
		load("res://assets/spearow.png") as Texture2D,
		75,
	)
	
	dict["0029:01"] = DBPokemon.new(
		"0029:01",
		"Nidoran-F",
		46,
		load("res://assets/nidoran-f.png") as Texture2D,
		50,
	)
	
	dict["0032:01"] = DBPokemon.new(
		"0032:01",
		"Nidoran-M",
		46,
		load("res://assets/nidoran-m.png") as Texture2D,
		50,
	)
	
	dict["0043:01"] = DBPokemon.new(
		"0043:01",
		"Oddish",
		53,
		load("res://assets/oddish.png") as Texture2D,
		75,
	)
	
	dict["0262:01"] = DBPokemon.new(
		"0262:01",
		"Mightyena",
		70,
		load("res://assets/mightyena.png") as Texture2D,
		10,
	)
