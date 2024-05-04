class_name AbstractRoute
extends Node


const UNLOCK_GOAL : int = 10


var key : String 

var is_unlocked : bool = false

var defeat_counter : int = 0

var unlock_progress : int = 0


func _load() -> void:
	defeat_counter = (Game.ref.data.routes[key] as DataRoute).defeat_counter


func increase_defeat_counter() -> void:
	defeat_counter += 1 
	(Game.ref.data.routes[key] as DataRoute).defeat_counter = defeat_counter


func progress_unlock() -> void:
	unlock_progress += 1
	
	if unlock_progress >= 10:
		is_unlocked = true
		(Game.ref.data.routes[key] as DataRoute).is_unlocked = true
		ManagerRoutes.ref.route_unlocked.emit(key)
