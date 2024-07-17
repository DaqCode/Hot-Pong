extends CharacterBody2D

var win_size = Vector2()
const start_speed := 500
const acceleration := 50
var speed := 0
var direction = Vector2()

func _ready():
	win_size = get_viewport_rect().size
	
	
func new_ball():
	position.x = 0
	position.y = randi_range(-200,200)
	speed = start_speed
	direction = random_direction()
	
func _physics_process(delta):	
	move_and_collide(speed * delta * direction)

func random_direction():
	var new_direction := Vector2()
	new_direction.x = [-1,1].pick_random()
	new_direction.y = randf_range(-1,1)
	return new_direction.normalized()
