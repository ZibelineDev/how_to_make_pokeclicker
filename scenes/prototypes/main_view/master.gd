class_name MainViewMaster
extends Node


## Reference to the ProgressBar displaying Hp
@export
var progress_bar : ProgressBar

## Current HP of the wild Pokémon
var hp : float = -1
## Current attack damage
var damage : int = 1
## Total encounter weight.
var total_weight : int = -1
## Current encounter table.
var encounter_table : Array[RouteEncounter]


@onready
var data : Data = Game.ref.data


## Update current Hp label
func update_left_hp() -> void:
	(get_node("%LeftHp") as Label).text = "%s" %hp
