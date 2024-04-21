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


## Constructor
func _init(_id : String, _name : String, _attack : int, _texture : Texture2D) -> void:
	id = _id
	name = _name
	attack = _attack
	texture = _texture
