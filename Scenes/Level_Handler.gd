extends Node
class_name levelhandler

var mainlevel = preload("res://Scenes/Levels/main_level.tscn")


func levelswitch ():
	get_parent().in_main_menu = false
	$MainMenuLevel.queue_free()
	var scene = mainlevel.instantiate()
	self.add_child(scene)
