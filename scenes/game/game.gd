class_name Game
extends Node
## Main class of the game.


## Singleton reference.
static var ref : Game

## Singleton check.
func _singleton_check() -> void:
	if ref:
		queue_free()
	
	ref = self


## Packed scene containing UserInterface.
@export
var packed_user_interface : PackedScene
## Packed Pokemon Database.
@export
var packed_db_pokemons : PackedScene
## Data of the game.
var data : Data


## EnterTree method.
func _enter_tree() -> void:
	_singleton_check()
	data = Data.new()


## Ready method.
func _ready() -> void:
	_initialise_databases()
	
	var user_interface : Node = packed_user_interface.instantiate()
	add_child(user_interface)


## Initialise databases.
func _initialise_databases() -> void:
	var db_pokemon : Node = packed_db_pokemons.instantiate()
	get_node("Databases").add_child(db_pokemon)
