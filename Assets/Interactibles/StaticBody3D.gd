extends StaticBody3D
class_name Rock

var isStoryRock : bool = false

var rockshp : int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	isStoryRock = get_parent().get_parent().IsStoryRock

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func rockhit():
	rockshp +=1
	print(rockshp)
	if rockshp >=4:
		if isStoryRock:
			print("is story rock")
			get_parent().get_parent().signaltarget.movetruck()
			get_parent().get_parent().queue_free()
		else:
			get_parent().get_parent().queue_free()
