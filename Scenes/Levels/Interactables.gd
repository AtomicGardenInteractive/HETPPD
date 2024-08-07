extends Node3D
class_name interactionhandler

func movetruck():
	$AnimationPlayer.play("TruckMove")
	pass

func movegate():
	$AnimationPlayer.play("GateMove")
	pass

func _on_area_3d_area_entered(area: Area3D):
	print(area.name)
	if area is grabber:
		print(area.fishNum)
		if area.fishNum>=5:
			movegate()
	pass
