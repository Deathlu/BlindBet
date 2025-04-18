extends TextureButton

@export var text:String = "Text button"
@export var arrow_margin_from_center:int = 100

func _ready():
	setup_text()
	show_arrow()
	set_focus_mode(Control.FOCUS_ALL)

func setup_text():
	$RichTextLabel.bbcode_text = "[center] %s [/center]" % [text]
	
func show_arrow():
	if has_node("LeftArrow"):
		var arrow = $LeftArrow
		arrow.visible = true
		arrow.global_position.y = global_position.y + (size.y / 3.0)
	
		var center_x = global_position.x + (size.x / 2)
		arrow.global_position.x = center_x - arrow_margin_from_center

func hide_arrow():
	for arrow in $LeftArrow:
		arrow.visible = false 
