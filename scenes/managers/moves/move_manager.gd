class_name ManagerMoves
extends Node

static var ref : ManagerMoves

func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


## Triggered when the moves were updated
signal moves_updated
signal move_used(key : String)
signal move_requested


var team_moves : Array[String] = []
var chosen_moves : Array[String] = []


func _ready() -> void:
	TeamManager.ref.team_updated.connect(_on_team_updated)
	move_used.connect(_on_move_used)


## Regenerate the full list of moves from the entire team.
func regenerate_moves() -> void:
	var old_moves : Array[String] = team_moves
	team_moves = []
	
	for key : String in Game.ref.data.team:
		for move : String in (DBPokemons.dict[key] as DBPokemon).moves:
			team_moves.append(move)
	
	if old_moves != team_moves:
		moves_updated.emit()


## Return a list a random moves taken from the full list of the team moves.
func generate_moves() -> Array[String]:
	var size : int = team_moves.size()

	if size <= 3:
		chosen_moves = team_moves
		return team_moves
	
	var moves : Array[String] = []
	
	for move : String in team_moves:
		moves.append(move)
	
	var _chosen_moves : Array[String] = []
	
	for i : int in range(1,4):
		var roll : int = randi_range(0, size - i)
		
		_chosen_moves.append(moves[roll])
		moves.pop_at(roll)
	
	chosen_moves = _chosen_moves
	return chosen_moves


func clear_chosen_moves() -> void:
	chosen_moves = []


func use_move(key : String) -> void:
	var timer : Timer = (get_node("ClickTimer") as Timer)
	
	if timer.time_left > 0:
		return
	
	timer.start()
	move_used.emit(key)


func use_random_move() -> void:
	if chosen_moves.size() <= 0:
		return
	
	if chosen_moves.size() == 1:
		move_used.emit(chosen_moves[0])
		return
	
	var roll : int = randi_range(0, chosen_moves.size() - 1)
	
	move_used.emit(chosen_moves[roll])


func _on_team_updated() -> void:
	regenerate_moves()


func _on_move_used(key : String) -> void:
	clear_chosen_moves()
	print("Move used : %s" %(DBAttacks.dict[key] as DBAttack).name)
