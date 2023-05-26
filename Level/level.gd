extends Node

const CAR = preload("res://Car/car.tscn")

func _on_timer_timeout():
	var car = CAR.instantiate()
	car.position = $"CarStart1".position
	add_child(car)
