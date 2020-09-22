extends StaticBody2D

onready var HUD = get_node("/root/Game/HUD")

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_particle()


func update_particle():
	if HUD.particle_walls:
		pass
	else:
		pass

func _on_HUD_changed():
	update_particle()
