class_name ProtoMainView
extends VBoxContainer
## A prototype meant to replicate a rudimentary clicker feature.

## Texture of the first Pokemon
@export
var pokemon_00 : Texture2D
## Texture of the second Pokemon
@export
var pokemon_01 : Texture2D
## Reference to the ProgressBar displaying Hp
@export
var progress_bar : ProgressBar

## Current HP of the wild Pokémon
var hp : float = 10
## Current attack damage
var damage : int = 1

## Data object
@onready
var data : Data = Game.ref.data


## Ready method
func _ready() -> void:
	progress_bar.value = hp
	update_pokedollar_label()
	reset()
	update_left_hp()


## Reduce the HP by 1 and checks for reset
func click_attack() -> void:
	hp -= 1
	
	if hp <= 0:
		hp = 0
	
	progress_bar.value = hp
	
	if hp <= 0:
		reset()
	
	update_left_hp()


## Automatic pokemon attack
func pokemon_attack() -> void:
	hp -= damage
	
	if hp <= 0:
		hp = 0
	
	progress_bar.value = hp
	
	if hp == 0:
		reset()
	
	update_left_hp()


## Reset the HP back to 10 & grant pokédollars
func reset() -> void:
	var rand_pokemon : int = randi_range(0, 1)
	
	match rand_pokemon:
		0:
			(get_node("%TextureRect") as TextureRect).texture = pokemon_00
		1:
			(get_node("%TextureRect") as TextureRect).texture = pokemon_01
	
	hp = randi_range(10,12)
	progress_bar.max_value = hp
	progress_bar.value = hp
	
	(get_node("%RightHp") as Label).text = "%s" %hp
	
	data.pokedollar += randi_range(2, 5)
	update_pokedollar_label()


## Update pokédollar label
func update_pokedollar_label() -> void:
	(get_node("%Pokedollar") as Label).text = "Pokedollar : %s" %data.pokedollar


## Update current Hp label
func update_left_hp() -> void:
	(get_node("%LeftHp") as Label).text = "%s" %hp


## Triggered when the TextureButton is pressed
func _on_texture_button_pressed() -> void:
	click_attack()


## Triggered every seconds
func _on_timer_timeout() -> void:
	pokemon_attack()
