extends Node

var NumFish : int = 0
var UIVis : bool = false
@onready var UI : CanvasLayer = $"../UI_Interact"

# Called when the node enters the scene tree for the first time.
func _ready():
	UI.visible = false


func _input(event):
	if Input.is_action_just_pressed("action_interact"):
		pass

