extends Sprite2D

var score := [0, 0]
#0:Player, 1:CPU

const PADDLE_SPEED := 500

func _on_ball_timer_timeout():
	$Ball.new_ball()
