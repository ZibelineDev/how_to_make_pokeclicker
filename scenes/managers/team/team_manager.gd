class_name TeamManager
extends Node

static var ref : TeamManager

func _enter_tree() -> void:
	if ref:
		free()
		return
	
	ref = self


signal team_updated


@onready 
var team : Array[String] = Game.ref.data.team


func add_pokemon(key : String) -> void:
	if team.size() >= 4:
		return
	
	var already_in_team : bool = false
	
	for team_key : String in team:
		if team_key == key:
			already_in_team = true
	
	if not already_in_team:
		team.append(key)
		team_updated.emit()


func remove_pokemon(index : int) -> void:
	if team.size() <= 1:
		return
	
	team.pop_at(index)
	team_updated.emit()
