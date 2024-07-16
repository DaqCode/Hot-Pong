extends CharacterBody2D
var collision_data 

func _ready():
	velocity = Vector2(300,300)
	
func _physics_process(delta):
	collision_data = move_and_collide(velocity * delta)
	
	if collision_data:
		velocity.x = randf_range(-350,350)
		velocity = velocity.bounce(collision_data.get_normal())
