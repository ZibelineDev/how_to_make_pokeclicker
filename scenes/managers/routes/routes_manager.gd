class_name ManagerRoutes
extends Node


static var ref : ManagerRoutes


func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


signal route_updated
signal pokemon_defeated(key : String)
signal route_unlocked(key : String)


func update_route(route_id : String) -> void:
	if Game.ref.data.current_route == route_id:
		return
	
	Game.ref.data.current_route = route_id
	route_updated.emit()
