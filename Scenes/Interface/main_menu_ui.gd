extends Control

@export var mainmenuscene : Node3D
@onready var radiolayer: CanvasLayer = $"../../RadioLayer"


func _on_play_pressed():
	radiolayer.visible = true
	self.visible = false
	pass # Replace with function body.


func _on_options_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
		get_tree().quit()
