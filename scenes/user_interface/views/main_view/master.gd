class_name MainViewMaster
extends Node


## Reference to the ProgressBar displaying Hp
@export
var progress_bar : ProgressBar

## Current HP of the wild Pokémon
var hp : float = -1
## Current attack damage
var damage : int = 4
## Total encounter weight.
var total_weight : int = -1
## Current encounter table.
var encounter_table : Array[RouteEncounter]
## Whether or not the capture should be initiated after the Pokémon is defeated.
var should_capture : bool = false
## Current Pokémon.
var current_pokemon_id : String
## Base experience of the route.
var base_experience : int = -1
## Base hp of the pokémon of the route.
var base_hp : int = -1


@onready
var data : Data = Game.ref.data


## Update current Hp label
func update_left_hp() -> void:
	(get_node("%LeftHp") as Label).text = "%s" %hp


func _on_should_capture_button_toggled(toggled_on: bool) -> void:
	should_capture = toggled_on
