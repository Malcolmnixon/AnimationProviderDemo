@tool
class_name AxisStudioReader
extends HumanoidReader


## Enumeration of axis-studio joints
enum AxisStudioJoint {
	HIPS = 0,
	RIGHT_UP_LEG = 1,
	RIGHT_LEG = 2,
	RIGHT_FOOT = 3,
	LEFT_UP_LEG = 4,
	LEFT_LEG = 5,
	LEFT_FOOT = 6,
	SPINE = 7,
	SPINE_1 = 8,
	SPINE_2 = 9,
	SPINE_3 = 10,
	NECK = 11,
	HEAD = 12,
	RIGHT_SHOULDER = 13,
	RIGHT_ARM = 14,
	RIGHT_FORE_ARM = 15,
	RIGHT_HAND = 16,
	RIGHT_HAND_THUMB_1 = 17,
	RIGHT_HAND_THUMB_2 = 18,
	RIGHT_HAND_THUMB_3 = 19,
	RIGHT_IN_HAND_INDEX = 20,
	RIGHT_HAND_INDEX_1 = 21,
	RIGHT_HAND_INDEX_2 = 22,
	RIGHT_HAND_INDEX_3 = 23,
	RIGHT_IN_HAND_MIDDLE = 24,
	RIGHT_HAND_MIDDLE_1 = 25,
	RIGHT_HAND_MIDDLE_2 = 26,
	RIGHT_HAND_MIDDLE_3 = 27,
	RIGHT_IN_HAND_RING = 28,
	RIGHT_HAND_RING_1 = 29,
	RIGHT_HAND_RING_2 = 30,
	RIGHT_HAND_RING_3 = 31,
	RIGHT_IN_HAND_PINKY = 32,
	RIGHT_HAND_PINKY_1 = 33,
	RIGHT_HAND_PINKY_2 = 34,
	RIGHT_HAND_PINKY_3 = 35,
	LEFT_SHOULDER = 36,
	LEFT_ARM = 37,
	LEFT_FORE_ARM = 38,
	LEFT_HAND = 39,
	LEFT_HAND_THUMB_1 = 40,
	LEFT_HAND_THUMB_2 = 41,
	LEFT_HAND_THUMB_3 = 42,
	LEFT_IN_HAND_INDEX = 43,
	LEFT_HAND_INDEX_1 = 44,
	LEFT_HAND_INDEX_2 = 45,
	LEFT_HAND_INDEX_3 = 46,
	LEFT_IN_HAND_MIDDLE = 47,
	LEFT_HAND_MIDDLE_1 = 48,
	LEFT_HAND_MIDDLE_2 = 49,
	LEFT_HAND_MIDDLE_3 = 50,
	LEFT_IN_HAND_RING = 51,
	LEFT_HAND_RING_1 = 52,
	LEFT_HAND_RING_2 = 53,
	LEFT_HAND_RING_3 = 54,
	LEFT_IN_HAND_PINKY = 55,
	LEFT_HAND_PINKY_1 = 56,
	LEFT_HAND_PINKY_2 = 57,
	LEFT_HAND_PINKY_3 = 58,
	COUNT = 59
}

# Sqrt 1/2 (for roll)
const _SQRT12 : float = 0.707106781186548

# Table of axis-studio joint information
const _axis_studio_joint_info : Array[Dictionary] = [
	# 0: AxisStudioJoint.HIPS
	{
		parent = -1,
		humanoid = HumanoidModel.Joint.HIPS,
		roll = Quaternion.IDENTITY
	},
	# 1: AxisStudioJoints.RIGHT_UP_LEG
	{
		parent = AxisStudioJoint.HIPS,
		humanoid = HumanoidModel.Joint.RIGHT_UPPER_LEG,
		roll = Quaternion(0.0, 0.0, 1.0, 0.0)
	},
	# 2: AxisStudioJoint.RIGHT_LEG
	{
		parent = AxisStudioJoint.RIGHT_UP_LEG,
		humanoid = HumanoidModel.Joint.RIGHT_LOWER_LEG,
		roll = Quaternion(1.0, 0.0, 0.0, 0.0)
	},
	# 3: AxisStudioJoint.RIGHT_FOOT
	{
		parent = AxisStudioJoint.RIGHT_LEG,
		humanoid = HumanoidModel.Joint.RIGHT_FOOT,
		roll = Quaternion(0.0, _SQRT12, _SQRT12, 0.0)
	},
	# 4: AxisStudioJoint.LEFT_UP_LEG
	{
		parent = AxisStudioJoint.HIPS,
		humanoid = HumanoidModel.Joint.LEFT_UPPER_LEG,
		roll = Quaternion(0.0, 0.0, 1.0, 0.0)
	},
	# 5: AxisStudioJoint.LEFT_LEG
	{
		parent = AxisStudioJoint.LEFT_UP_LEG,
		humanoid = HumanoidModel.Joint.LEFT_LOWER_LEG,
		roll = Quaternion(1.0, 0.0, 0.0, 0.0)
	},
	# 6: AxisStudioJoint.LEFT_FOOT
	{
		parent = AxisStudioJoint.LEFT_LEG,
		humanoid = HumanoidModel.Joint.LEFT_FOOT,
		roll = Quaternion(0.0, _SQRT12, _SQRT12, 0.0)
	},
	# 7: AxisStudioJoint.SPINE
	{
		parent = AxisStudioJoint.HIPS,
		humanoid = HumanoidModel.Joint.SPINE,
		roll = Quaternion.IDENTITY
	},
	# 8: AxisStudioJoint.SPINE_1
	{
		parent = AxisStudioJoint.SPINE,
		humanoid = HumanoidModel.Joint.CHEST,
		roll = Quaternion.IDENTITY
	},
	# 9: AxisStudioJoint.SPINE_2
	{
		parent = AxisStudioJoint.SPINE_1,
		humanoid = -1,
		roll = Quaternion.IDENTITY
	},
	# 10: AxisStudioJoint.SPINE_3
	{
		parent = AxisStudioJoint.SPINE_2,
		humanoid = HumanoidModel.Joint.UPPER_CHEST,
		roll = Quaternion.IDENTITY
	},
	# 11: AxisStudioJoint.NECK
	{
		parent = AxisStudioJoint.SPINE_3,
		humanoid = HumanoidModel.Joint.NECK,
		roll = Quaternion.IDENTITY
	},
	# 12: AxisStudioJoint.HEAD
	{
		parent = AxisStudioJoint.NECK,
		humanoid = HumanoidModel.Joint.HEAD,
		roll = Quaternion.IDENTITY
	},
	# 13: AxisStudioJoint.RIGHT_SHOULDER
	{
		parent = AxisStudioJoint.SPINE_2,
		humanoid = HumanoidModel.Joint.RIGHT_SHOULDER,
		roll = Quaternion(-0.5, 0.5, 0.5, 0.5)
	},
	# 14: AxisStudioJoint.RIGHT_ARM
	{
		parent = AxisStudioJoint.RIGHT_SHOULDER,
		humanoid = HumanoidModel.Joint.RIGHT_UPPER_ARM,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 15: AxisStudioJoint.RIGHT_FORE_ARM
	{
		parent = AxisStudioJoint.RIGHT_ARM,
		humanoid = HumanoidModel.Joint.RIGHT_LOWER_ARM,
		roll = Quaternion(0.0, 0.0, _SQRT12, _SQRT12)
	},
	# 16: AxisStudioJoint.RIGHT_HAND
	{
		parent = AxisStudioJoint.RIGHT_FORE_ARM,
		humanoid = HumanoidModel.Joint.RIGHT_HAND,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 17: AxisStudioJoint.RIGHT_HAND_THUMB_1
	{
		parent = AxisStudioJoint.RIGHT_HAND,
		humanoid = HumanoidModel.Joint.RIGHT_THUMB_METACARPAL,
		roll = Quaternion(-_SQRT12, _SQRT12, 0, 0)
	},
	# 18: AxisStudioJoint.RIGHT_HAND_THUMB_2
	{
		parent = AxisStudioJoint.RIGHT_HAND_THUMB_1,
		humanoid = HumanoidModel.Joint.RIGHT_THUMB_PROXIMAL,
		roll = Quaternion(-_SQRT12, _SQRT12, 0, 0)
	},
	# 19: AxisStudioJoint.RIGHT_HAND_THUMB_3
	{
		parent = AxisStudioJoint.RIGHT_HAND_THUMB_2,
		humanoid = HumanoidModel.Joint.RIGHT_THUMB_DISTAL,
		roll = Quaternion(-_SQRT12, _SQRT12, 0, 0)
	},
	# 20: AxisStudioJoint.RIGHT_IN_HAND_INDEX
	{
		parent = AxisStudioJoint.RIGHT_HAND,
		humanoid = -1,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 21: AxisStudioJoint.RIGHT_HAND_INDEX_1
	{
		parent = AxisStudioJoint.RIGHT_IN_HAND_INDEX,
		humanoid = HumanoidModel.Joint.RIGHT_INDEX_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 22: AxisStudioJoint.RIGHT_HAND_INDEX_2
	{
		parent = AxisStudioJoint.RIGHT_HAND_INDEX_1,
		humanoid = HumanoidModel.Joint.RIGHT_INDEX_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 23: AxisStudioJoint.RIGHT_HAND_INDEX_3
	{
		parent = AxisStudioJoint.RIGHT_HAND_INDEX_2,
		humanoid = HumanoidModel.Joint.RIGHT_INDEX_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 24: AxisStudioJoint.RIGHT_IN_HAND_MIDDLE
	{
		parent = AxisStudioJoint.RIGHT_HAND,
		humanoid = -1,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 25: AxisStudioJoint.RIGHT_HAND_MIDDLE_1
	{
		parent = AxisStudioJoint.RIGHT_IN_HAND_MIDDLE,
		humanoid = HumanoidModel.Joint.RIGHT_MIDDLE_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 26: AxisStudioJoint.RIGHT_HAND_MIDDLE_2
	{
		parent = AxisStudioJoint.RIGHT_HAND_MIDDLE_1,
		humanoid = HumanoidModel.Joint.RIGHT_MIDDLE_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 27: AxisStudioJoint.RIGHT_HAND_MIDDLE_3
	{
		parent = AxisStudioJoint.RIGHT_HAND_MIDDLE_2,
		humanoid = HumanoidModel.Joint.RIGHT_MIDDLE_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 28: AxisStudioJoint.RIGHT_IN_HAND_RING
	{
		parent = AxisStudioJoint.RIGHT_HAND,
		humanoid = -1,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 29: AxisStudioJoint.RIGHT_HAND_RING_1
	{
		parent = AxisStudioJoint.RIGHT_IN_HAND_RING,
		humanoid = HumanoidModel.Joint.RIGHT_RING_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 30: AxisStudioJoint.RIGHT_HAND_RING_2
	{
		parent = AxisStudioJoint.RIGHT_HAND_RING_1,
		humanoid = HumanoidModel.Joint.RIGHT_RING_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 31: AxisStudioJoint.RIGHT_HAND_RING_3
	{
		parent = AxisStudioJoint.RIGHT_HAND_RING_2,
		humanoid = HumanoidModel.Joint.RIGHT_RING_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 32: AxisStudioJoint.RIGHT_IN_HAND_PINKY
	{
		parent = AxisStudioJoint.RIGHT_HAND,
		humanoid = -1,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 33: AxisStudioJoint.RIGHT_HAND_PINKY_1
	{
		parent = AxisStudioJoint.RIGHT_IN_HAND_PINKY,
		humanoid = HumanoidModel.Joint.RIGHT_LITTLE_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 34: AxisStudioJoint.RIGHT_HAND_PINKY_2
	{
		parent = AxisStudioJoint.RIGHT_HAND_PINKY_1,
		humanoid = HumanoidModel.Joint.RIGHT_LITTLE_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 35: AxisStudioJoint.RIGHT_HAND_PINKY_3
	{
		parent = AxisStudioJoint.RIGHT_HAND_PINKY_2,
		humanoid = HumanoidModel.Joint.RIGHT_LITTLE_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 36: AxisStudioJoint.LEFT_SHOULDER
	{
		parent = AxisStudioJoint.SPINE_2,
		humanoid = HumanoidModel.Joint.LEFT_SHOULDER,
		roll = Quaternion(0.5, 0.5, 0.5, -0.5)
	},
	# 37: AxisStudioJoint.LEFT_ARM
	{
		parent = AxisStudioJoint.LEFT_SHOULDER,
		humanoid = HumanoidModel.Joint.LEFT_UPPER_ARM,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 38: AxisStudioJoint.LEFT_FORE_ARM
	{
		parent = AxisStudioJoint.LEFT_ARM,
		humanoid = HumanoidModel.Joint.LEFT_LOWER_ARM,
		roll = Quaternion(0.0, 0.0, -_SQRT12, _SQRT12)
	},
	# 39: AxisStudioJoint.LEFT_HAND
	{
		parent = AxisStudioJoint.LEFT_FORE_ARM,
		humanoid = HumanoidModel.Joint.LEFT_HAND,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 40: AxisStudioJoint.LEFT_HAND_THUMB_1
	{
		parent = AxisStudioJoint.LEFT_HAND,
		humanoid = HumanoidModel.Joint.LEFT_THUMB_METACARPAL,
		roll = Quaternion(_SQRT12, _SQRT12, 0.0, 0.0)
	},
	# 41: AxisStudioJoint.LEFT_HAND_THUMB_2
	{
		parent = AxisStudioJoint.LEFT_HAND_THUMB_1,
		humanoid = HumanoidModel.Joint.LEFT_THUMB_PROXIMAL,
		roll = Quaternion(_SQRT12, _SQRT12, 0.0, 0.0)
	},
	# 42: AxisStudioJoint.LEFT_HAND_THUMB_3
	{
		parent = AxisStudioJoint.LEFT_HAND_THUMB_2,
		humanoid = HumanoidModel.Joint.LEFT_THUMB_DISTAL,
		roll = Quaternion(_SQRT12, _SQRT12, 0.0, 0.0)
	},
	# 43: AxisStudioJoint.LEFT_IN_HAND_INDEX
	{
		parent = AxisStudioJoint.LEFT_HAND,
		humanoid = -1,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 44: AxisStudioJoint.LEFT_HAND_INDEX_1
	{
		parent = AxisStudioJoint.LEFT_IN_HAND_INDEX,
		humanoid = HumanoidModel.Joint.LEFT_INDEX_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 45: AxisStudioJoint.LEFT_HAND_INDEX_2
	{
		parent = AxisStudioJoint.LEFT_HAND_INDEX_1,
		humanoid = HumanoidModel.Joint.LEFT_INDEX_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 46: AxisStudioJoint.LEFT_HAND_INDEX_3
	{
		parent = AxisStudioJoint.LEFT_HAND_INDEX_2,
		humanoid = HumanoidModel.Joint.LEFT_INDEX_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 47: AxisStudioJoint.LEFT_IN_HAND_MIDDLE
	{
		parent = AxisStudioJoint.LEFT_HAND,
		humanoid = -1,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 48: AxisStudioJoint.LEFT_HAND_MIDDLE_1
	{
		parent = AxisStudioJoint.LEFT_IN_HAND_MIDDLE,
		humanoid = HumanoidModel.Joint.LEFT_MIDDLE_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 49: AxisStudioJoint.LEFT_HAND_MIDDLE_2
	{
		parent = AxisStudioJoint.LEFT_HAND_MIDDLE_1,
		humanoid = HumanoidModel.Joint.LEFT_MIDDLE_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 50: AxisStudioJoint.LEFT_HAND_MIDDLE_3
	{
		parent = AxisStudioJoint.LEFT_HAND_MIDDLE_2,
		humanoid = HumanoidModel.Joint.LEFT_MIDDLE_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 51: AxisStudioJoint.LEFT_IN_HAND_RING
	{
		parent = AxisStudioJoint.LEFT_HAND,
		humanoid = -1,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 52: AxisStudioJoint.LEFT_HAND_RING_1
	{
		parent = AxisStudioJoint.LEFT_IN_HAND_RING,
		humanoid = HumanoidModel.Joint.LEFT_RING_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 53: AxisStudioJoint.LEFT_HAND_RING_2
	{
		parent = AxisStudioJoint.LEFT_HAND_RING_1,
		humanoid = HumanoidModel.Joint.LEFT_RING_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 54: AxisStudioJoint.LEFT_HAND_RING_3
	{
		parent = AxisStudioJoint.LEFT_HAND_RING_2,
		humanoid = HumanoidModel.Joint.LEFT_RING_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 55: AxisStudioJoint.LEFT_IN_HAND_PINKY
	{
		parent = AxisStudioJoint.LEFT_HAND,
		humanoid = -1,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 56: AxisStudioJoint.LEFT_HAND_PINKY_1
	{
		parent = AxisStudioJoint.LEFT_IN_HAND_PINKY,
		humanoid = HumanoidModel.Joint.LEFT_LITTLE_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 57: AxisStudioJoint.LEFT_HAND_PINKY_2
	{
		parent = AxisStudioJoint.LEFT_HAND_PINKY_1,
		humanoid = HumanoidModel.Joint.LEFT_LITTLE_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 58: AxisStudioJoint.LEFT_HAND_PINKY_3
	{
		parent = AxisStudioJoint.LEFT_HAND_PINKY_2,
		humanoid = HumanoidModel.Joint.LEFT_LITTLE_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	}
]

# UDP Server
var _server : UDPServer = UDPServer.new()

# Current connection
var _connection : PacketPeerUDP

# Axis Studio joints
var _axis_studio_joints : Array[AnimationJoint] = []

# Humanoid joints
var _humanoid_joints := {}



## Initialize the class
func _init() -> void:
	# Construct the joints
	for index in AxisStudioJoint.COUNT:
		# Add the Axis Studio joint
		_axis_studio_joints.append(AnimationJoint.new())

		# Add the humanoid joint
		var joint_info : Dictionary = _axis_studio_joint_info[index]
		var humanoid_joint : int = joint_info["humanoid"]
		if humanoid_joint >= 0:
			_humanoid_joints[humanoid_joint] = AnimationJoint.new()


## Stop listening
func stop() -> void:
	_server.stop()
	_connection = null


## Start listening
func listen(p_port : int = 7004) -> void:
	stop()
	_server.listen(p_port)


## Read updated joint data
func read() -> bool:
	# Poll the server
	_server.poll()

	# Switch to any new connection
	if _server.is_connection_available():
		_connection = _server.take_connection()

	# Skip if no connection
	if not _connection:
		return false

	# Check for available packets and skip to the last
	var packet : PackedByteArray
	while _connection.get_available_packet_count() > 0:
		packet = _connection.get_packet()

	# Skip if no new packet
	if not packet:
		return false

	# Skip invalid packets
	if packet.size() < 64:
		push_warning("AxisStudioReader: Runt packet - ", packet.size())
		return false

	# Skip if the header isn't correct
	if packet.decode_u16(0) != 0xDDFF:
		push_warning("AxisStudioReader: Bad header - ", packet.decode_u16(0))
		return false

	# Skip if the footer isn't correct
	if packet.decode_u16(62) != 0xEEFF:
		push_warning("AxisStudioReader: Bad footer - ", packet.decode_u16(62))
		return false

	# Verify the number of joints
	var asj_count := packet.decode_u16(6) / 6
	if asj_count != AxisStudioJoint.COUNT:
		push_warning("AxisStudioReader: Unexpected joint count - ", asj_count)
		return false

	# Process the joints (axis-studio tree)
	for index in AxisStudioJoint.COUNT:
		# Parse the packet
		var offset := 64 + index * 24
		var pos_x := packet.decode_float(offset) / 100.0
		var pos_y := packet.decode_float(offset + 4) / 100.0
		var pos_z := packet.decode_float(offset + 8) / 100.0
		var rot_y := deg_to_rad(packet.decode_float(offset + 12))
		var rot_x := deg_to_rad(packet.decode_float(offset + 16))
		var rot_z := deg_to_rad(packet.decode_float(offset + 20))
		var pos := Vector3(pos_x, pos_y, pos_z)
		var rot := Vector3(rot_x, rot_y, rot_z)
		
		# Decode positions and rotations
		var joint := _axis_studio_joints[index]
		joint.position = pos
		joint.rotation = Basis.from_euler(rot).get_rotation_quaternion()

	# Flatten joint-tree
	for index in AxisStudioJoint.COUNT:
		# Get the joint and informatio
		var joint := _axis_studio_joints[index]
		var info := _axis_studio_joint_info[index]

		# Get the position and rotation
		var pos := joint.position
		var rot := joint.rotation

		# Apply parent transform
		var parent_index : int = info["parent"]
		if parent_index >= 0:
			var parent := _axis_studio_joints[parent_index]
			pos = parent.position + parent.rotation * pos
			rot = parent.rotation * rot
			joint.position = pos
			joint.rotation = rot

		# Set humanoid joint
		var humanoid_joint : int = info["humanoid"]
		if humanoid_joint >= 0:
			var roll : Quaternion = info["roll"]
			_humanoid_joints[humanoid_joint].position = pos
			_humanoid_joints[humanoid_joint].rotation = rot * roll

	# New data available
	return true


## Get a dictionary of AnimationJoint by Humanoid.Joint
func get_humanoid_joints() -> Dictionary:
	return _humanoid_joints


## Get a dictionary of blend weight by Humanoid.FaceBlend
func get_humanoid_face_blends() -> Dictionary:
	return {}
