extends Button

var PlayerStats : PlayerStats 
var EnemyStats : EnemyStats
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	PlayerStats = load("res://PlayerResources/player_stats.tres")
	EnemyStats = load("res://00_Globals/global_level_manager.gd")
	
	pass # Replace with function body.
