class_name Pickup 
extends Area3D

enum PICKUP_TYPES {Fish, Pickaxe}
@export var TYPE : PICKUP_TYPES = PICKUP_TYPES.Fish


func On_Collected():
	queue_free()
