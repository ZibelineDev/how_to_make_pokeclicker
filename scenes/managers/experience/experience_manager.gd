class_name ManagerExperience
extends Node

static var ref : ManagerExperience

func _enter_tree() -> void:
	if ref:
		free()
		return
	
	ref = self


signal pokemon_level_up(id : String)


func update_level(id : String) -> void:
	@warning_ignore("unsafe_cast")
	var experience : int = (Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).experience
	var level : int = 1
	var should_notify : bool = false
	
	if experience >= 10:
		level = 2
	if experience >= 25:
		level = 3
	if experience >= 75:
		level = 4
	if experience >= 150:
		level = 5
	if experience >= 250:
		level = 6
	
	@warning_ignore("unsafe_cast")
	var old_level : int = (Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).level
	
	if level != old_level:
		should_notify = true
	
	@warning_ignore("unsafe_cast")
	(Game.ref.data.captured_pokemons[id] as DataCapturedPokemon).level = level
	
	if should_notify:
		pokemon_level_up.emit(id)


func add_experience(experience : int) -> void:
	var keys : Array[Variant] = Game.ref.data.captured_pokemons.keys()
	
	for key : String in keys:
		@warning_ignore("unsafe_cast")
		(Game.ref.data.captured_pokemons[key] as DataCapturedPokemon).experience += experience
		update_level(key)
