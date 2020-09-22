extends KinematicBody2D

onready var paddle_size = $ColorRect.rect_size
onready var Ball = load("res://Ball/Ball.tscn")

func _ready():
	var ball = Ball.instance()
	ball.position = self.position + Vector2(paddle_size.x/2, -20)
	ball.name = "Ball"
	call_deferred("add_child", ball)


func _physics_process(_delta):
	var target = get_viewport().get_mouse_position().x
	target = clamp(target, 0, get_viewport().size.x - paddle_size.x)

	position.x = target
