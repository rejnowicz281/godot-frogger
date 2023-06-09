extends Area2D

const CARS = [
	"res://graphics/Car/Grey1.png",
	"res://graphics/Car/Grey2.png",
	"res://graphics/Car/Yellow1.png",
	"res://graphics/Car/Yellow2.png"
]

var speed
var direction

func set_random_texture():
	var random_id = randi() % CARS.size()
	set_texture(random_id)
	
func set_texture(id):
	$"Sprite2D".texture = load(CARS[id])

func set_direction():
	if position.x < 0:
		direction = 1
		$"Sprite2D".flip_h = true
	else:
		direction = -1
		$"Sprite2D".flip_h = false

func set_speed():
	var min = Global.car_speed_range[0]
	var max = Global.car_speed_range[1]
	speed = randi_range(min, max)

func _ready():
	set_speed()
	set_direction()
	set_random_texture()

func _process(delta):
	position.x += speed * delta * direction

func _on_body_entered(body):
	get_tree().change_scene_to_file("res://OverScreen/over_screen.tscn")
