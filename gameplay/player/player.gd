extends CharacterBody2D

const SPEED : float = 120.0

@onready var sprite : AnimatedSprite2D = %Sprite


func _physics_process(_delta : float) -> void:
	velocity = _get_movement()

	if abs(velocity) > Vector2.ZERO:
		sprite.play("walk_down")
	else:
		sprite.play("idle")

	move_and_slide()


func _get_movement() -> Vector2:
	var dir : Vector2 = Input.get_vector(
		"move_left", "move_right", # X Axis
		"move_up", "move_down" # Y Axis
		)
	return dir * SPEED
