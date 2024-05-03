class_name DBAttack
## Database model of an attack.


var id : String = "000"

var name : String = "Default"


var type : ManagerDamage.Types = ManagerDamage.Types.NORMAL

var coef : float = 1.0


func _init(
		_id : String,
		_name : String,
		
		_type : ManagerDamage.Types = ManagerDamage.Types.NORMAL,
		_coef : float = 1.0
) -> void:
	id = _id
	name = _name
	
	type = _type
	coef = _coef
