class_name AttackCompo
extends Panel


var key : String


func set_key(_key : String) -> void:
	key = _key
	update_label()


func update_label() -> void:
	(get_node("Label") as Label).text = (DBAttacks.dict[key] as DBAttack).name


func trigger_move() -> void:
	ManagerMoves.ref.use_move(key)


func _on_texture_button_pressed() -> void:
	trigger_move()
