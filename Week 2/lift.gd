extends Node2D

@export var speed = 100

@export var bottom_position = Vector2(0,0)
@export var top_position = Vector2(0,-300)

var target_position
var moving = false

@onready var platform = $Platform


func _process(delta):

	if moving:
		platform.position = platform.position.move_toward(target_position, speed * delta)

		if platform.position == target_position:
			moving = false


func move_up():

	target_position = top_position
	moving = true


func move_down():

	target_position = bottom_position
	moving = true
