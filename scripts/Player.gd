extends StaticBody2D

var p_height : int

func _ready():
	p_height = $ColorRect.get_size().y

func _process(delta):
	if Input.is_action_pressed("up"):
		position.y -= get_parent().PADDLE_SPEED * delta
	if Input.is_action_pressed("down"):
		position.y += get_parent().PADDLE_SPEED * delta
	position.y = clamp(position.y, -250, 250)
