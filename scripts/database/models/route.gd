class_name DBRoute
## Database model of a Route.


## Id of the Route.
var id : String
## Display name of the Route.
var name : String
## Encounter Table of the Route.
var encounter_table : Array[RouteEncounter]
## Base experience reward.
var base_experience : int
## Base HP.
var base_hp : int


## Constructor
func _init(
		_id : String,
		_name : String,
		_encounter_table : Array[RouteEncounter],
		_base_experience : int,
		_base_hp : int,
) -> void:
	id = _id
	name = _name
	encounter_table = _encounter_table
	base_experience = _base_experience
	base_hp = _base_hp
