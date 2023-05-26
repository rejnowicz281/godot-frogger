extends Area2D

var speed = 250

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta


func _on_body_entered(body):
	get_tree().change_scene_to_file("res://OverScreen/over_screen.tscn")
