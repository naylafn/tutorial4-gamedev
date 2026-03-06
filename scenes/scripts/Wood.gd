extends RigidBody2D

@export var speed := 100
@export var distance := 200

var start_x
var direction := 1


func _ready():
	start_x = position.x


func _physics_process(_delta):
	linear_velocity.x = speed * direction

	if position.x > start_x + distance:
		direction = -1
	elif position.x < start_x - distance:
		direction = 1
