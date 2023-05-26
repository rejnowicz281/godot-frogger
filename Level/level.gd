extends Node

const CAR = preload("res://Car/car.tscn")

func spawn_car(car_start_id):
	var car = CAR.instantiate()
	var car_start_path = "StartPositions/CarStart" + str(car_start_id)
	car.position = get_node(car_start_path).position
	add_child(car)

func _on_timer_1_timeout(): spawn_car(1)

func _on_timer_2_timeout(): spawn_car(2)

func _on_timer_3_timeout(): spawn_car(3)

func _on_timer_4_timeout(): spawn_car(4)

func _on_timer_5_timeout(): spawn_car(5)
