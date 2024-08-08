extends Node3D

@export_multiline var lines : String = "PlaceHolder"
var hastriggered: bool = false
# Called when the node enters the scene tree for the first time.

func _on_area_3d_area_entered(area: Area3D):
	if area is grabber && hastriggered == false:
		get_parent().play_dialog(lines)
		hastriggered = true
