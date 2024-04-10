extends Node
class_name MantleComp

@export_category("Distances & Ranges")
@export var mantleRange : float
@export var stepHeightRange : float
@export var downRayDistFromCentre : Vector3 = Vector3(0,4,0.5)

#Compentents
var stepDetector : RayCast3D
var wallDetector : RayCast3D
var downRay : RayCast3D
var targetPosAreaCollider : Area3D
#Vars
var nearestWallCollisionPos : Vector3
var isValidTargetPos : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	stepDetector = $StepDetectionRay
	wallDetector = $WallDetectionRay
	downRay = $DownRay
	targetPosAreaCollider = $TargetPos

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var stepDetectorPos = ray_distance(stepDetector)
	var wallDetectorPos = ray_distance(wallDetector)
	if wallDetectorPos > stepDetectorPos:
		nearestWallCollisionPos = wallDetectorPos
		target_pos()
		pass
	else:
		nearestWallCollisionPos = stepDetectorPos
		pass
	pass

func ray_distance(ray: RayCast3D):
	return (ray.get_collision_point() - ray.position).length()

func target_pos():
	downRay.position = (nearestWallCollisionPos + downRayDistFromCentre)
	targetPosAreaCollider.position = (downRay.get_collision_point() + Vector3(0,1.1,0))
	if (self.position - targetPosAreaCollider.position).length() < (mantleRange or stepHeightRange):
		isValidTargetPos = true
	else:
		isValidTargetPos = false

func step_up():
	pass

func mantle():
	pass
