class_name ProtoMainView
extends VBoxContainer


@export
var progress_bar : ProgressBar

var data : Data = Data.new()

var hp : float = 10


func _ready() -> void:
	progress_bar.value = hp


func attack() -> void:
	hp -= 1
	progress_bar.value = hp
	
	if hp <= 0:
		reset()


func reset() -> void:
	hp = 10
	progress_bar.value = hp
	
	data.pokedollar += randi_range(2, 5)
	print("Pokédollar : %s" %data.pokedollar)


func _on_texture_button_pressed() -> void:
	attack()
