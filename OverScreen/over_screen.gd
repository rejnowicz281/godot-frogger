extends Control

func _ready():
	$Score.text = "Your score was: " + str(Global.score)
	$ResumeGame.text = "Press 'space' to play again"

func _process(delta):
	if Input.is_action_pressed("start_game"):
		get_tree().change_scene_to_file("res://Level/level.tscn")
		Global.score = 0
		Global.reset_car_speed_range()
