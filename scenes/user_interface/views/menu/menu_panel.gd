class_name PanelMenu
extends Panel

static var ref : PanelMenu

func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self


enum State {
	OPEN,
	CLOSED,
	TWEEN,
}

signal menu_closed
signal menu_opened


var state : State = State.CLOSED


func _ready() -> void:
	_initialise_pivot_offset()
	_initialise_scale()
	state = State.CLOSED
	UserInterface.ref.menu_button_pressed.connect(_on_menu_button_pressed)


func _initialise_pivot_offset() -> void:
	pivot_offset.x = 0.0
	pivot_offset.y = size.y


func _initialise_scale() -> void:
	scale = Vector2(0, 0)


func _tween_opening() -> void:
	state = State.TWEEN
	var tween : Tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1, 1), 0.1)
	state = State.OPEN


func _tween_closing() -> void:
	state = State.TWEEN
	var tween : Tween = create_tween()
	tween.tween_property(self, "scale", Vector2(0, 0), 0.1)
	state = State.CLOSED


func _on_menu_button_pressed() -> void:
	if state == State.TWEEN:
		return
	
	match state:
		State.CLOSED:
			_tween_opening()
		State.OPEN:
			_tween_closing()
