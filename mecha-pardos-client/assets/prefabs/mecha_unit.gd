extends Node

export var body : PackedScene
export var legs : PackedScene
export var left_arm : PackedScene
export var right_arm : PackedScene
export var total_health : int

var torso_legs_mp = null
var torso_right_arm_mp = null
var torso_left_arm_mp = null

func _init(p_body = null, p_legs = null, p_left_arm = null, p_right_arm = null):
	body = p_body
	legs = p_legs
	left_arm = p_left_arm
	right_arm = p_right_arm

func _ready():
	add_child(body.instance())
	add_child(legs.instance())
	add_child(left_arm.instance())
	add_child(right_arm.instance())


	mount_legs()
	mount_arms()

func mount_legs():
	var legs = get_node("legs")
	var legs_mp = get_node("legs/mounting_point")
	torso_legs_mp = get_node("torso/mounting_point_legs")

	legs.translate(torso_legs_mp.transform.origin)
	

func mount_arms():
	var left_arm = get_node("arm")
	var left_arm_mp = get_node("arm/mounting_point_left")
	torso_left_arm_mp = get_node("torso/mounting_point_left")

	var right_arm = get_node("@arm@2")
	var right_arm_mp = get_node("@arm@2/mouting_point_right")
	torso_right_arm_mp = get_node("torso/mounting_point_right")

	left_arm.translate(torso_left_arm_mp.transform.origin)
	right_arm.translate(torso_right_arm_mp.transform.origin)
