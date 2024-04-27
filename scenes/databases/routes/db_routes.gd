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
				RouteEncounter.new("0001:01", 6),
				RouteEncounter.new("0002:01", 3),
				RouteEncounter.new("0003:01", 1),
			],
			5,
	)
	
	dict["002"] = DBRoute.new(
		"002",
		"Route 2",
		[
			RouteEncounter.new("0004:01", 6),
			RouteEncounter.new("0005:01", 3),
		],
		8,
	)
	
	dict["003"] = DBRoute.new(
		"003",
		"Route 3",
		[
			RouteEncounter.new("0262:01", 1),
		],
		12,
	)
