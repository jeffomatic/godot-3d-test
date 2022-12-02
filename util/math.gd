class_name Math


class SpherePoint:
	var radius: float
	var polar: float  # radians
	var azimuth: float  # radians

	func _init(r: float, p: float, a: float):
		radius = r
		polar = p
		azimuth = a

	func to_v3() -> Vector3:
		var r_sin_theta = radius * sin(polar)
		return Vector3(
			# r * sin(theta) * sin(phi)
			r_sin_theta * sin(azimuth),
			# r * cos(theta)
			radius * cos(polar),
			# r *  sin(theta) * cos(phi)
			-r_sin_theta * cos(azimuth)
		)
