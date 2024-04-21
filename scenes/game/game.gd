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
## Data of the game.
var data : Data


## EnterTree method.
func _enter_tree() -> void:
	_singleton_check()
	data = Data.new()


## Ready method.
func _ready() -> void:
	var user_interface : Node = packed_user_interface.instantiate()
	add_child(user_interface)
