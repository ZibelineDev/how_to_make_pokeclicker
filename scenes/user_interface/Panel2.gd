extends Panel

func _ready() -> void:
	update_size()


func _process(delta: float) -> void:
	update_size()


func update_size() -> void:
	var child : Control = (get_node("CurrencyView") as Control)
	size = child.size
