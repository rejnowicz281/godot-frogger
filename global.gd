extends Node

var score = 0

const CAR_SPEED_MIN = 300
const CAR_SPEED_MAX = 350

var car_speed_range = [CAR_SPEED_MIN, CAR_SPEED_MAX]

func multiply_car_speed_range(x):
	car_speed_range[0] *= x
	car_speed_range[1] *= x

func reset_car_speed_range(): car_speed_range = [CAR_SPEED_MIN, CAR_SPEED_MAX]
