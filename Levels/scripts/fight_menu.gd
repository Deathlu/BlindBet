class_name Menu extends Container

signal button_focused(button)
signal button_pressed(button)

var index: int = 0
#var fight_screen = get_parent().get_parent()

func gett_buttons() -> Array:
	return get_children()


func connect_to_buttons() -> void:
	for button in gett_buttons():
		button.focus_entered.connect(_on_Button_focused.bind(button))
		button.pressed.connect(_on_Button_pressed.bind(button))

func button_focus(n: int = index) -> void:
		var button: BaseButton = gett_buttons()[n]
		button.grab_focus()

func _on_Button_focused(button: BaseButton) -> void:
		emit_signal("button_foccused", button)

func _on_Button_pressed(button: BaseButton) -> void:
	emit_signal("button_pressed", button)
	#f button.name == button.Fight:
		#fight_screen
	
