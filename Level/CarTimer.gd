extends Timer

func randomize_wait():
	wait_time = randf_range(1.5, 2)

func _ready():
	randomize_wait()

func _on_timeout():
	randomize_wait()
