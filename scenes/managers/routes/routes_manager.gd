class_name ManagerRoutes
extends Node


static var ref : ManagerRoutes


func _enter_tree() -> void:
	if ref:
		free()
		return
	
	ref = self


signal route_updated


func update_route(route_id : String) -> void:
	if Game.ref.data.current_route == route_id:
		return
	
	Game.ref.data.current_route = route_id
	route_updated.emit()
