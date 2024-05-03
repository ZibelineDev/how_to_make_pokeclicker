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
			load("res://assets/bulbasaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002"],
			53,
			10,
	)
	
	dict["0002:01"] = DBPokemon.new(
			"0002:01",
			"Ivysaur",
			load("res://assets/ivysaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002"],
			68,
			5,
	)
	
	dict["0003:01"] = DBPokemon.new(
			"0003:01",
			"Venusaur",
			load("res://assets/venusaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002"],
			88,
			1,
	)
	
	dict["0004:01"] = DBPokemon.new(
			"0004:01",
			"Charmander",
			load("res://assets/charmander.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			[],
			52,
			10,
	)
	
	dict["0005:01"] = DBPokemon.new(
			"0005:01",
			"Charmeleon",
			load("res://assets/charmeleon.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			[],
			68,
			5,
	)
	
	dict["0010:01"] = DBPokemon.new(
			"0010:01",
			"Caterpie",
			load("res://assets/caterpie.png") as Texture2D,
			[ManagerDamage.Types.BUG],
			[],
			33,
			90,
	)
	
	dict["0013:01"] = DBPokemon.new(
			"0013:01",
			"Weedle",
			load("res://assets/weedle.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			[],
			33,
			90,
	)
	
	dict["0016:01"] = DBPokemon.new(
			"0016:01",
			"Pidgey",
			load("res://assets/pidgey.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["001", "003"],
			42,
			75,
	)
	
	dict["0019:01"] = DBPokemon.new(
			"0019:01",
			"Rattata",
			load("res://assets/rattata.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["001"],
			42,
			80,
	)
	
	dict["0021:01"] = DBPokemon.new(
			"0021:01",
			"Spearow",
			load("res://assets/spearow.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			[],
			44,
			75,
	)
	
	dict["0029:01"] = DBPokemon.new(
			"0029:01",
			"Nidoran-F",
			load("res://assets/nidoran-f.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			[],
			46,
			50,
	)
	
	dict["0032:01"] = DBPokemon.new(
			"0032:01",
			"Nidoran-M",
			load("res://assets/nidoran-m.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			[],
			46,
			50,
	)
	
	dict["0043:01"] = DBPokemon.new(
			"0043:01",
			"Oddish",
			load("res://assets/oddish.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			[],
			53,
			75,
	)
	
	dict["0262:01"] = DBPokemon.new(
			"0262:01",
			"Mightyena",
			load("res://assets/mightyena.png") as Texture2D,
			[ManagerDamage.Types.DARK],
			[],
			70,
			10,
	)
