class_name DataRoute
extends Resource


@export
var key : String = ""
@export
var defeat_counter : int = 0
@export
var is_unlocked : bool = false
@export
var unlock_progress : int = 0


func _init(_key : String) -> void:
	key = _key
