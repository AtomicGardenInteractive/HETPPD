extends Node3D

@export var decal1: Decal
@export var decal2: Decal
@export var decal3: Decal
# Called when the node enters the scene tree for the first time.
func _ready():
	decal1.visible = false
	decal2.visible = false
	decal3.visible = false

func _on_area_3d_area_entered(area:Area3D):
	pass
	#if area == UCharacterBody3D:
		#if decal1.visible == false:
			#decal1.visible = true
		#elif decal2.visible == false:
			#decal2.visible = true
		#elif decal3.visible == false:
			#decal3.visible = true
		#else:
			#queue_free()
