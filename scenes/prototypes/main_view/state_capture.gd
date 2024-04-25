class_name StateCapturePokemon
extends AbstractState


const CAPTURE_TIME : float = 2

@export
var state_manager : MainViewStateManager
@export
var timer : Timer
@export
var progress_bar : ProgressBar
@export
var pokeball_texture : Texture2D


func enter_state() -> void:
	timer.wait_time = CAPTURE_TIME
	timer.start()
	update_labels_for_capture()
	progress_bar.max_value = CAPTURE_TIME
	(get_node("%TextureRect") as TextureRect).texture = pokeball_texture


func process(delta: float) -> void:
	var progress : float = timer.wait_time - timer.time_left
	progress_bar.value = progress
	


func leave_state() -> void:
	timer.stop()


func complete_capture() -> void:
	state_manager.change_state(state_manager.generate_pokemon_state)


func update_labels_for_capture() -> void:
	(get_node("%LeftHp") as Label).text = ""
	(get_node("%MiddleHp") as Label).text = ""
	(get_node("%RightHp") as Label).text = ""


func _on_capture_timer_timeout() -> void:
	complete_capture()
