class_name Enemy extends Resource
var enemy_hp: int
var enemy_max_hp: int
var enemy_luck: int # or critical dmg
var enemy_dmg: int # damage per hit
var enemy_speed: float # or initiative
var enemy_type: int
#@export var player_hp : player_hp

func take_damage (player_dmg, enemy_hp):
	enemy_hp -= player_dmg
	return enemy_hp
	
