class_name ManagerDamage
extends Node
## Manages attack.

## Singleton ref.
static var ref : ManagerDamage

## Singleton check.
func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


## Emitted when the total attack is updated.
signal attack_updated
## Emitted when a Pokémon got its attack changed.
signal pokemon_attack_updated(key: String)


## Enum containing types and their index.
enum Types {
	NORMAL = 0,
	FIGHTING = 1,
	FLYING = 2,
	POISON = 3,
	GROUND = 4,
	ROCK = 5,
	BUG = 6,
	GHOST = 7,
	STEEL = 8,
	FIRE = 9,
	WATER = 10,
	GRASS = 11,
	ELECTRIC = 12,
	PSYCHIC = 13,
	ICE = 14,
	DRAGON = 15,
	DARK = 16,
	FAIRY = 17,
}


## Total attack
var attack : int = -1

var dict : Dictionary = {
	Types.NORMAL : 0,
	Types.FIGHTING : 0,
	Types.FLYING : 0,
	Types.POISON : 0,
	Types.GROUND : 0,
	Types.ROCK : 0,
	Types.BUG : 0,
	Types.GHOST : 0,
	Types.STEEL : 0,
	Types.FIRE : 0,
	Types.WATER : 0,
	Types.GRASS : 0,
	Types.ELECTRIC : 0,
	Types.PSYCHIC : 0,
	Types.ICE : 0,
	Types.DRAGON : 0,
	Types.DARK : 0,
	Types.FAIRY : 0,
}

var normal_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 0.5,
	Types.BUG : 1,
	Types.GHOST : 0,
	Types.STEEL : 0.5,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var fighting_effectiveness : Dictionary = {
	Types.NORMAL : 2,
	Types.FIGHTING : 1,
	Types.FLYING : 0.5,
	Types.POISON : 0.5,
	Types.GROUND : 1,
	Types.ROCK : 2,
	Types.BUG : 0.5,
	Types.GHOST : 0,
	Types.STEEL : 2,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 0.5,
	Types.ICE : 2,
	Types.DRAGON : 1,
	Types.DARK : 2,
	Types.FAIRY : 0.5,
}

var flying_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 2,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 0.5,
	Types.BUG : 2,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 2,
	Types.ELECTRIC : 0.5,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var poison_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 0.5,
	Types.GROUND : 0.5,
	Types.ROCK : 0.5,
	Types.BUG : 1,
	Types.GHOST : 0.5,
	Types.STEEL : 0,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 2,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 1,
	Types.FAIRY : 2,
}

var ground_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 0,
	Types.POISON : 2,
	Types.GROUND : 1,
	Types.ROCK : 2,
	Types.BUG : 0.5,
	Types.GHOST : 1,
	Types.STEEL : 2,
	Types.FIRE : 2,
	Types.WATER : 1,
	Types.GRASS : 0.5,
	Types.ELECTRIC : 2,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var rock_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 0.5,
	Types.FLYING : 2,
	Types.POISON : 1,
	Types.GROUND : 0.5,
	Types.ROCK : 1,
	Types.BUG : 2,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 2,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 2,
	Types.DRAGON : 1,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var bug_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 0.5,
	Types.FLYING : 0.5,
	Types.POISON : 0.5,
	Types.GROUND : 1,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 0.5,
	Types.STEEL : 0.5,
	Types.FIRE : 0.5,
	Types.WATER : 1,
	Types.GRASS : 2,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 2,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 2,
	Types.FAIRY : 0.5,
}

var ghost_effectiveness : Dictionary = {
	Types.NORMAL : 0,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 2,
	Types.STEEL : 1,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 2,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 0.5,
	Types.FAIRY : 1,
}

var steel_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 2,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 0.5,
	Types.WATER : 0.5,
	Types.GRASS : 1,
	Types.ELECTRIC : 0.5,
	Types.PSYCHIC : 1,
	Types.ICE : 2,
	Types.DRAGON : 1,
	Types.DARK : 1,
	Types.FAIRY : 2,
}

var fire_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 0.5,
	Types.BUG : 2,
	Types.GHOST : 1,
	Types.STEEL : 2,
	Types.FIRE : 0.5,
	Types.WATER : 0.5,
	Types.GRASS : 2,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 2,
	Types.DRAGON : 0.5,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var water_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 2,
	Types.ROCK : 2,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 1,
	Types.FIRE : 2,
	Types.WATER : 0.5,
	Types.GRASS : 0.5,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 0.5,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var grass_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 0.5,
	Types.POISON : 0.5,
	Types.GROUND : 2,
	Types.ROCK : 2,
	Types.BUG : 0.5,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 0.5,
	Types.WATER : 2,
	Types.GRASS : 0.5,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 0.5,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var electric_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 2,
	Types.POISON : 1,
	Types.GROUND : 0,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 1,
	Types.FIRE : 1,
	Types.WATER : 2,
	Types.GRASS : 0.5,
	Types.ELECTRIC : 0.5,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 0.5,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var psychic_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 2,
	Types.FLYING : 1,
	Types.POISON : 2,
	Types.GROUND : 1,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 0.5,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 0,
	Types.FAIRY : 1,
}

var ice_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 2,
	Types.POISON : 1,
	Types.GROUND : 2,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 0.5,
	Types.WATER : 0.5,
	Types.GRASS : 2,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 0.5,
	Types.DRAGON : 2,
	Types.DARK : 1,
	Types.FAIRY : 1,
}

var dragon_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 1,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 2,
	Types.DARK : 1,
	Types.FAIRY : 0,
}

var dark_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 0.5,
	Types.FLYING : 1,
	Types.POISON : 1,
	Types.GROUND : 1,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 2,
	Types.STEEL : 1,
	Types.FIRE : 1,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 2,
	Types.ICE : 1,
	Types.DRAGON : 1,
	Types.DARK : 0.5,
	Types.FAIRY : 0.5,
}

var fairy_effectiveness : Dictionary = {
	Types.NORMAL : 1,
	Types.FIGHTING : 2,
	Types.FLYING : 1,
	Types.POISON : 0.5,
	Types.GROUND : 1,
	Types.ROCK : 1,
	Types.BUG : 1,
	Types.GHOST : 1,
	Types.STEEL : 0.5,
	Types.FIRE : 0.5,
	Types.WATER : 1,
	Types.GRASS : 1,
	Types.ELECTRIC : 1,
	Types.PSYCHIC : 1,
	Types.ICE : 1,
	Types.DRAGON : 2,
	Types.DARK : 2,
	Types.FAIRY : 1,
}


func _ready() -> void:
	ManagerExperience.ref.pokemon_level_up.connect(_on_pokemon_level_up)
	ManagerCapture.ref.new_pokemon_captured.connect(_on_new_pokemon_captured)
	TeamManager.ref.team_updated.connect(_on_team_updated)


## Calculate attack from all sources.
func calculate_damages() -> void:
	clear_dictionnary()
	
	var keys : Array[Variant] = Game.ref.data.captured_pokemons.keys()
	
	var _attack : float = 0
	
	for key : String in keys:
		calculate_pokemon_damages(key)
		var data_pokemon : DataCapturedPokemon = Game.ref.data.captured_pokemons[key] as DataCapturedPokemon
		var db_pokemon : DBPokemon = DBPokemons.dict[key] as DBPokemon
		
		dict[db_pokemon.types[0]] += data_pokemon.attack * 0.1
		
		if db_pokemon.types.size() == 1:
			dict[db_pokemon.types[0]] += data_pokemon.attack * 0.1
		
		else:
			dict[db_pokemon.types[1]] += data_pokemon.attack * 0.1
	
	for key : String in Game.ref.data.team:
		var data_pokemon : DataCapturedPokemon = Game.ref.data.captured_pokemons[key] as DataCapturedPokemon
		var db_pokemon : DBPokemon = DBPokemons.dict[key] as DBPokemon
		
		dict[db_pokemon.types[0]] += data_pokemon.attack * 0.9
		
		if db_pokemon.types.size() == 1:
			dict[db_pokemon.types[0]] += data_pokemon.attack * 0.9
		
		else:
			dict[db_pokemon.types[1]] += data_pokemon.attack * 0.9
	
	var dict_keys : Array[Variant] = dict.keys()
	
	for key : Types in dict_keys:
		_attack += dict[key]
	
	attack = int(_attack)
	attack_updated.emit()


## Empties the type dictionary.
func clear_dictionnary() -> void:
	var keys : Array[Variant] = dict.keys()
	
	for key : Types in keys:
		dict[key] = 0


## Calculates damages of a move.
func calculate_move_attack(move : String, target : String) -> int:
	var db_pokemon : DBPokemon = DBPokemons.dict[target] as DBPokemon
	
	var move_type : Types = (DBAttacks.dict[move] as DBAttack).type
	var move_coef : float = (DBAttacks.dict[move] as DBAttack).coef
	
	var type_effectiveness : Dictionary
	
	match move_type:
		Types.NORMAL:
			type_effectiveness = normal_effectiveness
		Types.FIGHTING:
			type_effectiveness = fighting_effectiveness
		Types.FLYING:
			type_effectiveness = flying_effectiveness
		Types.POISON:
			type_effectiveness = poison_effectiveness
		Types.GROUND:
			type_effectiveness = ground_effectiveness
		Types.ROCK:
			type_effectiveness = rock_effectiveness
		Types.BUG:
			type_effectiveness = bug_effectiveness
		Types.GHOST:
			type_effectiveness = ghost_effectiveness
		Types.STEEL:
			type_effectiveness = steel_effectiveness
		Types.FIRE:
			type_effectiveness = fire_effectiveness
		Types.WATER:
			type_effectiveness = water_effectiveness
		Types.GRASS:
			type_effectiveness = grass_effectiveness
		Types.ELECTRIC:
			type_effectiveness = electric_effectiveness
		Types.PSYCHIC:
			type_effectiveness = psychic_effectiveness
		Types.ICE:
			type_effectiveness = ice_effectiveness
		Types.DRAGON:
			type_effectiveness = dragon_effectiveness
		Types.DARK:
			type_effectiveness = dark_effectiveness
		Types.FAIRY:
			type_effectiveness = fairy_effectiveness
	
	var type_coef : float = 1
	
	for type : Types in db_pokemon.types:
		type_coef *= type_effectiveness[type]
	
	var _attack : float = 0
	
	var keys : Array[Variant] = dict.keys()
	
	for key : Types in keys:
		if key == move_type:
			_attack += dict[key]
		
		else:
			_attack += dict[key] * 0.33
	
	var final_attack : float = _attack * type_coef * move_coef
	
	if final_attack < 1:
		return 1
	
	return int(final_attack)


## Calculate a single Pokémon attack.
func calculate_pokemon_damages(key : String) -> void:
	var data_pokemon : DataCapturedPokemon = Game.ref.data.captured_pokemons[key] as DataCapturedPokemon
	var db_pokemon : DBPokemon = DBPokemons.dict[key] as DBPokemon
	
	var pokemon_attack : float = db_pokemon.attack * float(data_pokemon.level) / 100.0
	
	if pokemon_attack < 1:
		pokemon_attack = 1
	
	data_pokemon.attack = pokemon_attack
	pokemon_attack_updated.emit(key)


## Triggered when a Pokémon levels up.
func _on_pokemon_level_up(_key : String) -> void:
	calculate_damages()


## Triggered when a new Pokémon is captured.
func _on_new_pokemon_captured(_key : String) -> void:
	calculate_damages()


func _on_team_updated() -> void:
	calculate_damages()
