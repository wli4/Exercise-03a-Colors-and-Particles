extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD")
var row = 0
var col = 0

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()

func update_color():
	if HUD.color_blocks:
		pass
	else:
		pass

func emit_particle(pos):
	if HUD.particle_blocks:
		pass
	else:
		pass
	
	
func _on_HUD_changed():
	update_color()


func die():
	queue_free()
