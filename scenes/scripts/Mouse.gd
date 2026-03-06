extends AnimatableBody2D

@export var speed := 100
@export var distance := 150

var start_x
var direction := 1

@onready var sprite = $Sprite2D


func _ready():
	start_x = position.x


func _physics_process(delta):
	position.x += speed * direction * delta

	if position.x > start_x + distance:
		direction = -1
	elif position.x < start_x - distance:
		direction = 1

	sprite.flip_h = direction > 0
