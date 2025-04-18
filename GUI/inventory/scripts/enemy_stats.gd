class_name EnemyStats extends Resource
@export var hp : int = 3
@export var max_hp : int = 3
@export var luck : int = 1 # or critical dmg
@export var dmg : int = 1 # damage per hit




func change_hp( delta : int ) -> void:
	hp = clampi( hp + delta, 0, max_hp )
	PlayerHud.update_hp( hp, max_hp )
	pass
