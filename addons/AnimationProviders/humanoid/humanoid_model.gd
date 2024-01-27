class_name HumanoidModel


## Standard humanoid joints
enum Joint {
	HIPS = 0,
	SPINE = 1,
	CHEST = 2,
	UPPER_CHEST = 3,
	NECK = 4,
	HEAD = 5,
	LEFT_SHOULDER = 6,
	LEFT_UPPER_ARM = 7,
	LEFT_LOWER_ARM = 8,
	LEFT_HAND = 9,
	LEFT_THUMB_METACARPAL = 10,
	LEFT_THUMB_PROXIMAL = 11,
	LEFT_THUMB_DISTAL = 12,
	LEFT_INDEX_PROXIMAL = 13,
	LEFT_INDEX_INTERMEDIATE = 14,
	LEFT_INDEX_DISTAL = 15,
	LEFT_MIDDLE_PROXIMAL = 16,
	LEFT_MIDDLE_INTERMEDIATE = 17,
	LEFT_MIDDLE_DISTAL = 18,
	LEFT_RING_PROXIMAL = 19,
	LEFT_RING_INTERMEDIATE = 20,
	LEFT_RING_DISTAL = 21,
	LEFT_LITTLE_PROXIMAL = 22,
	LEFT_LITTLE_INTERMEDIATE = 23,
	LEFT_LITTLE_DISTAL = 24,
	RIGHT_SHOULDER = 25,
	RIGHT_UPPER_ARM = 26,
	RIGHT_LOWER_ARM = 27,
	RIGHT_HAND = 28,
	RIGHT_THUMB_METACARPAL = 29,
	RIGHT_THUMB_PROXIMAL = 30,
	RIGHT_THUMB_DISTAL = 31,
	RIGHT_INDEX_PROXIMAL = 32,
	RIGHT_INDEX_INTERMEDIATE = 33,
	RIGHT_INDEX_DISTAL = 34,
	RIGHT_MIDDLE_PROXIMAL = 35,
	RIGHT_MIDDLE_INTERMEDIATE = 36,
	RIGHT_MIDDLE_DISTAL = 37,
	RIGHT_RING_PROXIMAL = 38,
	RIGHT_RING_INTERMEDIATE = 39,
	RIGHT_RING_DISTAL = 40,
	RIGHT_LITTLE_PROXIMAL = 41,
	RIGHT_LITTLE_INTERMEDIATE = 42,
	RIGHT_LITTLE_DISTAL = 43,
	LEFT_UPPER_LEG = 44,
	LEFT_LOWER_LEG = 45,
	LEFT_FOOT = 46,
	RIGHT_UPPER_LEG = 47,
	RIGHT_LOWER_LEG = 48,
	RIGHT_FOOT = 49,
	COUNT = 50
}

## Standard face blends
enum FaceBlend {
	COUNT = 0
}


# Sin(45 degrees) - used to build quaternions
const _SIN45 : float = 0.70710678118655

# Sin(60 degrees) - used to build quaternions
const _SIN60 : float = 0.86602540378443


## Humanoid Skeleton Information
const Skeleton = [
	{
		body = Joint.HIPS,
		parent = -1,
		bone = "Hips",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.SPINE,
		parent = Joint.HIPS,
		bone = "Spine",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.CHEST,
		parent = Joint.SPINE,
		bone = "Chest",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.UPPER_CHEST,
		parent = Joint.CHEST,
		bone = "UpperChest",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.NECK,
		parent = Joint.UPPER_CHEST,
		bone = "Neck",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.HEAD,
		parent = Joint.NECK,
		bone = "Head",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_SHOULDER,
		parent = Joint.UPPER_CHEST,
		bone = "LeftShoulder",
		tpose = Quaternion(0.5, 0.5, 0.5, -0.5)
	},
	{
		body = Joint.LEFT_UPPER_ARM,
		parent = Joint.LEFT_SHOULDER,
		bone = "LeftUpperArm",
		tpose = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	{
		body = Joint.LEFT_LOWER_ARM,
		parent = Joint.LEFT_UPPER_ARM,
		bone = "LeftLowerArm",
		tpose = Quaternion(0.0, -_SIN45, 0.0, _SIN45)
	},
	{
		body = Joint.LEFT_HAND,
		parent = Joint.LEFT_LOWER_ARM,
		bone = "LeftHand",
		tpose = Quaternion(0.0, _SIN45, 0.0, _SIN45)
	},
	{
		body = Joint.LEFT_THUMB_METACARPAL,
		parent = Joint.LEFT_HAND,
		bone = "LeftThumbMetacarpal",
		tpose = Quaternion(-0.215, 0.673, 0.214, 0.673)
	},
	{
		body = Joint.LEFT_THUMB_PROXIMAL,
		parent = Joint.LEFT_THUMB_METACARPAL,
		bone = "LeftThumbProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_THUMB_DISTAL,
		parent = Joint.LEFT_THUMB_PROXIMAL,
		bone = "LeftThumbProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_INDEX_PROXIMAL,
		parent = Joint.LEFT_HAND,
		bone = "LeftIndexProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_INDEX_INTERMEDIATE,
		parent = Joint.LEFT_INDEX_PROXIMAL,
		bone = "LeftIndexIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_INDEX_DISTAL,
		parent = Joint.LEFT_INDEX_INTERMEDIATE,
		bone = "LeftIndexDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_MIDDLE_PROXIMAL,
		parent = Joint.LEFT_HAND,
		bone = "LeftMiddleProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_MIDDLE_INTERMEDIATE,
		parent = Joint.LEFT_MIDDLE_PROXIMAL,
		bone = "LeftMiddleIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_MIDDLE_DISTAL,
		parent = Joint.LEFT_MIDDLE_INTERMEDIATE,
		bone = "LeftMiddleDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_RING_PROXIMAL,
		parent = Joint.LEFT_HAND,
		bone = "LeftRingProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_RING_INTERMEDIATE,
		parent = Joint.LEFT_RING_PROXIMAL,
		bone = "LeftRingIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_RING_DISTAL,
		parent = Joint.LEFT_RING_INTERMEDIATE,
		bone = "LeftRingDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_LITTLE_PROXIMAL,
		parent = Joint.LEFT_HAND,
		bone = "LeftLittleProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_LITTLE_INTERMEDIATE,
		parent = Joint.LEFT_LITTLE_PROXIMAL,
		bone = "LeftLittleIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_LITTLE_DISTAL,
		parent = Joint.LEFT_LITTLE_INTERMEDIATE,
		bone = "LeftLittleDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_SHOULDER,
		parent = Joint.UPPER_CHEST,
		bone = "RightShoulder",
		tpose = Quaternion(0.5, -0.5, -0.5, -0.5)
	},
	{
		body = Joint.RIGHT_UPPER_ARM,
		parent = Joint.RIGHT_SHOULDER,
		bone = "RightUpperArm",
		tpose = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	{
		body = Joint.RIGHT_LOWER_ARM,
		parent = Joint.RIGHT_UPPER_ARM,
		bone = "RightLowerArm",
		tpose = Quaternion(0.0, _SIN45, 0.0, _SIN45)
	},
	{
		body = Joint.RIGHT_HAND,
		parent = Joint.RIGHT_LOWER_ARM,
		bone = "RightHand",
		tpose = Quaternion(0.0, -_SIN45, 0.0, _SIN45)
	},
	{
		body = Joint.RIGHT_THUMB_METACARPAL,
		parent = Joint.RIGHT_HAND,
		bone = "RightThumbMetacarpal",
		tpose = Quaternion(-0.215, -0.673, -0.214, 0.673)
	},
	{
		body = Joint.RIGHT_THUMB_PROXIMAL,
		parent = Joint.RIGHT_THUMB_METACARPAL,
		bone = "RightThumbProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_THUMB_DISTAL,
		parent = Joint.RIGHT_THUMB_PROXIMAL,
		bone = "RightThumbProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_INDEX_PROXIMAL,
		parent = Joint.RIGHT_HAND,
		bone = "RightIndexProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_INDEX_INTERMEDIATE,
		parent = Joint.RIGHT_INDEX_PROXIMAL,
		bone = "RightIndexIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_INDEX_DISTAL,
		parent = Joint.RIGHT_INDEX_INTERMEDIATE,
		bone = "RightIndexDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_MIDDLE_PROXIMAL,
		parent = Joint.RIGHT_HAND,
		bone = "RightMiddleProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_MIDDLE_INTERMEDIATE,
		parent = Joint.RIGHT_MIDDLE_PROXIMAL,
		bone = "RightMiddleIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_MIDDLE_DISTAL,
		parent = Joint.RIGHT_MIDDLE_INTERMEDIATE,
		bone = "RightMiddleDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_RING_PROXIMAL,
		parent = Joint.RIGHT_HAND,
		bone = "RightRingProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_RING_INTERMEDIATE,
		parent = Joint.RIGHT_RING_PROXIMAL,
		bone = "RightRingIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_RING_DISTAL,
		parent = Joint.RIGHT_RING_INTERMEDIATE,
		bone = "RightRingDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_LITTLE_PROXIMAL,
		parent = Joint.RIGHT_HAND,
		bone = "RightLittleProximal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_LITTLE_INTERMEDIATE,
		parent = Joint.RIGHT_LITTLE_PROXIMAL,
		bone = "RightLittleIntermediate",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.RIGHT_LITTLE_DISTAL,
		parent = Joint.RIGHT_LITTLE_INTERMEDIATE,
		bone = "RightLittleDistal",
		tpose = Quaternion.IDENTITY
	},
	{
		body = Joint.LEFT_UPPER_LEG,
		parent = Joint.HIPS,
		bone = "LeftUpperLeg",
		tpose = Quaternion(0.0, 0.0, -1.0, 0.0)
	},
	{
		body = Joint.LEFT_LOWER_LEG,
		parent = Joint.LEFT_UPPER_LEG,
		bone = "LeftLowerLeg",
		tpose = Quaternion(0.0, 1.0, 0.0, 0.0)
	},
	{
		body = Joint.LEFT_FOOT,
		parent = Joint.LEFT_LOWER_LEG,
		bone = "LeftFoot",
		tpose = Quaternion(0.0, _SIN45, -_SIN45, 0.0)
	},
	{
		body = Joint.RIGHT_UPPER_LEG,
		parent = Joint.HIPS,
		bone = "RightUpperLeg",
		tpose = Quaternion(0.0, 0.0, 1.0, 0.0)
	},
	{
		body = Joint.RIGHT_LOWER_LEG,
		parent = Joint.RIGHT_UPPER_LEG,
		bone = "RightLowerLeg",
		tpose = Quaternion(0.0, -1.0, 0.0, 0.0)
	},
	{
		body = Joint.RIGHT_FOOT,
		parent = Joint.RIGHT_LOWER_LEG,
		bone = "RightFoot",
		tpose = Quaternion(0.0, _SIN45, -_SIN45, 0.0)
	}
]
