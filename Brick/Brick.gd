extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD")
var row = 0
var col = 0
var dying = false

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()
func _process(delta):
	if dying and not $Particles2D.emitting:
		queue_free()


func update_color():
	if HUD.color_blocks:
		if row == 0:
			$Color.color = Color8(224,49,49)
		if row == 1:
			$Color.color = Color8(253,126,20)
		if row == 2:
			$Color.color = Color8(255,224,102)
		if row == 3:
			$Color.color = Color8(148,216,45)
		if row == 4:
			$Color.color = Color8(34,139,230)
		if row == 5:
			$Color.color = Color8(132,94,247)
		if row == 6:
			$Color.color = Color8(190,75,219)
	else:
		$Color.color = Color(1,1,1,1)

func emit_particle(pos):
	if HUD.particle_blocks:
		$Particles2D.global_position = pos
		$Particles2D.emitting = true

	
	
func _on_HUD_changed():
	update_color()


func die():
	dying = true
	$Color.color.a = 0
	collision_layer = 0
	collision_mask = 0
	
