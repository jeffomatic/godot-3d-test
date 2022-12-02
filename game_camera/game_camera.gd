extends Camera

export var initial_radius: float
export var initial_polar_deg: float
export var initial_azimuth_deg: float
export var target: Vector3

var sphere_point: Math.SpherePoint


func _ready():
	sphere_point = Math.SpherePoint.new(
		initial_radius, deg2rad(initial_polar_deg), deg2rad(initial_azimuth_deg)
	)


func _process(_delta):
	translation = target + sphere_point.to_v3()
	look_at(target, Vector3.UP)
