class_name DataCapturedPokemon
extends Resource

@export
var id : String
@export
var capture_counter : int = 1
@export
var level : int = 1
@export 
var experience : int = 0


func _init(
	_id : String,
) -> void:
	id = _id
