@tool
class_name VmcReader
extends HumanoidReader


## Enumeration of VMC joints
enum VmcJoint {
	HIPS = 0,
	SPINE = 1,
	CHEST = 2,
	UPPER_CHEST = 3,
	NECK = 4,
	HEAD = 5,
	LEFT_EYE = 6,
	RIGHT_EYE = 7,
	JAW = 8,
	LEFT_UPPER_LEG = 9,
	LEFT_LOWER_LEG = 10,
	LEFT_FOOT = 11,
	LEFT_TOES = 12,
	RIGHT_UPPER_LEG = 13,
	RIGHT_LOWER_LEG = 14,
	RIGHT_FOOT = 15,
	RIGHT_TOES = 16,
	LEFT_SHOULDER = 17,
	LEFT_UPPER_ARM = 18,
	LEFT_LOWER_ARM = 19,
	LEFT_HAND = 20,
	RIGHT_SHOULDER = 21,
	RIGHT_UPPER_ARM = 22,
	RIGHT_LOWER_ARM = 23,
	RIGHT_HAND = 24,
	LEFT_THUMB_PROXIMAL = 25,
	LEFT_THUMB_INTERMEDIATE = 26,
	LEFT_THUMB_DISTAL = 27,
	LEFT_INDEX_PROXIMAL = 28,
	LEFT_INDEX_INTERMEDIATE = 29,
	LEFT_INDEX_DISTAL = 30,
	LEFT_MIDDLE_PROXIMAL = 31,
	LEFT_MIDDLE_INTERMEDIATE = 32,
	LEFT_MIDDLE_DISTAL = 33,
	LEFT_RING_PROXIMAL = 34,
	LEFT_RING_INTERMEDIATE = 35,
	LEFT_RING_DISTAL = 36,
	LEFT_LITTLE_PROXIMAL = 37,
	LEFT_LITTLE_INTERMEDIATE = 38,
	LEFT_LITTLE_DISTAL = 39,
	RIGHT_THUMB_PROXIMAL = 40,
	RIGHT_THUMB_INTERMEDIATE = 41,
	RIGHT_THUMB_DISTAL = 42,
	RIGHT_INDEX_PROXIMAL = 43,
	RIGHT_INDEX_INTERMEDIATE = 44,
	RIGHT_INDEX_DISTAL = 45,
	RIGHT_MIDDLE_PROXIMAL = 46,
	RIGHT_MIDDLE_INTERMEDIATE = 47,
	RIGHT_MIDDLE_DISTAL = 48,
	RIGHT_RING_PROXIMAL = 49,
	RIGHT_RING_INTERMEDIATE = 50,
	RIGHT_RING_DISTAL = 51,
	RIGHT_LITTLE_PROXIMAL = 52,
	RIGHT_LITTLE_INTERMEDIATE = 53,
	RIGHT_LITTLE_DISTAL = 54,
	COUNT = 55
}

# VMC Joint names
var _vmc_joint_names := {
	"Hips" : VmcJoint.HIPS,
	"Spine" : VmcJoint.SPINE,
	"Chest" : VmcJoint.CHEST,
	"UpperChest" : VmcJoint.UPPER_CHEST,
	"Neck" : VmcJoint.NECK,
	"Head" : VmcJoint.HEAD,
	"LeftEye" : VmcJoint.LEFT_EYE,
	"RightEye" : VmcJoint.RIGHT_EYE,
	"Jaw" : VmcJoint.JAW,
	"LeftUpperLeg" : VmcJoint.LEFT_UPPER_LEG,
	"LeftLowerLeg" : VmcJoint.LEFT_LOWER_LEG,
	"LeftFoot" : VmcJoint.LEFT_FOOT,
	"LeftToes" : VmcJoint.LEFT_TOES,
	"RightUpperLeg" : VmcJoint.RIGHT_UPPER_LEG,
	"RightLowerLeg" : VmcJoint.RIGHT_LOWER_LEG,
	"RightFoot" : VmcJoint.RIGHT_FOOT,
	"RightToes" : VmcJoint.RIGHT_TOES,
	"LeftShoulder" : VmcJoint.LEFT_SHOULDER,
	"LeftUpperArm" : VmcJoint.LEFT_UPPER_ARM,
	"LeftLowerArm" : VmcJoint.LEFT_LOWER_ARM,
	"LeftHand" : VmcJoint.LEFT_HAND,
	"RightShoulder" : VmcJoint.RIGHT_SHOULDER,
	"RightUpperArm" : VmcJoint.RIGHT_UPPER_ARM,
	"RightLowerArm" : VmcJoint.RIGHT_LOWER_ARM,
	"RightHand" : VmcJoint.RIGHT_HAND,
	"LeftThumbProximal" : VmcJoint.LEFT_THUMB_PROXIMAL,
	"LeftThumbIntermediate" : VmcJoint.LEFT_THUMB_INTERMEDIATE,
	"LeftThumbDistal" : VmcJoint.LEFT_THUMB_DISTAL,
	"LeftIndexProximal" : VmcJoint.LEFT_INDEX_PROXIMAL,
	"LeftIndexIntermediate" : VmcJoint.LEFT_INDEX_INTERMEDIATE,
	"LeftIndexDistal" : VmcJoint.LEFT_INDEX_DISTAL,
	"LeftMiddleProximal" : VmcJoint.LEFT_MIDDLE_PROXIMAL,
	"LeftMiddleIntermediate" : VmcJoint.LEFT_MIDDLE_INTERMEDIATE,
	"LeftMiddleDistal" : VmcJoint.LEFT_MIDDLE_DISTAL,
	"LeftRingProximal" : VmcJoint.LEFT_RING_PROXIMAL,
	"LeftRingIntermediate" : VmcJoint.LEFT_RING_INTERMEDIATE,
	"LeftRingDistal" : VmcJoint.LEFT_RING_DISTAL,
	"LeftLittleProximal" : VmcJoint.LEFT_LITTLE_PROXIMAL,
	"LeftLittleIntermediate" : VmcJoint.LEFT_LITTLE_INTERMEDIATE,
	"LeftLittleDistal" : VmcJoint.LEFT_LITTLE_DISTAL,
	"RightThumbProximal" : VmcJoint.RIGHT_THUMB_PROXIMAL,
	"RightThumbIntermediate" : VmcJoint.RIGHT_THUMB_INTERMEDIATE,
	"RightThumbDistal" : VmcJoint.RIGHT_THUMB_DISTAL,
	"RightIndexProximal" : VmcJoint.RIGHT_INDEX_PROXIMAL,
	"RightIndexIntermediate" : VmcJoint.RIGHT_INDEX_INTERMEDIATE,
	"RightIndexDistal" : VmcJoint.RIGHT_INDEX_DISTAL,
	"RightMiddleProximal" : VmcJoint.RIGHT_MIDDLE_PROXIMAL,
	"RightMiddleIntermediate" : VmcJoint.RIGHT_MIDDLE_INTERMEDIATE,
	"RightMiddleDistal" : VmcJoint.RIGHT_MIDDLE_DISTAL,
	"RightRingProximal" : VmcJoint.RIGHT_RING_PROXIMAL,
	"RightRingIntermediate" : VmcJoint.RIGHT_RING_INTERMEDIATE,
	"RightRingDistal" : VmcJoint.RIGHT_RING_DISTAL,
	"RightLittleProximal" : VmcJoint.RIGHT_LITTLE_PROXIMAL,
	"RightLittleIntermediate" : VmcJoint.RIGHT_LITTLE_INTERMEDIATE,
	"RightLittleDistal" : VmcJoint.RIGHT_LITTLE_DISTAL
}

# Sqrt 1/2 (for roll)
const _SQRT12 : float = 0.707106781186548

const _vmc_joint_info : Array[Dictionary] = [
	# 0: VmcJoint.HIPS
	{
		parent = -1,
		body = HumanoidModel.Joint.HIPS,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 1: VmcJoint.SPINE
	{
		parent = VmcJoint.HIPS,
		body = HumanoidModel.Joint.SPINE,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 2: VmcJoint.CHEST
	{
		parent = VmcJoint.SPINE,
		body = HumanoidModel.Joint.CHEST,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 3: VmcJoint.UPPER_CHEST
	{
		parent = VmcJoint.CHEST,
		body = HumanoidModel.Joint.UPPER_CHEST,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 4: VmcJoint.NECK
	{
		parent = VmcJoint.UPPER_CHEST,
		body = HumanoidModel.Joint.NECK,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 5: VmcJoint.HEAD
	{
		parent = VmcJoint.NECK,
		body = HumanoidModel.Joint.HEAD,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 6: VmcJoint.LEFT_EYE
	{
		parent = VmcJoint.HEAD,
		body = -1,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 7: VmcJoint.RIGHT_EYE
	{
		parent = VmcJoint.HEAD,
		body = -1,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 8: VmcJoint.JAW
	{
		parent = VmcJoint.HEAD,
		body = -1,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 9: VmcJoint.LEFT_UPPER_LEG
	{
		parent = VmcJoint.HIPS,
		body = HumanoidModel.Joint.LEFT_UPPER_LEG,
		roll = Quaternion(1.0, 0.0, 0.0, 0.0)
	},
	# 10: VmcJoint.LEFT_LOWER_LEG
	{
		parent = VmcJoint.LEFT_UPPER_LEG,
		body = HumanoidModel.Joint.LEFT_LOWER_LEG,
		roll = Quaternion(0.0, 0.0, 1.0, 0.0)
	},
	# 11: VmcJoint.LEFT_FOOT
	{
		parent = VmcJoint.LEFT_LOWER_LEG,
		body = HumanoidModel.Joint.LEFT_FOOT,
		roll = Quaternion(-_SQRT12, 0.0, 0.0, _SQRT12)
	},
	# 12: VmcJoint.LEFT_TOES
	{
		parent = VmcJoint.LEFT_FOOT,
		body = -1,
		roll = Quaternion.IDENTITY
	},
	# 13: VmcJoint.RIGHT_UPPER_LEG
	{
		parent = VmcJoint.HIPS,
		body = HumanoidModel.Joint.RIGHT_UPPER_LEG,
		roll = Quaternion(1.0, 0.0, 0.0, 0.0)
	},
	# 14: VmcJoint.RIGHT_LOWER_LEG
	{
		parent = VmcJoint.RIGHT_UPPER_LEG,
		body = HumanoidModel.Joint.RIGHT_LOWER_LEG,
		roll = Quaternion(0.0, 0.0, 1.0, 0.0)
	},
	# 15: VmcJoint.RIGHT_FOOT
	{
		parent = VmcJoint.RIGHT_LOWER_LEG,
		body = HumanoidModel.Joint.RIGHT_FOOT,
		roll = Quaternion(-_SQRT12, 0.0, 0.0, _SQRT12)
	},
	# 16: VmcJoint.RIGHT_TOES
	{
		parent = VmcJoint.RIGHT_FOOT,
		body = -1,
		roll = Quaternion.IDENTITY
	},
	# 17: VmcJoint.LEFT_SHOULDER
	{
		parent = VmcJoint.UPPER_CHEST,
		body = HumanoidModel.Joint.LEFT_SHOULDER,
		roll = Quaternion(-0.5, 0.5, 0.5, 0.5)
	},
	# 18: VmcJoint.LEFT_UPPER_ARM
	{
		parent = VmcJoint.LEFT_SHOULDER,
		body = HumanoidModel.Joint.LEFT_UPPER_ARM,
		roll = Quaternion(0.5, -0.5, 0.5, 0.5)
	},
	# 19: VmcJoint.LEFT_LOWER_ARM
	{
		parent = VmcJoint.LEFT_UPPER_ARM,
		body = HumanoidModel.Joint.LEFT_LOWER_ARM,
		roll = Quaternion(-_SQRT12, _SQRT12, 0.0, 0.0)
	},
	# 20: VmcJoint.LEFT_HAND
	{
		parent = VmcJoint.LEFT_LOWER_ARM,
		body = HumanoidModel.Joint.LEFT_HAND,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 21: VmcJoint.RIGHT_SHOULDER
	{
		parent = VmcJoint.UPPER_CHEST,
		body = HumanoidModel.Joint.RIGHT_SHOULDER,
		roll = Quaternion(0.5, 0.5, 0.5, -0.5)
	},
	# 22: VmcJoint.RIGHT_UPPER_ARM
	{
		parent = VmcJoint.RIGHT_SHOULDER,
		body = HumanoidModel.Joint.RIGHT_UPPER_ARM,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 23: VmcJoint.RIGHT_LOWER_ARM
	{
		parent = VmcJoint.RIGHT_UPPER_ARM,
		body = HumanoidModel.Joint.RIGHT_LOWER_ARM,
		roll = Quaternion(_SQRT12, _SQRT12, 0.0, 0.0)
	},
	# 24: VmcJoint.RIGHT_HAND
	{
		parent = VmcJoint.RIGHT_LOWER_ARM,
		body = HumanoidModel.Joint.RIGHT_HAND,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 25: VmcJoint.LEFT_THUMB_PROXIMAL
	{
		parent = VmcJoint.LEFT_HAND,
		body = HumanoidModel.Joint.LEFT_THUMB_METACARPAL,
		roll = Quaternion(0.0, 0.0, _SQRT12, _SQRT12)
	},
	# 26: VmcJoint.LEFT_THUMB_INTERMEDIATE
	{
		parent = VmcJoint.LEFT_THUMB_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_THUMB_PROXIMAL,
		roll = Quaternion(0.0, 0.0, _SQRT12, _SQRT12)
	},
	# 27: VmcJoint.LEFT_THUMB_DISTAL
	{
		parent = VmcJoint.LEFT_THUMB_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_THUMB_DISTAL,
		roll = Quaternion(0.0, 0.0, _SQRT12, _SQRT12)
	},
	# 28: VmcJoint.LEFT_INDEX_PROXIMAL
	{
		parent = VmcJoint.LEFT_HAND,
		body = HumanoidModel.Joint.LEFT_INDEX_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 29: VmcJoint.LEFT_INDEX_INTERMEDIATE
	{
		parent = VmcJoint.LEFT_INDEX_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_INDEX_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 30: VmcJoint.LEFT_INDEX_DISTAL
	{
		parent = VmcJoint.LEFT_INDEX_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_INDEX_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 31: VmcJoint.LEFT_MIDDLE_PROXIMAL
	{
		parent = VmcJoint.LEFT_HAND,
		body = HumanoidModel.Joint.LEFT_MIDDLE_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 32: VmcJoint.LEFT_MIDDLE_INTERMEDIATE
	{
		parent = VmcJoint.LEFT_MIDDLE_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_MIDDLE_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 33: VmcJoint.LEFT_MIDDLE_DISTAL
	{
		parent = VmcJoint.LEFT_MIDDLE_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_MIDDLE_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 34: VmcJoint.LEFT_RING_PROXIMAL
	{
		parent = VmcJoint.LEFT_HAND,
		body = HumanoidModel.Joint.LEFT_RING_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 35: VmcJoint.LEFT_RING_INTERMEDIATE
	{
		parent = VmcJoint.LEFT_RING_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_RING_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 36: VmcJoint.LEFT_RING_DISTAL
	{
		parent = VmcJoint.LEFT_RING_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_RING_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 37: VmcJoint.LEFT_LITTLE_PROXIMAL
	{
		parent = VmcJoint.LEFT_HAND,
		body = HumanoidModel.Joint.LEFT_LITTLE_PROXIMAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 38: VmcJoint.LEFT_LITTLE_INTERMEDIATE
	{
		parent = VmcJoint.LEFT_LITTLE_PROXIMAL,
		body = HumanoidModel.Joint.LEFT_LITTLE_INTERMEDIATE,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 39: VmcJoint.LEFT_LITTLE_DISTAL
	{
		parent = VmcJoint.LEFT_LITTLE_INTERMEDIATE,
		body = HumanoidModel.Joint.LEFT_LITTLE_DISTAL,
		roll = Quaternion(-0.5, 0.5, -0.5, -0.5)
	},
	# 40: VmcJoint.RIGHT_THUMB_PROXIMAL
	{
		parent = VmcJoint.RIGHT_HAND,
		body = HumanoidModel.Joint.RIGHT_THUMB_METACARPAL,
		roll = Quaternion(0.0, 0.0, -_SQRT12, _SQRT12)
	},
	# 41: VmcJoint.RIGHT_THUMB_INTERMEDIATE
	{
		parent = VmcJoint.RIGHT_THUMB_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_THUMB_PROXIMAL,
		roll = Quaternion(0.0, 0.0, -_SQRT12, _SQRT12)
	},
	# 42: VmcJoint.RIGHT_THUMB_DISTAL
	{
		parent = VmcJoint.RIGHT_THUMB_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_THUMB_DISTAL,
		roll = Quaternion(0.0, 0.0, -_SQRT12, _SQRT12)
	},
	# 43: VmcJoint.RIGHT_INDEX_PROXIMAL
	{
		parent = VmcJoint.RIGHT_HAND,
		body = HumanoidModel.Joint.RIGHT_INDEX_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 44: VmcJoint.RIGHT_INDEX_INTERMEDIATE
	{
		parent = VmcJoint.RIGHT_INDEX_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_INDEX_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 45: VmcJoint.RIGHT_INDEX_DISTAL
	{
		parent = VmcJoint.RIGHT_INDEX_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_INDEX_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 46: VmcJoint.RIGHT_MIDDLE_PROXIMAL
	{
		parent = VmcJoint.RIGHT_HAND,
		body = HumanoidModel.Joint.RIGHT_MIDDLE_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 47: VmcJoint.RIGHT_MIDDLE_INTERMEDIATE
	{
		parent = VmcJoint.RIGHT_MIDDLE_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_MIDDLE_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 48: VmcJoint.RIGHT_MIDDLE_DISTAL
	{
		parent = VmcJoint.RIGHT_MIDDLE_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_MIDDLE_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 49: VmcJoint.RIGHT_RING_PROXIMAL
	{
		parent = VmcJoint.RIGHT_HAND,
		body = HumanoidModel.Joint.RIGHT_RING_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 50: VmcJoint.RIGHT_RING_INTERMEDIATE
	{
		parent = VmcJoint.RIGHT_RING_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_RING_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 51: VmcJoint.RIGHT_RING_DISTAL
	{
		parent = VmcJoint.RIGHT_RING_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_RING_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 52: VmcJoint.RIGHT_LITTLE_PROXIMAL
	{
		parent = VmcJoint.RIGHT_HAND,
		body = HumanoidModel.Joint.RIGHT_LITTLE_PROXIMAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 53: VmcJoint.RIGHT_LITTLE_INTERMEDIATE
	{
		parent = VmcJoint.RIGHT_LITTLE_PROXIMAL,
		body = HumanoidModel.Joint.RIGHT_LITTLE_INTERMEDIATE,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
	# 54: VmcJoint.RIGHT_LITTLE_DISTAL
	{
		parent = VmcJoint.RIGHT_LITTLE_INTERMEDIATE,
		body = HumanoidModel.Joint.RIGHT_LITTLE_DISTAL,
		roll = Quaternion(0.5, 0.5, -0.5, 0.5)
	},
]


# UDP Server
var _server : UDPServer = UDPServer.new()

# Current connection
var _connection : PacketPeerUDP

# VMC Joints
var _vmc_joints : Array[AnimationJoint] = []

# Dictionary of blends (Float)
var _vmc_blends := {}

# Body joints
var _body_joints := {}


## Initialize the class
func _init() -> void:
	# Construct the joints
	for index in VmcJoint.COUNT:
		# Add the VMC joint
		_vmc_joints.append(AnimationJoint.new())

		# Add the body joint
		var joint_info : Dictionary = _vmc_joint_info[index]
		var body_joint : int = joint_info["body"]
		if body_joint >= 0:
			_body_joints[body_joint] = AnimationJoint.new()


## Stop listening
func stop() -> void:
	_server.stop()
	_connection = null


## Start listening
func listen(p_port : int = 39539) -> void:
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

	# Process all packets
	var new_data := false
	while _connection.get_available_packet_count() > 0:
		var packet := _connection.get_packet()
		if _decode_osc_block(packet, 0, packet.size()):
			new_data = true

	# Skip if no new data
	if not new_data:
		return false

	# Flatten joint-tree
	for index in VmcJoint.COUNT:
		# Get the joint and informatio
		var joint := _vmc_joints[index]
		var info := _vmc_joint_info[index]

		# Get the position and rotation
		var pos := joint.position
		var rot := joint.rotation

		# Apply parent transform
		var parent_index : int = info["parent"]
		if parent_index >= 0:
			var parent := _vmc_joints[parent_index]
			pos = parent.position + parent.rotation * pos
			rot = parent.rotation * rot
			joint.position = pos
			joint.rotation = rot

		# Set body joint
		var body_index : int = info["body"]
		if body_index >= 0:
			var roll : Quaternion = info["roll"]
			_body_joints[body_index].position = pos
			_body_joints[body_index].rotation = rot * roll

	return new_data


## Get a dictionary of BodyJoint
func get_body_joints() -> Dictionary:
	return _body_joints


## Get a dictionary of FaceBlend weights
func get_face_blends() -> Dictionary:
	return {}


# Decode an OSC block
func _decode_osc_block(
	p_packet : PackedByteArray,
	p_block_pos : int,
	p_block_end : int) -> bool:

	# Handle bundle block
	var bundle := p_packet.slice(p_block_pos, p_block_pos + 7).get_string_from_ascii()
	if bundle == "#bundle":
		# Loop decoding elements
		var pos := p_block_pos + 16
		while pos < p_block_end:
			# Get the block end position
			var child_pos := pos + 4
			var child_end := child_pos + _decode_u32_be(p_packet, pos)
			if child_end > p_block_end:
				push_warning("VmcReader - bundle block overrun")
				return false

			# Decode the OSC block
			if not _decode_osc_block(p_packet, child_pos, child_end):
				return false

			# Advance to the next block
			pos = child_end

		# Processed as bundle
		return true

	# Find the element address
	var address_end := p_packet.find(0, p_block_pos)
	if address_end < 0 or address_end > p_block_end: 
		push_warning("VmcReader - Element address overrun")
		return false

	# Get the element address, and skip if we don't care about it
	var address := p_packet.slice(p_block_pos, address_end).get_string_from_ascii()
	if not address.begins_with("/VMC/Ext/"):
		return false

	# Find the element format
	var format_pos := (address_end + 4) & ~3
	var format_end := p_packet.find(0, format_pos)
	if format_end < 0 or format_end > p_block_end:
		push_warning("VmcReader - Element format overrun")
		return false

	# Get the element format, and skip if we don't care about it
	var format := p_packet.slice(format_pos, format_end).get_string_from_ascii()
	if not format.begins_with(",sf"): return false

	# Find the element name
	var name_pos := (format_end + 4) & ~3
	var name_end := p_packet.find(0, name_pos)
	if name_end < 0 or name_end > p_block_end:
		push_warning("VmcReader - Element name overrun")
		return false

	# Get the element name
	var name := p_packet.slice(name_pos, name_end).get_string_from_ascii()
	
	# Parse the data
	var data_pos := (name_end + 4) & ~3
	match address:
		"/VMC/Ext/Bone/Pos":
			return _decode_bone_pos(p_packet, name, data_pos, p_block_end)

		"/VMC/Ext/Blend/Val":
			return _decode_blend_value(p_packet, name, data_pos, p_block_end)

	# Ignore unknown data
	return false


# Decode a bone position
func _decode_bone_pos(
	p_packet : PackedByteArray,
	p_name : String,
	p_data_pos : int,
	p_data_end : int) -> bool:

	# Look up the joint-id - skip if not found
	var id : int = _vmc_joint_names.get(p_name, -1)
	if id < 0:
		return true

	# Ensure we have the exact data (Vector3 + Quaternion)
	if p_data_end != p_data_pos + 28:
		push_warning("VmcReader - Bad joint data size")
		return false

	# Shenanigans due to Godot not having big-endian decode
	var data_bytes := p_packet.slice(p_data_pos, p_data_end)
	data_bytes.reverse()
	var data_values := data_bytes.to_float32_array()
	data_values.reverse()

	# Construct and save the joint
	var joint := AnimationJoint.new()
	joint.position = Vector3(data_values[0], data_values[1], -data_values[2])
	joint.rotation = Quaternion(data_values[3], data_values[4], -data_values[5], -data_values[6])
	_vmc_joints[id] = joint
	return true


# Decode a blend value
func _decode_blend_value(
	p_packet : PackedByteArray,
	p_name : String,
	p_data_pos : int,
	p_data_end : int) -> bool:

	# Ensure we have the exact data (float)
	if p_data_end != p_data_pos + 4:
		push_warning("VmcReader - Bad blend data size")
		return false

	# Shenanigans due to Godot not having big-endian decode
	var data_bytes := p_packet.slice(p_data_pos, p_data_end)
	data_bytes.reverse()

	# Save the blend
	_vmc_blends[p_name] = data_bytes.decode_float(0)
	return true


static func _decode_u32_be(p_packet : PackedByteArray, p_pos : int) -> int:
	var buf := p_packet.slice(p_pos, p_pos + 4)
	buf.reverse()
	return buf.decode_u32(0)
