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


func _ready() -> void:
	ManagerExperience.ref.pokemon_level_up.connect(_on_pokemon_level_up)
	ManagerCapture.ref.new_pokemon_captured.connect(_on_new_pokemon_captured)
	TeamManager.ref.team_updated.connect(_on_team_updated)


## Calculate attack from all sources.
func calculate_damages() -> void:
	var keys : Array[Variant] = Game.ref.data.captured_pokemons.keys()
	
	var _attack : float = 0
	
	for key : String in keys:
		calculate_pokemon_damages(key)
		var data_pokemon : DataCapturedPokemon = Game.ref.data.captured_pokemons[key] as DataCapturedPokemon
		
		_attack += data_pokemon.attack * 0.1
	
	for key : String in Game.ref.data.team:
		var data_pokemon : DataCapturedPokemon = Game.ref.data.captured_pokemons[key] as DataCapturedPokemon
		
		_attack += data_pokemon.attack * 0.9
	
	attack = int(_attack)
	attack_updated.emit()


## Calculate a single Pokémon attack.
func calculate_pokemon_damages(key : String) -> void:
	var data_pokemon : DataCapturedPokemon = Game.ref.data.captured_pokemons[key] as DataCapturedPokemon
	var db_pokemon : DBPokemon = DBPokemons.dict[key] as DBPokemon
	
	var pokemon_attack : float = db_pokemon.attack * float(data_pokemon.level) / 100.0
	
	## Temporary multiplier before type rework
	pokemon_attack *= 2
	
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
