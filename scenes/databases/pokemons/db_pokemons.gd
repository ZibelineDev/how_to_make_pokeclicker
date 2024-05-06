class_name DBPokemons
extends Node
## Database Node containing all Pokemon informations.


## Singleton ref
static var ref : DBPokemons

## Singleton check.
func _enter_tree() -> void:
	if ref:
		free()
		return
	
	ref = self


## Dictionary containing the data.
static var dict : Dictionary


func _ready() -> void:
	dict["0001:01"] = DBPokemon.new(
			"0001:01",
			"Bulbasaur",
			load("res://assets/pokemons/bulbasaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002", "004"],
			53,
			10,
	)
	
	dict["0002:01"] = DBPokemon.new(
			"0002:01",
			"Ivysaur",
			load("res://assets/pokemons/ivysaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["029", "011"],
			68,
			25,
	)
	
	dict["0003:01"] = DBPokemon.new(
			"0003:01",
			"Venusaur",
			load("res://assets/pokemons/venusaur.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["030", "031"],
			88,
			5,
	)
	
	dict["0004:01"] = DBPokemon.new(
			"0004:01",
			"Charmander",
			load("res://assets/pokemons/charmander.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			[],
			52,
			10,
	)
	
	dict["0005:01"] = DBPokemon.new(
			"0005:01",
			"Charmeleon",
			load("res://assets/pokemons/charmeleon.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			[],
			68,
			5,
	)
	
	dict["0006:01"] = DBPokemon.new(
			"0006:01",
			"Charizard",
			load("res://assets/pokemons/charizard.png") as Texture2D,
			[ManagerDamage.Types.FIRE, ManagerDamage.Types.FLYING],
			["041", "042"],
			88,
			5,
	)
	
	dict["0009:01"] = DBPokemon.new(
			"0009:01",
			"Blastoise",
			load("res://assets/pokemons/blastoise.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["049"],
			88,
			5,
	)
	
	dict["0010:01"] = DBPokemon.new(
			"0010:01",
			"Caterpie",
			load("res://assets/pokemons/caterpie.png") as Texture2D,
			[ManagerDamage.Types.BUG],
			["007"],
			33,
			90,
	)
	
	dict["0011:01"] = DBPokemon.new(
			"0011:01",
			"Metapod",
			load("res://assets/pokemons/metapod.png") as Texture2D,
			[ManagerDamage.Types.BUG],
			["001"],
			35,
			95,
	)
	
	dict["0012:01"] = DBPokemon.new(
			"0012:01",
			"Butterfree",
			load("res://assets/pokemons/butterfree.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.FLYING],
			["009", "010"],
			66,
			20,
	)
	
	dict["0013:01"] = DBPokemon.new(
			"0013:01",
			"Weedle",
			load("res://assets/pokemons/weedle.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			["007", "005"],
			33,
			90,
	)
	
	dict["0014:01"] = DBPokemon.new(
			"0014:01",
			"Kakuna",
			load("res://assets/pokemons/kakuna.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			["001"],
			35,
			95,
	)
	
	dict["0015:01"] = DBPokemon.new(
			"0015:01",
			"Beedrill",
			load("res://assets/pokemons/beedrill.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			["009", "011"],
			66,
			20,
	)
	
	dict["0016:01"] = DBPokemon.new(
			"0016:01",
			"Pidgey",
			load("res://assets/pokemons/pidgey.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["001", "003"],
			42,
			75,
	)
	
	dict["0018:01"] = DBPokemon.new(
			"0018:01",
			"Pidgeot",
			load("res://assets/pokemons/pidgeot.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["042", "034"],
			80,
			10,
	)
	
	dict["0019:01"] = DBPokemon.new(
			"0019:01",
			"Rattata",
			load("res://assets/pokemons/rattata.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["001"],
			42,
			80,
	)
	
	dict["0021:01"] = DBPokemon.new(
			"0021:01",
			"Spearow",
			load("res://assets/pokemons/spearow.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["001", "006"],
			44,
			75,
	)
	
	dict["0022:01"] = DBPokemon.new(
			"0022:01",
			"Fearow",
			load("res://assets/pokemons/fearow.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["010", "033"],
			74,
			10,
	)
	
	dict["0023:01"] = DBPokemon.new(
			"0023:01",
			"Ekans",
			load("res://assets/pokemons/ekans.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["004"],
			48,
			75,
	)
	
	dict["0024:01"] = DBPokemon.new(
			"0024:01",
			"Arbok",
			load("res://assets/pokemons/arbok.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["031"],
			75,
			5,
	)
	
	dict["0025:01"] = DBPokemon.new(
			"0025:01",
			"Pikachu",
			load("res://assets/pokemons/pikachu.png") as Texture2D,
			[ManagerDamage.Types.ELECTRIC],
			["008"],
			54,
			25,
	)
	
	dict["0027:01"] = DBPokemon.new(
			"0027:01",
			"Sandshrew",
			load("res://assets/pokemons/sandshrew.png") as Texture2D,
			[ManagerDamage.Types.GROUND],
			["017"],
			50,
			80,
	)
	
	dict["0028:01"] = DBPokemon.new(
			"0028:01",
			"Sandslash",
			load("res://assets/pokemons/sandslash.png") as Texture2D,
			[ManagerDamage.Types.GROUND],
			["032"],
			75,
			10,
	)
	
	dict["0029:01"] = DBPokemon.new(
			"0029:01",
			"Nidoran-F",
			load("res://assets/pokemons/nidoran-f.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["005"],
			46,
			50,
	)
	
	dict["0032:01"] = DBPokemon.new(
			"0032:01",
			"Nidoran-M",
			load("res://assets/pokemons/nidoran-m.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["005"],
			46,
			50,
	)
	
	dict["0038:01"] = DBPokemon.new(
			"0038:01",
			"Ninetales",
			load("res://assets/pokemons/ninetales.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			["043"],
			85,
			10,
	)
	
	dict["0041:01"] = DBPokemon.new(
			"0041:01",
			"Zubat",
			load("res://assets/pokemons/zubat.png") as Texture2D,
			[ManagerDamage.Types.POISON, ManagerDamage.Types.FLYING],
			["003", "005"],
			41,
			80,
	)
	
	dict["0042:01"] = DBPokemon.new(
			"0042:01",
			"Golbat",
			load("res://assets/pokemons/golbat.png") as Texture2D,
			[ManagerDamage.Types.POISON, ManagerDamage.Types.FLYING],
			["010", "031"],
			76,
			20,
	)
	
	dict["0043:01"] = DBPokemon.new(
			"0043:01",
			"Oddish",
			load("res://assets/pokemons/oddish.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["002", "004"],
			53,
			75,
	)
	
	dict["0048:01"] = DBPokemon.new(
			"0048:01",
			"Venonat",
			load("res://assets/pokemons/venonat.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			["007", "004"],#Bug bite & Acid
			51,
			90,
	)
	
	dict["0049:01"] = DBPokemon.new(
			"0049:01",
			"Venomoth",
			load("res://assets/pokemons/venomoth.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.POISON],
			["009", "011"],#Bug bite & Acid
			75,
			30,
	)
	
	dict["0050:01"] = DBPokemon.new(
			"0050:01",
			"Diglett",
			load("res://assets/pokemons/diglett.png") as Texture2D,
			[ManagerDamage.Types.GROUND],
			["017"],
			45,
			80,
	)
	
	dict["0051:01"] = DBPokemon.new(
			"0051:01",
			"Dugtrio",
			load("res://assets/pokemons/dugtrio.png") as Texture2D,
			[ManagerDamage.Types.GROUND],
			["032"],
			71,
			33,
	)
	
	dict["0052:01"] = DBPokemon.new(
			"0052:01",
			"Meowth",
			load("res://assets/pokemons/meowth.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["012"],
			49,
			25,
	)
	
	dict["0054:01"] = DBPokemon.new(
			"0054:01",
			"Psyduck",
			load("res://assets/pokemons/psyduck.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["024", "025"],
			54,
			80,
	)
	
	dict["0055:01"] = DBPokemon.new(
			"0055:01",
			"Golduck",
			load("res://assets/pokemons/golduck.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["022", "023"],
			84,
			15,
	)
	
	dict["0056:01"] = DBPokemon.new(
			"0056:01",
			"Mankey",
			load("res://assets/pokemons/mankey.png") as Texture2D,
			[ManagerDamage.Types.FIGHTING],
			["018"],
			51,
			75,
	)
	
	dict["0057:01"] = DBPokemon.new(
			"0057:01",
			"Primeape",
			load("res://assets/pokemons/primeape.png") as Texture2D,
			[ManagerDamage.Types.FIGHTING],
			["019"],
			75,
			10,
	)
	
	dict["0058:01"] = DBPokemon.new(
			"0058:01",
			"Growlithe",
			load("res://assets/pokemons/growlithe.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			["020"],
			59,
			33,
	)
	
	dict["0062:01"] = DBPokemon.new(
			"0062:01",
			"Poliwrath",
			load("res://assets/pokemons/poliwrath.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.FIGHTING],
			["046", "026"],
			85,
			10,
	)
	
	dict["0066:01"] = DBPokemon.new(
			"0066:01",
			"Machop",
			load("res://assets/pokemons/machop.png") as Texture2D,
			[ManagerDamage.Types.FIGHTING],
			["018"],
			53,
			75,
	)
	
	dict["0070:01"] = DBPokemon.new(
			"0070:01",
			"Weepinbell",
			load("res://assets/pokemons/weepinbell.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["029", "004"],
			65,
			33,
	)
	
	dict["0071:01"] = DBPokemon.new(
			"0071:01",
			"Victreebel",
			load("res://assets/pokemons/victreebel.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.POISON],
			["011", "030"],
			82,
			10,
	)
	
	dict["0073:01"] = DBPokemon.new(
			"0073:01",
			"Tentacruel",
			load("res://assets/pokemons/tentacruel.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.POISON],
			["022", "011"],
			86,
			10,
	)
	
	dict["0074:01"] = DBPokemon.new(
			"0074:01",
			"Geodude",
			load("res://assets/pokemons/geodude.png") as Texture2D,
			[ManagerDamage.Types.GROUND, ManagerDamage.Types.ROCK],
			["017", "014"],
			55,
			50,
	)
	
	dict["0075:01"] = DBPokemon.new(
			"0072:01",
			"Graveler",
			load("res://assets/pokemons/graveler.png") as Texture2D,
			[ManagerDamage.Types.ROCK, ManagerDamage.Types.GROUND],
			["016", "032"],
			65,
			10,
	)
	
	dict["0077:01"] = DBPokemon.new(
			"0077:01",
			"Ponyta",
			load("res://assets/pokemons/ponyta.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			["020"],
			69,
			50,
	)
	
	dict["0078:01"] = DBPokemon.new(
			"0078:01",
			"Rapidash",
			load("res://assets/pokemons/rapidash.png") as Texture2D,
			[ManagerDamage.Types.FIRE],
			["043"],
			84,
			10,
	)
	
	dict["0081:01"] = DBPokemon.new(
			"0081:01",
			"Magnemite",
			load("res://assets/pokemons/magnemite.png") as Texture2D,
			[ManagerDamage.Types.STEEL, ManagerDamage.Types.ELECTRIC],
			["008", "013"],
			55,
			75,
	)
	
	dict["0082:01"] = DBPokemon.new(
			"0082:01",
			"Magneton",
			load("res://assets/pokemons/magneton.png") as Texture2D,
			[ManagerDamage.Types.ELECTRIC, ManagerDamage.Types.STEEL],
			["044", "045"],
			78,
			10,
	)
	
	dict["0084:01"] = DBPokemon.new(
			"0084:01",
			"Doduo",
			load("res://assets/pokemons/doduo.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["001", "006"],
			52,
			80,
	)
	
	dict["0085:01"] = DBPokemon.new(
			"0085:01",
			"Dodrio",
			load("res://assets/pokemons/dodrio.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.FLYING],
			["034", "033"],
			79,
			10,
	)
	
	dict["0086:01"] = DBPokemon.new(
			"0086:01",
			"Seel",
			load("res://assets/pokemons/seel.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["024"],
			55,
			80,
	)
	
	dict["0087:01"] = DBPokemon.new(
			"0087:01",
			"Dewgong",
			load("res://assets/pokemons/dewgong.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.ICE],
			["001", "006"],
			80,
			20,
	)
	
	dict["0088:01"] = DBPokemon.new(
			"0088:01",
			"Grimer",
			load("res://assets/pokemons/grimer.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["004"],
			55,
			75,
	)
	
	dict["0089:01"] = DBPokemon.new(
			"0089:01",
			"Muk",
			load("res://assets/pokemons/muk.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["011"],#SludgeBomb
			84,
			11,
	)
	
	dict["0090:01"] = DBPokemon.new(
			"0090:01",
			"Shellder",
			load("res://assets/pokemons/shellder.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["024"],#WaterGun
			51,
			80,
	)
	
	dict["0091:01"] = DBPokemon.new(
			"0091:01",
			"Cloyster",
			load("res://assets/pokemons/cloyster.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.ICE],
			["022", "027"],
			88,
			10,
	)
	
	dict["0092:01"] = DBPokemon.new(
			"0092:01",
			"Gastly",
			load("res://assets/pokemons/gastly.png") as Texture2D,
			[ManagerDamage.Types.POISON, ManagerDamage.Types.GHOST],
			["035", "004"],
			52,
			75,
	)
	
	dict["0093:01"] = DBPokemon.new(
			"0093:01",
			"Haunter",
			load("res://assets/pokemons/haunter.png") as Texture2D,
			[ManagerDamage.Types.POISON, ManagerDamage.Types.GHOST],
			["036", "011"],
			68,
			20,
	)
	
	dict["0094:01"] = DBPokemon.new(
			"0094:01",
			"Gengar",
			load("res://assets/pokemons/gengar.png") as Texture2D,
			[ManagerDamage.Types.POISON, ManagerDamage.Types.GHOST],
			["037", "031"],
			84,
			5,
	)
	
	dict["0095:01"] = DBPokemon.new(
			"0095:01",
			"Onix",
			load("res://assets/pokemons/onix.png") as Texture2D,
			[ManagerDamage.Types.ROCK, ManagerDamage.Types.GROUND],
			["016", "032"],
			65,
			10,
	)
	
	dict["0098:01"] = DBPokemon.new(
			"0098:01",
			"Krabby",
			load("res://assets/pokemons/krabby.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["024"],
			55,
			90,
	)
	
	dict["0100:01"] = DBPokemon.new(
			"0100:01",
			"Voltorb",
			load("res://assets/pokemons/voltorb.png") as Texture2D,
			[ManagerDamage.Types.ELECTRIC],
			["008"],
			55,
			80,
	)
	
	dict["0101:01"] = DBPokemon.new(
			"0101:01",
			"Electrode",
			load("res://assets/pokemons/electrode.png") as Texture2D,
			[ManagerDamage.Types.ELECTRIC],
			["044"],
			82,
			10,
	)
	
	dict["0102:01"] = DBPokemon.new(
			"0102:01",
			"Exeggcute",
			load("res://assets/pokemons/exeggcute.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.PSYCHIC],
			["025"],
			55,
			66,
	)
	
	dict["0103:01"] = DBPokemon.new(
			"0103:01",
			"Exeggutor",
			load("res://assets/pokemons/exeggutor.png") as Texture2D,
			[ManagerDamage.Types.GRASS, ManagerDamage.Types.PSYCHIC],
			["028", "023"],
			89,
			10,
	)
	
	dict["0104:01"] = DBPokemon.new(
			"0104:01",
			"Cubone",
			load("res://assets/pokemons/cubone.png") as Texture2D,
			[ManagerDamage.Types.GROUND],
			["017"],
			54,
			80,
	)
	
	dict["0105:01"] = DBPokemon.new(
			"0105:01",
			"Marowak",
			load("res://assets/pokemons/marowak.png") as Texture2D,
			[ManagerDamage.Types.GROUND],
			["032"],
			71,
			10,
	)
	
	dict["0109:01"] = DBPokemon.new(
			"0109:01",
			"Koffing",
			load("res://assets/pokemons/koffing.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["004"],
			57,
			75,
	)
	
	dict["0110:01"] = DBPokemon.new(
			"0110:01",
			"Weezing",
			load("res://assets/pokemons/weezing.png") as Texture2D,
			[ManagerDamage.Types.POISON],
			["011"],
			82,
			15,
	)
	
	dict["0116:01"] = DBPokemon.new(
		"0116:01",
		"Horsea",
		load("res://assets/pokemons/horsea.png") as Texture2D,
		[ManagerDamage.Types.WATER],
		["024"],
		50,
		50,
	)
	
	dict["0117:01"] = DBPokemon.new(
		"0117:01",
		"Seadra",
		load("res://assets/pokemons/seadra.png") as Texture2D,
		[ManagerDamage.Types.WATER],
		["022"],
		74,
		10,
	)
	
	dict["0119:01"] = DBPokemon.new(
			"0119:01",
			"Seaking",
			load("res://assets/pokemons/seaking.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["026"],
			75,
			10,
	)
	
	dict["0120:01"] = DBPokemon.new(
			"0120:01",
			"Staryu",
			load("res://assets/pokemons/staryu.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.PSYCHIC],
			["024", "025"],
			57,
			60,
	)
	
	dict["0121:01"] = DBPokemon.new(
			"0121:01",
			"Starmie",
			load("res://assets/pokemons/starmie.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.PSYCHIC],
			["022", "023"],
			87,
			15,
	)
	
	dict["0124:01"] = DBPokemon.new(
			"0124:01",
			"Jynx",
			load("res://assets/pokemons/jynx.png") as Texture2D,
			[ManagerDamage.Types.ICE, ManagerDamage.Types.PSYCHIC],
			["050", "051"],#Blizzard & Psychic
			76,
			10,
	)
	
	dict["0128:01"] = DBPokemon.new(
			"0128:01",
			"Tauros",
			load("res://assets/pokemons/tauros.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["034"],
			82,
			10,
	)
	
	dict["0131:01"] = DBPokemon.new(
			"0131:01",
			"Lapras",
			load("res://assets/pokemons/lapras.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.ICE],
			["026", "027"],
			90,
			15,
	)
	
	dict["0147:01"] = DBPokemon.new(
			"0147:01",
			"Dratini",
			load("res://assets/pokemons/dratini.png") as Texture2D,
			[ManagerDamage.Types.DRAGON],
			["052"],#Twister
			50,
			10,
	)
	
	dict["0148:01"] = DBPokemon.new(
			"0148:01",
			"Dragonair",
			load("res://assets/pokemons/dragonair.png") as Texture2D,
			[ManagerDamage.Types.DRAGON],
			["038"],#Dragon Tail
			70,
			8,
	)
	
	dict["0149:01"] = DBPokemon.new(
			"0149:01",
			"Dragonite",
			load("res://assets/pokemons/dragonite.png") as Texture2D,
			[ManagerDamage.Types.DRAGON, ManagerDamage.Types.FLYING],
			["039", "042"],#Dragon Rush & Fly
			100,
			5,
	)
	
	dict["0194:01"] = DBPokemon.new(
			"0194:01",
			"Wooper",
			load("res://assets/pokemons/wooper.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.GROUND],
			["024", "017"],#Water gun & Bulldoze
			35,
			90,
	)
	
	dict["0195:01"] = DBPokemon.new(
			"0195:01",
			"Quagsire",
			load("res://assets/pokemons/quagsire.png") as Texture2D,
			[ManagerDamage.Types.WATER, ManagerDamage.Types.GROUND],
			["022", "040"],#Water pulse & Earthquake
			72,
			20,
	)
	
	dict["0198:01"] = DBPokemon.new(
			"0198:01",
			"Murkrow",
			load("res://assets/pokemons/murkrow.png") as Texture2D,
			[ManagerDamage.Types.DARK, ManagerDamage.Types.FLYING],
			["048", "033"],#Dark Pulse & Drill Peck
			68,
			10,
	)
	
	dict["0203:01"] = DBPokemon.new(
			"0203:01",
			"Girafarig",
			load("res://assets/pokemons/girafarig.png") as Texture2D,
			[ManagerDamage.Types.NORMAL, ManagerDamage.Types.PSYCHIC],
			["034", "023"],
			76,
			80,
	)
	
	dict["0220:01"] = DBPokemon.new(
			"0220:01",
			"Swinub",
			load("res://assets/pokemons/swinub.png") as Texture2D,
			[ManagerDamage.Types.ICE, ManagerDamage.Types.GROUND],
			["047", "017"],#Ice Shard & Bulldoze
			42,
			60,
	)
	
	dict["0221:01"] = DBPokemon.new(
			"0221:01",
			"Piloswine",
			load("res://assets/pokemons/piloswine.png") as Texture2D,
			[ManagerDamage.Types.ICE, ManagerDamage.Types.GROUND],
			["027", "032"],#Ice Beam & Dig
			75,
			10,
	)
	
	dict["0225:01"] = DBPokemon.new(
			"0225:01",
			"Delibird",
			load("res://assets/pokemons/delibird.png") as Texture2D,
			[ManagerDamage.Types.ICE, ManagerDamage.Types.FLYING],
			["047", "033"],#Ice Shard & Drill Peck
			55,
			10,
	)
	
	dict["0235:01"] = DBPokemon.new(
			"0235:01",
			"Smeargle",
			load("res://assets/pokemons/smeargle.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["021"],
			150,
			90,
	)
	
	dict["0241:01"] = DBPokemon.new(
			"0241:01",
			"Miltank",
			load("res://assets/pokemons/miltank.png") as Texture2D,
			[ManagerDamage.Types.NORMAL],
			["034"],
			82,
			10,
	)
	
	dict["0262:01"] = DBPokemon.new(
			"0262:01",
			"Mightyena",
			load("res://assets/pokemons/mightyena.png") as Texture2D,
			[ManagerDamage.Types.DARK],
			[],
			70,
			10,
	)
	
	dict["0290:01"] = DBPokemon.new(
			"0290:01",
			"Nincada",
			load("res://assets/pokemons/nincada.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.GROUND],
			["007", "017"],#Bug Bite & Bulldoze
			44,
			90,
	)
	
	dict["0291:01"] = DBPokemon.new(
			"0291:01",
			"Ninjask",
			load("res://assets/pokemons/ninjask.png") as Texture2D,
			[ManagerDamage.Types.BUG, ManagerDamage.Types.FLYING],
			["009"],
			76,
			15,
	)
	
	dict["0302:01"] = DBPokemon.new(
			"0302:01",
			"Sableye",
			load("res://assets/pokemons/sableye.png") as Texture2D,
			[ManagerDamage.Types.GHOST, ManagerDamage.Types.DARK],
			["037", "048"],#Shadowball & Dark Pulse
			64,
			5,
	)
	
	dict["0304:01"] = DBPokemon.new(
			"0304:01",
			"Aron",
			load("res://assets/pokemons/aron.png") as Texture2D,
			[ManagerDamage.Types.STEEL, ManagerDamage.Types.ROCK],
			["013", "014"],
			55,
			50,
	)
	
	dict["0305:01"] = DBPokemon.new(
			"0305:01",
			"Lairon",
			load("res://assets/pokemons/lairon.png") as Texture2D,
			[ManagerDamage.Types.STEEL, ManagerDamage.Types.ROCK],
			["015", "016"],
			75,
			10,
	)
	
	dict["0329:01"] = DBPokemon.new(
			"0329:01",
			"Vibrava",
			load("res://assets/pokemons/vibrava.png") as Texture2D,
			[ManagerDamage.Types.GROUND, ManagerDamage.Types.DRAGON],
			["032"],
			57,
			15,
	)
	
	dict["0330:01"] = DBPokemon.new(
			"0330:01",
			"Flygon",
			load("res://assets/pokemons/vibrava.png") as Texture2D,
			[ManagerDamage.Types.GROUND, ManagerDamage.Types.DRAGON],
			["040", "039"],
			87,
			5,
	)
	
	dict["0334:01"] = DBPokemon.new(
			"0334:01",
			"Altaria",
			load("res://assets/pokemons/altaria.png") as Texture2D,
			[ManagerDamage.Types.DRAGON, ManagerDamage.Types.FLYING],
			["039", "042"],#Dragon Rush & Fly
			82,
			10,
	)
	
	dict["0349:01"] = DBPokemon.new(
			"0349:01",
			"Feebas",
			load("res://assets/pokemons/feebas.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["024"],#Water Gun
			34,
			10,
	)
	
	dict["0350:01"] = DBPokemon.new(
			"0350:01",
			"Milotic",
			load("res://assets/pokemons/milotic.png") as Texture2D,
			[ManagerDamage.Types.WATER],
			["049", "038"],#Wave Crash & Dragon Tail
			125,
			5,
	)
	
	dict["0353:01"] = DBPokemon.new(
			"0353:01",
			"Shuppet",
			load("res://assets/pokemons/shuppet.png") as Texture2D,
			[ManagerDamage.Types.GHOST],
			["035"],
			50,
			75,
	)
	
	dict["0354:01"] = DBPokemon.new(
			"0354:01",
			"Banette",
			load("res://assets/pokemons/banette.png") as Texture2D,
			[ManagerDamage.Types.GHOST],
			["037"],#Shadow Ball
			76,
			10,
	)
	
	dict["0355:01"] = DBPokemon.new(
			"0355:01",
			"Duskull",
			load("res://assets/pokemons/duskull.png") as Texture2D,
			[ManagerDamage.Types.GHOST],
			["035"],
			50,
			75,
	)
	
	dict["0361:01"] = DBPokemon.new(
			"0361:01",
			"Snorunt",
			load("res://assets/pokemons/snorunt.png") as Texture2D,
			[ManagerDamage.Types.ICE],
			["047"],#Ice Shard
			50,
			80,
	)
	

