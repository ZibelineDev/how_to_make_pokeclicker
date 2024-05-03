class_name TeamList
extends HBoxContainer


func _ready() -> void:
	TeamManager.ref.team_updated.connect(update_team)
	update_team()


func update_team() -> void:
	clear_textures()
	
	var counter : int = 0
	
	for key : String in Game.ref.data.team:
		(get_node("Team%s"%counter) as TextureButton).texture_normal = (DBPokemons.dict[key] as DBPokemon).texture
		counter += 1


func clear_textures() -> void:
	(get_node("Team0") as TextureButton).texture_normal = null
	(get_node("Team1") as TextureButton).texture_normal = null
	(get_node("Team2") as TextureButton).texture_normal = null
	(get_node("Team3") as TextureButton).texture_normal = null



func _on_team_updated() -> void:
	update_team()


func _on_click_pokemon(index : int) -> void:
	TeamManager.ref.remove_pokemon(index)
