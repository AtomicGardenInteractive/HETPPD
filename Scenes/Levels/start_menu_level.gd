extends Node3D

var mainlevel:  = "res://Scenes/Levels/main_level.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#$AnimationPlayer.animation_finished
	#$AnimationPlayer.play("CameraTransition")
	#$AnimationPlayer.animation_finished
	#$RadioLayer.visible
	#$RadioLayer/Radio.main_menu_anim
	pass
	
func nextlevel():
	#get_tree().change_scene_to_file()
	pass
	
