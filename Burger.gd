extends RigidBody2D

export var min_speed = 150

func _ready():
	var images = [preload("res://bun.png"), preload("res://tomatoSlice.png")]
	$BurgerIng.texture = images[rand_range(0,images.size())]
	randomize()
	var xcoord = rand_range(400,1200)
	position = Vector2(xcoord, 50)
	
func _on_Burger_body_entered(body):
	emit_signal("hit")
