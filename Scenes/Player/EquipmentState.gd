extends Node
class_name EquipmentState

signal EquipmentTransitioned
var parent: Player
@export var equipment: MeshInstance3D

func enter():
	var parent = $"."
	if equipment == null:
		pass
	else:
		equipment.visible=true
	pass

func exit():
	if equipment == null:
		pass
	else:
		equipment.visible=false
	pass

func Update(_delta: float):
	pass

func Physics_Update(_delta: float):
	pass
