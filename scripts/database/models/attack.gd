class_name DBAttack
## Database model of an attack.

enum effects {
	NONE = 0,
	POISON = 1,
	INCREASE_EXP = 2,
}


var id : String = "000"

var name : String = "Default"


var type : ManagerDamage.Types = ManagerDamage.Types.NORMAL

var coef : float = 1.0

var effect : effects = effects.NONE
var effect_probability : int = 10


func _init(
		_id : String,
		_name : String,
		
		_type : ManagerDamage.Types = ManagerDamage.Types.NORMAL,
		_coef : float = 1.0,
		_effect : effects = effects.NONE,
		_effect_probability : int = 10,
) -> void:
	id = _id
	name = _name
	
	type = _type
	coef = _coef
	
	effect = _effect
	effect_probability = _effect_probability
