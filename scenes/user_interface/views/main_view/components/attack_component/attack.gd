class_name AttackCompo
extends Panel


@export
var normal : StyleBoxFlat
@export
var bug : StyleBoxFlat
@export
var fighting : StyleBoxFlat
@export
var dragon : StyleBoxFlat
@export
var electric : StyleBoxFlat
@export
var flying : StyleBoxFlat
@export
var ghost : StyleBoxFlat
@export
var grass : StyleBoxFlat
@export
var ground : StyleBoxFlat
@export
var ice : StyleBoxFlat
@export
var poison : StyleBoxFlat
@export
var psychic : StyleBoxFlat
@export
var rock : StyleBoxFlat
@export
var steel : StyleBoxFlat
@export
var fire : StyleBoxFlat
@export
var water : StyleBoxFlat
@export
var dark : StyleBoxFlat
@export
var fairy : StyleBoxFlat

var key : String


func set_key(_key : String) -> void:
	key = _key
	update_label()
	update_color()


func update_label() -> void:
	(get_node("Label") as Label).text = (DBAttacks.dict[key] as DBAttack).name


func update_color() -> void:
	var db_move : DBAttack = DBAttacks.dict[key] as DBAttack
	
	match db_move.type:
		ManagerDamage.Types.NORMAL:
			add_theme_stylebox_override("panel", normal)
		ManagerDamage.Types.FIGHTING:
			add_theme_stylebox_override("panel", fighting)
		ManagerDamage.Types.FLYING:
			add_theme_stylebox_override("panel", flying)
		ManagerDamage.Types.POISON:
			add_theme_stylebox_override("panel", poison)
		ManagerDamage.Types.GROUND:
			add_theme_stylebox_override("panel", ground)
		ManagerDamage.Types.ROCK:
			add_theme_stylebox_override("panel", rock)
		ManagerDamage.Types.BUG:
			add_theme_stylebox_override("panel", bug)
		ManagerDamage.Types.GHOST:
			add_theme_stylebox_override("panel", ghost)
		ManagerDamage.Types.STEEL:
			add_theme_stylebox_override("panel", steel)
		ManagerDamage.Types.FIRE:
			add_theme_stylebox_override("panel", fire)
		ManagerDamage.Types.WATER:
			add_theme_stylebox_override("panel", water)
		ManagerDamage.Types.GRASS:
			add_theme_stylebox_override("panel", grass)
		ManagerDamage.Types.ELECTRIC:
			add_theme_stylebox_override("panel", electric)
		ManagerDamage.Types.PSYCHIC:
			add_theme_stylebox_override("panel", psychic)
		ManagerDamage.Types.ICE:
			add_theme_stylebox_override("panel", ice)
		ManagerDamage.Types.DRAGON:
			add_theme_stylebox_override("panel", dragon)
		ManagerDamage.Types.DARK:
			add_theme_stylebox_override("panel", dark)
		ManagerDamage.Types.FAIRY:
			add_theme_stylebox_override("panel", fairy)


func trigger_move() -> void:
	ManagerMoves.ref.use_move(key)


func _on_texture_button_pressed() -> void:
	trigger_move()
