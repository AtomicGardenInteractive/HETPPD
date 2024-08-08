extends Node3D
class_name interactionhandler
@onready var UI : Control = $"../UILayer/DialogUI"
@onready var GameEnd : CanvasLayer = $"../GameEnd"
@export_multiline var lines : String = "Placeholder 0101010"

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
			play_dialog(lines)
	pass

func play_dialog(dialog: String):
	UI.newdialog(dialog)
	pass


func _on_game_ender_area_entered(area):
	GameEnd.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass # Replace with function body.


func _on_button_pressed():
	get_tree().quit()
