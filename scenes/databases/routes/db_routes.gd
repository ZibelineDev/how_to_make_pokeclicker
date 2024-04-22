class_name DBRoutes
extends Node
## Database Node containing all Routes.


## Singleton ref.
static var ref : DBRoutes

## Singleton check.
func _enter_tree() -> void:
	if ref:
		free()
	
	ref = self


## Dictionary containing data.
static var dict : Dictionary


func _ready() -> void:
	dict["001"] = DBRoute.new(
			"001",
			"Route 1",
			[
				RouteEncounter.new("0262:01", 2),
				RouteEncounter.new("0001:01", 6),
				RouteEncounter.new("0002:01", 3),
				RouteEncounter.new("0003:01", 1),
			],
	)
