class_name Game
extends Node
## Main class of the game.


## Singleton reference.
static var ref : Game

## Singleton check.
func _singleton_check() -> void:
	if ref:
		free()
		return
	
	ref = self


## Packed scene containing UserInterface.
@export
var packed_user_interface : PackedScene
## Packed Pokemons Database.
@export
var packed_db_pokemons : PackedScene
## Packed Routes Database.
@export
var packed_db_routes : PackedScene
## Data of the game.
var data : Data


## EnterTree method.
func _enter_tree() -> void:
	_singleton_check()
	data = Data.new()
	SaveSystem.load_data()


## Ready method.
func _ready() -> void:
	_initalise_starter_pokemon()
	_initialise_damages()
	ManagerMoves.ref.regenerate_moves()
	
	var user_interface : Node = packed_user_interface.instantiate()
	add_child(user_interface)


## Initialise databases.
func _initialise_databases() -> void:
	var databases : Node = get_node("Databases")
	
	var db_pokemon : Node = packed_db_pokemons.instantiate()
	databases.add_child(db_pokemon)
	
	var db_routes : Node = packed_db_routes.instantiate()
	databases.add_child(db_routes)


## Initialises damages.
func _initialise_damages() -> void:
	ManagerDamage.ref.calculate_damages()


func _initalise_starter_pokemon() -> void:
	if not Game.ref.data.captured_pokemons.has("0025:01"):
		ManagerCapture.ref.capture_pokemon("0025:01")
		##ManagerCapture.ref.capture_pokemon("0016:01")
		##ManagerCapture.ref.capture_pokemon("0019:01")
		TeamManager.ref.add_pokemon("0025:01")
		ManagerExperience.ref.level_up_pokemon(5, "0025:01")


func _on_save_timer_timeout() -> void:
	SaveSystem.save_data()
