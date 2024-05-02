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
	@warning_ignore("unsafe_cast")
	var texture : Texture2D = (DBPokemons.ref.dict[pokemon_id] as DBPokemon).texture
	(get_node("%Texture") as TextureRect).texture = texture


func update_label() -> void:
	var text : String = ""
	
	@warning_ignore("unsafe_cast")
	text += (DBPokemons.ref.dict[pokemon_id] as DBPokemon).name
	text += (" (")
	@warning_ignore("unsafe_cast")
	text += str((Game.ref.data.captured_pokemons[pokemon_id] as DataCapturedPokemon).level)
	text += ")"
	
	label.text = text


func _on_pokemon_level_up(id : String) -> void:
	if id == pokemon_id:
		update_label()


func _on_pressed() -> void:
	TeamManager.ref.add_pokemon(pokemon_id)
