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
			"Meadow",
			[
				RouteEncounter.new("0016:01", 25),
				RouteEncounter.new("0019:01", 25),
				RouteEncounter.new("0043:01", 25),
			],
			25,
			10,
	)
	
	dict["002"] = DBRoute.new(
			"002",
			"Rocky Hills",
			[
				RouteEncounter.new("0016:01", 12),
				RouteEncounter.new("0021:01", 25),
				RouteEncounter.new("0029:01", 12),
				RouteEncounter.new("0032:01", 8),
			],
			50,
			20,
	)
	
	dict["003"] = DBRoute.new(
			"003",
			"Forest Surroundings",
			[
				RouteEncounter.new("0016:01", 12),
				RouteEncounter.new("0010:01", 25),
				RouteEncounter.new("0013:01", 25),
			],
			75,
			40,
	)
	
	dict["004"] = DBRoute.new(
			"004",
			"Forest",
			[
				RouteEncounter.new("0010:01", 25),
				RouteEncounter.new("0011:01", 15),
				RouteEncounter.new("0012:01", 5),
				RouteEncounter.new("0013:01", 25),
				RouteEncounter.new("0014:01", 15),
				RouteEncounter.new("0015:01", 5),
				RouteEncounter.new("0023:01", 10),
			],
			90,
			70,
	)
	
	dict["005"] = DBRoute.new(
			"005",
			"Small Town 01",
			[
				RouteEncounter.new("0052:01", 12),
				RouteEncounter.new("0081:01", 5),
			],
			125,
			110,
	)
	
	dict["006"] = DBRoute.new(
			"006",
			"Mines",
			[
				RouteEncounter.new("0304:01", 12),
				RouteEncounter.new("0305:01", 1),
				RouteEncounter.new("0066:01", 18),
				RouteEncounter.new("0074:01", 12),
				RouteEncounter.new("0041:01", 18),
			],
			200,
			290,
	)
	
	dict["007"] = DBRoute.new(
			"007",
			"Jagged Path",
			[
				RouteEncounter.new("0056:01", 20),
				RouteEncounter.new("0057:01", 2),
				RouteEncounter.new("0058:01", 12),
				RouteEncounter.new("0077:01", 25),
				RouteEncounter.new("0084:01", 10),
			],
			150,
			160,
	)
	
	dict["008"] = DBRoute.new(
			"008",
			"Town 02",
			[
				RouteEncounter.new("0088:01", 12),
				RouteEncounter.new("0109:01", 20),
				RouteEncounter.new("0110:01", 4),
				RouteEncounter.new("0235:01", 15),
			],
			175,
			220,
	)
	
	dict["009"] = DBRoute.new(
			"009",
			"Warm Shores",
			[
				RouteEncounter.new("0098:01", 12),
				RouteEncounter.new("0120:01", 22),
				RouteEncounter.new("0121:01", 2),
				RouteEncounter.new("0054:01", 20),
				RouteEncounter.new("0055:01", 2),
			],
			200,
			290,
	)
	
	dict["010"] = DBRoute.new(
			"010",
			"Rainforest",
			[
				RouteEncounter.new("0002:01", 8),
				RouteEncounter.new("0003:01", 1),
				RouteEncounter.new("0070:01", 15),
				RouteEncounter.new("0071:01", 2),
				RouteEncounter.new("0102:01", 15),
				RouteEncounter.new("0103:01", 2),
			],
			250,
			460,
	)
	
	dict["011"] = DBRoute.new(
			"011",
			"Artchipelago",
			[
				RouteEncounter.new("0131:01", 1),
				RouteEncounter.new("0119:01", 20),
				RouteEncounter.new("0073:01", 15),
				RouteEncounter.new("0116:01", 18),
				RouteEncounter.new("0117:01", 8),
				RouteEncounter.new("0009:01", 1),
			],
			300,
			670,
	)
	
	dict["012"] = DBRoute.new(
			"012",
			"Damp Caverns",
			[
				RouteEncounter.new("0086:01", 25),
				RouteEncounter.new("0087:01", 2),
				RouteEncounter.new("0042:01", 8),
				RouteEncounter.new("0090:01", 25),
				RouteEncounter.new("0091:01", 2),
			],
			600,
			1270,
	)
	
	dict["013"] = DBRoute.new(
			"013",
			"Badlands",
			[
				RouteEncounter.new("0050:01", 18),
				RouteEncounter.new("0051:01", 2),
				RouteEncounter.new("0027:01", 18),
				RouteEncounter.new("0028:01", 2),
				RouteEncounter.new("0085:01", 4),
			],
			200,
			290,
	)
	
	dict["014"] = DBRoute.new(
			"014",
			"Cemetary",
			[
				RouteEncounter.new("0092:01", 18),
				RouteEncounter.new("0093:01", 4),
				RouteEncounter.new("0094:01", 1),
				RouteEncounter.new("0353:01", 12),
				RouteEncounter.new("0355:01", 12),
				RouteEncounter.new("0105:01", 2),
			],
			300,
			670,
	)
	
	dict["015"] = DBRoute.new(
			"015",
			"Canyon",
			[
				RouteEncounter.new("0075:01", 12),#Graveler
				RouteEncounter.new("0095:01", 18),#Onix
				RouteEncounter.new("0104:01", 22),#Cubone
				RouteEncounter.new("0050:01", 19),#Diglett
				RouteEncounter.new("0022:01", 9),#Fearow
			],
			225,
			370,
	)
	
	dict["016"] = DBRoute.new(
			"016",
			"Small Town 03",
			[
				RouteEncounter.new("0128:01", 12),#Tauros
				RouteEncounter.new("0241:01", 12),
			],
			250,
			460,
	)
	
	dict["017"] = DBRoute.new(
			"017",
			"Rocky Clouds",
			[
				RouteEncounter.new("0329:01", 25),#Vibrava
				RouteEncounter.new("0330:01", 1),#Flygon
				RouteEncounter.new("0006:01", 1),#Charizard
				RouteEncounter.new("0022:01", 19),#Fearow
				RouteEncounter.new("0018:01", 19),#Fearow
			],
			450,
			920,
	)
	
	dict["018"] = DBRoute.new(
			"018",
			"Savannah",
			[
				RouteEncounter.new("0038:01", 2),#Ninetales
				RouteEncounter.new("0077:01", 25),#Ponyta
				RouteEncounter.new("0203:01", 20),#Girafarig
				RouteEncounter.new("0085:01", 12),#Dodrio
				RouteEncounter.new("0078:01", 2),#Rapidash
			],
			225,
			370,
	)
	
	dict["019"] = DBRoute.new(
			"019",
			"Old Factory",
			[
				RouteEncounter.new("0081:01", 16),#Magnemite
				RouteEncounter.new("0082:01", 4),#Magneton
				RouteEncounter.new("0100:01", 18),#Voltorb
				RouteEncounter.new("0101:01", 4),#Electrode
				RouteEncounter.new("0089:01", 6),#Muk
			],
			325,
			790,
	)
	
	dict["020"] = DBRoute.new(
			"020",
			"Swamps",
			[
				RouteEncounter.new("0062:01", 2),#Poliwrath
				RouteEncounter.new("0023:01", 12),#Ekans
				RouteEncounter.new("0024:01", 4),#Arbok
				RouteEncounter.new("0048:01", 22),#Venonat
				RouteEncounter.new("0049:01", 6),#Venomoth
			],
			250,
			920,
	)
	
	dict["021"] = DBRoute.new(
			"021",
			"Cold Bogs",
			[
				RouteEncounter.new("0194:01", 20),#Wooper
				RouteEncounter.new("0195:01", 4),#Quagsire
				RouteEncounter.new("0349:01", 1),#Feebas
				RouteEncounter.new("0290:01", 25),#Nincada
				RouteEncounter.new("0291:01", 14),#Ninjask
			],
			275,
			1120,
	)
	
	dict["022"] = DBRoute.new(
			"022",
			"Snowy Path",
			[
				RouteEncounter.new("0220:01", 24),#Swinub
				RouteEncounter.new("0221:01", 4),#Piloswine
				RouteEncounter.new("0225:01", 10),#Delibird
				RouteEncounter.new("0198:01", 18),#Murkrow
			],
			300,
			1270,
	)
	
	dict["023"] = DBRoute.new(
			"023",
			"Forgotten Village",
			[
				RouteEncounter.new("0198:01", 12),#Murkrow
				RouteEncounter.new("0361:01", 25),#Snorunt
				RouteEncounter.new("0124:01", 2),#Jynx
				RouteEncounter.new("0354:01", 2),#Banette
				RouteEncounter.new("0302:01", 17),#Sableye
			],
			1000,
			1340,
	)
	
	dict["024"] = DBRoute.new(
			"024",
			"Dragon Lake",
			[
				RouteEncounter.new("0147:01", 300),#Dratini
				RouteEncounter.new("0148:01", 150),#Dragonair
				RouteEncounter.new("0149:01", 10),#Dragonite
				RouteEncounter.new("0334:01", 10),#Altaria
				RouteEncounter.new("0350:01", 1),#Milotic
			],
			2000,
			2500,
	)
