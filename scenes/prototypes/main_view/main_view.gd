class_name ProtoMainView
extends VBoxContainer
## A prototype meant to replicate a rudimentary clicker feature.


## Reference to the ProgressBar displaying Hp
@export
var progress_bar : ProgressBar
## Data object
var data : Data = Data.new()
## Current HP of the wild Pokémon
var hp : float = 10


## Ready method
func _ready() -> void:
	progress_bar.value = hp


## Reduce the HP by 1 and checks for reset
func attack() -> void:
	hp -= 1
	progress_bar.value = hp
	
	if hp <= 0:
		reset()


## Reset the HP back to 10 & grant pokédollars
func reset() -> void:
	hp = 10
	progress_bar.value = hp
	
	data.pokedollar += randi_range(2, 5)
	print("Pokédollar : %s" %data.pokedollar)


## Triggered when the TextureButton is pressed
func _on_texture_button_pressed() -> void:
	attack()
