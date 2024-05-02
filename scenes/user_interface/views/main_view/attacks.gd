extends HBoxContainer


@export 
var packed_attack : PackedScene


func _ready() -> void:
	ManagerMoves.ref.move_used.connect(_on_move_used)
	ManagerMoves.ref.move_requested.connect(_on_move_requested)


func generate_moves() -> void:
	clear_moves()
	
	var moves : Array[String] = ManagerMoves.ref.generate_moves()
	
	for move : String in moves:
		var node : AttackCompo = packed_attack.instantiate() as AttackCompo
		
		node.set_key(move)
		add_child(node)


func clear_moves() -> void:
	for node : Node in get_children():
		node.queue_free()


func _on_move_used(_key : String) -> void:
	clear_moves()


func _on_move_requested() -> void:
	generate_moves()
