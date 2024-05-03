class_name ManagerCapture
extends Node


static var ref : ManagerCapture

func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


signal new_pokemon_captured(id : String)
signal pokemon_captured(id : String)


func capture_pokemon(id : String) -> void:
	if Game.ref.data.captured_pokemons.has(id):
		@warning_ignore("unsafe_cast")
		(Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).capture_counter += 1
		pokemon_captured.emit(id)
	
	else:
		Game.ref.data.captured_pokemons[id] = DataCapturedPokemon.new(id)
		new_pokemon_captured.emit(id)
