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


func enter_state() -> void:
	combat_timer.start()
	texture_button.disabled = false


func process(_delta: float) -> void:
	pass


func leave_state() -> void:
	combat_timer.stop()
	texture_button.disabled = true


## Automatic pokemon attack
func pokemon_attack() -> void:
	master.hp -= master.damage
	
	if master.hp <= 0:
		master.hp = 0
	
	master.progress_bar.value = master.hp
	
	if master.hp == 0:
		on_pokemon_defeated()
	
	master.update_left_hp()


func click_attack() -> void:
	master.hp -= 1
	
	if master.hp <= 0:
		master.hp = 0
	
	master.progress_bar.value = master.hp
	
	if master.hp <= 0:
		on_pokemon_defeated()
	
	master.update_left_hp()


func on_pokemon_defeated() -> void:
	Game.ref.data.pokedollar += randi_range(2, 5)
	state_manager.change_state(state_manager.generate_pokemon_state)


func _on_combat_timer_timeout() -> void:
	pokemon_attack()


func _on_texture_button_pressed() -> void:
	click_attack()
