extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("ui_left", "ui_right")
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var direction_y = Input.get_axis("ui_up", "ui_down")
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
	
	player_animation(direction_x, direction_y)
	move_and_slide()

func player_animation(direction_x, direction_y):
	if direction_x:
		$"AnimatedSprite2D".play("Walk Side")
		$"AnimatedSprite2D".flip_h = true if direction_x == 1 else false
	elif direction_y == 1:
		$"AnimatedSprite2D".play("Walk Down")
	elif direction_y == -1:
		$"AnimatedSprite2D".play("Walk Up")
	elif not direction_y and not direction_x:
		$"AnimatedSprite2D".frame = 0
		$"AnimatedSprite2D".stop()
