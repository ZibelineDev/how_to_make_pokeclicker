class_name StateLeaveRoute
extends AbstractState


@export
var master : MainViewMaster
@export
var state_manager : MainViewStateManager


func enter_state() -> void:
	clear_route()
	state_manager.change_state(state_manager.enter_route_state)


func process(_delta: float) -> void:
	pass


func leave_state() -> void:
	pass


## Initialise Route.
func clear_route() -> void:
	master.total_weight = -1
	master.encounter_table = []
