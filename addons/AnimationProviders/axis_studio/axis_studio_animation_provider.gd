@tool
class_name AxisStudioAnimationProvider
extends HumanoidAnimationProvider


## UDP Receive Port
@export var port : int = 7004 : set = _set_port


# Axis Studio Reader
var _reader : AxisStudioReader = AxisStudioReader.new()

# Axis Studio animation instance
var _animation : Animation

# Rotation tracks by body-joint
var _rotation_tracks := {}

# Position tracks by body-joint
var _position_tracks := {}


# Handle node ready
func _ready() -> void:
	super()
	_update_port()


# Get the humanoid reader
func get_reader() -> HumanoidReader:
	return _reader


# Handle setting the UDP port
func _set_port(p_port : int) -> void:
	port = p_port
	if is_inside_tree():
		_update_port()


# Update the UDP port
func _update_port() -> void:
	_reader.listen(port)


# Initialize the animations
func _initialize_animations() -> void:
	super()

	# Get (or create) the animation
	if _library.has_animation("AxisStudio"):
		_animation = _library.get_animation("AxisStudio")
	else:
		_animation = Animation.new()
		_animation.resource_name = "AxisStudio"
		_animation.resource_local_to_scene = true
		_library.add_animation("AxisStudio", _animation)


# Populate the animations
func _populate_animations() -> void:
	super()

	_animation.clear()
	_animation.loop_mode = Animation.LOOP_LINEAR
	for info in HumanoidModel.Skeleton:
		var body : int = info["body"]
		var bone : String = info["bone"]
		var tpose : Quaternion = info["tpose"]

		# Construct the position track and key frame
		#var pt := _animation.add_track(Animation.TYPE_POSITION_3D)
		#_position_tracks[body] = pt
		#_animation.track_set_path(pt, ":" + bone)
		#_animation.position_track_insert_key(pt, 0, Vector3.ZERO)

		# Construct the rotation track and key frame
		var rt := _animation.add_track(Animation.TYPE_ROTATION_3D)
		_rotation_tracks[body] = rt
		_animation.track_set_path(rt, ":" + bone)
		_animation.rotation_track_insert_key(rt, 0, tpose)


# Update the animations
func _update_animations() -> void:
	# Read updates
	if not _reader.read():
		return

	# Apply the joint data
	var _joints := _reader.get_body_joints()
	for info in HumanoidModel.Skeleton:
		var body : int = info["body"]
		var parent : int = info["parent"]
		var bone : String = info["bone"]
		var joint : AnimationJoint = _joints.get(body)
		if not joint: continue
		var pos : Vector3 = joint.position
		var rot : Quaternion = joint.rotation

		# If parent then make relative to parent
		if parent >= 0:
			var parent_pos : Vector3 = _joints[parent].position
			var parent_rot : Quaternion = _joints[parent].rotation
			var parent_rot_inv := parent_rot.inverse()
			pos = parent_rot_inv * (pos - parent_pos)
			rot = parent_rot_inv * rot

		# Update the animation
		#_animation.track_set_key_value(_position_tracks[body], 0, pos)
		_animation.track_set_key_value(_rotation_tracks[body], 0, rot)
