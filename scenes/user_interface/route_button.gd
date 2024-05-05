class_name RouteButton
extends Button

@export
var key : String


func _ready() -> void:
	if (Game.ref.data.routes[key] as DataRoute).is_unlocked:
		disabled = false
		visible = true
	
	else:
		disabled = true
		visible = false
		ManagerRoutes.ref.route_unlocked.connect(_on_route_unlocked)
	
	update_text()


func update_text() -> void:
	text = (DBRoutes.dict[key] as DBRoute).name


func unlock_route() -> void:
	visible = true
	disabled = false


func _on_route_unlocked(_key : String) -> void:
	if key == _key:
		unlock_route()


func _on_button_pressed() -> void:
	ManagerRoutes.ref.update_route(key)


func _on_pressed() -> void:
	ManagerRoutes.ref.update_route(key)
