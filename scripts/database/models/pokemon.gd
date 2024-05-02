class_name DBPokemon
## Database model of a Pokemon.

## Pokedex ID.
var id : String
## Display name.
var name : String
## Texture.
var texture : Texture2D

## Types.
var types : Array[ManagerDamage.Types]

## Attack damage.
var attack : int
## Base capture rate.
var capture_rate : int


## Constructor
func _init(
			_id : String,
			_name : String,
			_texture : Texture2D,
			_types : Array[ManagerDamage.Types],
			_attack : int,
			_capture_rate : int,
	) -> void:
	id = _id
	name = _name
	attack = _attack
	texture = _texture
	capture_rate = _capture_rate
	types = _types
