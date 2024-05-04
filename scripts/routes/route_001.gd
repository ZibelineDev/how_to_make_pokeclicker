class_name Route001
extends AbstractRoute


func _ready() -> void:
	key = "001"
	is_unlocked = true
	
	if Game.ref.data.routes.has(key):
		_load()
	else:
		Game.ref.data.routes[key] = DataRoute.new(key)
		(Game.ref.data.routes[key] as DataRoute).is_unlocked = true
		
	ManagerRoutes.ref.pokemon_defeated.connect(_on_pokemon_defeated)


func _on_pokemon_defeated(_key : String) -> void:
	if _key == key:
		increase_defeat_counter()
