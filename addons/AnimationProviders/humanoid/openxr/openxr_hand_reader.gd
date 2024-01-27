@tool
class_name OpenXRHandReader
extends HumanoidReader


# Sqrt 1/2 (for roll)
const _SQRT12 : float = 0.707106781186548

# OpenXR joint information (by OpenXR hand and joint)
const _openxr_joint_info := [
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_WRIST,
		body = HumanoidModel.Joint.LEFT_HAND,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_THUMB_METACARPAL,
		body = HumanoidModel.Joint.LEFT_THUMB_METACARPAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_THUMB_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_THUMB_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_THUMB_DISTAL,
		body = HumanoidModel.Joint.LEFT_THUMB_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_INDEX_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_INDEX_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_INDEX_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_INDEX_INTERMEDIATE,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_INDEX_DISTAL,
		body = HumanoidModel.Joint.LEFT_INDEX_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_MIDDLE_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_MIDDLE_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_MIDDLE_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_MIDDLE_INTERMEDIATE,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_MIDDLE_DISTAL,
		body = HumanoidModel.Joint.LEFT_MIDDLE_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_RING_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_RING_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_RING_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_RING_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_RING_DISTAL,
		body = HumanoidModel.Joint.LEFT_RING_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_LITTLE_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_LITTLE_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_LITTLE_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_LITTLE_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_LEFT,
		joint = OpenXRInterface.HAND_JOINT_LITTLE_DISTAL,
		body = HumanoidModel.Joint.LEFT_LITTLE_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_WRIST,
		body = HumanoidModel.Joint.RIGHT_HAND,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_THUMB_METACARPAL,
		body = HumanoidModel.Joint.RIGHT_THUMB_METACARPAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_THUMB_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_THUMB_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_THUMB_DISTAL,
		body = HumanoidModel.Joint.RIGHT_THUMB_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_INDEX_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_INDEX_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_INDEX_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_INDEX_INTERMEDIATE,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_INDEX_DISTAL,
		body = HumanoidModel.Joint.RIGHT_INDEX_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_MIDDLE_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_MIDDLE_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_MIDDLE_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_MIDDLE_INTERMEDIATE,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_MIDDLE_DISTAL,
		body = HumanoidModel.Joint.RIGHT_MIDDLE_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_RING_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_RING_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_RING_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_RING_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_RING_DISTAL,
		body = HumanoidModel.Joint.RIGHT_RING_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_LITTLE_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_LITTLE_PROXIMAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_LITTLE_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_LITTLE_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	},
	{
		hand = OpenXRInterface.HAND_RIGHT,
		joint = OpenXRInterface.HAND_JOINT_LITTLE_DISTAL,
		body = HumanoidModel.Joint.RIGHT_LITTLE_DISTAL,
		roll = Quaternion(0.0, -_SQRT12, _SQRT12, 0.0)
	}
]

# OpenXR joints
var _openxr_joints : Array[AnimationJoint] = []

# Body joints
var _body_joints := {}


func _init() -> void:
	_openxr_joints
	pass

## Read updated information. Returns true if new information available.
func read() -> bool:
	# Find the OpenXR interface and make sure it's initialized
	var xr := XRServer.find_interface("OpenXR") as OpenXRInterface
	if not xr or not xr.is_initialized():
		return false

	# Read the body joints
	for info in _openxr_joint_info:
		var hand : OpenXRInterface.Hand = info["hand"]
		var joint : OpenXRInterface.HandJoints = info["joint"]
		var body : int = info["body"]
		var roll : Quaternion = info["roll"]

		var pos := xr.get_hand_joint_position(hand, joint)
		var rot := xr.get_hand_joint_rotation(hand, joint)

		_openxr_joints[body].position = pos
		_openxr_joints[body].rotation = rot * roll

	return true


## Get a dictionary of Joint
func get_body_joints() -> Dictionary:
	return _body_joints


## Get a dictionary of FaceBlend weights
func get_face_blends() -> Dictionary:
	return {}
