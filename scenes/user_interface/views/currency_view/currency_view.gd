class_name CurrencyView
extends VBoxContainer
## Component displaying currencies.

## Reference to the pokedollar label.
@export
var pokedollar_label : Label
## Reference to the Game data.
@onready
var data : Data = Game.ref.data


## Update label every frame.
func _process(_delta: float) -> void:
	pokedollar_label.text = "Pokedollar : %s" %data.pokedollar
