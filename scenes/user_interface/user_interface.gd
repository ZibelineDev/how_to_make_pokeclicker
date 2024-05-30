class_name UserInterface
extends Control

static var ref : UserInterface

func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


signal menu_button_pressed


func _on_menu_button_pressed() -> void:
	menu_button_pressed.emit()
