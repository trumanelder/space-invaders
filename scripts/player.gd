extends CharacterBody2D

const SPEED = 300.0
signal fire_projectile()

func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if Input.is_action_pressed("fire_projectile") and $ProjectileCooldown.time_left == 0:
		fire_projectile.emit()
		$ProjectileCooldown.start()

	move_and_slide()
