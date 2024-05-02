class_name ManagerMoves
extends Node

static var ref : ManagerMoves

func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


signal moves_updated
signal move_used(key : String)
signal move_requested


var team_moves : Array[String] = []


func _ready() -> void:
	TeamManager.ref.team_updated.connect(_on_team_updated)


func regenerate_moves() -> void:
	var old_moves : Array[String] = team_moves
	team_moves = []
	
	for key : String in Game.ref.data.team:
		for move : String in (DBPokemons.dict[key] as DBPokemon).moves:
			team_moves.append(move)
	
	if old_moves != team_moves:
		moves_updated.emit()


func generate_moves() -> Array[String]:
	var size : int = team_moves.size()

	if size <= 3:
		return team_moves
	
	var moves : Array[String] = team_moves
	var chosen_moves : Array[String] = []
	
	for i : int in range(1,3):
		var roll : int = randi_range(0, size - i)
		
		chosen_moves.append(moves[roll])
		moves.pop_at(roll)
	
	return chosen_moves


func _on_team_updated() -> void:
	regenerate_moves()
