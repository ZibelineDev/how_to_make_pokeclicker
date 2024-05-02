class_name DBRoutes
extends Node
## Database Node containing all Routes.


## Singleton ref.
static var ref : DBRoutes

## Singleton check.
func _enter_tree() -> void:
	if ref:
		free()
		return
	
	ref = self


## Dictionary containing data.
static var dict : Dictionary


func _ready() -> void:
	dict["001"] = DBRoute.new(
			"001",
			"Route 1",
			[
				RouteEncounter.new("0016:01", 25),
				RouteEncounter.new("0019:01", 25),
				RouteEncounter.new("0043:01", 25),
			],
			10,
			10,
	)
	
	dict["002"] = DBRoute.new(
			"002",
			"Route 2",
			[
				RouteEncounter.new("0016:01", 12),
				RouteEncounter.new("0021:01", 25),
				RouteEncounter.new("0029:01", 12),
				RouteEncounter.new("0032:01", 8),
			],
			13,
			25,
	)
	
	dict["003"] = DBRoute.new(
			"003",
			"Route 3",
			[
				RouteEncounter.new("0016:01", 25),
				RouteEncounter.new("0019:01", 25),
				RouteEncounter.new("0043:01", 25),
			],
			17,
			50,
	)
