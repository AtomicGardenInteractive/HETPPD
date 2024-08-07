extends Area3D

var fishNum: int = 0
@onready var equipmenthandler: Node3D = $"../Equipment"
# Called when the node enters the scene tree for the first time.
func _ready():
	area_entered.connect(on_area_enter)

func on_area_enter(target: Area3D):
	if target is Pickup:
		match target.TYPE:
			Pickup.PICKUP_TYPES.Fish:
				fishNum = +1
				target.On_Collected()

			Pickup.PICKUP_TYPES.Pickaxe:
				target.On_Collected()
				equipmenthandler.showpickaxe()


