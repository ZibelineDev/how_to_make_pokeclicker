class_name StateGeneratePokemon
extends AbstractState


@export
var master : MainViewMaster
@export
var state_manager : MainViewStateManager



func enter_state() -> void:
	reset()
	state_manager.change_state(state_manager.combat_state)


func process(_delta: float) -> void:
	pass


func leave_state() -> void:
	pass


## Generate a new Pokemon
func reset() -> void:
	var rand_pokemon : int = randi_range(1, master.total_weight)
	var texture : Texture2D
	
	var counter : int = 0
	
	for encounter : RouteEncounter in master.encounter_table:
		counter += encounter.weight
		
		if counter >= rand_pokemon:
			@warning_ignore("unsafe_cast")
			texture = (DBPokemons.dict[encounter.pokemon_id] as DBPokemon).texture
			
			master.current_pokemon_id = encounter.pokemon_id
			break
	
	(get_node("%TextureRect") as TextureRect).texture = texture
	
	master.hp = randi_range(9,12)
	master.progress_bar.max_value = master.hp
	master.progress_bar.value = master.hp
	
	(get_node("%RightHp") as Label).text = "%s" %master.hp
	(get_node("%MiddleHp") as Label).text = "/"
	master.update_left_hp()
