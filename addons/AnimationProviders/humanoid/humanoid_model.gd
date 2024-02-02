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

## Standard humanoid face blends - Unified Blend Shapes + Emotions + Visemes + Vowels
enum FaceBlend {
	EYE_LOOK_UP_RIGHT = 0,
	EYE_LOOK_DOWN_RIGHT = 1,
	EYE_LOOK_IN_RIGHT = 2,
	EYE_LOOK_OUT_RIGHT = 3,
	EYE_LOOK_UP_LEFT = 4,
	EYE_LOOK_DOWN_LEFT = 5,
	EYE_LOOK_IN_LEFT = 6,
	EYE_LOOK_OUT_LEFT = 7,
	EYE_CLOSED_RIGHT = 8,
	EYE_CLOSED_LEFT = 9,
	EYE_SQUINT_RIGHT = 10,
	EYE_SQUINT_LEFT = 11,
	EYE_WIDE_RIGHT = 12,
	EYE_WIDE_LEFT = 13,
	EYE_DILATION_RIGHT = 14,
	EYE_DILATION_LEFT = 15,
	EYE_CONSTRICT_RIGHT = 16,
	EYE_CONSTRICT_LEFT = 17,
	BROW_DOWN_RIGHT = 18,
	BROW_DOWN_LEFT = 19,
	BROW_INNER_UP_RIGHT = 20,
	BROW_INNER_UP_LEFT = 21,
	BROW_INNER_UP = 22,
	BROW_OUTER_UP_RIGHT = 23,
	BROW_OUTER_UP_LEFT = 24,
	NOSE_SNEER_RIGHT = 25,
	NOSE_SNEER_LEFT = 26,
	CHEEK_SQUINT_RIGHT = 27,
	CHEEK_SQUINT_LEFT = 28,
	CHEEK_PUFF_RIGHT = 29,
	CHEEK_PUFF_LEFT = 30,
	CHEEK_PUFF = 31,
	CHEEK_SUCK_RIGHT = 32,
	CHEEK_SUCK_LEFT = 33,
	CHEEK_SUCK = 34,
	JAW_OPEN = 35,
	MOUTH_CLOSED = 36,
	JAW_RIGHT = 37,
	JAW_LEFT = 38,
	JAW_FORWARD = 39,
	LIP_SUCK_UPPER_RIGHT = 40,
	LIP_SUCK_UPPER_LEFT = 41,
	LIP_SUCK_UPPER = 42,
	LIP_SUCK_LOWER_RIGHT = 43,
	LIP_SUCK_LOWER_LEFT = 44,
	LIP_SUCK_LOWER = 45,
	LIP_FUNNEL_UPPER_RIGHT = 46,
	LIP_FUNNEL_UPPER_LEFT = 47,
	LIP_FUNNEL_UPPER = 48,
	LIP_FUNNEL_LOWER_RIGHT = 49,
	LIP_FUNNEL_LOWER_LEFT = 50,
	LIP_FUNNEL_LOWER = 51,
	LIP_FUNNEL = 52,
	LIP_PUCKER_UPPER_RIGHT = 53,
	LIP_PUCKER_LOWER_RIGHT = 54,
	LIP_PUCKER_UPPER_LEFT = 55,
	LIP_PUCKER_LOWER_LEFT = 56,
	LIP_PUCKER = 57,
	MOUTH_UPPER_UP_RIGHT = 58,
	MOUTH_UPPER_UP_LEFT = 59,
	MOUTH_LOWER_DOWN_RIGHT = 60,
	MOUTH_LOWER_DOWN_LEFT = 61,
	MOUTH_SMILE_RIGHT = 62,
	MOUTH_SMILE_LEFT = 63,
	MOUTH_FROWN_RIGHT = 64,
	MOUTH_FROWN_LEFT = 65,
	MOUTH_SAD_RIGHT = 66,
	MOUTH_SAD_LEFT = 67,
	MOUTH_STRETCH_RIGHT = 68,
	MOUTH_STRETCH_LEFT = 69,
	MOUTH_DIMPLER_RIGHT = 70,
	MOUTH_DIMPLER_LEFT = 71,
	MOUTH_RAISER_UPPER = 72,
	MOUTH_RAISER_LOWER = 73,
	MOUTH_PRESS_RIGHT = 74,
	MOUTH_PRESS_LEFT = 75,
	MOUTH_TIGHTENER_RIGHT = 76,
	MOUTH_TIGHTENER_LEFT = 77,
	TONGUE_OUT = 78,
	TONGUE_UP = 79,
	TONGUE_DOWN = 80,
	TONGUE_RIGHT = 81,
	TONGUE_LEFT = 82,
	TONGUE_ROLL = 83,
	EMOTION_ANGRY = 84,
	EMOTION_SORROW = 85,
	EMOTION_SURPRISE = 86,
	EMOTION_FUN = 87,
	EMOTION_JOY = 88,
	BLINK = 89,
	BLINK_RIGHT = 90,
	BLINK_LEFT = 91,
	VISEME_AA = 92,		# Vowel A
	VISEME_CH = 93,
	VISEME_DD = 94,
	VISEME_EE = 95,		# Vowel E
	VISEME_FF = 96,
	VISEME_IH = 97,		# Vowel I
	VISEME_KK = 98,
	VISEME_NN = 99,
	VISEME_OH = 100,	# Vowel O
	VISEME_OU = 101,	# Vowel U
	VISEME_PP = 102,
	VISEME_RR = 103,
	VISEME_SS = 104,
	VISEME_SIL = 105,
	VISEME_TH = 106,
	COUNT = 107
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
		tpose = Quaternion(-0.2126311, 0.6743797, 0.2126311, 0.6743797)
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
		bone = "LeftThumbDistal",
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
		tpose = Quaternion(-0.2126311, -0.6743797, -0.2126311, 0.6743797)
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
		bone = "RightThumbDistal",
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

## Humanoid Blend Shapes Information
const BlendShapes = [
	{
		blend = FaceBlend.EYE_LOOK_UP_RIGHT,
		unified = "EyeLookUpRight",
		arkit = "eyeLookUpRight"
	},
	{
		blend = FaceBlend.EYE_LOOK_DOWN_RIGHT,
		unified = "EyeLookDownRight",
		arkit = "eyeLookDownRight"
	},
	{
		blend = FaceBlend.EYE_LOOK_IN_RIGHT,
		unified = "EyeLookInRight",
		arkit = "eyeLookInRight"
	},
	{
		blend = FaceBlend.EYE_LOOK_OUT_RIGHT,
		unified = "EyeLookOutRight",
		arkit = "eyeLookOutRight"
	},
	{
		blend = FaceBlend.EYE_LOOK_UP_LEFT,
		unified = "EyeLookUpLeft",
		arkit = "eyeLookUpLeft"
	},
	{
		blend = FaceBlend.EYE_LOOK_DOWN_LEFT,
		unified = "EyeLookDownLeft",
		arkit = "eyeLookDownLeft"
	},
	{
		blend = FaceBlend.EYE_LOOK_IN_LEFT,
		unified = "EyeLookInLeft",
		arkit = "eyeLookInLeft"
	},
	{
		blend = FaceBlend.EYE_LOOK_OUT_LEFT,
		unified = "EyeLookOutLeft",
		arkit = "eyeLookOutLeft"
	},
	{
		blend = FaceBlend.EYE_CLOSED_RIGHT,
		unified = "EyeClosedRight",
		arkit = "eyeBlinkRight"
	},
	{
		blend = FaceBlend.EYE_CLOSED_LEFT,
		unified = "EyeClosedLeft",
		arkit = "eyeBlinkLeft"
	},
	{
		blend = FaceBlend.EYE_SQUINT_RIGHT,
		unified = "EyeSquintRight",
		arkit = "eyeSquintRight"
	},
	{
		blend = FaceBlend.EYE_SQUINT_LEFT,
		unified = "EyeSquintLeft",
		arkit = "eyeSquintLeft"
	},
	{
		blend = FaceBlend.EYE_WIDE_RIGHT,
		unified = "EyeWideRight",
		arkit = "eyeWideRight"
	},
	{
		blend = FaceBlend.EYE_WIDE_LEFT,
		unified = "EyeWideLeft",
		arkit = "eyeWideLeft"
	},
	{
		blend = FaceBlend.EYE_DILATION_RIGHT,
		unified = "EyeDilationRight",
		arkit = ""
	},
	{
		blend = FaceBlend.EYE_DILATION_LEFT,
		unified = "EyeDilationLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.EYE_CONSTRICT_RIGHT,
		unified = "EyeConstrictRight",
		arkit = ""
	},
	{
		blend = FaceBlend.EYE_CONSTRICT_LEFT,
		unified = "EyeConstrictLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.BROW_DOWN_RIGHT,
		unified = "BrowDownRight",
		arkit = "browDownRight"
	},
	{
		blend = FaceBlend.BROW_DOWN_LEFT,
		unified = "BrowDownLeft",
		arkit = "browDownLeft"
	},
	{
		blend = FaceBlend.BROW_INNER_UP_RIGHT,
		unified = "BrowInnerUpRight",
		arkit = ""
	},
	{
		blend = FaceBlend.BROW_INNER_UP_LEFT,
		unified = "BrowInnerUpLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.BROW_INNER_UP,
		unified = "BrowInnerUp",
		arkit = "browInnerUp"
	},
	{
		blend = FaceBlend.BROW_OUTER_UP_RIGHT,
		unified = "BrowOuterUpRight",
		arkit = "browOuterUpRight"
	},
	{
		blend = FaceBlend.BROW_OUTER_UP_LEFT,
		unified = "BrowOuterUpLeft",
		arkit = "browOuterUpLeft"
	},
	{
		blend = FaceBlend.NOSE_SNEER_RIGHT,
		unified = "NoseSneerRight",
		arkit = "noseSneerRight"
	},
	{
		blend = FaceBlend.NOSE_SNEER_LEFT,
		unified = "NoseSneerLeft",
		arkit = "noseSneerLeft"
	},
	{
		blend = FaceBlend.CHEEK_SQUINT_RIGHT,
		unified = "CheekSquintRight",
		arkit = "cheekSquintRight"
	},
	{
		blend = FaceBlend.CHEEK_SQUINT_LEFT,
		unified = "CheekSquintLeft",
		arkit = "cheekSquintLeft"
	},
	{
		blend = FaceBlend.CHEEK_PUFF_RIGHT,
		unified = "CheekPuffRight",
		arkit = ""
	},
	{
		blend = FaceBlend.CHEEK_PUFF_LEFT,
		unified = "CheekPuffLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.CHEEK_PUFF,
		unified = "CheekPuff",
		arkit = "cheekPuff"
	},
	{
		blend = FaceBlend.CHEEK_SUCK_RIGHT,
		unified = "CheekSuckRight",
		arkit = ""
	},
	{
		blend = FaceBlend.CHEEK_SUCK_LEFT,
		unified = "CheekSuckLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.CHEEK_SUCK,
		unified = "CheekSuck",
		arkit = ""
	},
	{
		blend = FaceBlend.JAW_OPEN,
		unified = "JawOpen",
		arkit = "jawOpen"
	},
	{
		blend = FaceBlend.MOUTH_CLOSED,
		unified = "MouthClosed",
		arkit = "mouthClose"
	},
	{
		blend = FaceBlend.JAW_RIGHT,
		unified = "JawRight",
		arkit = "jawRight"
	},
	{
		blend = FaceBlend.JAW_LEFT,
		unified = "JawLeft",
		arkit = "jawLeft"
	},
	{
		blend = FaceBlend.JAW_FORWARD,
		unified = "JawForward",
		arkit = "jawForward"
	},
	{
		blend = FaceBlend.LIP_SUCK_UPPER_RIGHT,
		unified = "LipSuckUpperRight",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_SUCK_UPPER_LEFT,
		unified = "LipSuckUpperLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_SUCK_UPPER,
		unified = "LipSuckUpper",
		arkit = "mouthRollUpper"
	},
	{
		blend = FaceBlend.LIP_SUCK_LOWER_RIGHT,
		unified = "LipSuckLowerRight",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_SUCK_LOWER_LEFT,
		unified = "LipSuckLowerLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_SUCK_LOWER,
		unified = "LipSuckLower",
		arkit = "mouthRollLower"
	},
	{
		blend = FaceBlend.LIP_FUNNEL_UPPER_RIGHT,
		unified = "LipFunnelUpperRight",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_FUNNEL_UPPER_LEFT,
		unified = "LipFunnelUpperLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_FUNNEL_UPPER,
		unified = "LipFunnelUpper",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_FUNNEL_LOWER_RIGHT,
		unified = "LipFunnelLowerRight",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_FUNNEL_LOWER_LEFT,
		unified = "LipFunnelLowerLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_FUNNEL_LOWER,
		unified = "LipFunnelLower",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_FUNNEL,
		unified = "LipFunnel",
		arkit = "mouthFunnel"
	},
	{
		blend = FaceBlend.LIP_PUCKER_UPPER_RIGHT,
		unified = "LipPuckerUpperRight",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_PUCKER_LOWER_RIGHT,
		unified = "LipPuckerLowerRight",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_PUCKER_UPPER_LEFT,
		unified = "LipPuckerUpperLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_PUCKER_LOWER_LEFT,
		unified = "LipPuckerLowerLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.LIP_PUCKER,
		unified = "LipPucker",
		arkit = "mouthPucker"
	},
	{
		blend = FaceBlend.MOUTH_UPPER_UP_RIGHT,
		unified = "MouthUpperUpRight",
		arkit = "mouthUpperUpRight"
	},
	{
		blend = FaceBlend.MOUTH_UPPER_UP_LEFT,
		unified = "MouthUpperUpLeft",
		arkit = "mouthUpperUpLeft"
	},
	{
		blend = FaceBlend.MOUTH_LOWER_DOWN_RIGHT,
		unified = "MouthLowerDownRight",
		arkit = "mouthLowerUpRight"
	},
	{
		blend = FaceBlend.MOUTH_LOWER_DOWN_LEFT,
		unified = "MouthLowerDownLeft",
		arkit = "mouthLowerUpLeft"
	},
	{
		blend = FaceBlend.MOUTH_SMILE_RIGHT,
		unified = "MouthSmileRight",
		arkit = "mouthSmileRight"
	},
	{
		blend = FaceBlend.MOUTH_SMILE_LEFT,
		unified = "MouthSmileLeft",
		arkit = "mouthSmileLeft"
	},
	{
		blend = FaceBlend.MOUTH_FROWN_RIGHT,
		unified = "MouthFrownRight",
		arkit = "mouthFrownRight"
	},
	{
		blend = FaceBlend.MOUTH_FROWN_LEFT,
		unified = "MouthFrownLeft",
		arkit = "mouthFrownLeft"
	},
	{
		blend = FaceBlend.MOUTH_SAD_RIGHT,
		unified = "MouthSadRight",
		arkit = ""
	},
	{
		blend = FaceBlend.MOUTH_SAD_LEFT,
		unified = "MouthSadLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.MOUTH_STRETCH_RIGHT,
		unified = "MouthStretchRight",
		arkit = "mouthStretchRight"
	},
	{
		blend = FaceBlend.MOUTH_STRETCH_LEFT,
		unified = "MouthStretchLeft",
		arkit = "mouthStretchLeft"
	},
	{
		blend = FaceBlend.MOUTH_DIMPLER_RIGHT,
		unified = "MouthDimplerRight",
		arkit = "mouthDimpleRight"
	},
	{
		blend = FaceBlend.MOUTH_DIMPLER_LEFT,
		unified = "MouthDimplerLeft",
		arkit = "mouthDimpleLeft"
	},
	{
		blend = FaceBlend.MOUTH_RAISER_UPPER,
		unified = "MouthRaiserUpper",
		arkit = "mouthShrugUpper"
	},
	{
		blend = FaceBlend.MOUTH_RAISER_LOWER,
		unified = "MouthRaiserLower",
		arkit = "mouthShrugLower"
	},
	{
		blend = FaceBlend.MOUTH_PRESS_RIGHT,
		unified = "MouthPressRight",
		arkit = "mouthPressRight"
	},
	{
		blend = FaceBlend.MOUTH_PRESS_LEFT,
		unified = "MouthPressLeft",
		arkit = "mouthPressLeft"
	},
	{
		blend = FaceBlend.MOUTH_TIGHTENER_RIGHT,
		unified = "MouthTightenerRight",
		arkit = ""
	},
	{
		blend = FaceBlend.MOUTH_TIGHTENER_LEFT,
		unified = "MouthTightenerLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.TONGUE_OUT,
		unified = "TongueOut",
		arkit = "tongueOut"
	},
	{
		blend = FaceBlend.TONGUE_UP,
		unified = "TongueUp",
		arkit = ""
	},
	{
		blend = FaceBlend.TONGUE_DOWN,
		unified = "TongueDown",
		arkit = ""
	},
	{
		blend = FaceBlend.TONGUE_RIGHT,
		unified = "TongueRight",
		arkit = ""
	},
	{
		blend = FaceBlend.TONGUE_LEFT,
		unified = "TongueLeft",
		arkit = ""
	},
	{
		blend = FaceBlend.TONGUE_ROLL,
		unified = "TongueRoll",
		arkit = ""
	},
	{
		blend = FaceBlend.EMOTION_ANGRY,
		unified = "Angry",
		arkit = ""
	},
	{
		blend = FaceBlend.EMOTION_SORROW,
		unified = "Sorrow",
		arkit = ""
	},
	{
		blend = FaceBlend.EMOTION_SURPRISE,
		unified = "Surprise",
		arkit = ""
	},
	{
		blend = FaceBlend.EMOTION_FUN,
		unified = "Fun",
		arkit = ""
	},
	{
		blend = FaceBlend.EMOTION_JOY,
		unified = "Joy",
		arkit = ""
	},
	{
		blend = FaceBlend.BLINK,
		unified = "Blink",
		arkit = ""
	},
	{
		blend = FaceBlend.BLINK_RIGHT,
		unified = "Blink.R",
		arkit = ""
	},
	{
		blend = FaceBlend.BLINK_LEFT,
		unified = "Blink.L",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_AA,
		unified = "AA",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_CH,
		unified = "CH",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_DD,
		unified = "DD",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_EE,
		unified = "E",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_FF,
		unified = "FF",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_IH,
		unified = "I",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_KK,
		unified = "KK",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_NN,
		unified = "NN",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_OH,
		unified = "O",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_OU,
		unified = "U",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_PP,
		unified = "PP",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_RR,
		unified = "RR",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_SIL,
		unified = "SIL",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_SS,
		unified = "SS",
		arkit = ""
	},
	{
		blend = FaceBlend.VISEME_TH,
		unified = "TH",
		arkit = ""
	}
]
