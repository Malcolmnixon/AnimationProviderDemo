@tool
extends Node3D


const Axis3Scene : PackedScene = preload("res://helpers/axis_3.tscn")


var _reader : VmcReader

var _targets : Dictionary = {}


# Called when the node enters the scene tree for the first time.
func _ready():
	# Construct the reader
	_reader = VmcReader.new()
	_reader.listen()

	# Construct the targets
	var joints := _reader.get_body_joints()
	for key in joints:
		var axis : Node3D = Axis3Scene.instantiate()
		var key_name : String = HumanoidModel.Joint.keys()[key]
		print("key = ", key, ", ", key_name)
		axis.name = key_name
		_targets[key] = axis
		add_child(axis)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not _reader.read():
		return

	var joints := _reader.get_body_joints()
	for key in joints:
		if not key in _targets:
			var axis : Node3D = Axis3Scene.instantiate()
			_targets[key] = axis
			add_child(axis)
		_targets[key].position = joints[key].position
		_targets[key].basis = Basis(joints[key].rotation)
