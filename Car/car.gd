extends Area2D

var speed = 250
var direction

const CARS = [
	"res://graphics/Car/Grey1.png",
	"res://graphics/Car/Grey2.png",
	"res://graphics/Car/Yellow1.png",
	"res://graphics/Car/Yellow2.png"
]

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

func _ready():
	set_direction()
	set_random_texture()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += speed * delta * direction

func _on_body_entered(body):
	get_tree().change_scene_to_file("res://OverScreen/over_screen.tscn")
