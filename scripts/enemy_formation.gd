extends Node2D

@export var enemy_scene: PackedScene

const rows = 5
const columns = 11
const row_spacing = 20
const column_spacing = 30

func _ready() -> void:
	for j in range(0, rows):
		for i in range(0, columns):
			var enemy = enemy_scene.instantiate()
			add_child(enemy)
			enemy.position.x = i * column_spacing
			enemy.position.y = j * row_spacing
