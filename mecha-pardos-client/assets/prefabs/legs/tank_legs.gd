extends Resource

export var mesh : PackedScene
export(Array, PackedScene) var mounting_points
export var health : int
export var weight : int

func _init(p_mesh = null, p_mounting_points = [], p_health = 0, p_weight = 0):
        mesh = p_mesh
        mounting_points = p_mounting_points
        health = p_health
        weight = p_weight
