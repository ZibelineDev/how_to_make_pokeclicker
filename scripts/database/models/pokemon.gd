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
## Moves.
var moves : Array[String] = []

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
			_moves : Array[String],
			
			_attack : int,
			_capture_rate : int,
	) -> void:
	id = _id
	name = _name
	texture = _texture
	
	types = _types
	moves = _moves
	
	attack = _attack
	capture_rate = _capture_rate

