extends Node2D

const speed = 140
var direction = 1 

@onready var RayRight = $RayCastRight
@onready var RayLeft = $RayCastLeft
@onready var animated = $AnimatedSprite2D

func _process(delta: float) -> void:
	if RayRight.is_colliding():
		direction = -1
		animated.flip_h = true

	if RayLeft.is_colliding():
		direction = 1
		animated.flip_h = false
	
	position.x += direction * speed * delta
