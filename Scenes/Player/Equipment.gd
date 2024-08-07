extends Node3D

@onready var Pickaxe: Node3D = $MargretPickAxer
@onready var raythecast: RayCast3D = $RayCast3D
var haspickaxe: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	Pickaxe.visible = false
	pass # Replace with function body.

func _process(_delta):
	if Input.is_action_just_pressed("action_hit") and haspickaxe == true:
		var objecthit = raythecast.get_collider()
		if objecthit==null:
			return
		print(objecthit.name)
		if objecthit is Rock:
			objecthit.rockhit()

func showpickaxe():
	Pickaxe.visible = true
	haspickaxe = true
	pass
