class_name DBPokemon
## Database model of a Pokemon.

## Pokedex ID.
var id : String
## Display name.
var name : String
## Attack damage.
var attack : int
## Texture.
var texture : Texture2D
## Base capture rate.
var capture_rate : int


## Constructor
func _init(
			_id : String,
			_name : String,
			_attack : int,
			_texture : Texture2D,
			_capture_rate : int,
	) -> void:
	id = _id
	name = _name
	attack = _attack
	texture = _texture
	capture_rate = _capture_rate
