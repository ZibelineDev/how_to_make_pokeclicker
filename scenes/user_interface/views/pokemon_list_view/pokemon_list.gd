extends VBoxContainer

@export
var packed_list_item : PackedScene


func _ready() -> void:
	_load_pokemons()
	ManagerCapture.ref.new_pokemon_captured.connect(_on_new_pokemon_captured)


func _load_pokemons() -> void:
	var keys : Array[Variant] = Game.ref.data.captured_pokemons.keys()
	
	for key : String in keys:
		_create_pokemon_list_item(key)


func _create_pokemon_list_item(id : String) -> void:
	var node : PokemonListItem = packed_list_item.instantiate() as PokemonListItem
	
	node.pokemon_id = id
	
	add_child(node)


func _on_new_pokemon_captured(id : String) -> void:
	_create_pokemon_list_item(id)
