extends CharacterBody2D

const SPEED: float = 120.0

@onready var sprite: AnimatedSprite2D = %Sprite


func _physics_process(_delta: float) -> void:
	var movement := Vector2.ZERO

	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	movement = direction * SPEED

	if abs(movement) > Vector2.ZERO:
		sprite.play("walk_down")
	else:
		sprite.play("idle")

	velocity = movement
	move_and_slide()
