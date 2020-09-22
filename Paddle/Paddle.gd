extends KinematicBody2D

onready var paddle_size = $ColorRect.rect_size
onready var Ball = load("res://Ball/Ball.tscn")

func _ready():
	pass


func _physics_process(_delta):
	var target = get_viewport().get_mouse_position().x
	target = clamp(target, 0, get_viewport().size.x - paddle_size.x)

	position.x = target
