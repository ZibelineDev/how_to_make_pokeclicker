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


func apply_damages(move_key : String) -> void:
	var damage : int = 0
	damage += get_damages_from_move(move_key)
	
	if master.effects.size() >= 1:
		for effect : DBAttack.effects in master.effects:
			match effect:
				DBAttack.effects.POISON:
					damage += int(master.base_hp * 0.1)
	
	
	master.hp -= damage
	
	if master.hp <= 0:
		master.hp = 0
	
	master.progress_bar.value = master.hp
	
	if master.hp == 0:
		on_pokemon_defeated()
	
	if master.hp != 0:
		master.update_left_hp()
		ManagerMoves.ref.move_requested.emit()


func get_damages_from_move(key : String) -> int:
	return (
		ManagerDamage.ref.calculate_move_attack(key, master.current_pokemon_id)
	)


func apply_secondary_effect(key : String) -> void:
	var effect : DBAttack.effects = (
		(DBAttacks.dict[key] as DBAttack).effect
	)
	var effect_probability : int = (
		(DBAttacks.dict[key] as DBAttack).effect_probability
	)
	
	if master.effects.has(effect):
		return
	
	if effect_probability < 100:
		var roll : int = randi_range(1, 100)
		if roll > effect_probability:
			return
	
	master.effects.append(effect)


func reset_timer() -> void:
	combat_timer.stop()
	combat_timer.start()


func on_pokemon_defeated() -> void:
	Game.ref.data.pokedollar += randi_range(2, 5)
	calculate_experience()
	ManagerRoutes.ref.pokemon_defeated.emit(Game.ref.data.current_route)
	
	var is_captured : bool = false
	
	if Game.ref.data.captured_pokemons.has(master.current_pokemon_id):
		is_captured = true
	
	if not is_captured:
		state_manager.change_state(state_manager.capture_state)
	
	else:
		state_manager.change_state(state_manager.generate_pokemon_state)


func calculate_experience() -> void:
	var experience : int = master.base_experience
	
	if master.effects.has(DBAttack.effects.INCREASE_EXP):
		experience += int(experience * 0.25)
	
	ManagerExperience.ref.add_experience(master.base_experience)

func _on_combat_timer_timeout() -> void:
	##pokemon_attack()
	ManagerMoves.ref.use_random_move()
	pass


func _on_texture_button_pressed() -> void:
	##click_attack()
	pass


func _on_move_used(key : String) -> void:	
	if (DBAttacks.dict[key] as DBAttack).effect != DBAttack.effects.NONE:
		apply_secondary_effect(key)
	
	apply_damages(key)
	
	reset_timer()
