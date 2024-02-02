@tool
class_name HumanoidReader
extends RefCounted


## Humanoid Reader
##
## This base script reads humanoid information from a source.


## Read updated information. Returns true if new information available.
func read() -> bool:
	push_error("Only implementations of HumanoidReader should be used")
	breakpoint
	return false


## Get a dictionary of AnimationJoint by Humanoid.Joint
func get_humanoid_joints() -> Dictionary:
	push_error("Only implementations of HumanoidReader should be used")
	breakpoint
	return {}


## Get a dictionary of blend weight by Humanoid.FaceBlend
func get_humanoid_face_blends() -> Dictionary:
	push_error("Only implementations of HumanoidReader should be used")
	breakpoint
	return {}
