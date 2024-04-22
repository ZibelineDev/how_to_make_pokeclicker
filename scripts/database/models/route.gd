class_name DBRoute
## Database model of a Route.


## Id of the Route.
var id : String
## Display name of the Route.
var name : String
## Encounter Table of the Route.
var encounter_table : Array[RouteEncounter]


## Constructor
func _init(
		_id : String,
		_name : String,
		_encounter_table : Array[RouteEncounter],
) -> void:
	id = _id
	name = _name
	encounter_table = _encounter_table
