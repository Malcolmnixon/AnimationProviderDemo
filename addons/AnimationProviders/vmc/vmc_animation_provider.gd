@tool
class_name VmcAnimationProvider
extends HumanoidAnimationProvider


## UDP Receive Port
@export var port : int = 39539 : set = _set_port

## Face mesh name
@export var face_mesh : String = "Face"

## Run the animation
@export var run : bool = false : set = _set_run

## Autorun the animation
@export var autorun : bool = true


# Vmc Reader
var _reader : VmcReader = VmcReader.new()

# Vmc animation instance
var _animation : Animation

# Rotation tracks by body-joint
var _rotation_tracks := {}

# Position tracks by body-joint
var _position_tracks := {}

# Blend tracks by blend-shape
var _blend_tracks := {}


# Handle node ready
func _ready() -> void:
	super()

	# Update the run state
	_update_run()

	# Autorun if needed
	if not Engine.is_editor_hint() and autorun and not run:
		run = true


# Get the humanoid reader
func get_reader() -> HumanoidReader:
	return _reader


# Handle setting the UDP port
func _set_port(p_port : int) -> void:
	port = p_port
	if is_inside_tree():
		_update_run()


# Handle setting the run state
func _set_run(p_run : bool) -> void:
	run = p_run
	if is_inside_tree():
		_update_run()


# Update the running state
func _update_run() -> void:
	if run:
		_reader.listen(port)
	else:
		_reader.stop()


# Initialize the animations
func _initialize_animations() -> void:
	super()

	# Get (or create) the animation
	if _library.has_animation("Vmc"):
		_animation = _library.get_animation("Vmc")
	else:
		_animation = Animation.new()
		_animation.resource_name = "Vmc"
		_animation.resource_local_to_scene = true
		_library.add_animation("Vmc", _animation)


# Populate the animations
func _populate_animations() -> void:
	super()

	_animation.clear()
	_animation.loop_mode = Animation.LOOP_LINEAR

	# Add the skeleton tracks
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

	# Add the face blend shape tracks
	for blend in VmcReader.VmcSupportedFaceBlendShapes:
		var info : Dictionary = HumanoidModel.BlendShapes[blend]
		var unified : String = info["unified"]
		var arkit : String = info["arkit"]

		var bt := _animation.add_track(Animation.TYPE_BLEND_SHAPE)
		_blend_tracks[blend] = bt
		_animation.track_set_path(bt, face_mesh + ":" + unified)
		_animation.blend_shape_track_insert_key(bt, 0, 0.0)


# Update the animations
func _update_animations() -> void:
	# Read updates
	if not _reader.read():
		return

	# Apply the joint data
	var _joints := _reader.get_humanoid_joints()
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

	# Apply the face blend data
	var _blends := _reader.get_humanoid_face_blends()
	for blend in _blends:
		var weight : float = _blends[blend]
		_animation.track_set_key_value(_blend_tracks[blend], 0, weight)
