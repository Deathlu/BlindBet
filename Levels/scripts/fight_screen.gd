class_name Fight_Screen extends Control

var player_data: PlayerStats	

@onready var _actions: WindowDefault = $Actions
@onready var _actions_fightmenu: Menu = $Actions/FightMenu

var enemy_hp: int = 5
var char_melee: int = 1

func _ready() -> void:
	player_data = load("res://PlayerResources/player_stats.tres")
	_actions_fightmenu.button_focus(0)
