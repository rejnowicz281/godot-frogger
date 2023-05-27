extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var direction = Vector2.ZERO

	direction.x = Input.get_axis("ui_left", "ui_right")
	if direction.x:
		velocity.x = direction.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	direction.y = Input.get_axis("ui_up", "ui_down")
	if direction.y:
		velocity.y = direction.y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
	
	player_animation(direction)

	move_and_slide()

func player_animation(direction):
	if direction.x:
		$"AnimatedSprite2D".play("Walk Side")
		$"AnimatedSprite2D".flip_h = true if direction.x == 1 else false
	elif direction.y == 1:
		$"AnimatedSprite2D".play("Walk Down")
	elif direction.y == -1:
		$"AnimatedSprite2D".play("Walk Up")
	elif not direction.y and not direction.x:
		$"AnimatedSprite2D".frame = 0
		$"AnimatedSprite2D".stop()
