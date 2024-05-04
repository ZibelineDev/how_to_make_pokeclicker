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
			load("res://assets/pokemons/bulbasaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002", "004"],
			53,
			10,
	)
	
	dict["0002:01"] = DBPokemon.new(
			"0002:01",
			"Ivysaur",
			load("res://assets/pokemons/ivysaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002"],
			68,
			5,
	)
	
	dict["0003:01"] = DBPokemon.new(
			"0003:01",
			"Venusaur",
			load("res://assets/pokemons/venusaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002"],
			88,
			1,
	)
	
	dict["0004:01"] = DBPokemon.new(
			"0004:01",
			"Charmander",
			load("res://assets/pokemons/charmander.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			[],
			52,
			10,
	)
	
	dict["0005:01"] = DBPokemon.new(
			"0005:01",
			"Charmeleon",
			load("res://assets/pokemons/charmeleon.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			[],
			68,
			5,
	)
	
	dict["0010:01"] = DBPokemon.new(
			"0010:01",
			"Caterpie",
			load("res://assets/pokemons/caterpie.png") as Texture2D,
			[ManagerDamage.Types.BUG],
			["007"],
			33,
			90,
	)
	
	dict["0013:01"] = DBPokemon.new(
			"0013:01",
			"Weedle",
			load("res://assets/pokemons/weedle.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			["007", "005"],
			33,
			90,
	)
	
	dict["0016:01"] = DBPokemon.new(
			"0016:01",
			"Pidgey",
			load("res://assets/pokemons/pidgey.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["001", "003"],
			42,
			75,
	)
	
	dict["0019:01"] = DBPokemon.new(
			"0019:01",
			"Rattata",
			load("res://assets/pokemons/rattata.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["001"],
			42,
			80,
	)
	
	dict["0021:01"] = DBPokemon.new(
			"0021:01",
			"Spearow",
			load("res://assets/pokemons/spearow.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["001", "006"],
			44,
			75,
	)
	
	dict["0025:01"] = DBPokemon.new(
			"0025:01",
			"Pikachu",
			load("res://assets/pokemons/pikachu.png") as Texture2D,
			[ManagerDamage.Types.ELECTRIC],
			["008"],
			54,
			25,
	)
	
	dict["0029:01"] = DBPokemon.new(
			"0029:01",
			"Nidoran-F",
			load("res://assets/pokemons/nidoran-f.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["005"],
			46,
			50,
	)
	
	dict["0032:01"] = DBPokemon.new(
			"0032:01",
			"Nidoran-M",
			load("res://assets/pokemons/nidoran-m.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["005"],
			46,
			50,
	)
	
	dict["0043:01"] = DBPokemon.new(
			"0043:01",
			"Oddish",
			load("res://assets/pokemons/oddish.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002", "004"],
			53,
			75,
	)
	
	dict["0262:01"] = DBPokemon.new(
			"0262:01",
			"Mightyena",
			load("res://assets/pokemons/mightyena.png") as Texture2D,
			[ManagerDamage.Types.DARK],
			[],
			70,
			10,
	)
