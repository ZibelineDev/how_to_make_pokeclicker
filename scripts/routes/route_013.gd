class_name Route013
extends AbstractRoute


func _ready() -> void:
	key = "013"
	
	if Game.ref.data.routes.has(key):
		_load()
	else:
		Game.ref.data.routes[key] = DataRoute.new(key)
	
	ManagerRoutes.ref.pokemon_defeated.connect(_on_pokemon_defeated)


func _on_pokemon_defeated(_key : String) -> void:
	if _key == key:
		increase_defeat_counter()
	
	if not is_unlocked:
		if _key == "008":
			progress_unlock()
