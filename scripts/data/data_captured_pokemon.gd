class_name DataCapturedPokemon
extends Resource
## Model of a Pokémon model in the save file.

## Pokémon ID.
@export
var id : String
## How many times the Pokémon was captured.
@export
var capture_counter : int = 1
## Current level.
@export
var level : int = 1
## Current experience.
@export 
var experience : float = 1.0
## Current attack.
var attack : float = -1


## Constructor.
func _init(
	_id : String = "-1",
) -> void:
	id = _id
