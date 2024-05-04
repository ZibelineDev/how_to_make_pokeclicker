class_name Data
extends Resource
## Main data class containing all the data to save & load.


## Current amount of pokedollar.
@export
var pokedollar : int = 0
## Last route visited.
@export
var current_route : String = "001"
## All captured Pokémons.
@export
var captured_pokemons : Dictionary = {}
## Current team.
@export 
var team : Array[String] = []
@export
var routes : Dictionary = {}
