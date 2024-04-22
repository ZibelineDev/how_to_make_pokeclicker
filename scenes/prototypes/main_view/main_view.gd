class_name ProtoMainView
extends VBoxContainer
## A prototype meant to replicate a rudimentary clicker feature.

## Texture of the first Pokemon
@export
var pokemon_00 : Texture2D
## Texture of the second Pokemon
@export
var pokemon_01 : Texture2D
## Reference to the ProgressBar displaying Hp
@export
var progress_bar : ProgressBar

## Current HP of the wild Pokémon
var hp : float = 10
## Current attack damage
var damage : int = 1
## Total encounter weight.
var total_weight : int = -1
## Current encounter table.
var encounter_table : Array[RouteEncounter]

## Data object
@onready
var data : Data = Game.ref.data


## Ready method
func _ready() -> void:
	progress_bar.value = hp
	initialise_route()
	update_pokedollar_label()
	reset()
	update_left_hp()


## Initialise Route.
func initialise_route() -> void:
	@warning_ignore("unsafe_cast")
	encounter_table = (DBRoutes.dict["001"] as DBRoute).encounter_table
	
	total_weight = 0
	
	for encounter : RouteEncounter in encounter_table:
		total_weight += encounter.weight


## Reduce the HP by 1 and checks for reset
func click_attack() -> void:
	hp -= 1
	
	if hp <= 0:
		hp = 0
	
	progress_bar.value = hp
	
	if hp <= 0:
		reset()
	
	update_left_hp()


## Automatic pokemon attack
func pokemon_attack() -> void:
	hp -= damage
	
	if hp <= 0:
		hp = 0
	
	progress_bar.value = hp
	
	if hp == 0:
		reset()
	
	update_left_hp()


## Reset the HP back to 10 & grant pokédollars
func reset() -> void:
	var rand_pokemon : int = randi_range(1, total_weight)
	var texture_path : String
	
	var counter : int = 0
	
	for encounter : RouteEncounter in encounter_table:
		counter += encounter.weight
		
		if counter >= rand_pokemon:
			@warning_ignore("unsafe_cast")
			texture_path = (DBPokemons.dict[encounter.pokemon_id] as DBPokemon).texture_path
			break
	
	var texture : Texture2D = load(texture_path)
	
	(get_node("%TextureRect") as TextureRect).texture = texture
	
	hp = randi_range(2,3)
	progress_bar.max_value = hp
	progress_bar.value = hp
	
	(get_node("%RightHp") as Label).text = "%s" %hp
	
	data.pokedollar += randi_range(2, 5)
	update_pokedollar_label()


## Update pokédollar label
func update_pokedollar_label() -> void:
	(get_node("%Pokedollar") as Label).text = "Pokedollar : %s" %data.pokedollar


## Update current Hp label
func update_left_hp() -> void:
	(get_node("%LeftHp") as Label).text = "%s" %hp


## Triggered when the TextureButton is pressed
func _on_texture_button_pressed() -> void:
	click_attack()


## Triggered every seconds
func _on_timer_timeout() -> void:
	pokemon_attack()
