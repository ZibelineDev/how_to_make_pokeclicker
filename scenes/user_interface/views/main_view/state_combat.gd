class_name StateCombat
extends AbstractState


@export
var master : MainViewMaster
@export
var state_manager : MainViewStateManager
@export
var combat_timer : Timer
@export
var texture_button : TextureButton


func _ready() -> void:
	ManagerMoves.ref.move_used.connect(_on_move_used)


func enter_state() -> void:
	combat_timer.start()
	texture_button.disabled = false
	ManagerMoves.ref.move_requested.emit()


func process(_delta: float) -> void:
	pass


func leave_state() -> void:
	combat_timer.stop()
	texture_button.disabled = true


func apply_damages_from_move(key : String) -> void:
	var move_damage : int = ManagerDamage.ref.calculate_move_attack(key, master.current_pokemon_id)
	
	master.hp -= move_damage
	
	if master.hp <= 0:
		master.hp = 0
	
	master.progress_bar.value = master.hp
	
	if master.hp == 0:
		on_pokemon_defeated()
	
	if master.hp != 0:
		master.update_left_hp()
		ManagerMoves.ref.move_requested.emit()


func reset_timer() -> void:
	combat_timer.stop()
	combat_timer.start()


func on_pokemon_defeated() -> void:
	Game.ref.data.pokedollar += randi_range(2, 5)
	ManagerExperience.ref.add_experience(master.base_experience)
	ManagerRoutes.ref.pokemon_defeated.emit(Game.ref.data.current_route)
	
	if master.should_capture:
		state_manager.change_state(state_manager.capture_state)
	
	else:
		state_manager.change_state(state_manager.generate_pokemon_state)


func _on_combat_timer_timeout() -> void:
	##pokemon_attack()
	ManagerMoves.ref.use_random_move()
	pass


func _on_texture_button_pressed() -> void:
	##click_attack()
	pass


func _on_move_used(key : String) -> void:
	apply_damages_from_move(key)
	reset_timer()
