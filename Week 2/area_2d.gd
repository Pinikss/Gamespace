extends Area2D

@export var lift_path : NodePath
@onready var lift = get_node(lift_path)

var player_near = false


func _input(event):

	if event.is_action_pressed("interact") and player_near:

		if lift.moving == false:

			if lift.platform.position == lift.bottom_position:
				lift.move_up()
			else:
				lift.move_down()


func _on_body_entered(body):

	if body.name == "Player":
		player_near = true


func _on_body_exited(body):

	if body.name == "Player":
		player_near = false
