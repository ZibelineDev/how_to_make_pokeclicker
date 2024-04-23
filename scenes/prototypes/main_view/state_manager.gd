class_name MainViewStateManager
extends Node


@export
var enter_route_state : AbstractState
@export
var leave_route_state : AbstractState
@export
var generate_pokemon_state : AbstractState
@export
var combat_state : AbstractState


var current_state : AbstractState


func _ready() -> void:
	change_state(enter_route_state)


func _process(delta: float) -> void:
	current_state.process(delta)


func change_state(state : AbstractState) -> void:
	if state == current_state:
		return
	
	if current_state:
		current_state.leave_state()
	
	current_state = state
	current_state.enter_state()
