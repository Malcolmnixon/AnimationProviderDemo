@tool
class_name HumanoidAnimationProvider
extends AnimationProvider


## Humanoid Animation Provider Base Slass
##
## This script is the base for Animation Providers for driving humanoid avatars
## based on the Godot Humanoid skeleton.


# Reset animation instance
var _reset_animation : Animation


# Initialize the animations
func _initialize_animations() -> void:
	# Get (or create) the reset
	if _library.has_animation("RESET"):
		_reset_animation = _library.get_animation("RESET")
	else:
		_reset_animation = Animation.new()
		_reset_animation.resource_name = "RESET"
		_reset_animation.resource_local_to_scene = true
		_library.add_animation("RESET", _reset_animation)


# Populate the animations
func _populate_animations() -> void:
	_reset_animation.clear()
	for info in HumanoidModel.Skeleton:
		var bone : String = info["bone"]
		var tpose : Quaternion = info["tpose"]

		# Construct the reset rotation track and key frame
		var rt := _reset_animation.add_track(Animation.TYPE_ROTATION_3D)
		_reset_animation.track_set_path(rt, ":" + bone)
		_reset_animation.rotation_track_insert_key(rt, 0, tpose)
