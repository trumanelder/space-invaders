extends Area2D

const SPEED:float = 600
var direction: Vector2 = Vector2.UP
var enemy_contact = false

func _physics_process(delta: float) -> void:
	position += direction * SPEED * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	if enemy_contact:
		return
	else:
		enemy_contact = true
		area.projectile_hit()
		queue_free()
