extends Node2D

@export var projectile_scene: PackedScene
@onready var player: CharacterBody2D = $Player

func _ready() -> void:
	player.fire_projectile.connect(_on_player_fire_projectile)

func _on_player_fire_projectile() -> void:
	var projectile = projectile_scene.instantiate()
	add_child(projectile)
	projectile.global_position = $Player/ProjectileSpawn.global_position
