extends VBoxContainer

@export
var packed_list_item : PackedScene


func _ready() -> void:
	ManagerCapture.ref.new_pokemon_captured.connect(_on_new_pokemon_captured)


func create_pokemon_list_item(id : String) -> void:
	var node : PokemonListItem = packed_list_item.instantiate() as PokemonListItem
	
	node.pokemon_id = id
	
	add_child(node)


func _on_new_pokemon_captured(id : String) -> void:
	create_pokemon_list_item(id)
