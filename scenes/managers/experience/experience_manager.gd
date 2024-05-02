class_name ManagerExperience
extends Node

static var ref : ManagerExperience

func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


signal pokemon_level_up(id : String)


func update_level(id : String) -> void:
	var experience : float = (Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).experience
	var level : int = 1
	var should_notify : bool = false
	
	level = int(experience ** (1.0/3.0))
	
	var old_level : int = (Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).level
	
	if level != old_level:
		should_notify = true
	
	(Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).level = level
	
	if should_notify:
		pokemon_level_up.emit(id)


func add_experience(experience : float) -> void:
	var keys : Array[Variant] = Game.ref.data.captured_pokemons.keys()
	add_experience_to_pokemons(experience * 0.1, keys)
	
	add_experience_to_pokemons(experience * 0.9, Game.ref.data.team)



func add_experience_to_pokemons(experience : float, keys : Array[Variant]) -> void:
	for key : String in keys:
		var old_value : float = (Game.ref.data.captured_pokemons[key] as DataCapturedPokemon).experience
		var new_value : float = old_value + (experience * 0.1)
		
		if (new_value) >= 1000000:
			(Game.ref.data.captured_pokemons[key] as DataCapturedPokemon).experience = 1000000
		else:
			(Game.ref.data.captured_pokemons[key] as DataCapturedPokemon).experience = new_value
		
		update_level(key)
