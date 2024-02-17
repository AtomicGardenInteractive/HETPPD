extends Node
class_name Equipment_Machine
@export var initial_equipmentstate : EquipmentState
@export var parent : Player = null

var current_equipmentstate : EquipmentState
var equipmentstates : Dictionary = {}


func _ready():
	parent = self.get_parent()
	for child in get_children():
		if child is EquipmentState:
			equipmentstates[child.name.to_lower()] = child
			child.Transitioned.connect(on_child_transition)
			child.parent = parent
	
	if initial_equipmentstate:
		initial_equipmentstate.enter()
		current_equipmentstate = initial_equipmentstate

func _process(delta):
	if current_equipmentstate:
		current_equipmentstate.Update(delta)

func _physics_process(delta):
	if current_equipmentstate:
		current_equipmentstate.Physics_Update(delta)

func on_child_transition(equipmentstate, new_state_name):
	if equipmentstate != current_equipmentstate:
		return
	var new_equipmentstate = equipmentstates.get(new_state_name.to_lower())
	if !new_equipmentstate:
		return
	
	if current_equipmentstate:
		current_equipmentstate.exit()
	
	current_equipmentstate = new_equipmentstate
	
	new_equipmentstate.enter()
