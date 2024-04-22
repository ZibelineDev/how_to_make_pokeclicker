class_name RouteEncounter
## Model of a RouteEncounter


## Id of the wild Pokémon.
var pokemon_id : String
## Weight of the encounter.
var weight : int


## Constructor
func _init(_pokemon_id : String, _weight : int) -> void:
	pokemon_id = _pokemon_id
	weight = _weight
