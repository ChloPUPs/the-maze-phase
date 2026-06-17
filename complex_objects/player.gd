extends CharacterBody2D

const SPEED: float = 120.0


func _physics_process(_delta: float) -> void:
	var movement := Vector2.ZERO
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	movement = direction * SPEED
	velocity = movement
	move_and_slide()
