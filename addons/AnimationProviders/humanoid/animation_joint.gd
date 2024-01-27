@tool
class_name AnimationJoint
extends RefCounted


## Joint position
var position : Vector3 = Vector3.ZERO

## Joint rotation
var rotation : Quaternion = Quaternion.IDENTITY


# Convert to string
func _to_string() -> String:
	return "Joint:%d (%f,%f,%f) / (%f,%f,%f,%f)" % [
		get_instance_id(),
		position.x,
		position.y,
		position.z,
		rotation.w,
		rotation.x,
		rotation.y,
		rotation.z
	]
