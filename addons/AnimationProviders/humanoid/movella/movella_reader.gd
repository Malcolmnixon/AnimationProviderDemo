@tool
class_name MovellaReader
extends HumanoidReader


## Movella MVN Pose Segments
enum MovellaSegment {
	PELVIS = 0,
	L5 = 1,
	L3 = 2,
	T12 = 3,
	T8 = 4,
	NECK = 5,
	HEAD = 6,
	RIGHT_SHOULDER = 7,
	RIGHT_UPPER_ARM = 8,
	RIGHT_FOREARM = 9,
	RIGHT_HAND = 10,
	LEFT_SHOULDER = 11,
	LEFT_UPPER_ARM = 12,
	LEFT_FOREARM = 13,
	LEFT_HAND = 14,
	RIGHT_UPPER_LEG = 15,
	RIGHT_LOWER_LEG = 16,
	RIGHT_FOOT = 17,
	RIGHT_TOE = 18,
	LEFT_UPPER_LEG = 19,
	LEFT_LOWER_LEG = 20,
	LEFT_FOOT = 21,
	LEFT_TOE = 22,
	COUNT = 23
}

# Sqrt 1/2 (for roll)
const _SQRT12 : float = 0.707106781186548

## Movella MVN Pose Segment Information
const MovellaSegmentInformation := [
	# 0: MovellaSegment.PELVIS
	{
		humanoid = HumanoidModel.Joint.HIPS,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 1: MovellaSegment.L5
	{
		humanoid = HumanoidModel.Joint.SPINE,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 2: MovellaSegment.L3
	{
		humanoid = -1,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 3: MovellaSegment.T12
	{
		humanoid = HumanoidModel.Joint.CHEST,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 4: MovellaSegment.T8
	{
		humanoid = HumanoidModel.Joint.UPPER_CHEST,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 5: MovellaSegment.NECK
	{
		humanoid = HumanoidModel.Joint.NECK,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 6: MovellaSegment.HEAD
	{
		humanoid = HumanoidModel.Joint.HEAD,
		roll = Quaternion(0.5, 0.5, 0.5, 0.5)
	},
	# 7: MovellaSegment.RIGHT_SHOULDER
	{
		humanoid = HumanoidModel.Joint.RIGHT_SHOULDER,
		roll = Quaternion(0.0, 0.0, 1.0, 0.0)
	},
	# 8: MovellaSegment.RIGHT_UPPER_ARM
	{
		humanoid = HumanoidModel.Joint.RIGHT_UPPER_ARM,
		roll = Quaternion(1.0, 0.0, 0.0, 0.0)
	},
	# 9: MovellaSegment.RIGHT_FOREARM
	{
		humanoid = HumanoidModel.Joint.RIGHT_LOWER_ARM,
		roll = Quaternion(_SQRT12, 0.0, _SQRT12, 0.0)
	},
	# 10: MovellaSegment.RIGHT_HAND
	{
		humanoid = HumanoidModel.Joint.RIGHT_HAND,
		roll = Quaternion(1.0, 0.0, 0.0, 0.0)
	},
	# 11: MovellaSegment.LEFT_SHOULDER
	{
		humanoid = HumanoidModel.Joint.LEFT_SHOULDER,
		roll = Quaternion(0.0, 0.0, 0.0, 1.0)
	},
	# 12: MovellaSegment.LEFT_UPPER_ARM
	{
		humanoid = HumanoidModel.Joint.LEFT_UPPER_ARM,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 13: MovellaSegment.LEFT_FOREARM
	{
		humanoid = HumanoidModel.Joint.LEFT_LOWER_ARM,
		roll = Quaternion(0.0, _SQRT12, 0.0, _SQRT12)
	},
	# 14: MovellaSegment.LEFT_HAND
	{
		humanoid = HumanoidModel.Joint.LEFT_HAND,
		roll = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	# 15: MovellaSegment.RIGHT_UPPER_LEG
	{
		humanoid = HumanoidModel.Joint.RIGHT_UPPER_LEG,
		roll = Quaternion(-0.5, 0.5, -0.5, 0.5)
	},
	# 16: MovellaSegment.RIGHT_LOWER_LEG
	{
		humanoid = HumanoidModel.Joint.RIGHT_LOWER_LEG,
		roll = Quaternion(0.5, 0.5, -0.5, -0.5)
	},
	# 17: MovellaSegment.RIGHT_FOOT
	{
		humanoid = HumanoidModel.Joint.RIGHT_FOOT,
		roll = Quaternion(0.0, 0.0, -_SQRT12, _SQRT12)
	},
	# 18: MovellaSegment.RIGHT_TOE
	{
		humanoid = -1,
		roll = Quaternion(0.0, 0.0, 0.0, 1.0)
	},
	# 19: MovellaSegment.LEFT_UPPER_LEG
	{
		humanoid = HumanoidModel.Joint.LEFT_UPPER_LEG,
		roll = Quaternion(-0.5, 0.5, -0.5, 0.5)
	},
	# 20: MovellaSegment.LEFT_LOWER_LEG
	{
		humanoid = HumanoidModel.Joint.LEFT_LOWER_LEG,
		roll = Quaternion(0.5, 0.5, -0.5, -0.5)
	},
	# 21: MovellaSegment.LEFT_FOOT
	{
		humanoid = HumanoidModel.Joint.LEFT_FOOT,
		roll = Quaternion(0.0, 0.0, -_SQRT12, _SQRT12)
	},
	# 22: MovellaSegment.LEFT_TOE
	{
		humanoid = -1,
		roll = Quaternion(0.0, 0.0, 0.0, 1.0)
	},
]

# Transform from Movella to Godot space
const _xform := Quaternion(-0.5, 0.5, 0.5, 0.5)


# UDP Server
var _server : UDPServer = UDPServer.new()

# Current connection
var _connection : PacketPeerUDP

# Movella Joints
var _movella_joints : Array[AnimationJoint] = []

# Humanoid joints
var _humanoid_joints := {}


## Initialize the class
func _init() -> void:
	# Construct the joints
	for index in MovellaSegment.COUNT:
		# Add the VMC joint
		_movella_joints.append(AnimationJoint.new())

		# Add the humanoid joint
		var joint_info : Dictionary = MovellaSegmentInformation[index]
		var humanoid_joint : int = joint_info["humanoid"]
		if humanoid_joint >= 0:
			_humanoid_joints[humanoid_joint] = AnimationJoint.new()


## Stop listening
func stop() -> void:
	_server.stop()
	_connection = null


## Start listening
func listen(p_port : int = 9763) -> void:
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
		if _decode_mvn_datagram(packet):
			new_data = true

	# Skip if no new data
	if not new_data:
		return false

	# Apply humanoid joints
	for index in MovellaSegment.COUNT:
		# Get the humanoid joint index
		var info : Dictionary = MovellaSegmentInformation[index]
		var humanoid_joint : int = info["humanoid"]
		if humanoid_joint < 0:
			continue

		# Get the joint
		var joint := _movella_joints[index]
		var pos := joint.position
		var rot := joint.rotation

		# Save with bone-roll
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


# Decode an MVN datagram packet
func _decode_mvn_datagram(p_packet : PackedByteArray) -> bool:
	# Skip invalid packets
	if p_packet.size() < 24:
		push_warning("MovellaReader: Runt packet - ", p_packet.size())
		return false

	# Decode the ID string
	var id := p_packet.slice(0, 6).get_string_from_ascii()
	if not id.begins_with("MXTP"):
		push_warning("MovellaReader: Bad ID - ", p_packet.size())
		return false

	# Process supported packets
	match id:
		"MXTP02":
			return _decode_mvn_pose_quaternion(p_packet)

	# Ignore unsupported packets
	return false


# Decode an MVN pose quaternion packet
func _decode_mvn_pose_quaternion(p_packet : PackedByteArray) -> bool:
	# Verify packet size 760:
	# - 24-byte header
	# - 23x 32-byte quaternion data segments
	if p_packet.size() != 760:
		push_warning("MovellaReader: Bad Pose Quaternion Packet Size - ", p_packet.size())
		return false

	# Verify 23 data items
	if p_packet[11] != 23:
		push_warning("MovellaReader: Bad Pose Quaternion Data Items - ", p_packet[11])
		return false

	# Verify 23 body segments
	if p_packet[17] != 23:
		push_warning("MovellaReader: Bad Pose Quaternion Body Segments - ", p_packet[17])
		return false

	# Big-endian decode shenanigans
	var bytes := p_packet.slice(24)
	bytes.reverse()
	var values := bytes.to_float32_array()
	values.reverse()

	# Iterate over all segments
	for s in MovellaSegment.COUNT:
		# Decode the segment position
		var pos := Vector3(
			values[s * 8 + 1],
			values[s * 8 + 2],
			values[s * 8 + 3])

		# Decode the segment quaternion
		var rot := Quaternion(
			values[s * 8 + 5],
			values[s * 8 + 6],
			values[s * 8 + 7],
			values[s * 8 + 4])

		# Update the joint (rotating into Godot coordinate space)
		_movella_joints[s].position = _xform * pos
		_movella_joints[s].rotation = _xform * rot

	# Packet decoded
	return true
