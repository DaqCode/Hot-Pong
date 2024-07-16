extends StaticBody2D

@export var SPEED = 300

var win_h : int
var player_h : int

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		position.x -= SPEED * delta
	elif Input.is_action_pressed("right"):
		position.x += SPEED * delta
	
	position.x = clamp(position.x, 0, 640)
