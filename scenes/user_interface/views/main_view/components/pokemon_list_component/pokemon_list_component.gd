class_name PokemonListItem
extends Control
## Item displaying a captured Pokémon in the list.

## Pokémon name & level.
@export
var label : Label
## Id of the Pokémon.
var pokemon_id : String


func _ready() -> void:
	ManagerExperience.ref.pokemon_level_up.connect(_on_pokemon_level_up)
	update_label()
	initialise_texture()


func initialise_texture() -> void:
	var texture : Texture2D = (DBPokemons.ref.dict[pokemon_id] as DBPokemon).texture
	(get_node("%Texture") as TextureRect).texture = texture


func update_label() -> void:
	var text : String = ""
	
	text += (DBPokemons.ref.dict[pokemon_id] as DBPokemon).name
	text += (" (")
	text += str((Game.ref.data.captured_pokemons[pokemon_id] as DataCapturedPokemon).level)
	text += ")"
	
	label.text = text
	
	var tooltip : String = ""
	
	tooltip += "Attack : %s" %int((Game.ref.data.captured_pokemons[pokemon_id] as DataCapturedPokemon).attack)
	tooltip += "\n\n"
	tooltip += "Moves :"
	
	for move : String in (DBPokemons.dict[pokemon_id] as DBPokemon).moves:
		tooltip += "\n   -%s" %(DBAttacks.dict[move] as DBAttack).name
	
	tooltip_text = tooltip


func _on_pokemon_level_up(id : String) -> void:
	if id == pokemon_id:
		update_label()


func _on_pressed() -> void:
	TeamManager.ref.add_pokemon(pokemon_id)
